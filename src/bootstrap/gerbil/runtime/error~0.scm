(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1784279014)
  (begin
    (define Exception::t
      (let ((__tmp149409 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp149409 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args149327%_
        (apply make-instance Exception::t _%$args149327%_)))
    (define StackTrace::t
      (let ((__tmp149410 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp149410
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args149324%_
        (apply make-instance StackTrace::t _%$args149324%_)))
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
      (let ((__tmp149411 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp149411
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args149321%_ (apply make-instance Error::t _%$args149321%_)))
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
      (let ((__tmp149412 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp149412
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args149318%_
        (apply make-instance ContractViolation::t _%$args149318%_)))
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
      (let ((__tmp149413 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp149413
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args149315%_
        (apply make-instance RuntimeException::t _%$args149315%_)))
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
      (lambda (_%exn149310%_ _%continue149311%_)
        (let ((_%exn149313%_ (wrap-runtime-exception _%exn149310%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn149313%_ _%continue149311%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn149306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn149306%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn149306%_ 'continuation))
                '#!void
                (let ((__tmp149414
                       (lambda (_%cont149308%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn149306%_
                            'continuation
                            _%cont149308%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp149414)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn149306%_))))
    (define error
      (lambda (_%message149303%_ . _%irritants149304%_)
        (raise (let ((__obj149406
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj149406
                  _%message149303%_
                  'irritants:
                  _%irritants149304%_)
                 __obj149406))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords149278%_
               _%$%ctx149273149279%_
               _%$%contract-expr149274149280%_
               _%$%value149275149281%_
               _%message149282%_)
        (let* ((_%ctx149284%_
                (if (eq? _%$%ctx149273149279%_ absent-value)
                    '#f
                    _%$%ctx149273149279%_))
               (_%contract-expr149286%_
                (if (eq? _%$%contract-expr149274149280%_ absent-value)
                    '#f
                    _%$%contract-expr149274149280%_))
               (_%value149288%_
                (if (eq? _%$%value149275149281%_ absent-value)
                    '#f
                    _%$%value149275149281%_)))
          (raise (let ((__obj149407
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj149407
                    _%message149282%_
                    'where:
                    _%ctx149284%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr149286%_
                                (cons 'value: (cons _%value149288%_ '())))))
                   __obj149407)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords149293%_ . _%args149294%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords149293%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149293%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149293%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149293%_
                  'value:
                  absent-value))
               _%args149294%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args149276149300%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args149276149300%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler149247%_ _%thunk149248%_)
        (let* ((_%handler149251%_ _%handler149247%_)
               (_%thunk149259%_ _%thunk149248%_)
               (__tmp149415
                (lambda (_%exn149268%_)
                  (let ((_%exn149270%_ (wrap-runtime-exception _%exn149268%_)))
                    (declare (not safe))
                    (_%handler149251%_ _%exn149270%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp149415 _%thunk149259%_))))
    (define with-exception-handler
      (lambda (_%handler149222%_ _%thunk149223%_)
        (if (procedure? _%handler149222%_)
            (let ((_%handler149227%_ _%handler149222%_))
              (if (procedure? _%thunk149223%_)
                  (let ((_%thunk149237%_ _%thunk149223%_))
                    (__with-exception-handler
                     _%handler149227%_
                     _%thunk149237%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149223%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler149222%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler149164%_ _%thunk149165%_)
        (let* ((_%handler149168%_ _%handler149164%_)
               (_%thunk149176%_ _%thunk149165%_)
               (__tmp149416
                (lambda (_%cont149185%_)
                  (let* ((_%handler149189%_
                          (lambda (_%exn149187%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont149185%_
                               _%handler149168%_
                               _%exn149187%_))))
                         (_%thunk149192%_ _%thunk149176%_)
                         (_%handler149197%_ _%handler149189%_)
                         (_%thunk149212%_ _%thunk149192%_))
                    (__with-exception-handler
                     _%handler149197%_
                     _%thunk149212%_)))))
          (declare (not safe))
          (##continuation-capture __tmp149416))))
    (define with-catch
      (lambda (_%handler149139%_ _%thunk149140%_)
        (if (procedure? _%handler149139%_)
            (let ((_%handler149144%_ _%handler149139%_))
              (if (procedure? _%thunk149140%_)
                  (let ((_%thunk149154%_ _%thunk149140%_))
                    (__with-catch _%handler149144%_ _%thunk149154%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149140%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler149139%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn149126%_)
        (if (or (heap-overflow-exception? _%exn149126%_)
                (stack-overflow-exception? _%exn149126%_))
            _%exn149126%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn149126%_))
                _%exn149126%_
                (if (macro-exception? _%exn149126%_)
                    (let ((_%rte149134%_
                           (let ((__obj149408
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj149408
                                _%exn149126%_
                                '2
                                '#f
                                '#f))
                             __obj149408)))
                      (let ((__tmp149417
                             (lambda (_%cont149136%_)
                               (let ((__tmp149418
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont149136%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte149134%_
                                  'continuation
                                  __tmp149418)))))
                        (declare (not safe))
                        (##continuation-capture __tmp149417))
                      _%rte149134%_)
                    _%exn149126%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj149121%_)
        (let ((_%$e149123%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj149121%_))))
          (if _%$e149123%_ _%$e149123%_ (error-exception? _%obj149121%_)))))
    (define error-message
      (lambda (_%obj149080%_)
        (let ((_%$e149116%_
               (let* ((_%obj149082%_ _%obj149080%_)
                      (_%slot149085%_ 'message)
                      (_%E149088%_ false)
                      (_%slot149093%_ _%slot149085%_)
                      (_%E149106%_ _%E149088%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj149082%_ _%slot149093%_ _%E149106%_))))
          (if _%$e149116%_
              _%$e149116%_
              (if (error-exception? _%obj149080%_)
                  (error-exception-message _%obj149080%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj149075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149075%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149075%_ 'irritants))
            (if (error-exception? _%obj149075%_)
                (error-exception-parameters _%obj149075%_)
                '#f))))
    (define error-trace
      (lambda (_%obj149073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149073%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149073%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e149034%_ _%port149035%_)
        (let ((_%$e149057%_
               (let* ((_%obj149037%_ _%e149034%_)
                      (_%id149040%_ 'display-exception)
                      (_%id149045%_ _%id149040%_))
                 (declare (not safe))
                 (__method-ref _%obj149037%_ _%id149045%_))))
          (if _%$e149057%_
              (_%$e149057%_ _%e149034%_ _%port149035%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e149034%_ _%port149035%_))))))
    (define display-exception__0
      (lambda (_%e149066%_)
        (let ((_%port149068%_ (current-error-port)))
          (display-exception__% _%e149066%_ _%port149068%_))))
    (define display-exception
      (lambda _g149419_
        (let ((_g149420_ (let () (declare (not safe)) (##length _g149419_))))
          (cond ((let () (declare (not safe)) (##fx= _g149420_ 1))
                 (apply display-exception__0 _g149419_))
                ((let () (declare (not safe)) (##fx= _g149420_ 2))
                 (apply display-exception__% _g149419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g149419_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self149012%_ _%message149013%_ . _%rest149014%_)
        (let* ((_%self149017%_ _%self149012%_)
               (_%message149031%_
                (if (string? _%message149013%_)
                    _%message149013%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g149026149028%_)
                       (display _%message149013%_ _%$%g149026149028%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self149017%_ 'message _%message149031%_))
          (apply class-instance-init! _%self149017%_ _%rest149014%_))))
    (define Error:::init!::specialize
      (lambda (__klass149329 __method-table149330)
        (let ((__message149331
               (let ((__slot149332
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149329 'message))))
                 (if __slot149332
                     __slot149332
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self149012%_ _%message149013%_ . _%rest149014%_)
            (let* ((_%self149017%_ _%self149012%_)
                   (_%message149031%_
                    (if (string? _%message149013%_)
                        _%message149013%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g149026149028%_)
                           (display _%message149013%_ _%$%g149026149028%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149017%_
                 _%message149031%_
                 __message149331
                 '#f
                 '#f))
              (apply class-instance-init! _%self149017%_ _%rest149014%_))))))
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
      (lambda (_%self148717%_ _%port148718%_)
        (let ((_%self148721%_ _%self148717%_))
          (let ((_%tmp-port148731%_ (open-output-string))
                (_%display-error-newline148732%_
                 (> (output-port-column _%port148718%_) '0)))
            (fix-port-width! _%tmp-port148731%_)
            (let ((__tmp149421
                   (lambda ()
                     (if _%display-error-newline148732%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e148735%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148721%_ 'where))))
                       (if _%$e148735%_ (display _%$e148735%_) (display '"?")))
                     (let ((__tmp149422
                            (let ((__tmp149423
                                   (let ((_%obj148739%_ _%self148721%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj148739%_))
                                         (let ((_%obj148744%_ _%obj148739%_))
                                           (declare (not safe))
                                           (__object-class _%obj148744%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj148739%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp149423))))
                       (declare (not safe))
                       (display* '" [" __tmp149422 '"]: "))
                     (let ((__tmp149424
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148721%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp149424))
                     (let ((_%irritants148759%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148721%_ 'irritants))))
                       (if (null? _%irritants148759%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj148761%_)
                                (if (u8vector? _%obj148761%_)
                                    (let ((__tmp149425
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj148761%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp149425))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj148761%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants148759%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont148762148764%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self148721%_
                                   'continuation))))
                           (if _%$%cont148762148764%_
                               (let ((_%cont148766%_ _%$%cont148762148764%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont148766%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp149421
               current-output-port
               _%tmp-port148731%_))
            (let ((__tmp149426 (get-output-string _%tmp-port148731%_)))
              (declare (not safe))
              (##write-string __tmp149426 _%port148718%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass149333 __method-table149334)
        (let ((__where149335
               (let ((__slot149339
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149333 'where))))
                 (if __slot149339
                     __slot149339
                     (error '"Unknown slot" 'where))))
              (__irritants149336
               (let ((__slot149340
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149333 'irritants))))
                 (if __slot149340
                     __slot149340
                     (error '"Unknown slot" 'irritants))))
              (__continuation149337
               (let ((__slot149341
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149333 'continuation))))
                 (if __slot149341
                     __slot149341
                     (error '"Unknown slot" 'continuation))))
              (__message149338
               (let ((__slot149342
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149333 'message))))
                 (if __slot149342
                     __slot149342
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self148717%_ _%port148718%_)
            (let ((_%self148721%_ _%self148717%_))
              (let ((_%tmp-port148731%_ (open-output-string))
                    (_%display-error-newline148732%_
                     (> (output-port-column _%port148718%_) '0)))
                (fix-port-width! _%tmp-port148731%_)
                (let ((__tmp149427
                       (lambda ()
                         (if _%display-error-newline148732%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e148735%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148721%_
                                   __where149335
                                   '#f
                                   '#f))))
                           (if _%$e148735%_
                               (display _%$e148735%_)
                               (display '"?")))
                         (let ((__tmp149428
                                (let ((__tmp149429
                                       (let ((_%obj148739%_ _%self148721%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj148739%_))
                                             (let ((_%obj148744%_
                                                    _%obj148739%_))
                                               (declare (not safe))
                                               (__object-class _%obj148744%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj148739%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp149429))))
                           (declare (not safe))
                           (display* '" [" __tmp149428 '"]: "))
                         (let ((__tmp149430
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148721%_
                                   __message149338
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp149430))
                         (let ((_%irritants148759%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148721%_
                                   __irritants149336
                                   '#f
                                   '#f))))
                           (if (null? _%irritants148759%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj148761%_)
                                    (if (u8vector? _%obj148761%_)
                                        (let ((__tmp149431
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj148761%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp149431))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj148761%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants148759%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont148762148764%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self148721%_
                                       __continuation149337
                                       '#f
                                       '#f))))
                               (if _%$%cont148762148764%_
                                   (let ((_%cont148766%_
                                          _%$%cont148762148764%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont148766%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp149427
                   current-output-port
                   _%tmp-port148731%_))
                (let ((__tmp149432 (get-output-string _%tmp-port148731%_)))
                  (declare (not safe))
                  (##write-string __tmp149432 _%port148718%_))))))))
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
      (lambda (_%self148574%_ _%port148575%_)
        (let* ((_%self148578%_ _%self148574%_)
               (_%tmp-port148588%_ (open-output-string)))
          (fix-port-width! _%tmp-port148588%_)
          (let ((__tmp149433
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self148578%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp149433 _%tmp-port148588%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont148589148591%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self148578%_ 'continuation))))
                (if _%$%cont148589148591%_
                    (let ((_%cont148593%_ _%$%cont148589148591%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port148588%_)
                      (newline _%tmp-port148588%_)
                      (display-continuation-backtrace
                       _%cont148593%_
                       _%tmp-port148588%_))
                    '#f))
              '#!void)
          (let ((__tmp149434 (get-output-string _%tmp-port148588%_)))
            (declare (not safe))
            (##write-string __tmp149434 _%port148575%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass149343 __method-table149344)
        (let ((__continuation149345
               (let ((__slot149347
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149343 'continuation))))
                 (if __slot149347
                     __slot149347
                     (error '"Unknown slot" 'continuation))))
              (__exception149346
               (let ((__slot149348
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149343 'exception))))
                 (if __slot149348
                     __slot149348
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self148574%_ _%port148575%_)
            (let* ((_%self148578%_ _%self148574%_)
                   (_%tmp-port148588%_ (open-output-string)))
              (fix-port-width! _%tmp-port148588%_)
              (let ((__tmp149435
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self148578%_
                        __exception149346
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp149435 _%tmp-port148588%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont148589148591%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self148578%_
                            __continuation149345
                            '#f
                            '#f))))
                    (if _%$%cont148589148591%_
                        (let ((_%cont148593%_ _%$%cont148589148591%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port148588%_)
                          (newline _%tmp-port148588%_)
                          (display-continuation-backtrace
                           _%cont148593%_
                           _%tmp-port148588%_))
                        '#f))
                  '#!void)
              (let ((__tmp149436 (get-output-string _%tmp-port148588%_)))
                (declare (not safe))
                (##write-string __tmp149436 _%port148575%_)))))))
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
      (lambda (_%port148446%_)
        (if (macro-character-port? _%port148446%_)
            (let ((_%old-width148448%_
                   (macro-character-port-output-width _%port148446%_)))
              (macro-character-port-output-width-set!
               _%port148446%_
               (lambda (_%port148450%_) '512))
              _%old-width148448%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port148443%_ _%old-width148444%_)
        (if (macro-character-port? _%port148443%_)
            (macro-character-port-output-width-set!
             _%port148443%_
             _%old-width148444%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e148441%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e148441%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn148435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148435%_))
            (let ((_%e148438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148435%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e148438%_))
            (macro-abandoned-mutex-exception? _%exn148435%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn148431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148431%_))
            (let ((_%e148433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148431%_ 'exception))))
              (macro-cfun-conversion-exception? _%e148433%_))
            (macro-cfun-conversion-exception? _%exn148431%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn148427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148427%_))
            (let ((_%e148429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148427%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148429%_)
                  (macro-cfun-conversion-exception-arguments _%e148429%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e148429%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148427%_)
                (macro-cfun-conversion-exception-arguments _%exn148427%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn148427%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn148423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148423%_))
            (let ((_%e148425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148423%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148425%_)
                  (macro-cfun-conversion-exception-code _%e148425%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e148425%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148423%_)
                (macro-cfun-conversion-exception-code _%exn148423%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn148423%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn148419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148419%_))
            (let ((_%e148421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148419%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148421%_)
                  (macro-cfun-conversion-exception-message _%e148421%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e148421%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148419%_)
                (macro-cfun-conversion-exception-message _%exn148419%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn148419%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn148413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148413%_))
            (let ((_%e148416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148413%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148416%_)
                  (macro-cfun-conversion-exception-procedure _%e148416%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e148416%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148413%_)
                (macro-cfun-conversion-exception-procedure _%exn148413%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn148413%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn148409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148409%_))
            (let ((_%e148411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148409%_ 'exception))))
              (macro-datum-parsing-exception? _%e148411%_))
            (macro-datum-parsing-exception? _%exn148409%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn148405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148405%_))
            (let ((_%e148407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148405%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148407%_)
                  (macro-datum-parsing-exception-kind _%e148407%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e148407%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148405%_)
                (macro-datum-parsing-exception-kind _%exn148405%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn148405%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn148401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148401%_))
            (let ((_%e148403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148401%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148403%_)
                  (macro-datum-parsing-exception-parameters _%e148403%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e148403%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148401%_)
                (macro-datum-parsing-exception-parameters _%exn148401%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn148401%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn148395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148395%_))
            (let ((_%e148398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148395%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148398%_)
                  (macro-datum-parsing-exception-readenv _%e148398%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e148398%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148395%_)
                (macro-datum-parsing-exception-readenv _%exn148395%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn148395%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn148389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148389%_))
            (let ((_%e148392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148389%_ 'exception))))
              (macro-deadlock-exception? _%e148392%_))
            (macro-deadlock-exception? _%exn148389%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn148385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148385%_))
            (let ((_%e148387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148385%_ 'exception))))
              (macro-divide-by-zero-exception? _%e148387%_))
            (macro-divide-by-zero-exception? _%exn148385%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn148381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148381%_))
            (let ((_%e148383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148381%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148383%_)
                  (macro-divide-by-zero-exception-arguments _%e148383%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e148383%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148381%_)
                (macro-divide-by-zero-exception-arguments _%exn148381%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn148381%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn148375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148375%_))
            (let ((_%e148378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148375%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148378%_)
                  (macro-divide-by-zero-exception-procedure _%e148378%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e148378%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148375%_)
                (macro-divide-by-zero-exception-procedure _%exn148375%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn148375%_ '())))))))
    (define error-exception?
      (lambda (_%exn148371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148371%_))
            (let ((_%e148373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148371%_ 'exception))))
              (macro-error-exception? _%e148373%_))
            (macro-error-exception? _%exn148371%_))))
    (define error-exception-message
      (lambda (_%exn148367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148367%_))
            (let ((_%e148369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148367%_ 'exception))))
              (if (macro-error-exception? _%e148369%_)
                  (macro-error-exception-message _%e148369%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e148369%_ '())))))
            (if (macro-error-exception? _%exn148367%_)
                (macro-error-exception-message _%exn148367%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn148367%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn148361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148361%_))
            (let ((_%e148364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148361%_ 'exception))))
              (if (macro-error-exception? _%e148364%_)
                  (macro-error-exception-parameters _%e148364%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e148364%_ '())))))
            (if (macro-error-exception? _%exn148361%_)
                (macro-error-exception-parameters _%exn148361%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn148361%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn148357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148357%_))
            (let ((_%e148359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148357%_ 'exception))))
              (macro-expression-parsing-exception? _%e148359%_))
            (macro-expression-parsing-exception? _%exn148357%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn148353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148353%_))
            (let ((_%e148355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148353%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148355%_)
                  (macro-expression-parsing-exception-kind _%e148355%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e148355%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148353%_)
                (macro-expression-parsing-exception-kind _%exn148353%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn148353%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn148349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148349%_))
            (let ((_%e148351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148349%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148351%_)
                  (macro-expression-parsing-exception-parameters _%e148351%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e148351%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148349%_)
                (macro-expression-parsing-exception-parameters _%exn148349%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn148349%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn148343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148343%_))
            (let ((_%e148346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148343%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148346%_)
                  (macro-expression-parsing-exception-source _%e148346%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e148346%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148343%_)
                (macro-expression-parsing-exception-source _%exn148343%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn148343%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn148339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148339%_))
            (let ((_%e148341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148339%_ 'exception))))
              (macro-file-exists-exception? _%e148341%_))
            (macro-file-exists-exception? _%exn148339%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn148335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148335%_))
            (let ((_%e148337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148335%_ 'exception))))
              (if (macro-file-exists-exception? _%e148337%_)
                  (macro-file-exists-exception-arguments _%e148337%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e148337%_ '())))))
            (if (macro-file-exists-exception? _%exn148335%_)
                (macro-file-exists-exception-arguments _%exn148335%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn148335%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn148329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148329%_))
            (let ((_%e148332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148329%_ 'exception))))
              (if (macro-file-exists-exception? _%e148332%_)
                  (macro-file-exists-exception-procedure _%e148332%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e148332%_ '())))))
            (if (macro-file-exists-exception? _%exn148329%_)
                (macro-file-exists-exception-procedure _%exn148329%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn148329%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn148325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148325%_))
            (let ((_%e148327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148325%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e148327%_))
            (macro-fixnum-overflow-exception? _%exn148325%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn148321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148321%_))
            (let ((_%e148323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148321%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148323%_)
                  (macro-fixnum-overflow-exception-arguments _%e148323%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e148323%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148321%_)
                (macro-fixnum-overflow-exception-arguments _%exn148321%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn148321%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn148315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148315%_))
            (let ((_%e148318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148315%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148318%_)
                  (macro-fixnum-overflow-exception-procedure _%e148318%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e148318%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148315%_)
                (macro-fixnum-overflow-exception-procedure _%exn148315%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn148315%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn148309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148309%_))
            (let ((_%e148312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148309%_ 'exception))))
              (macro-heap-overflow-exception? _%e148312%_))
            (macro-heap-overflow-exception? _%exn148309%_))))
    (define inactive-thread-exception?
      (lambda (_%exn148305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148305%_))
            (let ((_%e148307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148305%_ 'exception))))
              (macro-inactive-thread-exception? _%e148307%_))
            (macro-inactive-thread-exception? _%exn148305%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn148301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148301%_))
            (let ((_%e148303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148301%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148303%_)
                  (macro-inactive-thread-exception-arguments _%e148303%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e148303%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148301%_)
                (macro-inactive-thread-exception-arguments _%exn148301%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn148301%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn148295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148295%_))
            (let ((_%e148298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148295%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148298%_)
                  (macro-inactive-thread-exception-procedure _%e148298%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e148298%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148295%_)
                (macro-inactive-thread-exception-procedure _%exn148295%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn148295%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn148291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148291%_))
            (let ((_%e148293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148291%_ 'exception))))
              (macro-initialized-thread-exception? _%e148293%_))
            (macro-initialized-thread-exception? _%exn148291%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn148287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148287%_))
            (let ((_%e148289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148287%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148289%_)
                  (macro-initialized-thread-exception-arguments _%e148289%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e148289%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148287%_)
                (macro-initialized-thread-exception-arguments _%exn148287%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn148287%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn148281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148281%_))
            (let ((_%e148284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148281%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148284%_)
                  (macro-initialized-thread-exception-procedure _%e148284%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e148284%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148281%_)
                (macro-initialized-thread-exception-procedure _%exn148281%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn148281%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn148277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148277%_))
            (let ((_%e148279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148277%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e148279%_))
            (macro-invalid-hash-number-exception? _%exn148277%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn148273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148273%_))
            (let ((_%e148275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148273%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148275%_)
                  (macro-invalid-hash-number-exception-arguments _%e148275%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e148275%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148273%_)
                (macro-invalid-hash-number-exception-arguments _%exn148273%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn148273%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn148267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148267%_))
            (let ((_%e148270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148267%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148270%_)
                  (macro-invalid-hash-number-exception-procedure _%e148270%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e148270%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148267%_)
                (macro-invalid-hash-number-exception-procedure _%exn148267%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn148267%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn148263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148263%_))
            (let ((_%e148265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148263%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e148265%_))
            (macro-invalid-utf8-encoding-exception? _%exn148263%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn148259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148259%_))
            (let ((_%e148261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148259%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148261%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e148261%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e148261%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148259%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn148259%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn148259%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn148253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148253%_))
            (let ((_%e148256%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148253%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148256%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e148256%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e148256%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148253%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn148253%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn148253%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn148249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148249%_))
            (let ((_%e148251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148249%_ 'exception))))
              (macro-join-timeout-exception? _%e148251%_))
            (macro-join-timeout-exception? _%exn148249%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn148245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148245%_))
            (let ((_%e148247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148245%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148247%_)
                  (macro-join-timeout-exception-arguments _%e148247%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e148247%_ '())))))
            (if (macro-join-timeout-exception? _%exn148245%_)
                (macro-join-timeout-exception-arguments _%exn148245%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn148245%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn148239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148239%_))
            (let ((_%e148242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148239%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148242%_)
                  (macro-join-timeout-exception-procedure _%e148242%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e148242%_ '())))))
            (if (macro-join-timeout-exception? _%exn148239%_)
                (macro-join-timeout-exception-procedure _%exn148239%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn148239%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn148235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148235%_))
            (let ((_%e148237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148235%_ 'exception))))
              (macro-keyword-expected-exception? _%e148237%_))
            (macro-keyword-expected-exception? _%exn148235%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn148231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148231%_))
            (let ((_%e148233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148231%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148233%_)
                  (macro-keyword-expected-exception-arguments _%e148233%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e148233%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148231%_)
                (macro-keyword-expected-exception-arguments _%exn148231%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn148231%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn148225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148225%_))
            (let ((_%e148228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148225%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148228%_)
                  (macro-keyword-expected-exception-procedure _%e148228%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e148228%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148225%_)
                (macro-keyword-expected-exception-procedure _%exn148225%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn148225%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn148221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148221%_))
            (let ((_%e148223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148221%_ 'exception))))
              (macro-length-mismatch-exception? _%e148223%_))
            (macro-length-mismatch-exception? _%exn148221%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn148217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148217%_))
            (let ((_%e148219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148217%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148219%_)
                  (macro-length-mismatch-exception-arg-id _%e148219%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e148219%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148217%_)
                (macro-length-mismatch-exception-arg-id _%exn148217%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn148217%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn148213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148213%_))
            (let ((_%e148215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148213%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148215%_)
                  (macro-length-mismatch-exception-arguments _%e148215%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e148215%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148213%_)
                (macro-length-mismatch-exception-arguments _%exn148213%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn148213%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn148207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148207%_))
            (let ((_%e148210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148207%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148210%_)
                  (macro-length-mismatch-exception-procedure _%e148210%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e148210%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148207%_)
                (macro-length-mismatch-exception-procedure _%exn148207%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn148207%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn148203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148203%_))
            (let ((_%e148205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148203%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e148205%_))
            (macro-mailbox-receive-timeout-exception? _%exn148203%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn148199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148199%_))
            (let ((_%e148201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148199%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148201%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e148201%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e148201%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148199%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn148199%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn148199%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn148193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148193%_))
            (let ((_%e148196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148193%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148196%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e148196%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e148196%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148193%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn148193%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn148193%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn148189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148189%_))
            (let ((_%e148191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148189%_ 'exception))))
              (macro-module-not-found-exception? _%e148191%_))
            (macro-module-not-found-exception? _%exn148189%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn148185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148185%_))
            (let ((_%e148187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148185%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148187%_)
                  (macro-module-not-found-exception-arguments _%e148187%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e148187%_ '())))))
            (if (macro-module-not-found-exception? _%exn148185%_)
                (macro-module-not-found-exception-arguments _%exn148185%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn148185%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn148179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148179%_))
            (let ((_%e148182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148179%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148182%_)
                  (macro-module-not-found-exception-procedure _%e148182%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e148182%_ '())))))
            (if (macro-module-not-found-exception? _%exn148179%_)
                (macro-module-not-found-exception-procedure _%exn148179%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn148179%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn148173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148173%_))
            (let ((_%e148176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148173%_ 'exception))))
              (macro-multiple-c-return-exception? _%e148176%_))
            (macro-multiple-c-return-exception? _%exn148173%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn148169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148169%_))
            (let ((_%e148171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148169%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e148171%_))
            (macro-no-such-file-or-directory-exception? _%exn148169%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn148165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148165%_))
            (let ((_%e148167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148165%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148167%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e148167%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e148167%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148165%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn148165%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn148165%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn148159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148159%_))
            (let ((_%e148162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148159%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148162%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e148162%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e148162%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148159%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn148159%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn148159%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn148155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148155%_))
            (let ((_%e148157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148155%_ 'exception))))
              (macro-noncontinuable-exception? _%e148157%_))
            (macro-noncontinuable-exception? _%exn148155%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn148149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148149%_))
            (let ((_%e148152%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148149%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e148152%_)
                  (macro-noncontinuable-exception-reason _%e148152%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e148152%_ '())))))
            (if (macro-noncontinuable-exception? _%exn148149%_)
                (macro-noncontinuable-exception-reason _%exn148149%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn148149%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn148145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148145%_))
            (let ((_%e148147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148145%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e148147%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn148145%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn148141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148141%_))
            (let ((_%e148143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148141%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148143%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e148143%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e148143%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148141%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn148141%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn148141%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn148135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148135%_))
            (let ((_%e148138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148135%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148138%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e148138%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e148138%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148135%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn148135%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn148135%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn148131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148131%_))
            (let ((_%e148133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148131%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e148133%_))
            (macro-nonprocedure-operator-exception? _%exn148131%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn148127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148127%_))
            (let ((_%e148129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148127%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148129%_)
                  (macro-nonprocedure-operator-exception-arguments _%e148129%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e148129%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148127%_)
                (macro-nonprocedure-operator-exception-arguments _%exn148127%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn148127%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn148123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148123%_))
            (let ((_%e148125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148123%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148125%_)
                  (macro-nonprocedure-operator-exception-code _%e148125%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e148125%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148123%_)
                (macro-nonprocedure-operator-exception-code _%exn148123%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn148123%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn148119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148119%_))
            (let ((_%e148121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148119%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148121%_)
                  (macro-nonprocedure-operator-exception-operator _%e148121%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e148121%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148119%_)
                (macro-nonprocedure-operator-exception-operator _%exn148119%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn148119%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn148113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148113%_))
            (let ((_%e148116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148113%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148116%_)
                  (macro-nonprocedure-operator-exception-rte _%e148116%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e148116%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148113%_)
                (macro-nonprocedure-operator-exception-rte _%exn148113%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn148113%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn148109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148109%_))
            (let ((_%e148111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148109%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e148111%_))
            (macro-not-in-compilation-context-exception? _%exn148109%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn148105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148105%_))
            (let ((_%e148107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148105%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148107%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e148107%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e148107%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148105%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn148105%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn148105%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn148099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148099%_))
            (let ((_%e148102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148099%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148102%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e148102%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e148102%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148099%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn148099%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn148099%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn148095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148095%_))
            (let ((_%e148097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148095%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e148097%_))
            (macro-number-of-arguments-limit-exception? _%exn148095%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn148091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148091%_))
            (let ((_%e148093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148091%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148093%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e148093%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e148093%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148091%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn148091%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn148091%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn148085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148085%_))
            (let ((_%e148088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148085%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148088%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e148088%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e148088%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148085%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn148085%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn148085%_ '())))))))
    (define os-exception?
      (lambda (_%exn148081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148081%_))
            (let ((_%e148083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148081%_ 'exception))))
              (macro-os-exception? _%e148083%_))
            (macro-os-exception? _%exn148081%_))))
    (define os-exception-arguments
      (lambda (_%exn148077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148077%_))
            (let ((_%e148079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148077%_ 'exception))))
              (if (macro-os-exception? _%e148079%_)
                  (macro-os-exception-arguments _%e148079%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e148079%_ '())))))
            (if (macro-os-exception? _%exn148077%_)
                (macro-os-exception-arguments _%exn148077%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn148077%_ '())))))))
    (define os-exception-code
      (lambda (_%exn148073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148073%_))
            (let ((_%e148075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148073%_ 'exception))))
              (if (macro-os-exception? _%e148075%_)
                  (macro-os-exception-code _%e148075%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e148075%_ '())))))
            (if (macro-os-exception? _%exn148073%_)
                (macro-os-exception-code _%exn148073%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn148073%_ '())))))))
    (define os-exception-message
      (lambda (_%exn148069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148069%_))
            (let ((_%e148071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148069%_ 'exception))))
              (if (macro-os-exception? _%e148071%_)
                  (macro-os-exception-message _%e148071%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e148071%_ '())))))
            (if (macro-os-exception? _%exn148069%_)
                (macro-os-exception-message _%exn148069%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn148069%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn148063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148063%_))
            (let ((_%e148066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148063%_ 'exception))))
              (if (macro-os-exception? _%e148066%_)
                  (macro-os-exception-procedure _%e148066%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e148066%_ '())))))
            (if (macro-os-exception? _%exn148063%_)
                (macro-os-exception-procedure _%exn148063%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn148063%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn148059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148059%_))
            (let ((_%e148061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148059%_ 'exception))))
              (macro-permission-denied-exception? _%e148061%_))
            (macro-permission-denied-exception? _%exn148059%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn148055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148055%_))
            (let ((_%e148057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148055%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148057%_)
                  (macro-permission-denied-exception-arguments _%e148057%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e148057%_ '())))))
            (if (macro-permission-denied-exception? _%exn148055%_)
                (macro-permission-denied-exception-arguments _%exn148055%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn148055%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn148049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148049%_))
            (let ((_%e148052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148049%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148052%_)
                  (macro-permission-denied-exception-procedure _%e148052%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e148052%_ '())))))
            (if (macro-permission-denied-exception? _%exn148049%_)
                (macro-permission-denied-exception-procedure _%exn148049%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn148049%_ '())))))))
    (define range-exception?
      (lambda (_%exn148045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148045%_))
            (let ((_%e148047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148045%_ 'exception))))
              (macro-range-exception? _%e148047%_))
            (macro-range-exception? _%exn148045%_))))
    (define range-exception-arg-id
      (lambda (_%exn148041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148041%_))
            (let ((_%e148043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148041%_ 'exception))))
              (if (macro-range-exception? _%e148043%_)
                  (macro-range-exception-arg-id _%e148043%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e148043%_ '())))))
            (if (macro-range-exception? _%exn148041%_)
                (macro-range-exception-arg-id _%exn148041%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn148041%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn148037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148037%_))
            (let ((_%e148039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148037%_ 'exception))))
              (if (macro-range-exception? _%e148039%_)
                  (macro-range-exception-arguments _%e148039%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e148039%_ '())))))
            (if (macro-range-exception? _%exn148037%_)
                (macro-range-exception-arguments _%exn148037%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn148037%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn148031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148031%_))
            (let ((_%e148034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148031%_ 'exception))))
              (if (macro-range-exception? _%e148034%_)
                  (macro-range-exception-procedure _%e148034%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e148034%_ '())))))
            (if (macro-range-exception? _%exn148031%_)
                (macro-range-exception-procedure _%exn148031%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn148031%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn148027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148027%_))
            (let ((_%e148029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148027%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e148029%_))
            (macro-rpc-remote-error-exception? _%exn148027%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn148023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148023%_))
            (let ((_%e148025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148023%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148025%_)
                  (macro-rpc-remote-error-exception-arguments _%e148025%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e148025%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148023%_)
                (macro-rpc-remote-error-exception-arguments _%exn148023%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn148023%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn148019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148019%_))
            (let ((_%e148021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148019%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148021%_)
                  (macro-rpc-remote-error-exception-message _%e148021%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e148021%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148019%_)
                (macro-rpc-remote-error-exception-message _%exn148019%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn148019%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn148013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148013%_))
            (let ((_%e148016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148013%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148016%_)
                  (macro-rpc-remote-error-exception-procedure _%e148016%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e148016%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148013%_)
                (macro-rpc-remote-error-exception-procedure _%exn148013%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn148013%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn148009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148009%_))
            (let ((_%e148011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148009%_ 'exception))))
              (macro-scheduler-exception? _%e148011%_))
            (macro-scheduler-exception? _%exn148009%_))))
    (define scheduler-exception-reason
      (lambda (_%exn148003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148003%_))
            (let ((_%e148006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148003%_ 'exception))))
              (if (macro-scheduler-exception? _%e148006%_)
                  (macro-scheduler-exception-reason _%e148006%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e148006%_ '())))))
            (if (macro-scheduler-exception? _%exn148003%_)
                (macro-scheduler-exception-reason _%exn148003%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn148003%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn147999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147999%_))
            (let ((_%e148001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147999%_ 'exception))))
              (macro-sfun-conversion-exception? _%e148001%_))
            (macro-sfun-conversion-exception? _%exn147999%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn147995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147995%_))
            (let ((_%e147997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147995%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e147997%_)
                  (macro-sfun-conversion-exception-arguments _%e147997%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e147997%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn147995%_)
                (macro-sfun-conversion-exception-arguments _%exn147995%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn147995%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn147991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147991%_))
            (let ((_%e147993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147991%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e147993%_)
                  (macro-sfun-conversion-exception-code _%e147993%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e147993%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn147991%_)
                (macro-sfun-conversion-exception-code _%exn147991%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn147991%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn147987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147987%_))
            (let ((_%e147989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147987%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e147989%_)
                  (macro-sfun-conversion-exception-message _%e147989%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e147989%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn147987%_)
                (macro-sfun-conversion-exception-message _%exn147987%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn147987%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn147981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147981%_))
            (let ((_%e147984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147981%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e147984%_)
                  (macro-sfun-conversion-exception-procedure _%e147984%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e147984%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn147981%_)
                (macro-sfun-conversion-exception-procedure _%exn147981%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn147981%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn147975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147975%_))
            (let ((_%e147978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147975%_ 'exception))))
              (macro-stack-overflow-exception? _%e147978%_))
            (macro-stack-overflow-exception? _%exn147975%_))))
    (define started-thread-exception?
      (lambda (_%exn147971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147971%_))
            (let ((_%e147973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147971%_ 'exception))))
              (macro-started-thread-exception? _%e147973%_))
            (macro-started-thread-exception? _%exn147971%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn147967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147967%_))
            (let ((_%e147969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147967%_ 'exception))))
              (if (macro-started-thread-exception? _%e147969%_)
                  (macro-started-thread-exception-arguments _%e147969%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e147969%_ '())))))
            (if (macro-started-thread-exception? _%exn147967%_)
                (macro-started-thread-exception-arguments _%exn147967%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn147967%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn147961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147961%_))
            (let ((_%e147964%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147961%_ 'exception))))
              (if (macro-started-thread-exception? _%e147964%_)
                  (macro-started-thread-exception-procedure _%e147964%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e147964%_ '())))))
            (if (macro-started-thread-exception? _%exn147961%_)
                (macro-started-thread-exception-procedure _%exn147961%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn147961%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn147957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147957%_))
            (let ((_%e147959%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147957%_ 'exception))))
              (macro-terminated-thread-exception? _%e147959%_))
            (macro-terminated-thread-exception? _%exn147957%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn147953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147953%_))
            (let ((_%e147955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147953%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e147955%_)
                  (macro-terminated-thread-exception-arguments _%e147955%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e147955%_ '())))))
            (if (macro-terminated-thread-exception? _%exn147953%_)
                (macro-terminated-thread-exception-arguments _%exn147953%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn147953%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn147947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147947%_))
            (let ((_%e147950%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147947%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e147950%_)
                  (macro-terminated-thread-exception-procedure _%e147950%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e147950%_ '())))))
            (if (macro-terminated-thread-exception? _%exn147947%_)
                (macro-terminated-thread-exception-procedure _%exn147947%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn147947%_ '())))))))
    (define type-exception?
      (lambda (_%exn147943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147943%_))
            (let ((_%e147945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147943%_ 'exception))))
              (macro-type-exception? _%e147945%_))
            (macro-type-exception? _%exn147943%_))))
    (define type-exception-arg-id
      (lambda (_%exn147939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147939%_))
            (let ((_%e147941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147939%_ 'exception))))
              (if (macro-type-exception? _%e147941%_)
                  (macro-type-exception-arg-id _%e147941%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e147941%_ '())))))
            (if (macro-type-exception? _%exn147939%_)
                (macro-type-exception-arg-id _%exn147939%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn147939%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn147935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147935%_))
            (let ((_%e147937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147935%_ 'exception))))
              (if (macro-type-exception? _%e147937%_)
                  (macro-type-exception-arguments _%e147937%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e147937%_ '())))))
            (if (macro-type-exception? _%exn147935%_)
                (macro-type-exception-arguments _%exn147935%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn147935%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn147931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147931%_))
            (let ((_%e147933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147931%_ 'exception))))
              (if (macro-type-exception? _%e147933%_)
                  (macro-type-exception-procedure _%e147933%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e147933%_ '())))))
            (if (macro-type-exception? _%exn147931%_)
                (macro-type-exception-procedure _%exn147931%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn147931%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn147925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147925%_))
            (let ((_%e147928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147925%_ 'exception))))
              (if (macro-type-exception? _%e147928%_)
                  (macro-type-exception-type-id _%e147928%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e147928%_ '())))))
            (if (macro-type-exception? _%exn147925%_)
                (macro-type-exception-type-id _%exn147925%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn147925%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn147921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147921%_))
            (let ((_%e147923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147921%_ 'exception))))
              (macro-unbound-global-exception? _%e147923%_))
            (macro-unbound-global-exception? _%exn147921%_))))
    (define unbound-global-exception-code
      (lambda (_%exn147917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147917%_))
            (let ((_%e147919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147917%_ 'exception))))
              (if (macro-unbound-global-exception? _%e147919%_)
                  (macro-unbound-global-exception-code _%e147919%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e147919%_ '())))))
            (if (macro-unbound-global-exception? _%exn147917%_)
                (macro-unbound-global-exception-code _%exn147917%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn147917%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn147913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147913%_))
            (let ((_%e147915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147913%_ 'exception))))
              (if (macro-unbound-global-exception? _%e147915%_)
                  (macro-unbound-global-exception-rte _%e147915%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e147915%_ '())))))
            (if (macro-unbound-global-exception? _%exn147913%_)
                (macro-unbound-global-exception-rte _%exn147913%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn147913%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn147907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147907%_))
            (let ((_%e147910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147907%_ 'exception))))
              (if (macro-unbound-global-exception? _%e147910%_)
                  (macro-unbound-global-exception-variable _%e147910%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e147910%_ '())))))
            (if (macro-unbound-global-exception? _%exn147907%_)
                (macro-unbound-global-exception-variable _%exn147907%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn147907%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn147903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147903%_))
            (let ((_%e147905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147903%_ 'exception))))
              (macro-unbound-key-exception? _%e147905%_))
            (macro-unbound-key-exception? _%exn147903%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn147899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147899%_))
            (let ((_%e147901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147899%_ 'exception))))
              (if (macro-unbound-key-exception? _%e147901%_)
                  (macro-unbound-key-exception-arguments _%e147901%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e147901%_ '())))))
            (if (macro-unbound-key-exception? _%exn147899%_)
                (macro-unbound-key-exception-arguments _%exn147899%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn147899%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn147893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147893%_))
            (let ((_%e147896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147893%_ 'exception))))
              (if (macro-unbound-key-exception? _%e147896%_)
                  (macro-unbound-key-exception-procedure _%e147896%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e147896%_ '())))))
            (if (macro-unbound-key-exception? _%exn147893%_)
                (macro-unbound-key-exception-procedure _%exn147893%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn147893%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn147889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147889%_))
            (let ((_%e147891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147889%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e147891%_))
            (macro-unbound-os-environment-variable-exception? _%exn147889%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn147885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147885%_))
            (let ((_%e147887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147885%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147887%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e147887%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e147887%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147885%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn147885%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn147885%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn147879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147879%_))
            (let ((_%e147882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147879%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147882%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e147882%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e147882%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147879%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn147879%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn147879%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn147875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147875%_))
            (let ((_%e147877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147875%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e147877%_))
            (macro-unbound-serial-number-exception? _%exn147875%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn147871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147871%_))
            (let ((_%e147873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147871%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147873%_)
                  (macro-unbound-serial-number-exception-arguments _%e147873%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e147873%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147871%_)
                (macro-unbound-serial-number-exception-arguments _%exn147871%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn147871%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn147865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147865%_))
            (let ((_%e147868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147865%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147868%_)
                  (macro-unbound-serial-number-exception-procedure _%e147868%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e147868%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147865%_)
                (macro-unbound-serial-number-exception-procedure _%exn147865%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn147865%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn147861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147861%_))
            (let ((_%e147863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147861%_ 'exception))))
              (macro-uncaught-exception? _%e147863%_))
            (macro-uncaught-exception? _%exn147861%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn147857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147857%_))
            (let ((_%e147859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147857%_ 'exception))))
              (if (macro-uncaught-exception? _%e147859%_)
                  (macro-uncaught-exception-arguments _%e147859%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e147859%_ '())))))
            (if (macro-uncaught-exception? _%exn147857%_)
                (macro-uncaught-exception-arguments _%exn147857%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn147857%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn147853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147853%_))
            (let ((_%e147855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147853%_ 'exception))))
              (if (macro-uncaught-exception? _%e147855%_)
                  (macro-uncaught-exception-procedure _%e147855%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e147855%_ '())))))
            (if (macro-uncaught-exception? _%exn147853%_)
                (macro-uncaught-exception-procedure _%exn147853%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn147853%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn147847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147847%_))
            (let ((_%e147850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147847%_ 'exception))))
              (if (macro-uncaught-exception? _%e147850%_)
                  (macro-uncaught-exception-reason _%e147850%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e147850%_ '())))))
            (if (macro-uncaught-exception? _%exn147847%_)
                (macro-uncaught-exception-reason _%exn147847%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn147847%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn147843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147843%_))
            (let ((_%e147845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147843%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e147845%_))
            (macro-uninitialized-thread-exception? _%exn147843%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn147839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147839%_))
            (let ((_%e147841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147839%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147841%_)
                  (macro-uninitialized-thread-exception-arguments _%e147841%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e147841%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147839%_)
                (macro-uninitialized-thread-exception-arguments _%exn147839%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn147839%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn147833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147833%_))
            (let ((_%e147836%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147833%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147836%_)
                  (macro-uninitialized-thread-exception-procedure _%e147836%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e147836%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147833%_)
                (macro-uninitialized-thread-exception-procedure _%exn147833%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn147833%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn147829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147829%_))
            (let ((_%e147831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147829%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e147831%_))
            (macro-unknown-keyword-argument-exception? _%exn147829%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn147825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147825%_))
            (let ((_%e147827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147825%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147827%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e147827%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e147827%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147825%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn147825%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn147825%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn147819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147819%_))
            (let ((_%e147822%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147819%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147822%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e147822%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e147822%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147819%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn147819%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn147819%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn147815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147815%_))
            (let ((_%e147817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147815%_ 'exception))))
              (macro-unterminated-process-exception? _%e147817%_))
            (macro-unterminated-process-exception? _%exn147815%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn147811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147811%_))
            (let ((_%e147813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147811%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147813%_)
                  (macro-unterminated-process-exception-arguments _%e147813%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e147813%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147811%_)
                (macro-unterminated-process-exception-arguments _%exn147811%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn147811%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn147805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147805%_))
            (let ((_%e147808%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147805%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147808%_)
                  (macro-unterminated-process-exception-procedure _%e147808%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e147808%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147805%_)
                (macro-unterminated-process-exception-procedure _%exn147805%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn147805%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn147801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147801%_))
            (let ((_%e147803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147801%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e147803%_))
            (macro-wrong-number-of-arguments-exception? _%exn147801%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn147797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147797%_))
            (let ((_%e147799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147797%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147799%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e147799%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e147799%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147797%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn147797%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn147797%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn147791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147791%_))
            (let ((_%e147794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147791%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147794%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e147794%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e147794%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147791%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn147791%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn147791%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn147787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147787%_))
            (let ((_%e147789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147787%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e147789%_))
            (macro-wrong-number-of-values-exception? _%exn147787%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn147783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147783%_))
            (let ((_%e147785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147783%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147785%_)
                  (macro-wrong-number-of-values-exception-code _%e147785%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e147785%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147783%_)
                (macro-wrong-number-of-values-exception-code _%exn147783%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn147783%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn147779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147779%_))
            (let ((_%e147781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147779%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147781%_)
                  (macro-wrong-number-of-values-exception-rte _%e147781%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e147781%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147779%_)
                (macro-wrong-number-of-values-exception-rte _%exn147779%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn147779%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn147773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147773%_))
            (let ((_%e147776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147773%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147776%_)
                  (macro-wrong-number-of-values-exception-vals _%e147776%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e147776%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147773%_)
                (macro-wrong-number-of-values-exception-vals _%exn147773%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn147773%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn147767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147767%_))
            (let ((_%e147770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147767%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e147770%_))
            (macro-wrong-processor-c-return-exception? _%exn147767%_))))))
