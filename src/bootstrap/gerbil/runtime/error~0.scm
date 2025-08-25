(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1756142918)
  (begin
    (define Exception::t
      (let ((__tmp110662 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp110662
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args110632%_
        (apply make-instance Exception::t _%$args110632%_)))
    (define StackTrace::t
      (let ((__tmp110663 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp110663
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args110629%_
        (apply make-instance StackTrace::t _%$args110629%_)))
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
      (let ((__tmp110664 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp110664
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args110626%_ (apply make-instance Error::t _%$args110626%_)))
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
      (let ((__tmp110665 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp110665
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args110623%_
        (apply make-instance ContractViolation::t _%$args110623%_)))
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
      (let ((__tmp110666 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp110666
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args110620%_
        (apply make-instance RuntimeException::t _%$args110620%_)))
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
      (lambda (_%exn110615%_ _%continue110616%_)
        (let ((_%exn110618%_ (wrap-runtime-exception _%exn110615%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn110618%_ _%continue110616%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn110611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn110611%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn110611%_ 'continuation))
                '#!void
                (let ((__tmp110667
                       (lambda (_%cont110613%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn110611%_
                            'continuation
                            _%cont110613%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp110667)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn110611%_))))
    (define error
      (lambda (_%message110608%_ . _%irritants110609%_)
        (raise (let ((__obj110659
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj110659
                  _%message110608%_
                  'irritants:
                  _%irritants110609%_)
                 __obj110659))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords110580%_
               _%ctx110575110581%_
               _%contract-expr110576110583%_
               _%value110577110585%_
               _%message110587%_)
        (let* ((_%ctx110589%_
                (if (eq? _%ctx110575110581%_ absent-value)
                    '#f
                    _%ctx110575110581%_))
               (_%contract-expr110591%_
                (if (eq? _%contract-expr110576110583%_ absent-value)
                    '#f
                    _%contract-expr110576110583%_))
               (_%value110593%_
                (if (eq? _%value110577110585%_ absent-value)
                    '#f
                    _%value110577110585%_)))
          (raise (let ((__obj110660
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj110660
                    _%message110587%_
                    'where:
                    _%ctx110589%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr110591%_
                                (cons 'value: (cons _%value110593%_ '())))))
                   __obj110660)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords110598%_ . _%args110599%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords110598%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords110598%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords110598%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords110598%_
                  'value:
                  absent-value))
               _%args110599%_)))
    (define __raise-contract-violation-error
      (lambda _%args110578110605%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args110578110605%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler110549%_ _%thunk110550%_)
        (if (procedure? _%handler110549%_)
            (let ((_%handler110554%_ _%handler110549%_))
              (if (procedure? _%thunk110550%_)
                  (let ((_%thunk110564%_ _%thunk110550%_))
                    (__with-exception-handler
                     _%handler110554%_
                     _%thunk110564%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk110550%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler110549%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler110524%_ _%thunk110525%_)
        (let* ((_%handler110528%_ _%handler110524%_)
               (_%thunk110536%_ _%thunk110525%_)
               (__tmp110668
                (lambda (_%exn110545%_)
                  (let ((_%exn110547%_ (wrap-runtime-exception _%exn110545%_)))
                    (declare (not safe))
                    (_%handler110528%_ _%exn110547%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp110668 _%thunk110536%_))))
    (define with-catch
      (lambda (_%handler110499%_ _%thunk110500%_)
        (if (procedure? _%handler110499%_)
            (let ((_%handler110504%_ _%handler110499%_))
              (if (procedure? _%thunk110500%_)
                  (let ((_%thunk110514%_ _%thunk110500%_))
                    (__with-catch _%handler110504%_ _%thunk110514%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk110500%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler110499%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler110474%_ _%thunk110475%_)
        (let* ((_%handler110478%_ _%handler110474%_)
               (_%thunk110486%_ _%thunk110475%_)
               (__tmp110669
                (lambda (_%cont110495%_)
                  (__with-exception-handler
                   (lambda (_%exn110497%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont110495%_
                        _%handler110478%_
                        _%exn110497%_)))
                   _%thunk110486%_))))
          (declare (not safe))
          (##continuation-capture __tmp110669))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn110461%_)
        (if (or (heap-overflow-exception? _%exn110461%_)
                (stack-overflow-exception? _%exn110461%_))
            _%exn110461%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn110461%_))
                _%exn110461%_
                (if (macro-exception? _%exn110461%_)
                    (let ((_%rte110469%_
                           (let ((__obj110661
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj110661
                                _%exn110461%_
                                '2
                                '#f
                                '#f))
                             __obj110661)))
                      (let ((__tmp110670
                             (lambda (_%cont110471%_)
                               (let ((__tmp110671
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont110471%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte110469%_
                                  'continuation
                                  __tmp110671)))))
                        (declare (not safe))
                        (##continuation-capture __tmp110670))
                      _%rte110469%_)
                    _%exn110461%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj110456%_)
        (let ((_%$e110458%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj110456%_))))
          (if _%$e110458%_ _%$e110458%_ (error-exception? _%obj110456%_)))))
    (define error-message
      (lambda (_%obj110449%_)
        (let ((_%$e110451%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj110449%_ 'message false))))
          (if _%$e110451%_
              _%$e110451%_
              (if (error-exception? _%obj110449%_)
                  (error-exception-message _%obj110449%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj110444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj110444%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj110444%_ 'irritants))
            (if (error-exception? _%obj110444%_)
                (error-exception-parameters _%obj110444%_)
                '#f))))
    (define error-trace
      (lambda (_%obj110442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj110442%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj110442%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e110423%_ _%port110424%_)
        (let ((_%$e110426%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e110423%_ 'display-exception))))
          (if _%$e110426%_
              ((lambda (_%f110429%_) (_%f110429%_ _%e110423%_ _%port110424%_))
               _%$e110426%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e110423%_ _%port110424%_))))))
    (define display-exception__0
      (lambda (_%e110435%_)
        (let ((_%port110437%_ (current-error-port)))
          (display-exception__% _%e110435%_ _%port110437%_))))
    (define display-exception
      (lambda _g110672_
        (let ((_g110673_ (let () (declare (not safe)) (##length _g110672_))))
          (cond ((let () (declare (not safe)) (##fx= _g110673_ 1))
                 (apply display-exception__0 _g110672_))
                ((let () (declare (not safe)) (##fx= _g110673_ 2))
                 (apply display-exception__% _g110672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g110672_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self110401%_ _%message110402%_ . _%rest110403%_)
        (let* ((_%self110406%_ _%self110401%_)
               (_%message110420%_
                (if (string? _%message110402%_)
                    _%message110402%_
                    (call-with-output-string
                     '""
                     (lambda (_%g110415110417%_)
                       (display _%message110402%_ _%g110415110417%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self110406%_ 'message _%message110420%_))
          (apply class-instance-init! _%self110406%_ _%rest110403%_))))
    (define Error:::init!::specialize
      (lambda (__klass110634 __method-table110635)
        (let ((__message110636
               (let ((__slot110637
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110634 'message))))
                 (if __slot110637
                     __slot110637
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self110401%_ _%message110402%_ . _%rest110403%_)
            (let* ((_%self110406%_ _%self110401%_)
                   (_%message110420%_
                    (if (string? _%message110402%_)
                        _%message110402%_
                        (call-with-output-string
                         '""
                         (lambda (_%g110415110417%_)
                           (display _%message110402%_ _%g110415110417%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self110406%_
                 _%message110420%_
                 __message110636
                 '#f
                 '#f))
              (apply class-instance-init! _%self110406%_ _%rest110403%_))))))
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
      (lambda (_%self110125%_ _%port110126%_)
        (let ((_%self110129%_ _%self110125%_))
          (let ((_%tmp-port110139%_ (open-output-string))
                (_%display-error-newline110140%_
                 (> (output-port-column _%port110126%_) '0)))
            (fix-port-width! _%tmp-port110139%_)
            (let ((__tmp110674
                   (lambda ()
                     (if _%display-error-newline110140%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e110143%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self110129%_ 'where))))
                       (if _%$e110143%_ (display _%$e110143%_) (display '"?")))
                     (let ((__tmp110675
                            (let ((__tmp110676
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self110129%_))))
                              (declare (not safe))
                              (##type-name __tmp110676))))
                       (declare (not safe))
                       (display* '" [" __tmp110675 '"]: "))
                     (let ((__tmp110677
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self110129%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp110677))
                     (let ((_%irritants110147%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self110129%_ 'irritants))))
                       (if (null? _%irritants110147%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj110149%_)
                                (if (u8vector? _%obj110149%_)
                                    (let ((__tmp110678
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj110149%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp110678))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj110149%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants110147%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont110150110152%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self110129%_
                                   'continuation))))
                           (if _%cont110150110152%_
                               (let ((_%cont110155%_ _%cont110150110152%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont110155%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp110674
               current-output-port
               _%tmp-port110139%_))
            (let ((__tmp110679 (get-output-string _%tmp-port110139%_)))
              (declare (not safe))
              (##write-string __tmp110679 _%port110126%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass110638 __method-table110639)
        (let ((__where110640
               (let ((__slot110644
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110638 'where))))
                 (if __slot110644
                     __slot110644
                     (error '"Unknown slot" 'where))))
              (__irritants110641
               (let ((__slot110645
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110638 'irritants))))
                 (if __slot110645
                     __slot110645
                     (error '"Unknown slot" 'irritants))))
              (__message110642
               (let ((__slot110646
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110638 'message))))
                 (if __slot110646
                     __slot110646
                     (error '"Unknown slot" 'message))))
              (__continuation110643
               (let ((__slot110647
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110638 'continuation))))
                 (if __slot110647
                     __slot110647
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self110125%_ _%port110126%_)
            (let ((_%self110129%_ _%self110125%_))
              (let ((_%tmp-port110139%_ (open-output-string))
                    (_%display-error-newline110140%_
                     (> (output-port-column _%port110126%_) '0)))
                (fix-port-width! _%tmp-port110139%_)
                (let ((__tmp110680
                       (lambda ()
                         (if _%display-error-newline110140%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e110143%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self110129%_
                                   __where110640
                                   '#f
                                   '#f))))
                           (if _%$e110143%_
                               (display _%$e110143%_)
                               (display '"?")))
                         (let ((__tmp110681
                                (let ((__tmp110682
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self110129%_))))
                                  (declare (not safe))
                                  (##type-name __tmp110682))))
                           (declare (not safe))
                           (display* '" [" __tmp110681 '"]: "))
                         (let ((__tmp110683
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self110129%_
                                   __message110642
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp110683))
                         (let ((_%irritants110147%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self110129%_
                                   __irritants110641
                                   '#f
                                   '#f))))
                           (if (null? _%irritants110147%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj110149%_)
                                    (if (u8vector? _%obj110149%_)
                                        (let ((__tmp110684
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj110149%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp110684))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj110149%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants110147%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont110150110152%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self110129%_
                                       __continuation110643
                                       '#f
                                       '#f))))
                               (if _%cont110150110152%_
                                   (let ((_%cont110155%_ _%cont110150110152%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont110155%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp110680
                   current-output-port
                   _%tmp-port110139%_))
                (let ((__tmp110685 (get-output-string _%tmp-port110139%_)))
                  (declare (not safe))
                  (##write-string __tmp110685 _%port110126%_))))))))
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
      (lambda (_%self109981%_ _%port109982%_)
        (let* ((_%self109985%_ _%self109981%_)
               (_%tmp-port109995%_ (open-output-string)))
          (fix-port-width! _%tmp-port109995%_)
          (let ((__tmp110686
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self109985%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp110686 _%tmp-port109995%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont109996109998%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self109985%_ 'continuation))))
                (if _%cont109996109998%_
                    (let ((_%cont110001%_ _%cont109996109998%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port109995%_)
                      (newline _%tmp-port109995%_)
                      (display-continuation-backtrace
                       _%cont110001%_
                       _%tmp-port109995%_))
                    '#f))
              '#!void)
          (let ((__tmp110687 (get-output-string _%tmp-port109995%_)))
            (declare (not safe))
            (##write-string __tmp110687 _%port109982%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass110648 __method-table110649)
        (let ((__exception110650
               (let ((__slot110652
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110648 'exception))))
                 (if __slot110652
                     __slot110652
                     (error '"Unknown slot" 'exception))))
              (__continuation110651
               (let ((__slot110653
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110648 'continuation))))
                 (if __slot110653
                     __slot110653
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self109981%_ _%port109982%_)
            (let* ((_%self109985%_ _%self109981%_)
                   (_%tmp-port109995%_ (open-output-string)))
              (fix-port-width! _%tmp-port109995%_)
              (let ((__tmp110688
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self109985%_
                        __exception110650
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp110688 _%tmp-port109995%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont109996109998%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self109985%_
                            __continuation110651
                            '#f
                            '#f))))
                    (if _%cont109996109998%_
                        (let ((_%cont110001%_ _%cont109996109998%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port109995%_)
                          (newline _%tmp-port109995%_)
                          (display-continuation-backtrace
                           _%cont110001%_
                           _%tmp-port109995%_))
                        '#f))
                  '#!void)
              (let ((__tmp110689 (get-output-string _%tmp-port109995%_)))
                (declare (not safe))
                (##write-string __tmp110689 _%port109982%_)))))))
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
      (lambda (_%port109853%_)
        (if (macro-character-port? _%port109853%_)
            (let ((_%old-width109855%_
                   (macro-character-port-output-width _%port109853%_)))
              (macro-character-port-output-width-set!
               _%port109853%_
               (lambda (_%port109857%_) '256))
              _%old-width109855%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port109850%_ _%old-width109851%_)
        (if (macro-character-port? _%port109850%_)
            (macro-character-port-output-width-set!
             _%port109850%_
             _%old-width109851%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e109848%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e109848%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn109842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109842%_))
            (let ((_%e109845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109842%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e109845%_))
            (macro-abandoned-mutex-exception? _%exn109842%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn109838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109838%_))
            (let ((_%e109840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109838%_ 'exception))))
              (macro-cfun-conversion-exception? _%e109840%_))
            (macro-cfun-conversion-exception? _%exn109838%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn109834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109834%_))
            (let ((_%e109836%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109834%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e109836%_)
                  (macro-cfun-conversion-exception-arguments _%e109836%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e109836%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn109834%_)
                (macro-cfun-conversion-exception-arguments _%exn109834%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn109834%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn109830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109830%_))
            (let ((_%e109832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109830%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e109832%_)
                  (macro-cfun-conversion-exception-code _%e109832%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e109832%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn109830%_)
                (macro-cfun-conversion-exception-code _%exn109830%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn109830%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn109826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109826%_))
            (let ((_%e109828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109826%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e109828%_)
                  (macro-cfun-conversion-exception-message _%e109828%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e109828%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn109826%_)
                (macro-cfun-conversion-exception-message _%exn109826%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn109826%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn109820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109820%_))
            (let ((_%e109823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109820%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e109823%_)
                  (macro-cfun-conversion-exception-procedure _%e109823%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e109823%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn109820%_)
                (macro-cfun-conversion-exception-procedure _%exn109820%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn109820%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn109816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109816%_))
            (let ((_%e109818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109816%_ 'exception))))
              (macro-datum-parsing-exception? _%e109818%_))
            (macro-datum-parsing-exception? _%exn109816%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn109812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109812%_))
            (let ((_%e109814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109812%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e109814%_)
                  (macro-datum-parsing-exception-kind _%e109814%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e109814%_ '())))))
            (if (macro-datum-parsing-exception? _%exn109812%_)
                (macro-datum-parsing-exception-kind _%exn109812%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn109812%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn109808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109808%_))
            (let ((_%e109810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109808%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e109810%_)
                  (macro-datum-parsing-exception-parameters _%e109810%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e109810%_ '())))))
            (if (macro-datum-parsing-exception? _%exn109808%_)
                (macro-datum-parsing-exception-parameters _%exn109808%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn109808%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn109802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109802%_))
            (let ((_%e109805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109802%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e109805%_)
                  (macro-datum-parsing-exception-readenv _%e109805%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e109805%_ '())))))
            (if (macro-datum-parsing-exception? _%exn109802%_)
                (macro-datum-parsing-exception-readenv _%exn109802%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn109802%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn109796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109796%_))
            (let ((_%e109799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109796%_ 'exception))))
              (macro-deadlock-exception? _%e109799%_))
            (macro-deadlock-exception? _%exn109796%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn109792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109792%_))
            (let ((_%e109794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109792%_ 'exception))))
              (macro-divide-by-zero-exception? _%e109794%_))
            (macro-divide-by-zero-exception? _%exn109792%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn109788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109788%_))
            (let ((_%e109790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109788%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e109790%_)
                  (macro-divide-by-zero-exception-arguments _%e109790%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e109790%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn109788%_)
                (macro-divide-by-zero-exception-arguments _%exn109788%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn109788%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn109782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109782%_))
            (let ((_%e109785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109782%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e109785%_)
                  (macro-divide-by-zero-exception-procedure _%e109785%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e109785%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn109782%_)
                (macro-divide-by-zero-exception-procedure _%exn109782%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn109782%_ '())))))))
    (define error-exception?
      (lambda (_%exn109778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109778%_))
            (let ((_%e109780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109778%_ 'exception))))
              (macro-error-exception? _%e109780%_))
            (macro-error-exception? _%exn109778%_))))
    (define error-exception-message
      (lambda (_%exn109774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109774%_))
            (let ((_%e109776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109774%_ 'exception))))
              (if (macro-error-exception? _%e109776%_)
                  (macro-error-exception-message _%e109776%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e109776%_ '())))))
            (if (macro-error-exception? _%exn109774%_)
                (macro-error-exception-message _%exn109774%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn109774%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn109768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109768%_))
            (let ((_%e109771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109768%_ 'exception))))
              (if (macro-error-exception? _%e109771%_)
                  (macro-error-exception-parameters _%e109771%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e109771%_ '())))))
            (if (macro-error-exception? _%exn109768%_)
                (macro-error-exception-parameters _%exn109768%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn109768%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn109764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109764%_))
            (let ((_%e109766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109764%_ 'exception))))
              (macro-expression-parsing-exception? _%e109766%_))
            (macro-expression-parsing-exception? _%exn109764%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn109760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109760%_))
            (let ((_%e109762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109760%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e109762%_)
                  (macro-expression-parsing-exception-kind _%e109762%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e109762%_ '())))))
            (if (macro-expression-parsing-exception? _%exn109760%_)
                (macro-expression-parsing-exception-kind _%exn109760%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn109760%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn109756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109756%_))
            (let ((_%e109758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109756%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e109758%_)
                  (macro-expression-parsing-exception-parameters _%e109758%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e109758%_ '())))))
            (if (macro-expression-parsing-exception? _%exn109756%_)
                (macro-expression-parsing-exception-parameters _%exn109756%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn109756%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn109750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109750%_))
            (let ((_%e109753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109750%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e109753%_)
                  (macro-expression-parsing-exception-source _%e109753%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e109753%_ '())))))
            (if (macro-expression-parsing-exception? _%exn109750%_)
                (macro-expression-parsing-exception-source _%exn109750%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn109750%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn109746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109746%_))
            (let ((_%e109748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109746%_ 'exception))))
              (macro-file-exists-exception? _%e109748%_))
            (macro-file-exists-exception? _%exn109746%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn109742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109742%_))
            (let ((_%e109744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109742%_ 'exception))))
              (if (macro-file-exists-exception? _%e109744%_)
                  (macro-file-exists-exception-arguments _%e109744%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e109744%_ '())))))
            (if (macro-file-exists-exception? _%exn109742%_)
                (macro-file-exists-exception-arguments _%exn109742%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn109742%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn109736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109736%_))
            (let ((_%e109739%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109736%_ 'exception))))
              (if (macro-file-exists-exception? _%e109739%_)
                  (macro-file-exists-exception-procedure _%e109739%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e109739%_ '())))))
            (if (macro-file-exists-exception? _%exn109736%_)
                (macro-file-exists-exception-procedure _%exn109736%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn109736%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn109732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109732%_))
            (let ((_%e109734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109732%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e109734%_))
            (macro-fixnum-overflow-exception? _%exn109732%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn109728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109728%_))
            (let ((_%e109730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109728%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e109730%_)
                  (macro-fixnum-overflow-exception-arguments _%e109730%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e109730%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn109728%_)
                (macro-fixnum-overflow-exception-arguments _%exn109728%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn109728%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn109722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109722%_))
            (let ((_%e109725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109722%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e109725%_)
                  (macro-fixnum-overflow-exception-procedure _%e109725%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e109725%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn109722%_)
                (macro-fixnum-overflow-exception-procedure _%exn109722%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn109722%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn109716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109716%_))
            (let ((_%e109719%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109716%_ 'exception))))
              (macro-heap-overflow-exception? _%e109719%_))
            (macro-heap-overflow-exception? _%exn109716%_))))
    (define inactive-thread-exception?
      (lambda (_%exn109712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109712%_))
            (let ((_%e109714%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109712%_ 'exception))))
              (macro-inactive-thread-exception? _%e109714%_))
            (macro-inactive-thread-exception? _%exn109712%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn109708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109708%_))
            (let ((_%e109710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109708%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e109710%_)
                  (macro-inactive-thread-exception-arguments _%e109710%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e109710%_ '())))))
            (if (macro-inactive-thread-exception? _%exn109708%_)
                (macro-inactive-thread-exception-arguments _%exn109708%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn109708%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn109702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109702%_))
            (let ((_%e109705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109702%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e109705%_)
                  (macro-inactive-thread-exception-procedure _%e109705%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e109705%_ '())))))
            (if (macro-inactive-thread-exception? _%exn109702%_)
                (macro-inactive-thread-exception-procedure _%exn109702%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn109702%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn109698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109698%_))
            (let ((_%e109700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109698%_ 'exception))))
              (macro-initialized-thread-exception? _%e109700%_))
            (macro-initialized-thread-exception? _%exn109698%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn109694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109694%_))
            (let ((_%e109696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109694%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e109696%_)
                  (macro-initialized-thread-exception-arguments _%e109696%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e109696%_ '())))))
            (if (macro-initialized-thread-exception? _%exn109694%_)
                (macro-initialized-thread-exception-arguments _%exn109694%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn109694%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn109688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109688%_))
            (let ((_%e109691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109688%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e109691%_)
                  (macro-initialized-thread-exception-procedure _%e109691%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e109691%_ '())))))
            (if (macro-initialized-thread-exception? _%exn109688%_)
                (macro-initialized-thread-exception-procedure _%exn109688%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn109688%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn109684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109684%_))
            (let ((_%e109686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109684%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e109686%_))
            (macro-invalid-hash-number-exception? _%exn109684%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn109680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109680%_))
            (let ((_%e109682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109680%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e109682%_)
                  (macro-invalid-hash-number-exception-arguments _%e109682%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e109682%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn109680%_)
                (macro-invalid-hash-number-exception-arguments _%exn109680%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn109680%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn109674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109674%_))
            (let ((_%e109677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109674%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e109677%_)
                  (macro-invalid-hash-number-exception-procedure _%e109677%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e109677%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn109674%_)
                (macro-invalid-hash-number-exception-procedure _%exn109674%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn109674%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn109670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109670%_))
            (let ((_%e109672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109670%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e109672%_))
            (macro-invalid-utf8-encoding-exception? _%exn109670%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn109666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109666%_))
            (let ((_%e109668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109666%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e109668%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e109668%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e109668%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn109666%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn109666%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn109666%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn109660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109660%_))
            (let ((_%e109663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109660%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e109663%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e109663%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e109663%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn109660%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn109660%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn109660%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn109656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109656%_))
            (let ((_%e109658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109656%_ 'exception))))
              (macro-join-timeout-exception? _%e109658%_))
            (macro-join-timeout-exception? _%exn109656%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn109652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109652%_))
            (let ((_%e109654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109652%_ 'exception))))
              (if (macro-join-timeout-exception? _%e109654%_)
                  (macro-join-timeout-exception-arguments _%e109654%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e109654%_ '())))))
            (if (macro-join-timeout-exception? _%exn109652%_)
                (macro-join-timeout-exception-arguments _%exn109652%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn109652%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn109646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109646%_))
            (let ((_%e109649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109646%_ 'exception))))
              (if (macro-join-timeout-exception? _%e109649%_)
                  (macro-join-timeout-exception-procedure _%e109649%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e109649%_ '())))))
            (if (macro-join-timeout-exception? _%exn109646%_)
                (macro-join-timeout-exception-procedure _%exn109646%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn109646%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn109642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109642%_))
            (let ((_%e109644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109642%_ 'exception))))
              (macro-keyword-expected-exception? _%e109644%_))
            (macro-keyword-expected-exception? _%exn109642%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn109638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109638%_))
            (let ((_%e109640%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109638%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e109640%_)
                  (macro-keyword-expected-exception-arguments _%e109640%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e109640%_ '())))))
            (if (macro-keyword-expected-exception? _%exn109638%_)
                (macro-keyword-expected-exception-arguments _%exn109638%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn109638%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn109632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109632%_))
            (let ((_%e109635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109632%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e109635%_)
                  (macro-keyword-expected-exception-procedure _%e109635%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e109635%_ '())))))
            (if (macro-keyword-expected-exception? _%exn109632%_)
                (macro-keyword-expected-exception-procedure _%exn109632%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn109632%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn109628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109628%_))
            (let ((_%e109630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109628%_ 'exception))))
              (macro-length-mismatch-exception? _%e109630%_))
            (macro-length-mismatch-exception? _%exn109628%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn109624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109624%_))
            (let ((_%e109626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109624%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e109626%_)
                  (macro-length-mismatch-exception-arg-id _%e109626%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e109626%_ '())))))
            (if (macro-length-mismatch-exception? _%exn109624%_)
                (macro-length-mismatch-exception-arg-id _%exn109624%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn109624%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn109620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109620%_))
            (let ((_%e109622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109620%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e109622%_)
                  (macro-length-mismatch-exception-arguments _%e109622%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e109622%_ '())))))
            (if (macro-length-mismatch-exception? _%exn109620%_)
                (macro-length-mismatch-exception-arguments _%exn109620%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn109620%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn109614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109614%_))
            (let ((_%e109617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109614%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e109617%_)
                  (macro-length-mismatch-exception-procedure _%e109617%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e109617%_ '())))))
            (if (macro-length-mismatch-exception? _%exn109614%_)
                (macro-length-mismatch-exception-procedure _%exn109614%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn109614%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn109610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109610%_))
            (let ((_%e109612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109610%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e109612%_))
            (macro-mailbox-receive-timeout-exception? _%exn109610%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn109606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109606%_))
            (let ((_%e109608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109606%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e109608%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e109608%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e109608%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn109606%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn109606%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn109606%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn109600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109600%_))
            (let ((_%e109603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109600%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e109603%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e109603%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e109603%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn109600%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn109600%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn109600%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn109596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109596%_))
            (let ((_%e109598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109596%_ 'exception))))
              (macro-module-not-found-exception? _%e109598%_))
            (macro-module-not-found-exception? _%exn109596%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn109592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109592%_))
            (let ((_%e109594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109592%_ 'exception))))
              (if (macro-module-not-found-exception? _%e109594%_)
                  (macro-module-not-found-exception-arguments _%e109594%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e109594%_ '())))))
            (if (macro-module-not-found-exception? _%exn109592%_)
                (macro-module-not-found-exception-arguments _%exn109592%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn109592%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn109586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109586%_))
            (let ((_%e109589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109586%_ 'exception))))
              (if (macro-module-not-found-exception? _%e109589%_)
                  (macro-module-not-found-exception-procedure _%e109589%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e109589%_ '())))))
            (if (macro-module-not-found-exception? _%exn109586%_)
                (macro-module-not-found-exception-procedure _%exn109586%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn109586%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn109580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109580%_))
            (let ((_%e109583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109580%_ 'exception))))
              (macro-multiple-c-return-exception? _%e109583%_))
            (macro-multiple-c-return-exception? _%exn109580%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn109576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109576%_))
            (let ((_%e109578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109576%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e109578%_))
            (macro-no-such-file-or-directory-exception? _%exn109576%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn109572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109572%_))
            (let ((_%e109574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109572%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e109574%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e109574%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e109574%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn109572%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn109572%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn109572%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn109566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109566%_))
            (let ((_%e109569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109566%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e109569%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e109569%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e109569%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn109566%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn109566%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn109566%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn109562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109562%_))
            (let ((_%e109564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109562%_ 'exception))))
              (macro-noncontinuable-exception? _%e109564%_))
            (macro-noncontinuable-exception? _%exn109562%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn109556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109556%_))
            (let ((_%e109559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109556%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e109559%_)
                  (macro-noncontinuable-exception-reason _%e109559%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e109559%_ '())))))
            (if (macro-noncontinuable-exception? _%exn109556%_)
                (macro-noncontinuable-exception-reason _%exn109556%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn109556%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn109552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109552%_))
            (let ((_%e109554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109552%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e109554%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn109552%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn109548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109548%_))
            (let ((_%e109550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109548%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e109550%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e109550%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e109550%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn109548%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn109548%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn109548%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn109542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109542%_))
            (let ((_%e109545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109542%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e109545%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e109545%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e109545%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn109542%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn109542%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn109542%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn109538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109538%_))
            (let ((_%e109540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109538%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e109540%_))
            (macro-nonprocedure-operator-exception? _%exn109538%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn109534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109534%_))
            (let ((_%e109536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109534%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e109536%_)
                  (macro-nonprocedure-operator-exception-arguments _%e109536%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e109536%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn109534%_)
                (macro-nonprocedure-operator-exception-arguments _%exn109534%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn109534%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn109530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109530%_))
            (let ((_%e109532%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109530%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e109532%_)
                  (macro-nonprocedure-operator-exception-code _%e109532%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e109532%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn109530%_)
                (macro-nonprocedure-operator-exception-code _%exn109530%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn109530%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn109526%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109526%_))
            (let ((_%e109528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109526%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e109528%_)
                  (macro-nonprocedure-operator-exception-operator _%e109528%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e109528%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn109526%_)
                (macro-nonprocedure-operator-exception-operator _%exn109526%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn109526%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn109520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109520%_))
            (let ((_%e109523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109520%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e109523%_)
                  (macro-nonprocedure-operator-exception-rte _%e109523%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e109523%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn109520%_)
                (macro-nonprocedure-operator-exception-rte _%exn109520%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn109520%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn109516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109516%_))
            (let ((_%e109518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109516%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e109518%_))
            (macro-not-in-compilation-context-exception? _%exn109516%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn109512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109512%_))
            (let ((_%e109514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109512%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e109514%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e109514%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e109514%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn109512%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn109512%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn109512%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn109506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109506%_))
            (let ((_%e109509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109506%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e109509%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e109509%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e109509%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn109506%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn109506%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn109506%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn109502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109502%_))
            (let ((_%e109504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109502%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e109504%_))
            (macro-number-of-arguments-limit-exception? _%exn109502%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn109498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109498%_))
            (let ((_%e109500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109498%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e109500%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e109500%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e109500%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn109498%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn109498%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn109498%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn109492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109492%_))
            (let ((_%e109495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109492%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e109495%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e109495%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e109495%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn109492%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn109492%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn109492%_ '())))))))
    (define os-exception?
      (lambda (_%exn109488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109488%_))
            (let ((_%e109490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109488%_ 'exception))))
              (macro-os-exception? _%e109490%_))
            (macro-os-exception? _%exn109488%_))))
    (define os-exception-arguments
      (lambda (_%exn109484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109484%_))
            (let ((_%e109486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109484%_ 'exception))))
              (if (macro-os-exception? _%e109486%_)
                  (macro-os-exception-arguments _%e109486%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e109486%_ '())))))
            (if (macro-os-exception? _%exn109484%_)
                (macro-os-exception-arguments _%exn109484%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn109484%_ '())))))))
    (define os-exception-code
      (lambda (_%exn109480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109480%_))
            (let ((_%e109482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109480%_ 'exception))))
              (if (macro-os-exception? _%e109482%_)
                  (macro-os-exception-code _%e109482%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e109482%_ '())))))
            (if (macro-os-exception? _%exn109480%_)
                (macro-os-exception-code _%exn109480%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn109480%_ '())))))))
    (define os-exception-message
      (lambda (_%exn109476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109476%_))
            (let ((_%e109478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109476%_ 'exception))))
              (if (macro-os-exception? _%e109478%_)
                  (macro-os-exception-message _%e109478%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e109478%_ '())))))
            (if (macro-os-exception? _%exn109476%_)
                (macro-os-exception-message _%exn109476%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn109476%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn109470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109470%_))
            (let ((_%e109473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109470%_ 'exception))))
              (if (macro-os-exception? _%e109473%_)
                  (macro-os-exception-procedure _%e109473%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e109473%_ '())))))
            (if (macro-os-exception? _%exn109470%_)
                (macro-os-exception-procedure _%exn109470%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn109470%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn109466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109466%_))
            (let ((_%e109468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109466%_ 'exception))))
              (macro-permission-denied-exception? _%e109468%_))
            (macro-permission-denied-exception? _%exn109466%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn109462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109462%_))
            (let ((_%e109464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109462%_ 'exception))))
              (if (macro-permission-denied-exception? _%e109464%_)
                  (macro-permission-denied-exception-arguments _%e109464%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e109464%_ '())))))
            (if (macro-permission-denied-exception? _%exn109462%_)
                (macro-permission-denied-exception-arguments _%exn109462%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn109462%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn109456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109456%_))
            (let ((_%e109459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109456%_ 'exception))))
              (if (macro-permission-denied-exception? _%e109459%_)
                  (macro-permission-denied-exception-procedure _%e109459%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e109459%_ '())))))
            (if (macro-permission-denied-exception? _%exn109456%_)
                (macro-permission-denied-exception-procedure _%exn109456%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn109456%_ '())))))))
    (define range-exception?
      (lambda (_%exn109452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109452%_))
            (let ((_%e109454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109452%_ 'exception))))
              (macro-range-exception? _%e109454%_))
            (macro-range-exception? _%exn109452%_))))
    (define range-exception-arg-id
      (lambda (_%exn109448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109448%_))
            (let ((_%e109450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109448%_ 'exception))))
              (if (macro-range-exception? _%e109450%_)
                  (macro-range-exception-arg-id _%e109450%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e109450%_ '())))))
            (if (macro-range-exception? _%exn109448%_)
                (macro-range-exception-arg-id _%exn109448%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn109448%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn109444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109444%_))
            (let ((_%e109446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109444%_ 'exception))))
              (if (macro-range-exception? _%e109446%_)
                  (macro-range-exception-arguments _%e109446%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e109446%_ '())))))
            (if (macro-range-exception? _%exn109444%_)
                (macro-range-exception-arguments _%exn109444%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn109444%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn109438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109438%_))
            (let ((_%e109441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109438%_ 'exception))))
              (if (macro-range-exception? _%e109441%_)
                  (macro-range-exception-procedure _%e109441%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e109441%_ '())))))
            (if (macro-range-exception? _%exn109438%_)
                (macro-range-exception-procedure _%exn109438%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn109438%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn109434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109434%_))
            (let ((_%e109436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109434%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e109436%_))
            (macro-rpc-remote-error-exception? _%exn109434%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn109430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109430%_))
            (let ((_%e109432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109430%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e109432%_)
                  (macro-rpc-remote-error-exception-arguments _%e109432%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e109432%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn109430%_)
                (macro-rpc-remote-error-exception-arguments _%exn109430%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn109430%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn109426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109426%_))
            (let ((_%e109428%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109426%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e109428%_)
                  (macro-rpc-remote-error-exception-message _%e109428%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e109428%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn109426%_)
                (macro-rpc-remote-error-exception-message _%exn109426%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn109426%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn109420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109420%_))
            (let ((_%e109423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109420%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e109423%_)
                  (macro-rpc-remote-error-exception-procedure _%e109423%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e109423%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn109420%_)
                (macro-rpc-remote-error-exception-procedure _%exn109420%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn109420%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn109416%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109416%_))
            (let ((_%e109418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109416%_ 'exception))))
              (macro-scheduler-exception? _%e109418%_))
            (macro-scheduler-exception? _%exn109416%_))))
    (define scheduler-exception-reason
      (lambda (_%exn109410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109410%_))
            (let ((_%e109413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109410%_ 'exception))))
              (if (macro-scheduler-exception? _%e109413%_)
                  (macro-scheduler-exception-reason _%e109413%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e109413%_ '())))))
            (if (macro-scheduler-exception? _%exn109410%_)
                (macro-scheduler-exception-reason _%exn109410%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn109410%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn109406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109406%_))
            (let ((_%e109408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109406%_ 'exception))))
              (macro-sfun-conversion-exception? _%e109408%_))
            (macro-sfun-conversion-exception? _%exn109406%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn109402%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109402%_))
            (let ((_%e109404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109402%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e109404%_)
                  (macro-sfun-conversion-exception-arguments _%e109404%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e109404%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn109402%_)
                (macro-sfun-conversion-exception-arguments _%exn109402%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn109402%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn109398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109398%_))
            (let ((_%e109400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109398%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e109400%_)
                  (macro-sfun-conversion-exception-code _%e109400%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e109400%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn109398%_)
                (macro-sfun-conversion-exception-code _%exn109398%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn109398%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn109394%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109394%_))
            (let ((_%e109396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109394%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e109396%_)
                  (macro-sfun-conversion-exception-message _%e109396%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e109396%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn109394%_)
                (macro-sfun-conversion-exception-message _%exn109394%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn109394%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn109388%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109388%_))
            (let ((_%e109391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109388%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e109391%_)
                  (macro-sfun-conversion-exception-procedure _%e109391%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e109391%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn109388%_)
                (macro-sfun-conversion-exception-procedure _%exn109388%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn109388%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn109382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109382%_))
            (let ((_%e109385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109382%_ 'exception))))
              (macro-stack-overflow-exception? _%e109385%_))
            (macro-stack-overflow-exception? _%exn109382%_))))
    (define started-thread-exception?
      (lambda (_%exn109378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109378%_))
            (let ((_%e109380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109378%_ 'exception))))
              (macro-started-thread-exception? _%e109380%_))
            (macro-started-thread-exception? _%exn109378%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn109374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109374%_))
            (let ((_%e109376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109374%_ 'exception))))
              (if (macro-started-thread-exception? _%e109376%_)
                  (macro-started-thread-exception-arguments _%e109376%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e109376%_ '())))))
            (if (macro-started-thread-exception? _%exn109374%_)
                (macro-started-thread-exception-arguments _%exn109374%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn109374%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn109368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109368%_))
            (let ((_%e109371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109368%_ 'exception))))
              (if (macro-started-thread-exception? _%e109371%_)
                  (macro-started-thread-exception-procedure _%e109371%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e109371%_ '())))))
            (if (macro-started-thread-exception? _%exn109368%_)
                (macro-started-thread-exception-procedure _%exn109368%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn109368%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn109364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109364%_))
            (let ((_%e109366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109364%_ 'exception))))
              (macro-terminated-thread-exception? _%e109366%_))
            (macro-terminated-thread-exception? _%exn109364%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn109360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109360%_))
            (let ((_%e109362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109360%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e109362%_)
                  (macro-terminated-thread-exception-arguments _%e109362%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e109362%_ '())))))
            (if (macro-terminated-thread-exception? _%exn109360%_)
                (macro-terminated-thread-exception-arguments _%exn109360%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn109360%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn109354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109354%_))
            (let ((_%e109357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109354%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e109357%_)
                  (macro-terminated-thread-exception-procedure _%e109357%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e109357%_ '())))))
            (if (macro-terminated-thread-exception? _%exn109354%_)
                (macro-terminated-thread-exception-procedure _%exn109354%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn109354%_ '())))))))
    (define type-exception?
      (lambda (_%exn109350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109350%_))
            (let ((_%e109352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109350%_ 'exception))))
              (macro-type-exception? _%e109352%_))
            (macro-type-exception? _%exn109350%_))))
    (define type-exception-arg-id
      (lambda (_%exn109346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109346%_))
            (let ((_%e109348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109346%_ 'exception))))
              (if (macro-type-exception? _%e109348%_)
                  (macro-type-exception-arg-id _%e109348%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e109348%_ '())))))
            (if (macro-type-exception? _%exn109346%_)
                (macro-type-exception-arg-id _%exn109346%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn109346%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn109342%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109342%_))
            (let ((_%e109344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109342%_ 'exception))))
              (if (macro-type-exception? _%e109344%_)
                  (macro-type-exception-arguments _%e109344%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e109344%_ '())))))
            (if (macro-type-exception? _%exn109342%_)
                (macro-type-exception-arguments _%exn109342%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn109342%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn109338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109338%_))
            (let ((_%e109340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109338%_ 'exception))))
              (if (macro-type-exception? _%e109340%_)
                  (macro-type-exception-procedure _%e109340%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e109340%_ '())))))
            (if (macro-type-exception? _%exn109338%_)
                (macro-type-exception-procedure _%exn109338%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn109338%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn109332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109332%_))
            (let ((_%e109335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109332%_ 'exception))))
              (if (macro-type-exception? _%e109335%_)
                  (macro-type-exception-type-id _%e109335%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e109335%_ '())))))
            (if (macro-type-exception? _%exn109332%_)
                (macro-type-exception-type-id _%exn109332%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn109332%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn109328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109328%_))
            (let ((_%e109330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109328%_ 'exception))))
              (macro-unbound-global-exception? _%e109330%_))
            (macro-unbound-global-exception? _%exn109328%_))))
    (define unbound-global-exception-code
      (lambda (_%exn109324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109324%_))
            (let ((_%e109326%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109324%_ 'exception))))
              (if (macro-unbound-global-exception? _%e109326%_)
                  (macro-unbound-global-exception-code _%e109326%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e109326%_ '())))))
            (if (macro-unbound-global-exception? _%exn109324%_)
                (macro-unbound-global-exception-code _%exn109324%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn109324%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn109320%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109320%_))
            (let ((_%e109322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109320%_ 'exception))))
              (if (macro-unbound-global-exception? _%e109322%_)
                  (macro-unbound-global-exception-rte _%e109322%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e109322%_ '())))))
            (if (macro-unbound-global-exception? _%exn109320%_)
                (macro-unbound-global-exception-rte _%exn109320%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn109320%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn109314%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109314%_))
            (let ((_%e109317%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109314%_ 'exception))))
              (if (macro-unbound-global-exception? _%e109317%_)
                  (macro-unbound-global-exception-variable _%e109317%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e109317%_ '())))))
            (if (macro-unbound-global-exception? _%exn109314%_)
                (macro-unbound-global-exception-variable _%exn109314%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn109314%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn109310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109310%_))
            (let ((_%e109312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109310%_ 'exception))))
              (macro-unbound-key-exception? _%e109312%_))
            (macro-unbound-key-exception? _%exn109310%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn109306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109306%_))
            (let ((_%e109308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109306%_ 'exception))))
              (if (macro-unbound-key-exception? _%e109308%_)
                  (macro-unbound-key-exception-arguments _%e109308%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e109308%_ '())))))
            (if (macro-unbound-key-exception? _%exn109306%_)
                (macro-unbound-key-exception-arguments _%exn109306%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn109306%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn109300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109300%_))
            (let ((_%e109303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109300%_ 'exception))))
              (if (macro-unbound-key-exception? _%e109303%_)
                  (macro-unbound-key-exception-procedure _%e109303%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e109303%_ '())))))
            (if (macro-unbound-key-exception? _%exn109300%_)
                (macro-unbound-key-exception-procedure _%exn109300%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn109300%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn109296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109296%_))
            (let ((_%e109298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109296%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e109298%_))
            (macro-unbound-os-environment-variable-exception? _%exn109296%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn109292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109292%_))
            (let ((_%e109294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109292%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e109294%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e109294%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e109294%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn109292%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn109292%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn109292%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn109286%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109286%_))
            (let ((_%e109289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109286%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e109289%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e109289%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e109289%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn109286%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn109286%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn109286%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn109282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109282%_))
            (let ((_%e109284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109282%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e109284%_))
            (macro-unbound-serial-number-exception? _%exn109282%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn109278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109278%_))
            (let ((_%e109280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109278%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e109280%_)
                  (macro-unbound-serial-number-exception-arguments _%e109280%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e109280%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn109278%_)
                (macro-unbound-serial-number-exception-arguments _%exn109278%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn109278%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn109272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109272%_))
            (let ((_%e109275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109272%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e109275%_)
                  (macro-unbound-serial-number-exception-procedure _%e109275%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e109275%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn109272%_)
                (macro-unbound-serial-number-exception-procedure _%exn109272%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn109272%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn109268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109268%_))
            (let ((_%e109270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109268%_ 'exception))))
              (macro-uncaught-exception? _%e109270%_))
            (macro-uncaught-exception? _%exn109268%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn109264%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109264%_))
            (let ((_%e109266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109264%_ 'exception))))
              (if (macro-uncaught-exception? _%e109266%_)
                  (macro-uncaught-exception-arguments _%e109266%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e109266%_ '())))))
            (if (macro-uncaught-exception? _%exn109264%_)
                (macro-uncaught-exception-arguments _%exn109264%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn109264%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn109260%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109260%_))
            (let ((_%e109262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109260%_ 'exception))))
              (if (macro-uncaught-exception? _%e109262%_)
                  (macro-uncaught-exception-procedure _%e109262%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e109262%_ '())))))
            (if (macro-uncaught-exception? _%exn109260%_)
                (macro-uncaught-exception-procedure _%exn109260%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn109260%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn109254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109254%_))
            (let ((_%e109257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109254%_ 'exception))))
              (if (macro-uncaught-exception? _%e109257%_)
                  (macro-uncaught-exception-reason _%e109257%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e109257%_ '())))))
            (if (macro-uncaught-exception? _%exn109254%_)
                (macro-uncaught-exception-reason _%exn109254%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn109254%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn109250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109250%_))
            (let ((_%e109252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109250%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e109252%_))
            (macro-uninitialized-thread-exception? _%exn109250%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn109246%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109246%_))
            (let ((_%e109248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109246%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e109248%_)
                  (macro-uninitialized-thread-exception-arguments _%e109248%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e109248%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn109246%_)
                (macro-uninitialized-thread-exception-arguments _%exn109246%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn109246%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn109240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109240%_))
            (let ((_%e109243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109240%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e109243%_)
                  (macro-uninitialized-thread-exception-procedure _%e109243%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e109243%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn109240%_)
                (macro-uninitialized-thread-exception-procedure _%exn109240%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn109240%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn109236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109236%_))
            (let ((_%e109238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109236%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e109238%_))
            (macro-unknown-keyword-argument-exception? _%exn109236%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn109232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109232%_))
            (let ((_%e109234%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109232%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e109234%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e109234%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e109234%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn109232%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn109232%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn109232%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn109226%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109226%_))
            (let ((_%e109229%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109226%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e109229%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e109229%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e109229%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn109226%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn109226%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn109226%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn109222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109222%_))
            (let ((_%e109224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109222%_ 'exception))))
              (macro-unterminated-process-exception? _%e109224%_))
            (macro-unterminated-process-exception? _%exn109222%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn109218%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109218%_))
            (let ((_%e109220%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109218%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e109220%_)
                  (macro-unterminated-process-exception-arguments _%e109220%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e109220%_ '())))))
            (if (macro-unterminated-process-exception? _%exn109218%_)
                (macro-unterminated-process-exception-arguments _%exn109218%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn109218%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn109212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109212%_))
            (let ((_%e109215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109212%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e109215%_)
                  (macro-unterminated-process-exception-procedure _%e109215%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e109215%_ '())))))
            (if (macro-unterminated-process-exception? _%exn109212%_)
                (macro-unterminated-process-exception-procedure _%exn109212%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn109212%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn109208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109208%_))
            (let ((_%e109210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109208%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e109210%_))
            (macro-wrong-number-of-arguments-exception? _%exn109208%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn109204%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109204%_))
            (let ((_%e109206%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109204%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e109206%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e109206%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e109206%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn109204%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn109204%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn109204%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn109198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109198%_))
            (let ((_%e109201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109198%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e109201%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e109201%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e109201%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn109198%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn109198%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn109198%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn109194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109194%_))
            (let ((_%e109196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109194%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e109196%_))
            (macro-wrong-number-of-values-exception? _%exn109194%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn109190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109190%_))
            (let ((_%e109192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109190%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e109192%_)
                  (macro-wrong-number-of-values-exception-code _%e109192%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e109192%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn109190%_)
                (macro-wrong-number-of-values-exception-code _%exn109190%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn109190%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn109186%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109186%_))
            (let ((_%e109188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109186%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e109188%_)
                  (macro-wrong-number-of-values-exception-rte _%e109188%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e109188%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn109186%_)
                (macro-wrong-number-of-values-exception-rte _%exn109186%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn109186%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn109180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109180%_))
            (let ((_%e109183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109180%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e109183%_)
                  (macro-wrong-number-of-values-exception-vals _%e109183%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e109183%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn109180%_)
                (macro-wrong-number-of-values-exception-vals _%exn109180%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn109180%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn109174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109174%_))
            (let ((_%e109177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109174%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e109177%_))
            (macro-wrong-processor-c-return-exception? _%exn109174%_))))))
