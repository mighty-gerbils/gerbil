(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1779967241)
  (begin
    (define Exception::t
      (let ((__tmp143818 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp143818 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args143736%_
        (apply make-instance Exception::t _%$args143736%_)))
    (define StackTrace::t
      (let ((__tmp143819 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp143819
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args143733%_
        (apply make-instance StackTrace::t _%$args143733%_)))
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
      (let ((__tmp143820 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp143820
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args143730%_ (apply make-instance Error::t _%$args143730%_)))
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
      (let ((__tmp143821 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp143821
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args143727%_
        (apply make-instance ContractViolation::t _%$args143727%_)))
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
      (let ((__tmp143822 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp143822
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args143724%_
        (apply make-instance RuntimeException::t _%$args143724%_)))
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
      (lambda (_%exn143719%_ _%continue143720%_)
        (let ((_%exn143722%_ (wrap-runtime-exception _%exn143719%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn143722%_ _%continue143720%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn143715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn143715%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn143715%_ 'continuation))
                '#!void
                (let ((__tmp143823
                       (lambda (_%cont143717%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn143715%_
                            'continuation
                            _%cont143717%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp143823)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn143715%_))))
    (define error
      (lambda (_%message143712%_ . _%irritants143713%_)
        (raise (let ((__obj143815
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj143815
                  _%message143712%_
                  'irritants:
                  _%irritants143713%_)
                 __obj143815))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords143687%_
               _%ctx143682143688%_
               _%contract-expr143683143689%_
               _%value143684143690%_
               _%message143691%_)
        (let* ((_%ctx143693%_
                (if (eq? _%ctx143682143688%_ absent-value)
                    '#f
                    _%ctx143682143688%_))
               (_%contract-expr143695%_
                (if (eq? _%contract-expr143683143689%_ absent-value)
                    '#f
                    _%contract-expr143683143689%_))
               (_%value143697%_
                (if (eq? _%value143684143690%_ absent-value)
                    '#f
                    _%value143684143690%_)))
          (raise (let ((__obj143816
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj143816
                    _%message143691%_
                    'where:
                    _%ctx143693%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr143695%_
                                (cons 'value: (cons _%value143697%_ '())))))
                   __obj143816)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords143702%_ . _%args143703%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords143702%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143702%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143702%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143702%_
                  'value:
                  absent-value))
               _%args143703%_)))
    (define __raise-contract-violation-error
      (lambda _%args143685143709%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args143685143709%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler143656%_ _%thunk143657%_)
        (let* ((_%handler143660%_ _%handler143656%_)
               (_%thunk143668%_ _%thunk143657%_)
               (__tmp143824
                (lambda (_%exn143677%_)
                  (let ((_%exn143679%_ (wrap-runtime-exception _%exn143677%_)))
                    (declare (not safe))
                    (_%handler143660%_ _%exn143679%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp143824 _%thunk143668%_))))
    (define with-exception-handler
      (lambda (_%handler143631%_ _%thunk143632%_)
        (if (procedure? _%handler143631%_)
            (let ((_%handler143636%_ _%handler143631%_))
              (if (procedure? _%thunk143632%_)
                  (let ((_%thunk143646%_ _%thunk143632%_))
                    (__with-exception-handler
                     _%handler143636%_
                     _%thunk143646%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk143632%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler143631%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler143573%_ _%thunk143574%_)
        (let* ((_%handler143577%_ _%handler143573%_)
               (_%thunk143585%_ _%thunk143574%_)
               (__tmp143825
                (lambda (_%cont143594%_)
                  (let* ((_%handler143598%_
                          (lambda (_%exn143596%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont143594%_
                               _%handler143577%_
                               _%exn143596%_))))
                         (_%thunk143601%_ _%thunk143585%_)
                         (_%handler143606%_ _%handler143598%_)
                         (_%thunk143621%_ _%thunk143601%_))
                    (__with-exception-handler
                     _%handler143606%_
                     _%thunk143621%_)))))
          (declare (not safe))
          (##continuation-capture __tmp143825))))
    (define with-catch
      (lambda (_%handler143548%_ _%thunk143549%_)
        (if (procedure? _%handler143548%_)
            (let ((_%handler143553%_ _%handler143548%_))
              (if (procedure? _%thunk143549%_)
                  (let ((_%thunk143563%_ _%thunk143549%_))
                    (__with-catch _%handler143553%_ _%thunk143563%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk143549%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler143548%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn143535%_)
        (if (or (heap-overflow-exception? _%exn143535%_)
                (stack-overflow-exception? _%exn143535%_))
            _%exn143535%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn143535%_))
                _%exn143535%_
                (if (macro-exception? _%exn143535%_)
                    (let ((_%rte143543%_
                           (let ((__obj143817
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj143817
                                _%exn143535%_
                                '2
                                '#f
                                '#f))
                             __obj143817)))
                      (let ((__tmp143826
                             (lambda (_%cont143545%_)
                               (let ((__tmp143827
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont143545%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte143543%_
                                  'continuation
                                  __tmp143827)))))
                        (declare (not safe))
                        (##continuation-capture __tmp143826))
                      _%rte143543%_)
                    _%exn143535%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj143530%_)
        (let ((_%$e143532%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj143530%_))))
          (if _%$e143532%_ _%$e143532%_ (error-exception? _%obj143530%_)))))
    (define error-message
      (lambda (_%obj143489%_)
        (let ((_%$e143525%_
               (let* ((_%obj143491%_ _%obj143489%_)
                      (_%slot143494%_ 'message)
                      (_%E143497%_ false)
                      (_%slot143502%_ _%slot143494%_)
                      (_%E143515%_ _%E143497%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj143491%_ _%slot143502%_ _%E143515%_))))
          (if _%$e143525%_
              _%$e143525%_
              (if (error-exception? _%obj143489%_)
                  (error-exception-message _%obj143489%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj143484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj143484%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj143484%_ 'irritants))
            (if (error-exception? _%obj143484%_)
                (error-exception-parameters _%obj143484%_)
                '#f))))
    (define error-trace
      (lambda (_%obj143482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj143482%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj143482%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e143443%_ _%port143444%_)
        (let ((_%$e143466%_
               (let* ((_%obj143446%_ _%e143443%_)
                      (_%id143449%_ 'display-exception)
                      (_%id143454%_ _%id143449%_))
                 (declare (not safe))
                 (__method-ref _%obj143446%_ _%id143454%_))))
          (if _%$e143466%_
              (_%$e143466%_ _%e143443%_ _%port143444%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e143443%_ _%port143444%_))))))
    (define display-exception__0
      (lambda (_%e143475%_)
        (let ((_%port143477%_ (current-error-port)))
          (display-exception__% _%e143475%_ _%port143477%_))))
    (define display-exception
      (lambda _g143828_
        (let ((_g143829_ (let () (declare (not safe)) (##length _g143828_))))
          (cond ((let () (declare (not safe)) (##fx= _g143829_ 1))
                 (apply display-exception__0 _g143828_))
                ((let () (declare (not safe)) (##fx= _g143829_ 2))
                 (apply display-exception__% _g143828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g143828_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self143421%_ _%message143422%_ . _%rest143423%_)
        (let* ((_%self143426%_ _%self143421%_)
               (_%message143440%_
                (if (string? _%message143422%_)
                    _%message143422%_
                    (call-with-output-string
                     '""
                     (lambda (_%g143435143437%_)
                       (display _%message143422%_ _%g143435143437%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self143426%_ 'message _%message143440%_))
          (apply class-instance-init! _%self143426%_ _%rest143423%_))))
    (define Error:::init!::specialize
      (lambda (__klass143738 __method-table143739)
        (let ((__message143740
               (let ((__slot143741
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143738 'message))))
                 (if __slot143741
                     __slot143741
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self143421%_ _%message143422%_ . _%rest143423%_)
            (let* ((_%self143426%_ _%self143421%_)
                   (_%message143440%_
                    (if (string? _%message143422%_)
                        _%message143422%_
                        (call-with-output-string
                         '""
                         (lambda (_%g143435143437%_)
                           (display _%message143422%_ _%g143435143437%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self143426%_
                 _%message143440%_
                 __message143740
                 '#f
                 '#f))
              (apply class-instance-init! _%self143426%_ _%rest143423%_))))))
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
      (lambda (_%self143126%_ _%port143127%_)
        (let ((_%self143130%_ _%self143126%_))
          (let ((_%tmp-port143140%_ (open-output-string))
                (_%display-error-newline143141%_
                 (> (output-port-column _%port143127%_) '0)))
            (fix-port-width! _%tmp-port143140%_)
            (let ((__tmp143830
                   (lambda ()
                     (if _%display-error-newline143141%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e143144%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self143130%_ 'where))))
                       (if _%$e143144%_ (display _%$e143144%_) (display '"?")))
                     (let ((__tmp143831
                            (let ((__tmp143832
                                   (let ((_%obj143148%_ _%self143130%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj143148%_))
                                         (let ((_%obj143153%_ _%obj143148%_))
                                           (declare (not safe))
                                           (__object-class _%obj143153%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj143148%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp143832))))
                       (declare (not safe))
                       (display* '" [" __tmp143831 '"]: "))
                     (let ((__tmp143833
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self143130%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp143833))
                     (let ((_%irritants143168%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self143130%_ 'irritants))))
                       (if (null? _%irritants143168%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj143170%_)
                                (if (u8vector? _%obj143170%_)
                                    (let ((__tmp143834
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj143170%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp143834))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj143170%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants143168%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont143171143173%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self143130%_
                                   'continuation))))
                           (if _%cont143171143173%_
                               (let ((_%cont143175%_ _%cont143171143173%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont143175%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp143830
               current-output-port
               _%tmp-port143140%_))
            (let ((__tmp143835 (get-output-string _%tmp-port143140%_)))
              (declare (not safe))
              (##write-string __tmp143835 _%port143127%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass143742 __method-table143743)
        (let ((__continuation143744
               (let ((__slot143748
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143742 'continuation))))
                 (if __slot143748
                     __slot143748
                     (error '"Unknown slot" 'continuation))))
              (__message143745
               (let ((__slot143749
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143742 'message))))
                 (if __slot143749
                     __slot143749
                     (error '"Unknown slot" 'message))))
              (__irritants143746
               (let ((__slot143750
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143742 'irritants))))
                 (if __slot143750
                     __slot143750
                     (error '"Unknown slot" 'irritants))))
              (__where143747
               (let ((__slot143751
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143742 'where))))
                 (if __slot143751
                     __slot143751
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self143126%_ _%port143127%_)
            (let ((_%self143130%_ _%self143126%_))
              (let ((_%tmp-port143140%_ (open-output-string))
                    (_%display-error-newline143141%_
                     (> (output-port-column _%port143127%_) '0)))
                (fix-port-width! _%tmp-port143140%_)
                (let ((__tmp143836
                       (lambda ()
                         (if _%display-error-newline143141%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e143144%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self143130%_
                                   __where143747
                                   '#f
                                   '#f))))
                           (if _%$e143144%_
                               (display _%$e143144%_)
                               (display '"?")))
                         (let ((__tmp143837
                                (let ((__tmp143838
                                       (let ((_%obj143148%_ _%self143130%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj143148%_))
                                             (let ((_%obj143153%_
                                                    _%obj143148%_))
                                               (declare (not safe))
                                               (__object-class _%obj143153%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj143148%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp143838))))
                           (declare (not safe))
                           (display* '" [" __tmp143837 '"]: "))
                         (let ((__tmp143839
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self143130%_
                                   __message143745
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp143839))
                         (let ((_%irritants143168%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self143130%_
                                   __irritants143746
                                   '#f
                                   '#f))))
                           (if (null? _%irritants143168%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj143170%_)
                                    (if (u8vector? _%obj143170%_)
                                        (let ((__tmp143840
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj143170%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp143840))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj143170%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants143168%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont143171143173%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self143130%_
                                       __continuation143744
                                       '#f
                                       '#f))))
                               (if _%cont143171143173%_
                                   (let ((_%cont143175%_ _%cont143171143173%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont143175%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp143836
                   current-output-port
                   _%tmp-port143140%_))
                (let ((__tmp143841 (get-output-string _%tmp-port143140%_)))
                  (declare (not safe))
                  (##write-string __tmp143841 _%port143127%_))))))))
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
      (lambda (_%self142983%_ _%port142984%_)
        (let* ((_%self142987%_ _%self142983%_)
               (_%tmp-port142997%_ (open-output-string)))
          (fix-port-width! _%tmp-port142997%_)
          (let ((__tmp143842
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self142987%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp143842 _%tmp-port142997%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont142998143000%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self142987%_ 'continuation))))
                (if _%cont142998143000%_
                    (let ((_%cont143002%_ _%cont142998143000%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port142997%_)
                      (newline _%tmp-port142997%_)
                      (display-continuation-backtrace
                       _%cont143002%_
                       _%tmp-port142997%_))
                    '#f))
              '#!void)
          (let ((__tmp143843 (get-output-string _%tmp-port142997%_)))
            (declare (not safe))
            (##write-string __tmp143843 _%port142984%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass143752 __method-table143753)
        (let ((__continuation143754
               (let ((__slot143756
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143752 'continuation))))
                 (if __slot143756
                     __slot143756
                     (error '"Unknown slot" 'continuation))))
              (__exception143755
               (let ((__slot143757
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143752 'exception))))
                 (if __slot143757
                     __slot143757
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self142983%_ _%port142984%_)
            (let* ((_%self142987%_ _%self142983%_)
                   (_%tmp-port142997%_ (open-output-string)))
              (fix-port-width! _%tmp-port142997%_)
              (let ((__tmp143844
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self142987%_
                        __exception143755
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp143844 _%tmp-port142997%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont142998143000%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self142987%_
                            __continuation143754
                            '#f
                            '#f))))
                    (if _%cont142998143000%_
                        (let ((_%cont143002%_ _%cont142998143000%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port142997%_)
                          (newline _%tmp-port142997%_)
                          (display-continuation-backtrace
                           _%cont143002%_
                           _%tmp-port142997%_))
                        '#f))
                  '#!void)
              (let ((__tmp143845 (get-output-string _%tmp-port142997%_)))
                (declare (not safe))
                (##write-string __tmp143845 _%port142984%_)))))))
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
      (lambda (_%port142855%_)
        (if (macro-character-port? _%port142855%_)
            (let ((_%old-width142857%_
                   (macro-character-port-output-width _%port142855%_)))
              (macro-character-port-output-width-set!
               _%port142855%_
               (lambda (_%port142859%_) '512))
              _%old-width142857%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port142852%_ _%old-width142853%_)
        (if (macro-character-port? _%port142852%_)
            (macro-character-port-output-width-set!
             _%port142852%_
             _%old-width142853%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e142850%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e142850%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn142844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142844%_))
            (let ((_%e142847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142844%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e142847%_))
            (macro-abandoned-mutex-exception? _%exn142844%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn142840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142840%_))
            (let ((_%e142842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142840%_ 'exception))))
              (macro-cfun-conversion-exception? _%e142842%_))
            (macro-cfun-conversion-exception? _%exn142840%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn142836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142836%_))
            (let ((_%e142838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142836%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142838%_)
                  (macro-cfun-conversion-exception-arguments _%e142838%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e142838%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142836%_)
                (macro-cfun-conversion-exception-arguments _%exn142836%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn142836%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn142832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142832%_))
            (let ((_%e142834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142832%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142834%_)
                  (macro-cfun-conversion-exception-code _%e142834%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e142834%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142832%_)
                (macro-cfun-conversion-exception-code _%exn142832%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn142832%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn142828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142828%_))
            (let ((_%e142830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142828%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142830%_)
                  (macro-cfun-conversion-exception-message _%e142830%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e142830%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142828%_)
                (macro-cfun-conversion-exception-message _%exn142828%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn142828%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn142822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142822%_))
            (let ((_%e142825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142822%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142825%_)
                  (macro-cfun-conversion-exception-procedure _%e142825%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e142825%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142822%_)
                (macro-cfun-conversion-exception-procedure _%exn142822%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn142822%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn142818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142818%_))
            (let ((_%e142820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142818%_ 'exception))))
              (macro-datum-parsing-exception? _%e142820%_))
            (macro-datum-parsing-exception? _%exn142818%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn142814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142814%_))
            (let ((_%e142816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142814%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142816%_)
                  (macro-datum-parsing-exception-kind _%e142816%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e142816%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142814%_)
                (macro-datum-parsing-exception-kind _%exn142814%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn142814%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn142810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142810%_))
            (let ((_%e142812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142810%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142812%_)
                  (macro-datum-parsing-exception-parameters _%e142812%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e142812%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142810%_)
                (macro-datum-parsing-exception-parameters _%exn142810%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn142810%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn142804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142804%_))
            (let ((_%e142807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142804%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142807%_)
                  (macro-datum-parsing-exception-readenv _%e142807%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e142807%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142804%_)
                (macro-datum-parsing-exception-readenv _%exn142804%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn142804%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn142798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142798%_))
            (let ((_%e142801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142798%_ 'exception))))
              (macro-deadlock-exception? _%e142801%_))
            (macro-deadlock-exception? _%exn142798%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn142794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142794%_))
            (let ((_%e142796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142794%_ 'exception))))
              (macro-divide-by-zero-exception? _%e142796%_))
            (macro-divide-by-zero-exception? _%exn142794%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn142790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142790%_))
            (let ((_%e142792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142790%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142792%_)
                  (macro-divide-by-zero-exception-arguments _%e142792%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e142792%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142790%_)
                (macro-divide-by-zero-exception-arguments _%exn142790%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn142790%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn142784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142784%_))
            (let ((_%e142787%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142784%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142787%_)
                  (macro-divide-by-zero-exception-procedure _%e142787%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e142787%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142784%_)
                (macro-divide-by-zero-exception-procedure _%exn142784%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn142784%_ '())))))))
    (define error-exception?
      (lambda (_%exn142780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142780%_))
            (let ((_%e142782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142780%_ 'exception))))
              (macro-error-exception? _%e142782%_))
            (macro-error-exception? _%exn142780%_))))
    (define error-exception-message
      (lambda (_%exn142776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142776%_))
            (let ((_%e142778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142776%_ 'exception))))
              (if (macro-error-exception? _%e142778%_)
                  (macro-error-exception-message _%e142778%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e142778%_ '())))))
            (if (macro-error-exception? _%exn142776%_)
                (macro-error-exception-message _%exn142776%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn142776%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn142770%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142770%_))
            (let ((_%e142773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142770%_ 'exception))))
              (if (macro-error-exception? _%e142773%_)
                  (macro-error-exception-parameters _%e142773%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e142773%_ '())))))
            (if (macro-error-exception? _%exn142770%_)
                (macro-error-exception-parameters _%exn142770%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn142770%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn142766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142766%_))
            (let ((_%e142768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142766%_ 'exception))))
              (macro-expression-parsing-exception? _%e142768%_))
            (macro-expression-parsing-exception? _%exn142766%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn142762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142762%_))
            (let ((_%e142764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142762%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142764%_)
                  (macro-expression-parsing-exception-kind _%e142764%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e142764%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142762%_)
                (macro-expression-parsing-exception-kind _%exn142762%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn142762%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn142758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142758%_))
            (let ((_%e142760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142758%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142760%_)
                  (macro-expression-parsing-exception-parameters _%e142760%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e142760%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142758%_)
                (macro-expression-parsing-exception-parameters _%exn142758%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn142758%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn142752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142752%_))
            (let ((_%e142755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142752%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142755%_)
                  (macro-expression-parsing-exception-source _%e142755%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e142755%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142752%_)
                (macro-expression-parsing-exception-source _%exn142752%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn142752%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn142748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142748%_))
            (let ((_%e142750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142748%_ 'exception))))
              (macro-file-exists-exception? _%e142750%_))
            (macro-file-exists-exception? _%exn142748%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn142744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142744%_))
            (let ((_%e142746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142744%_ 'exception))))
              (if (macro-file-exists-exception? _%e142746%_)
                  (macro-file-exists-exception-arguments _%e142746%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e142746%_ '())))))
            (if (macro-file-exists-exception? _%exn142744%_)
                (macro-file-exists-exception-arguments _%exn142744%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn142744%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn142738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142738%_))
            (let ((_%e142741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142738%_ 'exception))))
              (if (macro-file-exists-exception? _%e142741%_)
                  (macro-file-exists-exception-procedure _%e142741%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e142741%_ '())))))
            (if (macro-file-exists-exception? _%exn142738%_)
                (macro-file-exists-exception-procedure _%exn142738%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn142738%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn142734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142734%_))
            (let ((_%e142736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142734%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e142736%_))
            (macro-fixnum-overflow-exception? _%exn142734%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn142730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142730%_))
            (let ((_%e142732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142730%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142732%_)
                  (macro-fixnum-overflow-exception-arguments _%e142732%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e142732%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142730%_)
                (macro-fixnum-overflow-exception-arguments _%exn142730%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn142730%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn142724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142724%_))
            (let ((_%e142727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142724%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142727%_)
                  (macro-fixnum-overflow-exception-procedure _%e142727%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e142727%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142724%_)
                (macro-fixnum-overflow-exception-procedure _%exn142724%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn142724%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn142718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142718%_))
            (let ((_%e142721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142718%_ 'exception))))
              (macro-heap-overflow-exception? _%e142721%_))
            (macro-heap-overflow-exception? _%exn142718%_))))
    (define inactive-thread-exception?
      (lambda (_%exn142714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142714%_))
            (let ((_%e142716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142714%_ 'exception))))
              (macro-inactive-thread-exception? _%e142716%_))
            (macro-inactive-thread-exception? _%exn142714%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn142710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142710%_))
            (let ((_%e142712%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142710%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e142712%_)
                  (macro-inactive-thread-exception-arguments _%e142712%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e142712%_ '())))))
            (if (macro-inactive-thread-exception? _%exn142710%_)
                (macro-inactive-thread-exception-arguments _%exn142710%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn142710%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn142704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142704%_))
            (let ((_%e142707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142704%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e142707%_)
                  (macro-inactive-thread-exception-procedure _%e142707%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e142707%_ '())))))
            (if (macro-inactive-thread-exception? _%exn142704%_)
                (macro-inactive-thread-exception-procedure _%exn142704%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn142704%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn142700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142700%_))
            (let ((_%e142702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142700%_ 'exception))))
              (macro-initialized-thread-exception? _%e142702%_))
            (macro-initialized-thread-exception? _%exn142700%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn142696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142696%_))
            (let ((_%e142698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142696%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e142698%_)
                  (macro-initialized-thread-exception-arguments _%e142698%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e142698%_ '())))))
            (if (macro-initialized-thread-exception? _%exn142696%_)
                (macro-initialized-thread-exception-arguments _%exn142696%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn142696%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn142690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142690%_))
            (let ((_%e142693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142690%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e142693%_)
                  (macro-initialized-thread-exception-procedure _%e142693%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e142693%_ '())))))
            (if (macro-initialized-thread-exception? _%exn142690%_)
                (macro-initialized-thread-exception-procedure _%exn142690%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn142690%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn142686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142686%_))
            (let ((_%e142688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142686%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e142688%_))
            (macro-invalid-hash-number-exception? _%exn142686%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn142682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142682%_))
            (let ((_%e142684%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142682%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e142684%_)
                  (macro-invalid-hash-number-exception-arguments _%e142684%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e142684%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn142682%_)
                (macro-invalid-hash-number-exception-arguments _%exn142682%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn142682%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn142676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142676%_))
            (let ((_%e142679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142676%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e142679%_)
                  (macro-invalid-hash-number-exception-procedure _%e142679%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e142679%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn142676%_)
                (macro-invalid-hash-number-exception-procedure _%exn142676%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn142676%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn142672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142672%_))
            (let ((_%e142674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142672%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e142674%_))
            (macro-invalid-utf8-encoding-exception? _%exn142672%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn142668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142668%_))
            (let ((_%e142670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142668%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e142670%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e142670%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e142670%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn142668%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn142668%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn142668%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn142662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142662%_))
            (let ((_%e142665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142662%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e142665%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e142665%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e142665%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn142662%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn142662%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn142662%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn142658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142658%_))
            (let ((_%e142660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142658%_ 'exception))))
              (macro-join-timeout-exception? _%e142660%_))
            (macro-join-timeout-exception? _%exn142658%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn142654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142654%_))
            (let ((_%e142656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142654%_ 'exception))))
              (if (macro-join-timeout-exception? _%e142656%_)
                  (macro-join-timeout-exception-arguments _%e142656%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e142656%_ '())))))
            (if (macro-join-timeout-exception? _%exn142654%_)
                (macro-join-timeout-exception-arguments _%exn142654%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn142654%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn142648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142648%_))
            (let ((_%e142651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142648%_ 'exception))))
              (if (macro-join-timeout-exception? _%e142651%_)
                  (macro-join-timeout-exception-procedure _%e142651%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e142651%_ '())))))
            (if (macro-join-timeout-exception? _%exn142648%_)
                (macro-join-timeout-exception-procedure _%exn142648%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn142648%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn142644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142644%_))
            (let ((_%e142646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142644%_ 'exception))))
              (macro-keyword-expected-exception? _%e142646%_))
            (macro-keyword-expected-exception? _%exn142644%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn142640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142640%_))
            (let ((_%e142642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142640%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e142642%_)
                  (macro-keyword-expected-exception-arguments _%e142642%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e142642%_ '())))))
            (if (macro-keyword-expected-exception? _%exn142640%_)
                (macro-keyword-expected-exception-arguments _%exn142640%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn142640%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn142634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142634%_))
            (let ((_%e142637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142634%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e142637%_)
                  (macro-keyword-expected-exception-procedure _%e142637%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e142637%_ '())))))
            (if (macro-keyword-expected-exception? _%exn142634%_)
                (macro-keyword-expected-exception-procedure _%exn142634%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn142634%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn142630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142630%_))
            (let ((_%e142632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142630%_ 'exception))))
              (macro-length-mismatch-exception? _%e142632%_))
            (macro-length-mismatch-exception? _%exn142630%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn142626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142626%_))
            (let ((_%e142628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142626%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142628%_)
                  (macro-length-mismatch-exception-arg-id _%e142628%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e142628%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142626%_)
                (macro-length-mismatch-exception-arg-id _%exn142626%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn142626%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn142622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142622%_))
            (let ((_%e142624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142622%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142624%_)
                  (macro-length-mismatch-exception-arguments _%e142624%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e142624%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142622%_)
                (macro-length-mismatch-exception-arguments _%exn142622%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn142622%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn142616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142616%_))
            (let ((_%e142619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142616%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142619%_)
                  (macro-length-mismatch-exception-procedure _%e142619%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e142619%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142616%_)
                (macro-length-mismatch-exception-procedure _%exn142616%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn142616%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn142612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142612%_))
            (let ((_%e142614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142612%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e142614%_))
            (macro-mailbox-receive-timeout-exception? _%exn142612%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn142608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142608%_))
            (let ((_%e142610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142608%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e142610%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e142610%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e142610%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn142608%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn142608%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn142608%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn142602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142602%_))
            (let ((_%e142605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142602%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e142605%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e142605%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e142605%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn142602%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn142602%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn142602%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn142598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142598%_))
            (let ((_%e142600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142598%_ 'exception))))
              (macro-module-not-found-exception? _%e142600%_))
            (macro-module-not-found-exception? _%exn142598%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn142594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142594%_))
            (let ((_%e142596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142594%_ 'exception))))
              (if (macro-module-not-found-exception? _%e142596%_)
                  (macro-module-not-found-exception-arguments _%e142596%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e142596%_ '())))))
            (if (macro-module-not-found-exception? _%exn142594%_)
                (macro-module-not-found-exception-arguments _%exn142594%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn142594%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn142588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142588%_))
            (let ((_%e142591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142588%_ 'exception))))
              (if (macro-module-not-found-exception? _%e142591%_)
                  (macro-module-not-found-exception-procedure _%e142591%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e142591%_ '())))))
            (if (macro-module-not-found-exception? _%exn142588%_)
                (macro-module-not-found-exception-procedure _%exn142588%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn142588%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn142582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142582%_))
            (let ((_%e142585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142582%_ 'exception))))
              (macro-multiple-c-return-exception? _%e142585%_))
            (macro-multiple-c-return-exception? _%exn142582%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn142578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142578%_))
            (let ((_%e142580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142578%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e142580%_))
            (macro-no-such-file-or-directory-exception? _%exn142578%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn142574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142574%_))
            (let ((_%e142576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142574%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e142576%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e142576%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e142576%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn142574%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn142574%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn142574%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn142568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142568%_))
            (let ((_%e142571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142568%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e142571%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e142571%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e142571%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn142568%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn142568%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn142568%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn142564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142564%_))
            (let ((_%e142566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142564%_ 'exception))))
              (macro-noncontinuable-exception? _%e142566%_))
            (macro-noncontinuable-exception? _%exn142564%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn142558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142558%_))
            (let ((_%e142561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142558%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e142561%_)
                  (macro-noncontinuable-exception-reason _%e142561%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e142561%_ '())))))
            (if (macro-noncontinuable-exception? _%exn142558%_)
                (macro-noncontinuable-exception-reason _%exn142558%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn142558%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn142554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142554%_))
            (let ((_%e142556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142554%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e142556%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn142554%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn142550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142550%_))
            (let ((_%e142552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142550%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e142552%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e142552%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e142552%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn142550%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn142550%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn142550%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn142544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142544%_))
            (let ((_%e142547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142544%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e142547%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e142547%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e142547%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn142544%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn142544%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn142544%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn142540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142540%_))
            (let ((_%e142542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142540%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e142542%_))
            (macro-nonprocedure-operator-exception? _%exn142540%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn142536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142536%_))
            (let ((_%e142538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142536%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142538%_)
                  (macro-nonprocedure-operator-exception-arguments _%e142538%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e142538%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142536%_)
                (macro-nonprocedure-operator-exception-arguments _%exn142536%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn142536%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn142532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142532%_))
            (let ((_%e142534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142532%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142534%_)
                  (macro-nonprocedure-operator-exception-code _%e142534%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e142534%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142532%_)
                (macro-nonprocedure-operator-exception-code _%exn142532%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn142532%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn142528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142528%_))
            (let ((_%e142530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142528%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142530%_)
                  (macro-nonprocedure-operator-exception-operator _%e142530%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e142530%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142528%_)
                (macro-nonprocedure-operator-exception-operator _%exn142528%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn142528%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn142522%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142522%_))
            (let ((_%e142525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142522%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142525%_)
                  (macro-nonprocedure-operator-exception-rte _%e142525%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e142525%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142522%_)
                (macro-nonprocedure-operator-exception-rte _%exn142522%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn142522%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn142518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142518%_))
            (let ((_%e142520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142518%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e142520%_))
            (macro-not-in-compilation-context-exception? _%exn142518%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn142514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142514%_))
            (let ((_%e142516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142514%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e142516%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e142516%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e142516%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn142514%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn142514%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn142514%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn142508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142508%_))
            (let ((_%e142511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142508%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e142511%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e142511%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e142511%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn142508%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn142508%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn142508%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn142504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142504%_))
            (let ((_%e142506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142504%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e142506%_))
            (macro-number-of-arguments-limit-exception? _%exn142504%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn142500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142500%_))
            (let ((_%e142502%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142500%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e142502%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e142502%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e142502%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn142500%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn142500%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn142500%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn142494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142494%_))
            (let ((_%e142497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142494%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e142497%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e142497%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e142497%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn142494%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn142494%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn142494%_ '())))))))
    (define os-exception?
      (lambda (_%exn142490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142490%_))
            (let ((_%e142492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142490%_ 'exception))))
              (macro-os-exception? _%e142492%_))
            (macro-os-exception? _%exn142490%_))))
    (define os-exception-arguments
      (lambda (_%exn142486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142486%_))
            (let ((_%e142488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142486%_ 'exception))))
              (if (macro-os-exception? _%e142488%_)
                  (macro-os-exception-arguments _%e142488%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e142488%_ '())))))
            (if (macro-os-exception? _%exn142486%_)
                (macro-os-exception-arguments _%exn142486%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn142486%_ '())))))))
    (define os-exception-code
      (lambda (_%exn142482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142482%_))
            (let ((_%e142484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142482%_ 'exception))))
              (if (macro-os-exception? _%e142484%_)
                  (macro-os-exception-code _%e142484%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e142484%_ '())))))
            (if (macro-os-exception? _%exn142482%_)
                (macro-os-exception-code _%exn142482%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn142482%_ '())))))))
    (define os-exception-message
      (lambda (_%exn142478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142478%_))
            (let ((_%e142480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142478%_ 'exception))))
              (if (macro-os-exception? _%e142480%_)
                  (macro-os-exception-message _%e142480%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e142480%_ '())))))
            (if (macro-os-exception? _%exn142478%_)
                (macro-os-exception-message _%exn142478%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn142478%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn142472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142472%_))
            (let ((_%e142475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142472%_ 'exception))))
              (if (macro-os-exception? _%e142475%_)
                  (macro-os-exception-procedure _%e142475%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e142475%_ '())))))
            (if (macro-os-exception? _%exn142472%_)
                (macro-os-exception-procedure _%exn142472%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn142472%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn142468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142468%_))
            (let ((_%e142470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142468%_ 'exception))))
              (macro-permission-denied-exception? _%e142470%_))
            (macro-permission-denied-exception? _%exn142468%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn142464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142464%_))
            (let ((_%e142466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142464%_ 'exception))))
              (if (macro-permission-denied-exception? _%e142466%_)
                  (macro-permission-denied-exception-arguments _%e142466%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e142466%_ '())))))
            (if (macro-permission-denied-exception? _%exn142464%_)
                (macro-permission-denied-exception-arguments _%exn142464%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn142464%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn142458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142458%_))
            (let ((_%e142461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142458%_ 'exception))))
              (if (macro-permission-denied-exception? _%e142461%_)
                  (macro-permission-denied-exception-procedure _%e142461%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e142461%_ '())))))
            (if (macro-permission-denied-exception? _%exn142458%_)
                (macro-permission-denied-exception-procedure _%exn142458%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn142458%_ '())))))))
    (define range-exception?
      (lambda (_%exn142454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142454%_))
            (let ((_%e142456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142454%_ 'exception))))
              (macro-range-exception? _%e142456%_))
            (macro-range-exception? _%exn142454%_))))
    (define range-exception-arg-id
      (lambda (_%exn142450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142450%_))
            (let ((_%e142452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142450%_ 'exception))))
              (if (macro-range-exception? _%e142452%_)
                  (macro-range-exception-arg-id _%e142452%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e142452%_ '())))))
            (if (macro-range-exception? _%exn142450%_)
                (macro-range-exception-arg-id _%exn142450%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn142450%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn142446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142446%_))
            (let ((_%e142448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142446%_ 'exception))))
              (if (macro-range-exception? _%e142448%_)
                  (macro-range-exception-arguments _%e142448%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e142448%_ '())))))
            (if (macro-range-exception? _%exn142446%_)
                (macro-range-exception-arguments _%exn142446%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn142446%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn142440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142440%_))
            (let ((_%e142443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142440%_ 'exception))))
              (if (macro-range-exception? _%e142443%_)
                  (macro-range-exception-procedure _%e142443%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e142443%_ '())))))
            (if (macro-range-exception? _%exn142440%_)
                (macro-range-exception-procedure _%exn142440%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn142440%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn142436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142436%_))
            (let ((_%e142438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142436%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e142438%_))
            (macro-rpc-remote-error-exception? _%exn142436%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn142432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142432%_))
            (let ((_%e142434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142432%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142434%_)
                  (macro-rpc-remote-error-exception-arguments _%e142434%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e142434%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142432%_)
                (macro-rpc-remote-error-exception-arguments _%exn142432%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn142432%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn142428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142428%_))
            (let ((_%e142430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142428%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142430%_)
                  (macro-rpc-remote-error-exception-message _%e142430%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e142430%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142428%_)
                (macro-rpc-remote-error-exception-message _%exn142428%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn142428%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn142422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142422%_))
            (let ((_%e142425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142422%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142425%_)
                  (macro-rpc-remote-error-exception-procedure _%e142425%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e142425%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142422%_)
                (macro-rpc-remote-error-exception-procedure _%exn142422%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn142422%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn142418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142418%_))
            (let ((_%e142420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142418%_ 'exception))))
              (macro-scheduler-exception? _%e142420%_))
            (macro-scheduler-exception? _%exn142418%_))))
    (define scheduler-exception-reason
      (lambda (_%exn142412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142412%_))
            (let ((_%e142415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142412%_ 'exception))))
              (if (macro-scheduler-exception? _%e142415%_)
                  (macro-scheduler-exception-reason _%e142415%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e142415%_ '())))))
            (if (macro-scheduler-exception? _%exn142412%_)
                (macro-scheduler-exception-reason _%exn142412%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn142412%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn142408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142408%_))
            (let ((_%e142410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142408%_ 'exception))))
              (macro-sfun-conversion-exception? _%e142410%_))
            (macro-sfun-conversion-exception? _%exn142408%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn142404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142404%_))
            (let ((_%e142406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142404%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142406%_)
                  (macro-sfun-conversion-exception-arguments _%e142406%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e142406%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142404%_)
                (macro-sfun-conversion-exception-arguments _%exn142404%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn142404%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn142400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142400%_))
            (let ((_%e142402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142400%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142402%_)
                  (macro-sfun-conversion-exception-code _%e142402%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e142402%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142400%_)
                (macro-sfun-conversion-exception-code _%exn142400%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn142400%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn142396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142396%_))
            (let ((_%e142398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142396%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142398%_)
                  (macro-sfun-conversion-exception-message _%e142398%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e142398%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142396%_)
                (macro-sfun-conversion-exception-message _%exn142396%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn142396%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn142390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142390%_))
            (let ((_%e142393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142390%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142393%_)
                  (macro-sfun-conversion-exception-procedure _%e142393%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e142393%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142390%_)
                (macro-sfun-conversion-exception-procedure _%exn142390%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn142390%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn142384%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142384%_))
            (let ((_%e142387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142384%_ 'exception))))
              (macro-stack-overflow-exception? _%e142387%_))
            (macro-stack-overflow-exception? _%exn142384%_))))
    (define started-thread-exception?
      (lambda (_%exn142380%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142380%_))
            (let ((_%e142382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142380%_ 'exception))))
              (macro-started-thread-exception? _%e142382%_))
            (macro-started-thread-exception? _%exn142380%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn142376%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142376%_))
            (let ((_%e142378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142376%_ 'exception))))
              (if (macro-started-thread-exception? _%e142378%_)
                  (macro-started-thread-exception-arguments _%e142378%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e142378%_ '())))))
            (if (macro-started-thread-exception? _%exn142376%_)
                (macro-started-thread-exception-arguments _%exn142376%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn142376%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn142370%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142370%_))
            (let ((_%e142373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142370%_ 'exception))))
              (if (macro-started-thread-exception? _%e142373%_)
                  (macro-started-thread-exception-procedure _%e142373%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e142373%_ '())))))
            (if (macro-started-thread-exception? _%exn142370%_)
                (macro-started-thread-exception-procedure _%exn142370%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn142370%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn142366%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142366%_))
            (let ((_%e142368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142366%_ 'exception))))
              (macro-terminated-thread-exception? _%e142368%_))
            (macro-terminated-thread-exception? _%exn142366%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn142362%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142362%_))
            (let ((_%e142364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142362%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e142364%_)
                  (macro-terminated-thread-exception-arguments _%e142364%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e142364%_ '())))))
            (if (macro-terminated-thread-exception? _%exn142362%_)
                (macro-terminated-thread-exception-arguments _%exn142362%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn142362%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn142356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142356%_))
            (let ((_%e142359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142356%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e142359%_)
                  (macro-terminated-thread-exception-procedure _%e142359%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e142359%_ '())))))
            (if (macro-terminated-thread-exception? _%exn142356%_)
                (macro-terminated-thread-exception-procedure _%exn142356%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn142356%_ '())))))))
    (define type-exception?
      (lambda (_%exn142352%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142352%_))
            (let ((_%e142354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142352%_ 'exception))))
              (macro-type-exception? _%e142354%_))
            (macro-type-exception? _%exn142352%_))))
    (define type-exception-arg-id
      (lambda (_%exn142348%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142348%_))
            (let ((_%e142350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142348%_ 'exception))))
              (if (macro-type-exception? _%e142350%_)
                  (macro-type-exception-arg-id _%e142350%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e142350%_ '())))))
            (if (macro-type-exception? _%exn142348%_)
                (macro-type-exception-arg-id _%exn142348%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn142348%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn142344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142344%_))
            (let ((_%e142346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142344%_ 'exception))))
              (if (macro-type-exception? _%e142346%_)
                  (macro-type-exception-arguments _%e142346%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e142346%_ '())))))
            (if (macro-type-exception? _%exn142344%_)
                (macro-type-exception-arguments _%exn142344%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn142344%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn142340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142340%_))
            (let ((_%e142342%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142340%_ 'exception))))
              (if (macro-type-exception? _%e142342%_)
                  (macro-type-exception-procedure _%e142342%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e142342%_ '())))))
            (if (macro-type-exception? _%exn142340%_)
                (macro-type-exception-procedure _%exn142340%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn142340%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn142334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142334%_))
            (let ((_%e142337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142334%_ 'exception))))
              (if (macro-type-exception? _%e142337%_)
                  (macro-type-exception-type-id _%e142337%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e142337%_ '())))))
            (if (macro-type-exception? _%exn142334%_)
                (macro-type-exception-type-id _%exn142334%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn142334%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn142330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142330%_))
            (let ((_%e142332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142330%_ 'exception))))
              (macro-unbound-global-exception? _%e142332%_))
            (macro-unbound-global-exception? _%exn142330%_))))
    (define unbound-global-exception-code
      (lambda (_%exn142326%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142326%_))
            (let ((_%e142328%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142326%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142328%_)
                  (macro-unbound-global-exception-code _%e142328%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e142328%_ '())))))
            (if (macro-unbound-global-exception? _%exn142326%_)
                (macro-unbound-global-exception-code _%exn142326%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn142326%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn142322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142322%_))
            (let ((_%e142324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142322%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142324%_)
                  (macro-unbound-global-exception-rte _%e142324%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e142324%_ '())))))
            (if (macro-unbound-global-exception? _%exn142322%_)
                (macro-unbound-global-exception-rte _%exn142322%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn142322%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn142316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142316%_))
            (let ((_%e142319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142316%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142319%_)
                  (macro-unbound-global-exception-variable _%e142319%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e142319%_ '())))))
            (if (macro-unbound-global-exception? _%exn142316%_)
                (macro-unbound-global-exception-variable _%exn142316%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn142316%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn142312%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142312%_))
            (let ((_%e142314%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142312%_ 'exception))))
              (macro-unbound-key-exception? _%e142314%_))
            (macro-unbound-key-exception? _%exn142312%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn142308%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142308%_))
            (let ((_%e142310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142308%_ 'exception))))
              (if (macro-unbound-key-exception? _%e142310%_)
                  (macro-unbound-key-exception-arguments _%e142310%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e142310%_ '())))))
            (if (macro-unbound-key-exception? _%exn142308%_)
                (macro-unbound-key-exception-arguments _%exn142308%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn142308%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn142302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142302%_))
            (let ((_%e142305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142302%_ 'exception))))
              (if (macro-unbound-key-exception? _%e142305%_)
                  (macro-unbound-key-exception-procedure _%e142305%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e142305%_ '())))))
            (if (macro-unbound-key-exception? _%exn142302%_)
                (macro-unbound-key-exception-procedure _%exn142302%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn142302%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn142298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142298%_))
            (let ((_%e142300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142298%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e142300%_))
            (macro-unbound-os-environment-variable-exception? _%exn142298%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn142294%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142294%_))
            (let ((_%e142296%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142294%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e142296%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e142296%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e142296%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn142294%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn142294%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn142294%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn142288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142288%_))
            (let ((_%e142291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142288%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e142291%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e142291%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e142291%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn142288%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn142288%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn142288%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn142284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142284%_))
            (let ((_%e142286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142284%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e142286%_))
            (macro-unbound-serial-number-exception? _%exn142284%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn142280%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142280%_))
            (let ((_%e142282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142280%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e142282%_)
                  (macro-unbound-serial-number-exception-arguments _%e142282%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e142282%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn142280%_)
                (macro-unbound-serial-number-exception-arguments _%exn142280%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn142280%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn142274%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142274%_))
            (let ((_%e142277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142274%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e142277%_)
                  (macro-unbound-serial-number-exception-procedure _%e142277%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e142277%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn142274%_)
                (macro-unbound-serial-number-exception-procedure _%exn142274%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn142274%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn142270%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142270%_))
            (let ((_%e142272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142270%_ 'exception))))
              (macro-uncaught-exception? _%e142272%_))
            (macro-uncaught-exception? _%exn142270%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn142266%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142266%_))
            (let ((_%e142268%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142266%_ 'exception))))
              (if (macro-uncaught-exception? _%e142268%_)
                  (macro-uncaught-exception-arguments _%e142268%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e142268%_ '())))))
            (if (macro-uncaught-exception? _%exn142266%_)
                (macro-uncaught-exception-arguments _%exn142266%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn142266%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn142262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142262%_))
            (let ((_%e142264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142262%_ 'exception))))
              (if (macro-uncaught-exception? _%e142264%_)
                  (macro-uncaught-exception-procedure _%e142264%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e142264%_ '())))))
            (if (macro-uncaught-exception? _%exn142262%_)
                (macro-uncaught-exception-procedure _%exn142262%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn142262%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn142256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142256%_))
            (let ((_%e142259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142256%_ 'exception))))
              (if (macro-uncaught-exception? _%e142259%_)
                  (macro-uncaught-exception-reason _%e142259%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e142259%_ '())))))
            (if (macro-uncaught-exception? _%exn142256%_)
                (macro-uncaught-exception-reason _%exn142256%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn142256%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn142252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142252%_))
            (let ((_%e142254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142252%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e142254%_))
            (macro-uninitialized-thread-exception? _%exn142252%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn142248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142248%_))
            (let ((_%e142250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142248%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e142250%_)
                  (macro-uninitialized-thread-exception-arguments _%e142250%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e142250%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn142248%_)
                (macro-uninitialized-thread-exception-arguments _%exn142248%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn142248%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn142242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142242%_))
            (let ((_%e142245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142242%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e142245%_)
                  (macro-uninitialized-thread-exception-procedure _%e142245%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e142245%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn142242%_)
                (macro-uninitialized-thread-exception-procedure _%exn142242%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn142242%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn142238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142238%_))
            (let ((_%e142240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142238%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e142240%_))
            (macro-unknown-keyword-argument-exception? _%exn142238%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn142234%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142234%_))
            (let ((_%e142236%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142234%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e142236%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e142236%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e142236%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn142234%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn142234%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn142234%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn142228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142228%_))
            (let ((_%e142231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142228%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e142231%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e142231%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e142231%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn142228%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn142228%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn142228%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn142224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142224%_))
            (let ((_%e142226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142224%_ 'exception))))
              (macro-unterminated-process-exception? _%e142226%_))
            (macro-unterminated-process-exception? _%exn142224%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn142220%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142220%_))
            (let ((_%e142222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142220%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e142222%_)
                  (macro-unterminated-process-exception-arguments _%e142222%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e142222%_ '())))))
            (if (macro-unterminated-process-exception? _%exn142220%_)
                (macro-unterminated-process-exception-arguments _%exn142220%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn142220%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn142214%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142214%_))
            (let ((_%e142217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142214%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e142217%_)
                  (macro-unterminated-process-exception-procedure _%e142217%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e142217%_ '())))))
            (if (macro-unterminated-process-exception? _%exn142214%_)
                (macro-unterminated-process-exception-procedure _%exn142214%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn142214%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn142210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142210%_))
            (let ((_%e142212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142210%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e142212%_))
            (macro-wrong-number-of-arguments-exception? _%exn142210%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn142206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142206%_))
            (let ((_%e142208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142206%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e142208%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e142208%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e142208%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn142206%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn142206%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn142206%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn142200%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142200%_))
            (let ((_%e142203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142200%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e142203%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e142203%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e142203%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn142200%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn142200%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn142200%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn142196%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142196%_))
            (let ((_%e142198%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142196%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e142198%_))
            (macro-wrong-number-of-values-exception? _%exn142196%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn142192%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142192%_))
            (let ((_%e142194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142192%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e142194%_)
                  (macro-wrong-number-of-values-exception-code _%e142194%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e142194%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn142192%_)
                (macro-wrong-number-of-values-exception-code _%exn142192%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn142192%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn142188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142188%_))
            (let ((_%e142190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142188%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e142190%_)
                  (macro-wrong-number-of-values-exception-rte _%e142190%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e142190%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn142188%_)
                (macro-wrong-number-of-values-exception-rte _%exn142188%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn142188%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn142182%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142182%_))
            (let ((_%e142185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142182%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e142185%_)
                  (macro-wrong-number-of-values-exception-vals _%e142185%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e142185%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn142182%_)
                (macro-wrong-number-of-values-exception-vals _%exn142182%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn142182%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn142176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142176%_))
            (let ((_%e142179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142176%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e142179%_))
            (macro-wrong-processor-c-return-exception? _%exn142176%_))))))
