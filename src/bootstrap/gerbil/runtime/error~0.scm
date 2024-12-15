(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1734278443)
  (begin
    (define Exception::t
      (let ((__tmp104920 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104920
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104890%_
        (apply make-instance Exception::t _%$args104890%_)))
    (define StackTrace::t
      (let ((__tmp104921 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104921
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104887%_
        (apply make-instance StackTrace::t _%$args104887%_)))
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
      (let ((__tmp104922 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104922
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104884%_ (apply make-instance Error::t _%$args104884%_)))
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
      (let ((__tmp104923 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104923
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104881%_
        (apply make-instance ContractViolation::t _%$args104881%_)))
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
      (let ((__tmp104924 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104924
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104878%_
        (apply make-instance RuntimeException::t _%$args104878%_)))
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
      (lambda (_%exn104873%_ _%continue104874%_)
        (let ((_%exn104876%_ (wrap-runtime-exception _%exn104873%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104876%_ _%continue104874%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104869%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104869%_ 'continuation))
                '#!void
                (let ((__tmp104925
                       (lambda (_%cont104871%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104869%_
                            'continuation
                            _%cont104871%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104925)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104869%_))))
    (define error
      (lambda (_%message104866%_ . _%irritants104867%_)
        (raise (let ((__obj104917
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104917
                  _%message104866%_
                  'irritants:
                  _%irritants104867%_)
                 __obj104917))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104838%_
               _%ctx104833104839%_
               _%contract-expr104834104841%_
               _%value104835104843%_
               _%message104845%_)
        (let* ((_%ctx104847%_
                (if (eq? _%ctx104833104839%_ absent-value)
                    '#f
                    _%ctx104833104839%_))
               (_%contract-expr104849%_
                (if (eq? _%contract-expr104834104841%_ absent-value)
                    '#f
                    _%contract-expr104834104841%_))
               (_%value104851%_
                (if (eq? _%value104835104843%_ absent-value)
                    '#f
                    _%value104835104843%_)))
          (raise (let ((__obj104918
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104918
                    _%message104845%_
                    'where:
                    _%ctx104847%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104849%_
                                (cons 'value: (cons _%value104851%_ '())))))
                   __obj104918)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104856%_ . _%args104857%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104856%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104856%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104856%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104856%_
                  'value:
                  absent-value))
               _%args104857%_)))
    (define __raise-contract-violation-error
      (lambda _%args104836104863%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104836104863%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104807%_ _%thunk104808%_)
        (if (procedure? _%handler104807%_)
            (let ((_%handler104812%_ _%handler104807%_))
              (if (procedure? _%thunk104808%_)
                  (let ((_%thunk104822%_ _%thunk104808%_))
                    (__with-exception-handler
                     _%handler104812%_
                     _%thunk104822%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104808%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104807%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler104782%_ _%thunk104783%_)
        (let* ((_%handler104786%_ _%handler104782%_)
               (_%thunk104794%_ _%thunk104783%_)
               (__tmp104926
                (lambda (_%exn104803%_)
                  (let ((_%exn104805%_ (wrap-runtime-exception _%exn104803%_)))
                    (declare (not safe))
                    (_%handler104786%_ _%exn104805%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104926 _%thunk104794%_))))
    (define with-catch
      (lambda (_%handler104757%_ _%thunk104758%_)
        (if (procedure? _%handler104757%_)
            (let ((_%handler104762%_ _%handler104757%_))
              (if (procedure? _%thunk104758%_)
                  (let ((_%thunk104772%_ _%thunk104758%_))
                    (__with-catch _%handler104762%_ _%thunk104772%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104758%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler104757%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler104732%_ _%thunk104733%_)
        (let* ((_%handler104736%_ _%handler104732%_)
               (_%thunk104744%_ _%thunk104733%_)
               (__tmp104927
                (lambda (_%cont104753%_)
                  (__with-exception-handler
                   (lambda (_%exn104755%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont104753%_
                        _%handler104736%_
                        _%exn104755%_)))
                   _%thunk104744%_))))
          (declare (not safe))
          (##continuation-capture __tmp104927))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn104719%_)
        (if (or (heap-overflow-exception? _%exn104719%_)
                (stack-overflow-exception? _%exn104719%_))
            _%exn104719%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn104719%_))
                _%exn104719%_
                (if (macro-exception? _%exn104719%_)
                    (let ((_%rte104727%_
                           (let ((__obj104919
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104919
                                _%exn104719%_
                                '2
                                '#f
                                '#f))
                             __obj104919)))
                      (let ((__tmp104928
                             (lambda (_%cont104729%_)
                               (let ((__tmp104929
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont104729%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte104727%_
                                  'continuation
                                  __tmp104929)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104928))
                      _%rte104727%_)
                    _%exn104719%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj104714%_)
        (let ((_%$e104716%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj104714%_))))
          (if _%$e104716%_ _%$e104716%_ (error-exception? _%obj104714%_)))))
    (define error-message
      (lambda (_%obj104707%_)
        (let ((_%$e104709%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj104707%_ 'message false))))
          (if _%$e104709%_
              _%$e104709%_
              (if (error-exception? _%obj104707%_)
                  (error-exception-message _%obj104707%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj104702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104702%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104702%_ 'irritants))
            (if (error-exception? _%obj104702%_)
                (error-exception-parameters _%obj104702%_)
                '#f))))
    (define error-trace
      (lambda (_%obj104700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104700%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104700%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e104681%_ _%port104682%_)
        (let ((_%$e104684%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e104681%_ 'display-exception))))
          (if _%$e104684%_
              ((lambda (_%f104687%_) (_%f104687%_ _%e104681%_ _%port104682%_))
               _%$e104684%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e104681%_ _%port104682%_))))))
    (define display-exception__0
      (lambda (_%e104693%_)
        (let ((_%port104695%_ (current-error-port)))
          (display-exception__% _%e104693%_ _%port104695%_))))
    (define display-exception
      (lambda _g104931_
        (let ((_g104930_ (let () (declare (not safe)) (##length _g104931_))))
          (cond ((let () (declare (not safe)) (##fx= _g104930_ 1))
                 (apply display-exception__0 _g104931_))
                ((let () (declare (not safe)) (##fx= _g104930_ 2))
                 (apply display-exception__% _g104931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104931_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self103050104657%_ _%message104659%_ . _%rest104660%_)
        (let* ((_%self104662%_ _%self103050104657%_)
               (_%self104664%_ _%self104662%_)
               (_%message104678%_
                (if (string? _%message104659%_)
                    _%message104659%_
                    (call-with-output-string
                     '""
                     (lambda (_%g104673104675%_)
                       (display _%message104659%_ _%g104673104675%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self104664%_ 'message _%message104678%_))
          (apply class-instance-init! _%self104664%_ _%rest104660%_))))
    (define Error:::init!::specialize
      (lambda (__klass104892 __method-table104893)
        (let ((__message104894
               (let ((__slot104895
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104892 'message))))
                 (if __slot104895
                     __slot104895
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103050104657%_ _%message104659%_ . _%rest104660%_)
            (let* ((_%self104662%_ _%self103050104657%_)
                   (_%self104664%_ _%self104662%_)
                   (_%message104678%_
                    (if (string? _%message104659%_)
                        _%message104659%_
                        (call-with-output-string
                         '""
                         (lambda (_%g104673104675%_)
                           (display _%message104659%_ _%g104673104675%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self104664%_
                 _%message104678%_
                 __message104894
                 '#f
                 '#f))
              (apply class-instance-init! _%self104664%_ _%rest104660%_))))))
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
      (lambda (_%self103051104379%_ _%port104381%_)
        (let* ((_%self104383%_ _%self103051104379%_)
               (_%self104385%_ _%self104383%_))
          (let ((_%tmp-port104395%_ (open-output-string))
                (_%display-error-newline104396%_
                 (> (output-port-column _%port104381%_) '0)))
            (fix-port-width! _%tmp-port104395%_)
            (let ((__tmp104932
                   (lambda ()
                     (if _%display-error-newline104396%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e104399%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104385%_ 'where))))
                       (if _%$e104399%_ (display _%$e104399%_) (display '"?")))
                     (let ((__tmp104933
                            (let ((__tmp104934
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self104385%_))))
                              (declare (not safe))
                              (##type-name __tmp104934))))
                       (declare (not safe))
                       (display* '" [" __tmp104933 '"]: "))
                     (let ((__tmp104935
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104385%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104935))
                     (let ((_%irritants104403%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104385%_ 'irritants))))
                       (if (null? _%irritants104403%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj104405%_)
                                (if (u8vector? _%obj104405%_)
                                    (let ((__tmp104936
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj104405%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104936))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj104405%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants104403%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont104406104408%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self104385%_
                                   'continuation))))
                           (if _%cont104406104408%_
                               (let ((_%cont104411%_ _%cont104406104408%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont104411%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104932
               current-output-port
               _%tmp-port104395%_))
            (let ((__tmp104937 (get-output-string _%tmp-port104395%_)))
              (declare (not safe))
              (##write-string __tmp104937 _%port104381%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104896 __method-table104897)
        (let ((__where104898
               (let ((__slot104902
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104896 'where))))
                 (if __slot104902
                     __slot104902
                     (error '"Unknown slot" 'where))))
              (__continuation104899
               (let ((__slot104903
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104896 'continuation))))
                 (if __slot104903
                     __slot104903
                     (error '"Unknown slot" 'continuation))))
              (__irritants104900
               (let ((__slot104904
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104896 'irritants))))
                 (if __slot104904
                     __slot104904
                     (error '"Unknown slot" 'irritants))))
              (__message104901
               (let ((__slot104905
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104896 'message))))
                 (if __slot104905
                     __slot104905
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103051104379%_ _%port104381%_)
            (let* ((_%self104383%_ _%self103051104379%_)
                   (_%self104385%_ _%self104383%_))
              (let ((_%tmp-port104395%_ (open-output-string))
                    (_%display-error-newline104396%_
                     (> (output-port-column _%port104381%_) '0)))
                (fix-port-width! _%tmp-port104395%_)
                (let ((__tmp104938
                       (lambda ()
                         (if _%display-error-newline104396%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e104399%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104385%_
                                   __where104898
                                   '#f
                                   '#f))))
                           (if _%$e104399%_
                               (display _%$e104399%_)
                               (display '"?")))
                         (let ((__tmp104939
                                (let ((__tmp104940
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self104385%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104940))))
                           (declare (not safe))
                           (display* '" [" __tmp104939 '"]: "))
                         (let ((__tmp104941
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104385%_
                                   __message104901
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104941))
                         (let ((_%irritants104403%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104385%_
                                   __irritants104900
                                   '#f
                                   '#f))))
                           (if (null? _%irritants104403%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj104405%_)
                                    (if (u8vector? _%obj104405%_)
                                        (let ((__tmp104942
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj104405%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104942))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj104405%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants104403%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont104406104408%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self104385%_
                                       __continuation104899
                                       '#f
                                       '#f))))
                               (if _%cont104406104408%_
                                   (let ((_%cont104411%_ _%cont104406104408%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont104411%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104938
                   current-output-port
                   _%tmp-port104395%_))
                (let ((__tmp104943 (get-output-string _%tmp-port104395%_)))
                  (declare (not safe))
                  (##write-string __tmp104943 _%port104381%_))))))))
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
      (lambda (_%self103052104233%_ _%port104235%_)
        (let* ((_%self104237%_ _%self103052104233%_)
               (_%self104239%_ _%self104237%_)
               (_%tmp-port104249%_ (open-output-string)))
          (fix-port-width! _%tmp-port104249%_)
          (let ((__tmp104944
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self104239%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104944 _%tmp-port104249%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont104250104252%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self104239%_ 'continuation))))
                (if _%cont104250104252%_
                    (let ((_%cont104255%_ _%cont104250104252%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port104249%_)
                      (newline _%tmp-port104249%_)
                      (display-continuation-backtrace
                       _%cont104255%_
                       _%tmp-port104249%_))
                    '#f))
              '#!void)
          (let ((__tmp104945 (get-output-string _%tmp-port104249%_)))
            (declare (not safe))
            (##write-string __tmp104945 _%port104235%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104906 __method-table104907)
        (let ((__continuation104908
               (let ((__slot104910
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104906 'continuation))))
                 (if __slot104910
                     __slot104910
                     (error '"Unknown slot" 'continuation))))
              (__exception104909
               (let ((__slot104911
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104906 'exception))))
                 (if __slot104911
                     __slot104911
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self103052104233%_ _%port104235%_)
            (let* ((_%self104237%_ _%self103052104233%_)
                   (_%self104239%_ _%self104237%_)
                   (_%tmp-port104249%_ (open-output-string)))
              (fix-port-width! _%tmp-port104249%_)
              (let ((__tmp104946
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self104239%_
                        __exception104909
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104946 _%tmp-port104249%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont104250104252%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self104239%_
                            __continuation104908
                            '#f
                            '#f))))
                    (if _%cont104250104252%_
                        (let ((_%cont104255%_ _%cont104250104252%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port104249%_)
                          (newline _%tmp-port104249%_)
                          (display-continuation-backtrace
                           _%cont104255%_
                           _%tmp-port104249%_))
                        '#f))
                  '#!void)
              (let ((__tmp104947 (get-output-string _%tmp-port104249%_)))
                (declare (not safe))
                (##write-string __tmp104947 _%port104235%_)))))))
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
      (lambda (_%port104105%_)
        (if (macro-character-port? _%port104105%_)
            (let ((_%old-width104107%_
                   (macro-character-port-output-width _%port104105%_)))
              (macro-character-port-output-width-set!
               _%port104105%_
               (lambda (_%port104109%_) '256))
              _%old-width104107%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port104102%_ _%old-width104103%_)
        (if (macro-character-port? _%port104102%_)
            (macro-character-port-output-width-set!
             _%port104102%_
             _%old-width104103%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e104100%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e104100%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn104094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104094%_))
            (let ((_%e104097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104094%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e104097%_))
            (macro-abandoned-mutex-exception? _%exn104094%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn104090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104090%_))
            (let ((_%e104092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104090%_ 'exception))))
              (macro-cfun-conversion-exception? _%e104092%_))
            (macro-cfun-conversion-exception? _%exn104090%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn104086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104086%_))
            (let ((_%e104088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104086%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104088%_)
                  (macro-cfun-conversion-exception-arguments _%e104088%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e104088%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104086%_)
                (macro-cfun-conversion-exception-arguments _%exn104086%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn104086%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn104082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104082%_))
            (let ((_%e104084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104082%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104084%_)
                  (macro-cfun-conversion-exception-code _%e104084%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e104084%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104082%_)
                (macro-cfun-conversion-exception-code _%exn104082%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn104082%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn104078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104078%_))
            (let ((_%e104080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104078%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104080%_)
                  (macro-cfun-conversion-exception-message _%e104080%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e104080%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104078%_)
                (macro-cfun-conversion-exception-message _%exn104078%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn104078%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn104072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104072%_))
            (let ((_%e104075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104072%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104075%_)
                  (macro-cfun-conversion-exception-procedure _%e104075%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e104075%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104072%_)
                (macro-cfun-conversion-exception-procedure _%exn104072%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn104072%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn104068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104068%_))
            (let ((_%e104070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104068%_ 'exception))))
              (macro-datum-parsing-exception? _%e104070%_))
            (macro-datum-parsing-exception? _%exn104068%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn104064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104064%_))
            (let ((_%e104066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104064%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104066%_)
                  (macro-datum-parsing-exception-kind _%e104066%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e104066%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104064%_)
                (macro-datum-parsing-exception-kind _%exn104064%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn104064%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn104060%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104060%_))
            (let ((_%e104062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104060%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104062%_)
                  (macro-datum-parsing-exception-parameters _%e104062%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e104062%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104060%_)
                (macro-datum-parsing-exception-parameters _%exn104060%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn104060%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn104054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104054%_))
            (let ((_%e104057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104054%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104057%_)
                  (macro-datum-parsing-exception-readenv _%e104057%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e104057%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104054%_)
                (macro-datum-parsing-exception-readenv _%exn104054%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn104054%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn104048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104048%_))
            (let ((_%e104051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104048%_ 'exception))))
              (macro-deadlock-exception? _%e104051%_))
            (macro-deadlock-exception? _%exn104048%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn104044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104044%_))
            (let ((_%e104046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104044%_ 'exception))))
              (macro-divide-by-zero-exception? _%e104046%_))
            (macro-divide-by-zero-exception? _%exn104044%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn104040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104040%_))
            (let ((_%e104042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104040%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104042%_)
                  (macro-divide-by-zero-exception-arguments _%e104042%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e104042%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104040%_)
                (macro-divide-by-zero-exception-arguments _%exn104040%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn104040%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn104034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104034%_))
            (let ((_%e104037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104034%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104037%_)
                  (macro-divide-by-zero-exception-procedure _%e104037%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e104037%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104034%_)
                (macro-divide-by-zero-exception-procedure _%exn104034%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn104034%_ '())))))))
    (define error-exception?
      (lambda (_%exn104030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104030%_))
            (let ((_%e104032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104030%_ 'exception))))
              (macro-error-exception? _%e104032%_))
            (macro-error-exception? _%exn104030%_))))
    (define error-exception-message
      (lambda (_%exn104026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104026%_))
            (let ((_%e104028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104026%_ 'exception))))
              (if (macro-error-exception? _%e104028%_)
                  (macro-error-exception-message _%e104028%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e104028%_ '())))))
            (if (macro-error-exception? _%exn104026%_)
                (macro-error-exception-message _%exn104026%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn104026%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn104020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104020%_))
            (let ((_%e104023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104020%_ 'exception))))
              (if (macro-error-exception? _%e104023%_)
                  (macro-error-exception-parameters _%e104023%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e104023%_ '())))))
            (if (macro-error-exception? _%exn104020%_)
                (macro-error-exception-parameters _%exn104020%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn104020%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn104016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104016%_))
            (let ((_%e104018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104016%_ 'exception))))
              (macro-expression-parsing-exception? _%e104018%_))
            (macro-expression-parsing-exception? _%exn104016%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn104012%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104012%_))
            (let ((_%e104014%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104012%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104014%_)
                  (macro-expression-parsing-exception-kind _%e104014%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e104014%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104012%_)
                (macro-expression-parsing-exception-kind _%exn104012%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn104012%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn104008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104008%_))
            (let ((_%e104010%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104008%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104010%_)
                  (macro-expression-parsing-exception-parameters _%e104010%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e104010%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104008%_)
                (macro-expression-parsing-exception-parameters _%exn104008%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn104008%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn104002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104002%_))
            (let ((_%e104005%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104002%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104005%_)
                  (macro-expression-parsing-exception-source _%e104005%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e104005%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104002%_)
                (macro-expression-parsing-exception-source _%exn104002%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn104002%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn103998%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103998%_))
            (let ((_%e104000%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103998%_ 'exception))))
              (macro-file-exists-exception? _%e104000%_))
            (macro-file-exists-exception? _%exn103998%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn103994%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103994%_))
            (let ((_%e103996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103994%_ 'exception))))
              (if (macro-file-exists-exception? _%e103996%_)
                  (macro-file-exists-exception-arguments _%e103996%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e103996%_ '())))))
            (if (macro-file-exists-exception? _%exn103994%_)
                (macro-file-exists-exception-arguments _%exn103994%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn103994%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn103988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103988%_))
            (let ((_%e103991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103988%_ 'exception))))
              (if (macro-file-exists-exception? _%e103991%_)
                  (macro-file-exists-exception-procedure _%e103991%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e103991%_ '())))))
            (if (macro-file-exists-exception? _%exn103988%_)
                (macro-file-exists-exception-procedure _%exn103988%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn103988%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn103984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103984%_))
            (let ((_%e103986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103984%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e103986%_))
            (macro-fixnum-overflow-exception? _%exn103984%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn103980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103980%_))
            (let ((_%e103982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103980%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103982%_)
                  (macro-fixnum-overflow-exception-arguments _%e103982%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e103982%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103980%_)
                (macro-fixnum-overflow-exception-arguments _%exn103980%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn103980%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn103974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103974%_))
            (let ((_%e103977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103974%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103977%_)
                  (macro-fixnum-overflow-exception-procedure _%e103977%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e103977%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103974%_)
                (macro-fixnum-overflow-exception-procedure _%exn103974%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn103974%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn103968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103968%_))
            (let ((_%e103971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103968%_ 'exception))))
              (macro-heap-overflow-exception? _%e103971%_))
            (macro-heap-overflow-exception? _%exn103968%_))))
    (define inactive-thread-exception?
      (lambda (_%exn103964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103964%_))
            (let ((_%e103966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103964%_ 'exception))))
              (macro-inactive-thread-exception? _%e103966%_))
            (macro-inactive-thread-exception? _%exn103964%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn103960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103960%_))
            (let ((_%e103962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103960%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103962%_)
                  (macro-inactive-thread-exception-arguments _%e103962%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e103962%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103960%_)
                (macro-inactive-thread-exception-arguments _%exn103960%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn103960%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn103954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103954%_))
            (let ((_%e103957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103954%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103957%_)
                  (macro-inactive-thread-exception-procedure _%e103957%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e103957%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103954%_)
                (macro-inactive-thread-exception-procedure _%exn103954%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn103954%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103950%_))
            (let ((_%e103952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103950%_ 'exception))))
              (macro-initialized-thread-exception? _%e103952%_))
            (macro-initialized-thread-exception? _%exn103950%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103946%_))
            (let ((_%e103948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103946%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103948%_)
                  (macro-initialized-thread-exception-arguments _%e103948%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103948%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103946%_)
                (macro-initialized-thread-exception-arguments _%exn103946%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103946%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103940%_))
            (let ((_%e103943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103940%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103943%_)
                  (macro-initialized-thread-exception-procedure _%e103943%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103943%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103940%_)
                (macro-initialized-thread-exception-procedure _%exn103940%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103940%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103936%_))
            (let ((_%e103938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103936%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103938%_))
            (macro-invalid-hash-number-exception? _%exn103936%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103932%_))
            (let ((_%e103934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103932%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103934%_)
                  (macro-invalid-hash-number-exception-arguments _%e103934%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103934%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103932%_)
                (macro-invalid-hash-number-exception-arguments _%exn103932%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103932%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103926%_))
            (let ((_%e103929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103926%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103929%_)
                  (macro-invalid-hash-number-exception-procedure _%e103929%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103929%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103926%_)
                (macro-invalid-hash-number-exception-procedure _%exn103926%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103926%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103922%_))
            (let ((_%e103924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103922%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103924%_))
            (macro-invalid-utf8-encoding-exception? _%exn103922%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103918%_))
            (let ((_%e103920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103918%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103920%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103920%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103920%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103918%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103918%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103918%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103912%_))
            (let ((_%e103915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103912%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103915%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103915%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103915%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103912%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103912%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103912%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103908%_))
            (let ((_%e103910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103908%_ 'exception))))
              (macro-join-timeout-exception? _%e103910%_))
            (macro-join-timeout-exception? _%exn103908%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103904%_))
            (let ((_%e103906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103904%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103906%_)
                  (macro-join-timeout-exception-arguments _%e103906%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103906%_ '())))))
            (if (macro-join-timeout-exception? _%exn103904%_)
                (macro-join-timeout-exception-arguments _%exn103904%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103904%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103898%_))
            (let ((_%e103901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103898%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103901%_)
                  (macro-join-timeout-exception-procedure _%e103901%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103901%_ '())))))
            (if (macro-join-timeout-exception? _%exn103898%_)
                (macro-join-timeout-exception-procedure _%exn103898%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103898%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103894%_))
            (let ((_%e103896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103894%_ 'exception))))
              (macro-keyword-expected-exception? _%e103896%_))
            (macro-keyword-expected-exception? _%exn103894%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103890%_))
            (let ((_%e103892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103890%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103892%_)
                  (macro-keyword-expected-exception-arguments _%e103892%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103892%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103890%_)
                (macro-keyword-expected-exception-arguments _%exn103890%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103890%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103884%_))
            (let ((_%e103887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103884%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103887%_)
                  (macro-keyword-expected-exception-procedure _%e103887%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103887%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103884%_)
                (macro-keyword-expected-exception-procedure _%exn103884%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103884%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103880%_))
            (let ((_%e103882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103880%_ 'exception))))
              (macro-length-mismatch-exception? _%e103882%_))
            (macro-length-mismatch-exception? _%exn103880%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103876%_))
            (let ((_%e103878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103876%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103878%_)
                  (macro-length-mismatch-exception-arg-id _%e103878%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103878%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103876%_)
                (macro-length-mismatch-exception-arg-id _%exn103876%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103876%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103872%_))
            (let ((_%e103874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103872%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103874%_)
                  (macro-length-mismatch-exception-arguments _%e103874%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103874%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103872%_)
                (macro-length-mismatch-exception-arguments _%exn103872%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103872%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103866%_))
            (let ((_%e103869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103866%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103869%_)
                  (macro-length-mismatch-exception-procedure _%e103869%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103869%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103866%_)
                (macro-length-mismatch-exception-procedure _%exn103866%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103866%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103862%_))
            (let ((_%e103864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103862%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103864%_))
            (macro-mailbox-receive-timeout-exception? _%exn103862%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103858%_))
            (let ((_%e103860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103858%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103860%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103860%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103860%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103858%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103858%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103858%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103852%_))
            (let ((_%e103855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103852%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103855%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103855%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103855%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103852%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103852%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103852%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103848%_))
            (let ((_%e103850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103848%_ 'exception))))
              (macro-module-not-found-exception? _%e103850%_))
            (macro-module-not-found-exception? _%exn103848%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103844%_))
            (let ((_%e103846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103844%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103846%_)
                  (macro-module-not-found-exception-arguments _%e103846%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103846%_ '())))))
            (if (macro-module-not-found-exception? _%exn103844%_)
                (macro-module-not-found-exception-arguments _%exn103844%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103844%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103838%_))
            (let ((_%e103841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103838%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103841%_)
                  (macro-module-not-found-exception-procedure _%e103841%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103841%_ '())))))
            (if (macro-module-not-found-exception? _%exn103838%_)
                (macro-module-not-found-exception-procedure _%exn103838%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103838%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103832%_))
            (let ((_%e103835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103832%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103835%_))
            (macro-multiple-c-return-exception? _%exn103832%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103828%_))
            (let ((_%e103830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103828%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103830%_))
            (macro-no-such-file-or-directory-exception? _%exn103828%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103824%_))
            (let ((_%e103826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103824%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103826%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103826%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103826%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103824%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103824%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103824%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103818%_))
            (let ((_%e103821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103818%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103821%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103821%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103821%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103818%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103818%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103818%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103814%_))
            (let ((_%e103816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103814%_ 'exception))))
              (macro-noncontinuable-exception? _%e103816%_))
            (macro-noncontinuable-exception? _%exn103814%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103808%_))
            (let ((_%e103811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103808%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103811%_)
                  (macro-noncontinuable-exception-reason _%e103811%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103811%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103808%_)
                (macro-noncontinuable-exception-reason _%exn103808%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103808%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103804%_))
            (let ((_%e103806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103804%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103806%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103804%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103800%_))
            (let ((_%e103802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103800%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103802%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103802%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103802%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103800%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103800%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103800%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103794%_))
            (let ((_%e103797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103794%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103797%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103797%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103797%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103794%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103794%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103794%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103790%_))
            (let ((_%e103792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103790%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103792%_))
            (macro-nonprocedure-operator-exception? _%exn103790%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn103786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103786%_))
            (let ((_%e103788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103786%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103788%_)
                  (macro-nonprocedure-operator-exception-arguments _%e103788%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e103788%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103786%_)
                (macro-nonprocedure-operator-exception-arguments _%exn103786%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn103786%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn103782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103782%_))
            (let ((_%e103784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103782%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103784%_)
                  (macro-nonprocedure-operator-exception-code _%e103784%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e103784%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103782%_)
                (macro-nonprocedure-operator-exception-code _%exn103782%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn103782%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn103778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103778%_))
            (let ((_%e103780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103778%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103780%_)
                  (macro-nonprocedure-operator-exception-operator _%e103780%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e103780%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103778%_)
                (macro-nonprocedure-operator-exception-operator _%exn103778%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn103778%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn103772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103772%_))
            (let ((_%e103775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103772%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103775%_)
                  (macro-nonprocedure-operator-exception-rte _%e103775%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e103775%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103772%_)
                (macro-nonprocedure-operator-exception-rte _%exn103772%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn103772%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn103768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103768%_))
            (let ((_%e103770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103768%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e103770%_))
            (macro-not-in-compilation-context-exception? _%exn103768%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn103764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103764%_))
            (let ((_%e103766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103764%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103766%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e103766%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e103766%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103764%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn103764%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn103764%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn103758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103758%_))
            (let ((_%e103761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103758%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103761%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e103761%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e103761%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103758%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn103758%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn103758%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn103754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103754%_))
            (let ((_%e103756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103754%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e103756%_))
            (macro-number-of-arguments-limit-exception? _%exn103754%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn103750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103750%_))
            (let ((_%e103752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103750%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103752%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e103752%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e103752%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103750%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn103750%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn103750%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn103744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103744%_))
            (let ((_%e103747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103744%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103747%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e103747%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e103747%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103744%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn103744%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn103744%_ '())))))))
    (define os-exception?
      (lambda (_%exn103740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103740%_))
            (let ((_%e103742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103740%_ 'exception))))
              (macro-os-exception? _%e103742%_))
            (macro-os-exception? _%exn103740%_))))
    (define os-exception-arguments
      (lambda (_%exn103736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103736%_))
            (let ((_%e103738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103736%_ 'exception))))
              (if (macro-os-exception? _%e103738%_)
                  (macro-os-exception-arguments _%e103738%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e103738%_ '())))))
            (if (macro-os-exception? _%exn103736%_)
                (macro-os-exception-arguments _%exn103736%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn103736%_ '())))))))
    (define os-exception-code
      (lambda (_%exn103732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103732%_))
            (let ((_%e103734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103732%_ 'exception))))
              (if (macro-os-exception? _%e103734%_)
                  (macro-os-exception-code _%e103734%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e103734%_ '())))))
            (if (macro-os-exception? _%exn103732%_)
                (macro-os-exception-code _%exn103732%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn103732%_ '())))))))
    (define os-exception-message
      (lambda (_%exn103728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103728%_))
            (let ((_%e103730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103728%_ 'exception))))
              (if (macro-os-exception? _%e103730%_)
                  (macro-os-exception-message _%e103730%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e103730%_ '())))))
            (if (macro-os-exception? _%exn103728%_)
                (macro-os-exception-message _%exn103728%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn103728%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn103722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103722%_))
            (let ((_%e103725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103722%_ 'exception))))
              (if (macro-os-exception? _%e103725%_)
                  (macro-os-exception-procedure _%e103725%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e103725%_ '())))))
            (if (macro-os-exception? _%exn103722%_)
                (macro-os-exception-procedure _%exn103722%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn103722%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn103718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103718%_))
            (let ((_%e103720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103718%_ 'exception))))
              (macro-permission-denied-exception? _%e103720%_))
            (macro-permission-denied-exception? _%exn103718%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn103714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103714%_))
            (let ((_%e103716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103714%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103716%_)
                  (macro-permission-denied-exception-arguments _%e103716%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e103716%_ '())))))
            (if (macro-permission-denied-exception? _%exn103714%_)
                (macro-permission-denied-exception-arguments _%exn103714%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn103714%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn103708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103708%_))
            (let ((_%e103711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103708%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103711%_)
                  (macro-permission-denied-exception-procedure _%e103711%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e103711%_ '())))))
            (if (macro-permission-denied-exception? _%exn103708%_)
                (macro-permission-denied-exception-procedure _%exn103708%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn103708%_ '())))))))
    (define range-exception?
      (lambda (_%exn103704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103704%_))
            (let ((_%e103706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103704%_ 'exception))))
              (macro-range-exception? _%e103706%_))
            (macro-range-exception? _%exn103704%_))))
    (define range-exception-arg-id
      (lambda (_%exn103700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103700%_))
            (let ((_%e103702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103700%_ 'exception))))
              (if (macro-range-exception? _%e103702%_)
                  (macro-range-exception-arg-id _%e103702%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e103702%_ '())))))
            (if (macro-range-exception? _%exn103700%_)
                (macro-range-exception-arg-id _%exn103700%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn103700%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn103696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103696%_))
            (let ((_%e103698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103696%_ 'exception))))
              (if (macro-range-exception? _%e103698%_)
                  (macro-range-exception-arguments _%e103698%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e103698%_ '())))))
            (if (macro-range-exception? _%exn103696%_)
                (macro-range-exception-arguments _%exn103696%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn103696%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn103690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103690%_))
            (let ((_%e103693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103690%_ 'exception))))
              (if (macro-range-exception? _%e103693%_)
                  (macro-range-exception-procedure _%e103693%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e103693%_ '())))))
            (if (macro-range-exception? _%exn103690%_)
                (macro-range-exception-procedure _%exn103690%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn103690%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn103686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103686%_))
            (let ((_%e103688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103686%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e103688%_))
            (macro-rpc-remote-error-exception? _%exn103686%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn103682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103682%_))
            (let ((_%e103684%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103682%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103684%_)
                  (macro-rpc-remote-error-exception-arguments _%e103684%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e103684%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103682%_)
                (macro-rpc-remote-error-exception-arguments _%exn103682%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn103682%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn103678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103678%_))
            (let ((_%e103680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103678%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103680%_)
                  (macro-rpc-remote-error-exception-message _%e103680%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e103680%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103678%_)
                (macro-rpc-remote-error-exception-message _%exn103678%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn103678%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn103672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103672%_))
            (let ((_%e103675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103672%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103675%_)
                  (macro-rpc-remote-error-exception-procedure _%e103675%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e103675%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103672%_)
                (macro-rpc-remote-error-exception-procedure _%exn103672%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn103672%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn103668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103668%_))
            (let ((_%e103670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103668%_ 'exception))))
              (macro-scheduler-exception? _%e103670%_))
            (macro-scheduler-exception? _%exn103668%_))))
    (define scheduler-exception-reason
      (lambda (_%exn103662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103662%_))
            (let ((_%e103665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103662%_ 'exception))))
              (if (macro-scheduler-exception? _%e103665%_)
                  (macro-scheduler-exception-reason _%e103665%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e103665%_ '())))))
            (if (macro-scheduler-exception? _%exn103662%_)
                (macro-scheduler-exception-reason _%exn103662%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn103662%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn103658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103658%_))
            (let ((_%e103660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103658%_ 'exception))))
              (macro-sfun-conversion-exception? _%e103660%_))
            (macro-sfun-conversion-exception? _%exn103658%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn103654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103654%_))
            (let ((_%e103656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103654%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103656%_)
                  (macro-sfun-conversion-exception-arguments _%e103656%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e103656%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103654%_)
                (macro-sfun-conversion-exception-arguments _%exn103654%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn103654%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn103650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103650%_))
            (let ((_%e103652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103650%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103652%_)
                  (macro-sfun-conversion-exception-code _%e103652%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e103652%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103650%_)
                (macro-sfun-conversion-exception-code _%exn103650%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn103650%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn103646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103646%_))
            (let ((_%e103648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103646%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103648%_)
                  (macro-sfun-conversion-exception-message _%e103648%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e103648%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103646%_)
                (macro-sfun-conversion-exception-message _%exn103646%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn103646%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn103640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103640%_))
            (let ((_%e103643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103640%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103643%_)
                  (macro-sfun-conversion-exception-procedure _%e103643%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e103643%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103640%_)
                (macro-sfun-conversion-exception-procedure _%exn103640%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn103640%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn103634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103634%_))
            (let ((_%e103637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103634%_ 'exception))))
              (macro-stack-overflow-exception? _%e103637%_))
            (macro-stack-overflow-exception? _%exn103634%_))))
    (define started-thread-exception?
      (lambda (_%exn103630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103630%_))
            (let ((_%e103632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103630%_ 'exception))))
              (macro-started-thread-exception? _%e103632%_))
            (macro-started-thread-exception? _%exn103630%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn103626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103626%_))
            (let ((_%e103628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103626%_ 'exception))))
              (if (macro-started-thread-exception? _%e103628%_)
                  (macro-started-thread-exception-arguments _%e103628%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e103628%_ '())))))
            (if (macro-started-thread-exception? _%exn103626%_)
                (macro-started-thread-exception-arguments _%exn103626%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn103626%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn103620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103620%_))
            (let ((_%e103623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103620%_ 'exception))))
              (if (macro-started-thread-exception? _%e103623%_)
                  (macro-started-thread-exception-procedure _%e103623%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e103623%_ '())))))
            (if (macro-started-thread-exception? _%exn103620%_)
                (macro-started-thread-exception-procedure _%exn103620%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn103620%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn103616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103616%_))
            (let ((_%e103618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103616%_ 'exception))))
              (macro-terminated-thread-exception? _%e103618%_))
            (macro-terminated-thread-exception? _%exn103616%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn103612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103612%_))
            (let ((_%e103614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103612%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103614%_)
                  (macro-terminated-thread-exception-arguments _%e103614%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e103614%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103612%_)
                (macro-terminated-thread-exception-arguments _%exn103612%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn103612%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn103606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103606%_))
            (let ((_%e103609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103606%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103609%_)
                  (macro-terminated-thread-exception-procedure _%e103609%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e103609%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103606%_)
                (macro-terminated-thread-exception-procedure _%exn103606%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn103606%_ '())))))))
    (define type-exception?
      (lambda (_%exn103602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103602%_))
            (let ((_%e103604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103602%_ 'exception))))
              (macro-type-exception? _%e103604%_))
            (macro-type-exception? _%exn103602%_))))
    (define type-exception-arg-id
      (lambda (_%exn103598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103598%_))
            (let ((_%e103600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103598%_ 'exception))))
              (if (macro-type-exception? _%e103600%_)
                  (macro-type-exception-arg-id _%e103600%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e103600%_ '())))))
            (if (macro-type-exception? _%exn103598%_)
                (macro-type-exception-arg-id _%exn103598%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn103598%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn103594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103594%_))
            (let ((_%e103596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103594%_ 'exception))))
              (if (macro-type-exception? _%e103596%_)
                  (macro-type-exception-arguments _%e103596%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e103596%_ '())))))
            (if (macro-type-exception? _%exn103594%_)
                (macro-type-exception-arguments _%exn103594%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn103594%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn103590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103590%_))
            (let ((_%e103592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103590%_ 'exception))))
              (if (macro-type-exception? _%e103592%_)
                  (macro-type-exception-procedure _%e103592%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e103592%_ '())))))
            (if (macro-type-exception? _%exn103590%_)
                (macro-type-exception-procedure _%exn103590%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn103590%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn103584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103584%_))
            (let ((_%e103587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103584%_ 'exception))))
              (if (macro-type-exception? _%e103587%_)
                  (macro-type-exception-type-id _%e103587%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e103587%_ '())))))
            (if (macro-type-exception? _%exn103584%_)
                (macro-type-exception-type-id _%exn103584%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn103584%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn103580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103580%_))
            (let ((_%e103582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103580%_ 'exception))))
              (macro-unbound-global-exception? _%e103582%_))
            (macro-unbound-global-exception? _%exn103580%_))))
    (define unbound-global-exception-code
      (lambda (_%exn103576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103576%_))
            (let ((_%e103578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103576%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103578%_)
                  (macro-unbound-global-exception-code _%e103578%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e103578%_ '())))))
            (if (macro-unbound-global-exception? _%exn103576%_)
                (macro-unbound-global-exception-code _%exn103576%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn103576%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn103572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103572%_))
            (let ((_%e103574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103572%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103574%_)
                  (macro-unbound-global-exception-rte _%e103574%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e103574%_ '())))))
            (if (macro-unbound-global-exception? _%exn103572%_)
                (macro-unbound-global-exception-rte _%exn103572%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn103572%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn103566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103566%_))
            (let ((_%e103569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103566%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103569%_)
                  (macro-unbound-global-exception-variable _%e103569%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e103569%_ '())))))
            (if (macro-unbound-global-exception? _%exn103566%_)
                (macro-unbound-global-exception-variable _%exn103566%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn103566%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn103562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103562%_))
            (let ((_%e103564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103562%_ 'exception))))
              (macro-unbound-key-exception? _%e103564%_))
            (macro-unbound-key-exception? _%exn103562%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn103558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103558%_))
            (let ((_%e103560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103558%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103560%_)
                  (macro-unbound-key-exception-arguments _%e103560%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e103560%_ '())))))
            (if (macro-unbound-key-exception? _%exn103558%_)
                (macro-unbound-key-exception-arguments _%exn103558%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn103558%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn103552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103552%_))
            (let ((_%e103555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103552%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103555%_)
                  (macro-unbound-key-exception-procedure _%e103555%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e103555%_ '())))))
            (if (macro-unbound-key-exception? _%exn103552%_)
                (macro-unbound-key-exception-procedure _%exn103552%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn103552%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn103548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103548%_))
            (let ((_%e103550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103548%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e103550%_))
            (macro-unbound-os-environment-variable-exception? _%exn103548%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn103544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103544%_))
            (let ((_%e103546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103544%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103546%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e103546%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e103546%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103544%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn103544%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn103544%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn103538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103538%_))
            (let ((_%e103541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103538%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103541%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e103541%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e103541%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103538%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn103538%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn103538%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn103534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103534%_))
            (let ((_%e103536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103534%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e103536%_))
            (macro-unbound-serial-number-exception? _%exn103534%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn103530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103530%_))
            (let ((_%e103532%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103530%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103532%_)
                  (macro-unbound-serial-number-exception-arguments _%e103532%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e103532%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103530%_)
                (macro-unbound-serial-number-exception-arguments _%exn103530%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn103530%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn103524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103524%_))
            (let ((_%e103527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103524%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103527%_)
                  (macro-unbound-serial-number-exception-procedure _%e103527%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e103527%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103524%_)
                (macro-unbound-serial-number-exception-procedure _%exn103524%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn103524%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn103520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103520%_))
            (let ((_%e103522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103520%_ 'exception))))
              (macro-uncaught-exception? _%e103522%_))
            (macro-uncaught-exception? _%exn103520%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn103516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103516%_))
            (let ((_%e103518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103516%_ 'exception))))
              (if (macro-uncaught-exception? _%e103518%_)
                  (macro-uncaught-exception-arguments _%e103518%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e103518%_ '())))))
            (if (macro-uncaught-exception? _%exn103516%_)
                (macro-uncaught-exception-arguments _%exn103516%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn103516%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn103512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103512%_))
            (let ((_%e103514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103512%_ 'exception))))
              (if (macro-uncaught-exception? _%e103514%_)
                  (macro-uncaught-exception-procedure _%e103514%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e103514%_ '())))))
            (if (macro-uncaught-exception? _%exn103512%_)
                (macro-uncaught-exception-procedure _%exn103512%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn103512%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn103506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103506%_))
            (let ((_%e103509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103506%_ 'exception))))
              (if (macro-uncaught-exception? _%e103509%_)
                  (macro-uncaught-exception-reason _%e103509%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e103509%_ '())))))
            (if (macro-uncaught-exception? _%exn103506%_)
                (macro-uncaught-exception-reason _%exn103506%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn103506%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn103502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103502%_))
            (let ((_%e103504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103502%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e103504%_))
            (macro-uninitialized-thread-exception? _%exn103502%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn103498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103498%_))
            (let ((_%e103500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103498%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103500%_)
                  (macro-uninitialized-thread-exception-arguments _%e103500%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e103500%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103498%_)
                (macro-uninitialized-thread-exception-arguments _%exn103498%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn103498%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn103492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103492%_))
            (let ((_%e103495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103492%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103495%_)
                  (macro-uninitialized-thread-exception-procedure _%e103495%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e103495%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103492%_)
                (macro-uninitialized-thread-exception-procedure _%exn103492%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn103492%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn103488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103488%_))
            (let ((_%e103490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103488%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e103490%_))
            (macro-unknown-keyword-argument-exception? _%exn103488%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn103484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103484%_))
            (let ((_%e103486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103484%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103486%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e103486%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e103486%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103484%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn103484%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn103484%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn103478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103478%_))
            (let ((_%e103481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103478%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103481%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e103481%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e103481%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103478%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn103478%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn103478%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn103474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103474%_))
            (let ((_%e103476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103474%_ 'exception))))
              (macro-unterminated-process-exception? _%e103476%_))
            (macro-unterminated-process-exception? _%exn103474%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn103470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103470%_))
            (let ((_%e103472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103470%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103472%_)
                  (macro-unterminated-process-exception-arguments _%e103472%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e103472%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103470%_)
                (macro-unterminated-process-exception-arguments _%exn103470%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn103470%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn103464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103464%_))
            (let ((_%e103467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103464%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103467%_)
                  (macro-unterminated-process-exception-procedure _%e103467%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e103467%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103464%_)
                (macro-unterminated-process-exception-procedure _%exn103464%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn103464%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn103460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103460%_))
            (let ((_%e103462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103460%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e103462%_))
            (macro-wrong-number-of-arguments-exception? _%exn103460%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn103456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103456%_))
            (let ((_%e103458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103456%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103458%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e103458%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e103458%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103456%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn103456%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn103456%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn103450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103450%_))
            (let ((_%e103453%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103450%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103453%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e103453%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e103453%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103450%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn103450%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn103450%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn103446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103446%_))
            (let ((_%e103448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103446%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e103448%_))
            (macro-wrong-number-of-values-exception? _%exn103446%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn103442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103442%_))
            (let ((_%e103444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103442%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103444%_)
                  (macro-wrong-number-of-values-exception-code _%e103444%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e103444%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103442%_)
                (macro-wrong-number-of-values-exception-code _%exn103442%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn103442%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn103438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103438%_))
            (let ((_%e103440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103438%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103440%_)
                  (macro-wrong-number-of-values-exception-rte _%e103440%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e103440%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103438%_)
                (macro-wrong-number-of-values-exception-rte _%exn103438%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn103438%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn103432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103432%_))
            (let ((_%e103435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103432%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103435%_)
                  (macro-wrong-number-of-values-exception-vals _%e103435%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e103435%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103432%_)
                (macro-wrong-number-of-values-exception-vals _%exn103432%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn103432%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn103426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103426%_))
            (let ((_%e103429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103426%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e103429%_))
            (macro-wrong-processor-c-return-exception? _%exn103426%_))))))
