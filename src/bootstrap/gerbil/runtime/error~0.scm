(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1770326743)
  (begin
    (define Exception::t
      (let ((__tmp119352 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp119352
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args119322%_
        (apply make-instance Exception::t _%$args119322%_)))
    (define StackTrace::t
      (let ((__tmp119353 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp119353
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args119319%_
        (apply make-instance StackTrace::t _%$args119319%_)))
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
      (let ((__tmp119354 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp119354
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args119316%_ (apply make-instance Error::t _%$args119316%_)))
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
      (let ((__tmp119355 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp119355
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args119313%_
        (apply make-instance ContractViolation::t _%$args119313%_)))
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
      (let ((__tmp119356 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp119356
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args119310%_
        (apply make-instance RuntimeException::t _%$args119310%_)))
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
      (lambda (_%exn119305%_ _%continue119306%_)
        (let ((_%exn119308%_ (wrap-runtime-exception _%exn119305%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn119308%_ _%continue119306%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn119301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn119301%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn119301%_ 'continuation))
                '#!void
                (let ((__tmp119357
                       (lambda (_%cont119303%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn119301%_
                            'continuation
                            _%cont119303%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp119357)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn119301%_))))
    (define error
      (lambda (_%message119298%_ . _%irritants119299%_)
        (raise (let ((__obj119349
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj119349
                  _%message119298%_
                  'irritants:
                  _%irritants119299%_)
                 __obj119349))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords119273%_
               _%ctx119268119274%_
               _%contract-expr119269119275%_
               _%value119270119276%_
               _%message119277%_)
        (let* ((_%ctx119279%_
                (if (eq? _%ctx119268119274%_ absent-value)
                    '#f
                    _%ctx119268119274%_))
               (_%contract-expr119281%_
                (if (eq? _%contract-expr119269119275%_ absent-value)
                    '#f
                    _%contract-expr119269119275%_))
               (_%value119283%_
                (if (eq? _%value119270119276%_ absent-value)
                    '#f
                    _%value119270119276%_)))
          (raise (let ((__obj119350
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj119350
                    _%message119277%_
                    'where:
                    _%ctx119279%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr119281%_
                                (cons 'value: (cons _%value119283%_ '())))))
                   __obj119350)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords119288%_ . _%args119289%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords119288%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords119288%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords119288%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords119288%_
                  'value:
                  absent-value))
               _%args119289%_)))
    (define __raise-contract-violation-error
      (lambda _%args119271119295%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args119271119295%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler119242%_ _%thunk119243%_)
        (if (procedure? _%handler119242%_)
            (let ((_%handler119247%_ _%handler119242%_))
              (if (procedure? _%thunk119243%_)
                  (let ((_%thunk119257%_ _%thunk119243%_))
                    (__with-exception-handler
                     _%handler119247%_
                     _%thunk119257%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk119243%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler119242%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler119217%_ _%thunk119218%_)
        (let* ((_%handler119221%_ _%handler119217%_)
               (_%thunk119229%_ _%thunk119218%_)
               (__tmp119358
                (lambda (_%exn119238%_)
                  (let ((_%exn119240%_ (wrap-runtime-exception _%exn119238%_)))
                    (declare (not safe))
                    (_%handler119221%_ _%exn119240%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp119358 _%thunk119229%_))))
    (define with-catch
      (lambda (_%handler119192%_ _%thunk119193%_)
        (if (procedure? _%handler119192%_)
            (let ((_%handler119197%_ _%handler119192%_))
              (if (procedure? _%thunk119193%_)
                  (let ((_%thunk119207%_ _%thunk119193%_))
                    (__with-catch _%handler119197%_ _%thunk119207%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk119193%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler119192%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler119167%_ _%thunk119168%_)
        (let* ((_%handler119171%_ _%handler119167%_)
               (_%thunk119179%_ _%thunk119168%_)
               (__tmp119359
                (lambda (_%cont119188%_)
                  (__with-exception-handler
                   (lambda (_%exn119190%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont119188%_
                        _%handler119171%_
                        _%exn119190%_)))
                   _%thunk119179%_))))
          (declare (not safe))
          (##continuation-capture __tmp119359))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn119154%_)
        (if (or (heap-overflow-exception? _%exn119154%_)
                (stack-overflow-exception? _%exn119154%_))
            _%exn119154%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn119154%_))
                _%exn119154%_
                (if (macro-exception? _%exn119154%_)
                    (let ((_%rte119162%_
                           (let ((__obj119351
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj119351
                                _%exn119154%_
                                '2
                                '#f
                                '#f))
                             __obj119351)))
                      (let ((__tmp119360
                             (lambda (_%cont119164%_)
                               (let ((__tmp119361
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont119164%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte119162%_
                                  'continuation
                                  __tmp119361)))))
                        (declare (not safe))
                        (##continuation-capture __tmp119360))
                      _%rte119162%_)
                    _%exn119154%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj119149%_)
        (let ((_%$e119151%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj119149%_))))
          (if _%$e119151%_ _%$e119151%_ (error-exception? _%obj119149%_)))))
    (define error-message
      (lambda (_%obj119142%_)
        (let ((_%$e119144%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj119142%_ 'message false))))
          (if _%$e119144%_
              _%$e119144%_
              (if (error-exception? _%obj119142%_)
                  (error-exception-message _%obj119142%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj119137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj119137%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj119137%_ 'irritants))
            (if (error-exception? _%obj119137%_)
                (error-exception-parameters _%obj119137%_)
                '#f))))
    (define error-trace
      (lambda (_%obj119135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj119135%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj119135%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e119116%_ _%port119117%_)
        (let ((_%$e119119%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e119116%_ 'display-exception))))
          (if _%$e119119%_
              ((lambda (_%f119122%_) (_%f119122%_ _%e119116%_ _%port119117%_))
               _%$e119119%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e119116%_ _%port119117%_))))))
    (define display-exception__0
      (lambda (_%e119128%_)
        (let ((_%port119130%_ (current-error-port)))
          (display-exception__% _%e119128%_ _%port119130%_))))
    (define display-exception
      (lambda _g119362_
        (let ((_g119363_ (let () (declare (not safe)) (##length _g119362_))))
          (cond ((let () (declare (not safe)) (##fx= _g119363_ 1))
                 (apply display-exception__0 _g119362_))
                ((let () (declare (not safe)) (##fx= _g119363_ 2))
                 (apply display-exception__% _g119362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g119362_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self119094%_ _%message119095%_ . _%rest119096%_)
        (let* ((_%self119099%_ _%self119094%_)
               (_%message119113%_
                (if (string? _%message119095%_)
                    _%message119095%_
                    (call-with-output-string
                     '""
                     (lambda (_%g119108119110%_)
                       (display _%message119095%_ _%g119108119110%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self119099%_ 'message _%message119113%_))
          (apply class-instance-init! _%self119099%_ _%rest119096%_))))
    (define Error:::init!::specialize
      (lambda (__klass119324 __method-table119325)
        (let ((__message119326
               (let ((__slot119327
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119324 'message))))
                 (if __slot119327
                     __slot119327
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self119094%_ _%message119095%_ . _%rest119096%_)
            (let* ((_%self119099%_ _%self119094%_)
                   (_%message119113%_
                    (if (string? _%message119095%_)
                        _%message119095%_
                        (call-with-output-string
                         '""
                         (lambda (_%g119108119110%_)
                           (display _%message119095%_ _%g119108119110%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self119099%_
                 _%message119113%_
                 __message119326
                 '#f
                 '#f))
              (apply class-instance-init! _%self119099%_ _%rest119096%_))))))
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
      (lambda (_%self118819%_ _%port118820%_)
        (let ((_%self118823%_ _%self118819%_))
          (let ((_%tmp-port118833%_ (open-output-string))
                (_%display-error-newline118834%_
                 (> (output-port-column _%port118820%_) '0)))
            (fix-port-width! _%tmp-port118833%_)
            (let ((__tmp119364
                   (lambda ()
                     (if _%display-error-newline118834%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e118837%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self118823%_ 'where))))
                       (if _%$e118837%_ (display _%$e118837%_) (display '"?")))
                     (let ((__tmp119365
                            (let ((__tmp119366
                                   (let ()
                                     (declare (not safe))
                                     (__object-class _%self118823%_))))
                              (declare (not safe))
                              (##type-name __tmp119366))))
                       (declare (not safe))
                       (display* '" [" __tmp119365 '"]: "))
                     (let ((__tmp119367
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self118823%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp119367))
                     (let ((_%irritants118841%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self118823%_ 'irritants))))
                       (if (null? _%irritants118841%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj118843%_)
                                (if (u8vector? _%obj118843%_)
                                    (let ((__tmp119368
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj118843%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp119368))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj118843%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants118841%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont118844118846%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self118823%_
                                   'continuation))))
                           (if _%cont118844118846%_
                               (let ((_%cont118848%_ _%cont118844118846%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont118848%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp119364
               current-output-port
               _%tmp-port118833%_))
            (let ((__tmp119369 (get-output-string _%tmp-port118833%_)))
              (declare (not safe))
              (##write-string __tmp119369 _%port118820%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass119328 __method-table119329)
        (let ((__where119330
               (let ((__slot119334
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119328 'where))))
                 (if __slot119334
                     __slot119334
                     (error '"Unknown slot" 'where))))
              (__irritants119331
               (let ((__slot119335
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119328 'irritants))))
                 (if __slot119335
                     __slot119335
                     (error '"Unknown slot" 'irritants))))
              (__continuation119332
               (let ((__slot119336
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119328 'continuation))))
                 (if __slot119336
                     __slot119336
                     (error '"Unknown slot" 'continuation))))
              (__message119333
               (let ((__slot119337
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119328 'message))))
                 (if __slot119337
                     __slot119337
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self118819%_ _%port118820%_)
            (let ((_%self118823%_ _%self118819%_))
              (let ((_%tmp-port118833%_ (open-output-string))
                    (_%display-error-newline118834%_
                     (> (output-port-column _%port118820%_) '0)))
                (fix-port-width! _%tmp-port118833%_)
                (let ((__tmp119370
                       (lambda ()
                         (if _%display-error-newline118834%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e118837%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self118823%_
                                   __where119330
                                   '#f
                                   '#f))))
                           (if _%$e118837%_
                               (display _%$e118837%_)
                               (display '"?")))
                         (let ((__tmp119371
                                (let ((__tmp119372
                                       (let ()
                                         (declare (not safe))
                                         (__object-class _%self118823%_))))
                                  (declare (not safe))
                                  (##type-name __tmp119372))))
                           (declare (not safe))
                           (display* '" [" __tmp119371 '"]: "))
                         (let ((__tmp119373
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self118823%_
                                   __message119333
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp119373))
                         (let ((_%irritants118841%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self118823%_
                                   __irritants119331
                                   '#f
                                   '#f))))
                           (if (null? _%irritants118841%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj118843%_)
                                    (if (u8vector? _%obj118843%_)
                                        (let ((__tmp119374
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj118843%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp119374))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj118843%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants118841%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont118844118846%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self118823%_
                                       __continuation119332
                                       '#f
                                       '#f))))
                               (if _%cont118844118846%_
                                   (let ((_%cont118848%_ _%cont118844118846%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont118848%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp119370
                   current-output-port
                   _%tmp-port118833%_))
                (let ((__tmp119375 (get-output-string _%tmp-port118833%_)))
                  (declare (not safe))
                  (##write-string __tmp119375 _%port118820%_))))))))
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
      (lambda (_%self118676%_ _%port118677%_)
        (let* ((_%self118680%_ _%self118676%_)
               (_%tmp-port118690%_ (open-output-string)))
          (fix-port-width! _%tmp-port118690%_)
          (let ((__tmp119376
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self118680%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp119376 _%tmp-port118690%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont118691118693%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self118680%_ 'continuation))))
                (if _%cont118691118693%_
                    (let ((_%cont118695%_ _%cont118691118693%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port118690%_)
                      (newline _%tmp-port118690%_)
                      (display-continuation-backtrace
                       _%cont118695%_
                       _%tmp-port118690%_))
                    '#f))
              '#!void)
          (let ((__tmp119377 (get-output-string _%tmp-port118690%_)))
            (declare (not safe))
            (##write-string __tmp119377 _%port118677%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass119338 __method-table119339)
        (let ((__exception119340
               (let ((__slot119342
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119338 'exception))))
                 (if __slot119342
                     __slot119342
                     (error '"Unknown slot" 'exception))))
              (__continuation119341
               (let ((__slot119343
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass119338 'continuation))))
                 (if __slot119343
                     __slot119343
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self118676%_ _%port118677%_)
            (let* ((_%self118680%_ _%self118676%_)
                   (_%tmp-port118690%_ (open-output-string)))
              (fix-port-width! _%tmp-port118690%_)
              (let ((__tmp119378
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self118680%_
                        __exception119340
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp119378 _%tmp-port118690%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont118691118693%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self118680%_
                            __continuation119341
                            '#f
                            '#f))))
                    (if _%cont118691118693%_
                        (let ((_%cont118695%_ _%cont118691118693%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port118690%_)
                          (newline _%tmp-port118690%_)
                          (display-continuation-backtrace
                           _%cont118695%_
                           _%tmp-port118690%_))
                        '#f))
                  '#!void)
              (let ((__tmp119379 (get-output-string _%tmp-port118690%_)))
                (declare (not safe))
                (##write-string __tmp119379 _%port118677%_)))))))
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
      (lambda (_%port118548%_)
        (if (macro-character-port? _%port118548%_)
            (let ((_%old-width118550%_
                   (macro-character-port-output-width _%port118548%_)))
              (macro-character-port-output-width-set!
               _%port118548%_
               (lambda (_%port118552%_) '256))
              _%old-width118550%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port118545%_ _%old-width118546%_)
        (if (macro-character-port? _%port118545%_)
            (macro-character-port-output-width-set!
             _%port118545%_
             _%old-width118546%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e118543%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e118543%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn118537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118537%_))
            (let ((_%e118540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118537%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e118540%_))
            (macro-abandoned-mutex-exception? _%exn118537%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn118533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118533%_))
            (let ((_%e118535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118533%_ 'exception))))
              (macro-cfun-conversion-exception? _%e118535%_))
            (macro-cfun-conversion-exception? _%exn118533%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn118529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118529%_))
            (let ((_%e118531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118529%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e118531%_)
                  (macro-cfun-conversion-exception-arguments _%e118531%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e118531%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn118529%_)
                (macro-cfun-conversion-exception-arguments _%exn118529%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn118529%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn118525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118525%_))
            (let ((_%e118527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118525%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e118527%_)
                  (macro-cfun-conversion-exception-code _%e118527%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e118527%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn118525%_)
                (macro-cfun-conversion-exception-code _%exn118525%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn118525%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn118521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118521%_))
            (let ((_%e118523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118521%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e118523%_)
                  (macro-cfun-conversion-exception-message _%e118523%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e118523%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn118521%_)
                (macro-cfun-conversion-exception-message _%exn118521%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn118521%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn118515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118515%_))
            (let ((_%e118518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118515%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e118518%_)
                  (macro-cfun-conversion-exception-procedure _%e118518%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e118518%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn118515%_)
                (macro-cfun-conversion-exception-procedure _%exn118515%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn118515%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn118511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118511%_))
            (let ((_%e118513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118511%_ 'exception))))
              (macro-datum-parsing-exception? _%e118513%_))
            (macro-datum-parsing-exception? _%exn118511%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn118507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118507%_))
            (let ((_%e118509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118507%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e118509%_)
                  (macro-datum-parsing-exception-kind _%e118509%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e118509%_ '())))))
            (if (macro-datum-parsing-exception? _%exn118507%_)
                (macro-datum-parsing-exception-kind _%exn118507%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn118507%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn118503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118503%_))
            (let ((_%e118505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118503%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e118505%_)
                  (macro-datum-parsing-exception-parameters _%e118505%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e118505%_ '())))))
            (if (macro-datum-parsing-exception? _%exn118503%_)
                (macro-datum-parsing-exception-parameters _%exn118503%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn118503%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn118497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118497%_))
            (let ((_%e118500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118497%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e118500%_)
                  (macro-datum-parsing-exception-readenv _%e118500%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e118500%_ '())))))
            (if (macro-datum-parsing-exception? _%exn118497%_)
                (macro-datum-parsing-exception-readenv _%exn118497%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn118497%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn118491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118491%_))
            (let ((_%e118494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118491%_ 'exception))))
              (macro-deadlock-exception? _%e118494%_))
            (macro-deadlock-exception? _%exn118491%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn118487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118487%_))
            (let ((_%e118489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118487%_ 'exception))))
              (macro-divide-by-zero-exception? _%e118489%_))
            (macro-divide-by-zero-exception? _%exn118487%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn118483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118483%_))
            (let ((_%e118485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118483%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e118485%_)
                  (macro-divide-by-zero-exception-arguments _%e118485%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e118485%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn118483%_)
                (macro-divide-by-zero-exception-arguments _%exn118483%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn118483%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn118477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118477%_))
            (let ((_%e118480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118477%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e118480%_)
                  (macro-divide-by-zero-exception-procedure _%e118480%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e118480%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn118477%_)
                (macro-divide-by-zero-exception-procedure _%exn118477%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn118477%_ '())))))))
    (define error-exception?
      (lambda (_%exn118473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118473%_))
            (let ((_%e118475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118473%_ 'exception))))
              (macro-error-exception? _%e118475%_))
            (macro-error-exception? _%exn118473%_))))
    (define error-exception-message
      (lambda (_%exn118469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118469%_))
            (let ((_%e118471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118469%_ 'exception))))
              (if (macro-error-exception? _%e118471%_)
                  (macro-error-exception-message _%e118471%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e118471%_ '())))))
            (if (macro-error-exception? _%exn118469%_)
                (macro-error-exception-message _%exn118469%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn118469%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn118463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118463%_))
            (let ((_%e118466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118463%_ 'exception))))
              (if (macro-error-exception? _%e118466%_)
                  (macro-error-exception-parameters _%e118466%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e118466%_ '())))))
            (if (macro-error-exception? _%exn118463%_)
                (macro-error-exception-parameters _%exn118463%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn118463%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn118459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118459%_))
            (let ((_%e118461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118459%_ 'exception))))
              (macro-expression-parsing-exception? _%e118461%_))
            (macro-expression-parsing-exception? _%exn118459%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn118455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118455%_))
            (let ((_%e118457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118455%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e118457%_)
                  (macro-expression-parsing-exception-kind _%e118457%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e118457%_ '())))))
            (if (macro-expression-parsing-exception? _%exn118455%_)
                (macro-expression-parsing-exception-kind _%exn118455%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn118455%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn118451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118451%_))
            (let ((_%e118453%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118451%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e118453%_)
                  (macro-expression-parsing-exception-parameters _%e118453%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e118453%_ '())))))
            (if (macro-expression-parsing-exception? _%exn118451%_)
                (macro-expression-parsing-exception-parameters _%exn118451%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn118451%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn118445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118445%_))
            (let ((_%e118448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118445%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e118448%_)
                  (macro-expression-parsing-exception-source _%e118448%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e118448%_ '())))))
            (if (macro-expression-parsing-exception? _%exn118445%_)
                (macro-expression-parsing-exception-source _%exn118445%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn118445%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn118441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118441%_))
            (let ((_%e118443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118441%_ 'exception))))
              (macro-file-exists-exception? _%e118443%_))
            (macro-file-exists-exception? _%exn118441%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn118437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118437%_))
            (let ((_%e118439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118437%_ 'exception))))
              (if (macro-file-exists-exception? _%e118439%_)
                  (macro-file-exists-exception-arguments _%e118439%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e118439%_ '())))))
            (if (macro-file-exists-exception? _%exn118437%_)
                (macro-file-exists-exception-arguments _%exn118437%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn118437%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn118431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118431%_))
            (let ((_%e118434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118431%_ 'exception))))
              (if (macro-file-exists-exception? _%e118434%_)
                  (macro-file-exists-exception-procedure _%e118434%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e118434%_ '())))))
            (if (macro-file-exists-exception? _%exn118431%_)
                (macro-file-exists-exception-procedure _%exn118431%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn118431%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn118427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118427%_))
            (let ((_%e118429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118427%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e118429%_))
            (macro-fixnum-overflow-exception? _%exn118427%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn118423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118423%_))
            (let ((_%e118425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118423%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e118425%_)
                  (macro-fixnum-overflow-exception-arguments _%e118425%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e118425%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn118423%_)
                (macro-fixnum-overflow-exception-arguments _%exn118423%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn118423%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn118417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118417%_))
            (let ((_%e118420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118417%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e118420%_)
                  (macro-fixnum-overflow-exception-procedure _%e118420%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e118420%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn118417%_)
                (macro-fixnum-overflow-exception-procedure _%exn118417%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn118417%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn118411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118411%_))
            (let ((_%e118414%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118411%_ 'exception))))
              (macro-heap-overflow-exception? _%e118414%_))
            (macro-heap-overflow-exception? _%exn118411%_))))
    (define inactive-thread-exception?
      (lambda (_%exn118407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118407%_))
            (let ((_%e118409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118407%_ 'exception))))
              (macro-inactive-thread-exception? _%e118409%_))
            (macro-inactive-thread-exception? _%exn118407%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn118403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118403%_))
            (let ((_%e118405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118403%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e118405%_)
                  (macro-inactive-thread-exception-arguments _%e118405%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e118405%_ '())))))
            (if (macro-inactive-thread-exception? _%exn118403%_)
                (macro-inactive-thread-exception-arguments _%exn118403%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn118403%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn118397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118397%_))
            (let ((_%e118400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118397%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e118400%_)
                  (macro-inactive-thread-exception-procedure _%e118400%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e118400%_ '())))))
            (if (macro-inactive-thread-exception? _%exn118397%_)
                (macro-inactive-thread-exception-procedure _%exn118397%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn118397%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn118393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118393%_))
            (let ((_%e118395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118393%_ 'exception))))
              (macro-initialized-thread-exception? _%e118395%_))
            (macro-initialized-thread-exception? _%exn118393%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn118389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118389%_))
            (let ((_%e118391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118389%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e118391%_)
                  (macro-initialized-thread-exception-arguments _%e118391%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e118391%_ '())))))
            (if (macro-initialized-thread-exception? _%exn118389%_)
                (macro-initialized-thread-exception-arguments _%exn118389%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn118389%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn118383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118383%_))
            (let ((_%e118386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118383%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e118386%_)
                  (macro-initialized-thread-exception-procedure _%e118386%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e118386%_ '())))))
            (if (macro-initialized-thread-exception? _%exn118383%_)
                (macro-initialized-thread-exception-procedure _%exn118383%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn118383%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn118379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118379%_))
            (let ((_%e118381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118379%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e118381%_))
            (macro-invalid-hash-number-exception? _%exn118379%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn118375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118375%_))
            (let ((_%e118377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118375%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e118377%_)
                  (macro-invalid-hash-number-exception-arguments _%e118377%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e118377%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn118375%_)
                (macro-invalid-hash-number-exception-arguments _%exn118375%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn118375%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn118369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118369%_))
            (let ((_%e118372%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118369%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e118372%_)
                  (macro-invalid-hash-number-exception-procedure _%e118372%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e118372%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn118369%_)
                (macro-invalid-hash-number-exception-procedure _%exn118369%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn118369%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn118365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118365%_))
            (let ((_%e118367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118365%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e118367%_))
            (macro-invalid-utf8-encoding-exception? _%exn118365%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn118361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118361%_))
            (let ((_%e118363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118361%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e118363%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e118363%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e118363%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn118361%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn118361%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn118361%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn118355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118355%_))
            (let ((_%e118358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118355%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e118358%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e118358%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e118358%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn118355%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn118355%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn118355%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn118351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118351%_))
            (let ((_%e118353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118351%_ 'exception))))
              (macro-join-timeout-exception? _%e118353%_))
            (macro-join-timeout-exception? _%exn118351%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn118347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118347%_))
            (let ((_%e118349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118347%_ 'exception))))
              (if (macro-join-timeout-exception? _%e118349%_)
                  (macro-join-timeout-exception-arguments _%e118349%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e118349%_ '())))))
            (if (macro-join-timeout-exception? _%exn118347%_)
                (macro-join-timeout-exception-arguments _%exn118347%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn118347%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn118341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118341%_))
            (let ((_%e118344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118341%_ 'exception))))
              (if (macro-join-timeout-exception? _%e118344%_)
                  (macro-join-timeout-exception-procedure _%e118344%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e118344%_ '())))))
            (if (macro-join-timeout-exception? _%exn118341%_)
                (macro-join-timeout-exception-procedure _%exn118341%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn118341%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn118337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118337%_))
            (let ((_%e118339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118337%_ 'exception))))
              (macro-keyword-expected-exception? _%e118339%_))
            (macro-keyword-expected-exception? _%exn118337%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn118333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118333%_))
            (let ((_%e118335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118333%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e118335%_)
                  (macro-keyword-expected-exception-arguments _%e118335%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e118335%_ '())))))
            (if (macro-keyword-expected-exception? _%exn118333%_)
                (macro-keyword-expected-exception-arguments _%exn118333%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn118333%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn118327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118327%_))
            (let ((_%e118330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118327%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e118330%_)
                  (macro-keyword-expected-exception-procedure _%e118330%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e118330%_ '())))))
            (if (macro-keyword-expected-exception? _%exn118327%_)
                (macro-keyword-expected-exception-procedure _%exn118327%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn118327%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn118323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118323%_))
            (let ((_%e118325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118323%_ 'exception))))
              (macro-length-mismatch-exception? _%e118325%_))
            (macro-length-mismatch-exception? _%exn118323%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn118319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118319%_))
            (let ((_%e118321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118319%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e118321%_)
                  (macro-length-mismatch-exception-arg-id _%e118321%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e118321%_ '())))))
            (if (macro-length-mismatch-exception? _%exn118319%_)
                (macro-length-mismatch-exception-arg-id _%exn118319%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn118319%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn118315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118315%_))
            (let ((_%e118317%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118315%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e118317%_)
                  (macro-length-mismatch-exception-arguments _%e118317%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e118317%_ '())))))
            (if (macro-length-mismatch-exception? _%exn118315%_)
                (macro-length-mismatch-exception-arguments _%exn118315%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn118315%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn118309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118309%_))
            (let ((_%e118312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118309%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e118312%_)
                  (macro-length-mismatch-exception-procedure _%e118312%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e118312%_ '())))))
            (if (macro-length-mismatch-exception? _%exn118309%_)
                (macro-length-mismatch-exception-procedure _%exn118309%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn118309%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn118305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118305%_))
            (let ((_%e118307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118305%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e118307%_))
            (macro-mailbox-receive-timeout-exception? _%exn118305%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn118301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118301%_))
            (let ((_%e118303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118301%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e118303%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e118303%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e118303%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn118301%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn118301%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn118301%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn118295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118295%_))
            (let ((_%e118298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118295%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e118298%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e118298%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e118298%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn118295%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn118295%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn118295%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn118291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118291%_))
            (let ((_%e118293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118291%_ 'exception))))
              (macro-module-not-found-exception? _%e118293%_))
            (macro-module-not-found-exception? _%exn118291%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn118287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118287%_))
            (let ((_%e118289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118287%_ 'exception))))
              (if (macro-module-not-found-exception? _%e118289%_)
                  (macro-module-not-found-exception-arguments _%e118289%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e118289%_ '())))))
            (if (macro-module-not-found-exception? _%exn118287%_)
                (macro-module-not-found-exception-arguments _%exn118287%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn118287%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn118281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118281%_))
            (let ((_%e118284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118281%_ 'exception))))
              (if (macro-module-not-found-exception? _%e118284%_)
                  (macro-module-not-found-exception-procedure _%e118284%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e118284%_ '())))))
            (if (macro-module-not-found-exception? _%exn118281%_)
                (macro-module-not-found-exception-procedure _%exn118281%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn118281%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn118275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118275%_))
            (let ((_%e118278%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118275%_ 'exception))))
              (macro-multiple-c-return-exception? _%e118278%_))
            (macro-multiple-c-return-exception? _%exn118275%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn118271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118271%_))
            (let ((_%e118273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118271%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e118273%_))
            (macro-no-such-file-or-directory-exception? _%exn118271%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn118267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118267%_))
            (let ((_%e118269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118267%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e118269%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e118269%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e118269%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn118267%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn118267%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn118267%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn118261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118261%_))
            (let ((_%e118264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118261%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e118264%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e118264%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e118264%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn118261%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn118261%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn118261%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn118257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118257%_))
            (let ((_%e118259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118257%_ 'exception))))
              (macro-noncontinuable-exception? _%e118259%_))
            (macro-noncontinuable-exception? _%exn118257%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn118251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118251%_))
            (let ((_%e118254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118251%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e118254%_)
                  (macro-noncontinuable-exception-reason _%e118254%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e118254%_ '())))))
            (if (macro-noncontinuable-exception? _%exn118251%_)
                (macro-noncontinuable-exception-reason _%exn118251%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn118251%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn118247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118247%_))
            (let ((_%e118249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118247%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e118249%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn118247%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn118243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118243%_))
            (let ((_%e118245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118243%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e118245%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e118245%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e118245%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn118243%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn118243%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn118243%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn118237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118237%_))
            (let ((_%e118240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118237%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e118240%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e118240%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e118240%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn118237%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn118237%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn118237%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn118233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118233%_))
            (let ((_%e118235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118233%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e118235%_))
            (macro-nonprocedure-operator-exception? _%exn118233%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn118229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118229%_))
            (let ((_%e118231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118229%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e118231%_)
                  (macro-nonprocedure-operator-exception-arguments _%e118231%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e118231%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn118229%_)
                (macro-nonprocedure-operator-exception-arguments _%exn118229%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn118229%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn118225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118225%_))
            (let ((_%e118227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118225%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e118227%_)
                  (macro-nonprocedure-operator-exception-code _%e118227%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e118227%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn118225%_)
                (macro-nonprocedure-operator-exception-code _%exn118225%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn118225%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn118221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118221%_))
            (let ((_%e118223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118221%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e118223%_)
                  (macro-nonprocedure-operator-exception-operator _%e118223%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e118223%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn118221%_)
                (macro-nonprocedure-operator-exception-operator _%exn118221%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn118221%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn118215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118215%_))
            (let ((_%e118218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118215%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e118218%_)
                  (macro-nonprocedure-operator-exception-rte _%e118218%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e118218%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn118215%_)
                (macro-nonprocedure-operator-exception-rte _%exn118215%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn118215%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn118211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118211%_))
            (let ((_%e118213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118211%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e118213%_))
            (macro-not-in-compilation-context-exception? _%exn118211%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn118207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118207%_))
            (let ((_%e118209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118207%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e118209%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e118209%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e118209%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn118207%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn118207%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn118207%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn118201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118201%_))
            (let ((_%e118204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118201%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e118204%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e118204%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e118204%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn118201%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn118201%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn118201%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn118197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118197%_))
            (let ((_%e118199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118197%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e118199%_))
            (macro-number-of-arguments-limit-exception? _%exn118197%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn118193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118193%_))
            (let ((_%e118195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118193%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e118195%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e118195%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e118195%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn118193%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn118193%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn118193%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn118187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118187%_))
            (let ((_%e118190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118187%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e118190%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e118190%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e118190%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn118187%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn118187%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn118187%_ '())))))))
    (define os-exception?
      (lambda (_%exn118183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118183%_))
            (let ((_%e118185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118183%_ 'exception))))
              (macro-os-exception? _%e118185%_))
            (macro-os-exception? _%exn118183%_))))
    (define os-exception-arguments
      (lambda (_%exn118179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118179%_))
            (let ((_%e118181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118179%_ 'exception))))
              (if (macro-os-exception? _%e118181%_)
                  (macro-os-exception-arguments _%e118181%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e118181%_ '())))))
            (if (macro-os-exception? _%exn118179%_)
                (macro-os-exception-arguments _%exn118179%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn118179%_ '())))))))
    (define os-exception-code
      (lambda (_%exn118175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118175%_))
            (let ((_%e118177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118175%_ 'exception))))
              (if (macro-os-exception? _%e118177%_)
                  (macro-os-exception-code _%e118177%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e118177%_ '())))))
            (if (macro-os-exception? _%exn118175%_)
                (macro-os-exception-code _%exn118175%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn118175%_ '())))))))
    (define os-exception-message
      (lambda (_%exn118171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118171%_))
            (let ((_%e118173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118171%_ 'exception))))
              (if (macro-os-exception? _%e118173%_)
                  (macro-os-exception-message _%e118173%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e118173%_ '())))))
            (if (macro-os-exception? _%exn118171%_)
                (macro-os-exception-message _%exn118171%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn118171%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn118165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118165%_))
            (let ((_%e118168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118165%_ 'exception))))
              (if (macro-os-exception? _%e118168%_)
                  (macro-os-exception-procedure _%e118168%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e118168%_ '())))))
            (if (macro-os-exception? _%exn118165%_)
                (macro-os-exception-procedure _%exn118165%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn118165%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn118161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118161%_))
            (let ((_%e118163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118161%_ 'exception))))
              (macro-permission-denied-exception? _%e118163%_))
            (macro-permission-denied-exception? _%exn118161%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn118157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118157%_))
            (let ((_%e118159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118157%_ 'exception))))
              (if (macro-permission-denied-exception? _%e118159%_)
                  (macro-permission-denied-exception-arguments _%e118159%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e118159%_ '())))))
            (if (macro-permission-denied-exception? _%exn118157%_)
                (macro-permission-denied-exception-arguments _%exn118157%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn118157%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn118151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118151%_))
            (let ((_%e118154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118151%_ 'exception))))
              (if (macro-permission-denied-exception? _%e118154%_)
                  (macro-permission-denied-exception-procedure _%e118154%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e118154%_ '())))))
            (if (macro-permission-denied-exception? _%exn118151%_)
                (macro-permission-denied-exception-procedure _%exn118151%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn118151%_ '())))))))
    (define range-exception?
      (lambda (_%exn118147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118147%_))
            (let ((_%e118149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118147%_ 'exception))))
              (macro-range-exception? _%e118149%_))
            (macro-range-exception? _%exn118147%_))))
    (define range-exception-arg-id
      (lambda (_%exn118143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118143%_))
            (let ((_%e118145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118143%_ 'exception))))
              (if (macro-range-exception? _%e118145%_)
                  (macro-range-exception-arg-id _%e118145%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e118145%_ '())))))
            (if (macro-range-exception? _%exn118143%_)
                (macro-range-exception-arg-id _%exn118143%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn118143%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn118139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118139%_))
            (let ((_%e118141%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118139%_ 'exception))))
              (if (macro-range-exception? _%e118141%_)
                  (macro-range-exception-arguments _%e118141%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e118141%_ '())))))
            (if (macro-range-exception? _%exn118139%_)
                (macro-range-exception-arguments _%exn118139%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn118139%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn118133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118133%_))
            (let ((_%e118136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118133%_ 'exception))))
              (if (macro-range-exception? _%e118136%_)
                  (macro-range-exception-procedure _%e118136%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e118136%_ '())))))
            (if (macro-range-exception? _%exn118133%_)
                (macro-range-exception-procedure _%exn118133%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn118133%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn118129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118129%_))
            (let ((_%e118131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118129%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e118131%_))
            (macro-rpc-remote-error-exception? _%exn118129%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn118125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118125%_))
            (let ((_%e118127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118125%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e118127%_)
                  (macro-rpc-remote-error-exception-arguments _%e118127%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e118127%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn118125%_)
                (macro-rpc-remote-error-exception-arguments _%exn118125%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn118125%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn118121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118121%_))
            (let ((_%e118123%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118121%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e118123%_)
                  (macro-rpc-remote-error-exception-message _%e118123%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e118123%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn118121%_)
                (macro-rpc-remote-error-exception-message _%exn118121%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn118121%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn118115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118115%_))
            (let ((_%e118118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118115%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e118118%_)
                  (macro-rpc-remote-error-exception-procedure _%e118118%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e118118%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn118115%_)
                (macro-rpc-remote-error-exception-procedure _%exn118115%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn118115%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn118111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118111%_))
            (let ((_%e118113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118111%_ 'exception))))
              (macro-scheduler-exception? _%e118113%_))
            (macro-scheduler-exception? _%exn118111%_))))
    (define scheduler-exception-reason
      (lambda (_%exn118105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118105%_))
            (let ((_%e118108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118105%_ 'exception))))
              (if (macro-scheduler-exception? _%e118108%_)
                  (macro-scheduler-exception-reason _%e118108%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e118108%_ '())))))
            (if (macro-scheduler-exception? _%exn118105%_)
                (macro-scheduler-exception-reason _%exn118105%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn118105%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn118101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118101%_))
            (let ((_%e118103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118101%_ 'exception))))
              (macro-sfun-conversion-exception? _%e118103%_))
            (macro-sfun-conversion-exception? _%exn118101%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn118097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118097%_))
            (let ((_%e118099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118097%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e118099%_)
                  (macro-sfun-conversion-exception-arguments _%e118099%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e118099%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn118097%_)
                (macro-sfun-conversion-exception-arguments _%exn118097%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn118097%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn118093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118093%_))
            (let ((_%e118095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118093%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e118095%_)
                  (macro-sfun-conversion-exception-code _%e118095%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e118095%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn118093%_)
                (macro-sfun-conversion-exception-code _%exn118093%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn118093%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn118089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118089%_))
            (let ((_%e118091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118089%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e118091%_)
                  (macro-sfun-conversion-exception-message _%e118091%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e118091%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn118089%_)
                (macro-sfun-conversion-exception-message _%exn118089%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn118089%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn118083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118083%_))
            (let ((_%e118086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118083%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e118086%_)
                  (macro-sfun-conversion-exception-procedure _%e118086%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e118086%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn118083%_)
                (macro-sfun-conversion-exception-procedure _%exn118083%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn118083%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn118077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118077%_))
            (let ((_%e118080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118077%_ 'exception))))
              (macro-stack-overflow-exception? _%e118080%_))
            (macro-stack-overflow-exception? _%exn118077%_))))
    (define started-thread-exception?
      (lambda (_%exn118073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118073%_))
            (let ((_%e118075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118073%_ 'exception))))
              (macro-started-thread-exception? _%e118075%_))
            (macro-started-thread-exception? _%exn118073%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn118069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118069%_))
            (let ((_%e118071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118069%_ 'exception))))
              (if (macro-started-thread-exception? _%e118071%_)
                  (macro-started-thread-exception-arguments _%e118071%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e118071%_ '())))))
            (if (macro-started-thread-exception? _%exn118069%_)
                (macro-started-thread-exception-arguments _%exn118069%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn118069%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn118063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118063%_))
            (let ((_%e118066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118063%_ 'exception))))
              (if (macro-started-thread-exception? _%e118066%_)
                  (macro-started-thread-exception-procedure _%e118066%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e118066%_ '())))))
            (if (macro-started-thread-exception? _%exn118063%_)
                (macro-started-thread-exception-procedure _%exn118063%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn118063%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn118059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118059%_))
            (let ((_%e118061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118059%_ 'exception))))
              (macro-terminated-thread-exception? _%e118061%_))
            (macro-terminated-thread-exception? _%exn118059%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn118055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118055%_))
            (let ((_%e118057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118055%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e118057%_)
                  (macro-terminated-thread-exception-arguments _%e118057%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e118057%_ '())))))
            (if (macro-terminated-thread-exception? _%exn118055%_)
                (macro-terminated-thread-exception-arguments _%exn118055%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn118055%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn118049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118049%_))
            (let ((_%e118052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118049%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e118052%_)
                  (macro-terminated-thread-exception-procedure _%e118052%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e118052%_ '())))))
            (if (macro-terminated-thread-exception? _%exn118049%_)
                (macro-terminated-thread-exception-procedure _%exn118049%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn118049%_ '())))))))
    (define type-exception?
      (lambda (_%exn118045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118045%_))
            (let ((_%e118047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118045%_ 'exception))))
              (macro-type-exception? _%e118047%_))
            (macro-type-exception? _%exn118045%_))))
    (define type-exception-arg-id
      (lambda (_%exn118041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118041%_))
            (let ((_%e118043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118041%_ 'exception))))
              (if (macro-type-exception? _%e118043%_)
                  (macro-type-exception-arg-id _%e118043%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e118043%_ '())))))
            (if (macro-type-exception? _%exn118041%_)
                (macro-type-exception-arg-id _%exn118041%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn118041%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn118037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118037%_))
            (let ((_%e118039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118037%_ 'exception))))
              (if (macro-type-exception? _%e118039%_)
                  (macro-type-exception-arguments _%e118039%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e118039%_ '())))))
            (if (macro-type-exception? _%exn118037%_)
                (macro-type-exception-arguments _%exn118037%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn118037%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn118033%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118033%_))
            (let ((_%e118035%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118033%_ 'exception))))
              (if (macro-type-exception? _%e118035%_)
                  (macro-type-exception-procedure _%e118035%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e118035%_ '())))))
            (if (macro-type-exception? _%exn118033%_)
                (macro-type-exception-procedure _%exn118033%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn118033%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn118027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118027%_))
            (let ((_%e118030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118027%_ 'exception))))
              (if (macro-type-exception? _%e118030%_)
                  (macro-type-exception-type-id _%e118030%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e118030%_ '())))))
            (if (macro-type-exception? _%exn118027%_)
                (macro-type-exception-type-id _%exn118027%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn118027%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn118023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118023%_))
            (let ((_%e118025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118023%_ 'exception))))
              (macro-unbound-global-exception? _%e118025%_))
            (macro-unbound-global-exception? _%exn118023%_))))
    (define unbound-global-exception-code
      (lambda (_%exn118019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118019%_))
            (let ((_%e118021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118019%_ 'exception))))
              (if (macro-unbound-global-exception? _%e118021%_)
                  (macro-unbound-global-exception-code _%e118021%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e118021%_ '())))))
            (if (macro-unbound-global-exception? _%exn118019%_)
                (macro-unbound-global-exception-code _%exn118019%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn118019%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn118015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118015%_))
            (let ((_%e118017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118015%_ 'exception))))
              (if (macro-unbound-global-exception? _%e118017%_)
                  (macro-unbound-global-exception-rte _%e118017%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e118017%_ '())))))
            (if (macro-unbound-global-exception? _%exn118015%_)
                (macro-unbound-global-exception-rte _%exn118015%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn118015%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn118009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118009%_))
            (let ((_%e118012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118009%_ 'exception))))
              (if (macro-unbound-global-exception? _%e118012%_)
                  (macro-unbound-global-exception-variable _%e118012%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e118012%_ '())))))
            (if (macro-unbound-global-exception? _%exn118009%_)
                (macro-unbound-global-exception-variable _%exn118009%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn118009%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn118005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118005%_))
            (let ((_%e118007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118005%_ 'exception))))
              (macro-unbound-key-exception? _%e118007%_))
            (macro-unbound-key-exception? _%exn118005%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn118001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn118001%_))
            (let ((_%e118003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn118001%_ 'exception))))
              (if (macro-unbound-key-exception? _%e118003%_)
                  (macro-unbound-key-exception-arguments _%e118003%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e118003%_ '())))))
            (if (macro-unbound-key-exception? _%exn118001%_)
                (macro-unbound-key-exception-arguments _%exn118001%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn118001%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn117995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117995%_))
            (let ((_%e117998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117995%_ 'exception))))
              (if (macro-unbound-key-exception? _%e117998%_)
                  (macro-unbound-key-exception-procedure _%e117998%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e117998%_ '())))))
            (if (macro-unbound-key-exception? _%exn117995%_)
                (macro-unbound-key-exception-procedure _%exn117995%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn117995%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn117991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117991%_))
            (let ((_%e117993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117991%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e117993%_))
            (macro-unbound-os-environment-variable-exception? _%exn117991%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn117987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117987%_))
            (let ((_%e117989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117987%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e117989%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e117989%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e117989%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn117987%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn117987%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn117987%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn117981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117981%_))
            (let ((_%e117984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117981%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e117984%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e117984%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e117984%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn117981%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn117981%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn117981%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn117977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117977%_))
            (let ((_%e117979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117977%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e117979%_))
            (macro-unbound-serial-number-exception? _%exn117977%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn117973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117973%_))
            (let ((_%e117975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117973%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e117975%_)
                  (macro-unbound-serial-number-exception-arguments _%e117975%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e117975%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn117973%_)
                (macro-unbound-serial-number-exception-arguments _%exn117973%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn117973%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn117967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117967%_))
            (let ((_%e117970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117967%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e117970%_)
                  (macro-unbound-serial-number-exception-procedure _%e117970%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e117970%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn117967%_)
                (macro-unbound-serial-number-exception-procedure _%exn117967%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn117967%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn117963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117963%_))
            (let ((_%e117965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117963%_ 'exception))))
              (macro-uncaught-exception? _%e117965%_))
            (macro-uncaught-exception? _%exn117963%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn117959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117959%_))
            (let ((_%e117961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117959%_ 'exception))))
              (if (macro-uncaught-exception? _%e117961%_)
                  (macro-uncaught-exception-arguments _%e117961%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e117961%_ '())))))
            (if (macro-uncaught-exception? _%exn117959%_)
                (macro-uncaught-exception-arguments _%exn117959%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn117959%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn117955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117955%_))
            (let ((_%e117957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117955%_ 'exception))))
              (if (macro-uncaught-exception? _%e117957%_)
                  (macro-uncaught-exception-procedure _%e117957%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e117957%_ '())))))
            (if (macro-uncaught-exception? _%exn117955%_)
                (macro-uncaught-exception-procedure _%exn117955%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn117955%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn117949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117949%_))
            (let ((_%e117952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117949%_ 'exception))))
              (if (macro-uncaught-exception? _%e117952%_)
                  (macro-uncaught-exception-reason _%e117952%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e117952%_ '())))))
            (if (macro-uncaught-exception? _%exn117949%_)
                (macro-uncaught-exception-reason _%exn117949%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn117949%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn117945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117945%_))
            (let ((_%e117947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117945%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e117947%_))
            (macro-uninitialized-thread-exception? _%exn117945%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn117941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117941%_))
            (let ((_%e117943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117941%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e117943%_)
                  (macro-uninitialized-thread-exception-arguments _%e117943%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e117943%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn117941%_)
                (macro-uninitialized-thread-exception-arguments _%exn117941%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn117941%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn117935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117935%_))
            (let ((_%e117938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117935%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e117938%_)
                  (macro-uninitialized-thread-exception-procedure _%e117938%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e117938%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn117935%_)
                (macro-uninitialized-thread-exception-procedure _%exn117935%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn117935%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn117931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117931%_))
            (let ((_%e117933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117931%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e117933%_))
            (macro-unknown-keyword-argument-exception? _%exn117931%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn117927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117927%_))
            (let ((_%e117929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117927%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e117929%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e117929%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e117929%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn117927%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn117927%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn117927%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn117921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117921%_))
            (let ((_%e117924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117921%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e117924%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e117924%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e117924%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn117921%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn117921%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn117921%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn117917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117917%_))
            (let ((_%e117919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117917%_ 'exception))))
              (macro-unterminated-process-exception? _%e117919%_))
            (macro-unterminated-process-exception? _%exn117917%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn117913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117913%_))
            (let ((_%e117915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117913%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e117915%_)
                  (macro-unterminated-process-exception-arguments _%e117915%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e117915%_ '())))))
            (if (macro-unterminated-process-exception? _%exn117913%_)
                (macro-unterminated-process-exception-arguments _%exn117913%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn117913%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn117907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117907%_))
            (let ((_%e117910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117907%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e117910%_)
                  (macro-unterminated-process-exception-procedure _%e117910%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e117910%_ '())))))
            (if (macro-unterminated-process-exception? _%exn117907%_)
                (macro-unterminated-process-exception-procedure _%exn117907%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn117907%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn117903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117903%_))
            (let ((_%e117905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117903%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e117905%_))
            (macro-wrong-number-of-arguments-exception? _%exn117903%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn117899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117899%_))
            (let ((_%e117901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117899%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e117901%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e117901%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e117901%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn117899%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn117899%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn117899%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn117893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117893%_))
            (let ((_%e117896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117893%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e117896%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e117896%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e117896%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn117893%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn117893%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn117893%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn117889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117889%_))
            (let ((_%e117891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117889%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e117891%_))
            (macro-wrong-number-of-values-exception? _%exn117889%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn117885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117885%_))
            (let ((_%e117887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117885%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e117887%_)
                  (macro-wrong-number-of-values-exception-code _%e117887%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e117887%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn117885%_)
                (macro-wrong-number-of-values-exception-code _%exn117885%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn117885%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn117881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117881%_))
            (let ((_%e117883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117881%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e117883%_)
                  (macro-wrong-number-of-values-exception-rte _%e117883%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e117883%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn117881%_)
                (macro-wrong-number-of-values-exception-rte _%exn117881%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn117881%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn117875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117875%_))
            (let ((_%e117878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117875%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e117878%_)
                  (macro-wrong-number-of-values-exception-vals _%e117878%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e117878%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn117875%_)
                (macro-wrong-number-of-values-exception-vals _%exn117875%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn117875%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn117869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn117869%_))
            (let ((_%e117872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn117869%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e117872%_))
            (macro-wrong-processor-c-return-exception? _%exn117869%_))))))
