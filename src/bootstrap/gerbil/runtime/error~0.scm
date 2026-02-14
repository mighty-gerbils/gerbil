(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771093447)
  (begin
    (define Exception::t
      (let ((__tmp141693 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp141693
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args141611%_
        (apply make-instance Exception::t _%$args141611%_)))
    (define StackTrace::t
      (let ((__tmp141694 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp141694
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args141608%_
        (apply make-instance StackTrace::t _%$args141608%_)))
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
      (let ((__tmp141695 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp141695
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args141605%_ (apply make-instance Error::t _%$args141605%_)))
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
      (let ((__tmp141696 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp141696
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args141602%_
        (apply make-instance ContractViolation::t _%$args141602%_)))
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
      (let ((__tmp141697 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp141697
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args141599%_
        (apply make-instance RuntimeException::t _%$args141599%_)))
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
      (lambda (_%exn141594%_ _%continue141595%_)
        (let ((_%exn141597%_ (wrap-runtime-exception _%exn141594%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn141597%_ _%continue141595%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn141590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn141590%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn141590%_ 'continuation))
                '#!void
                (let ((__tmp141698
                       (lambda (_%cont141592%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn141590%_
                            'continuation
                            _%cont141592%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp141698)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn141590%_))))
    (define error
      (lambda (_%message141587%_ . _%irritants141588%_)
        (raise (let ((__obj141690
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj141690
                  _%message141587%_
                  'irritants:
                  _%irritants141588%_)
                 __obj141690))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords141562%_
               _%ctx141557141563%_
               _%contract-expr141558141564%_
               _%value141559141565%_
               _%message141566%_)
        (let* ((_%ctx141568%_
                (if (eq? _%ctx141557141563%_ absent-value)
                    '#f
                    _%ctx141557141563%_))
               (_%contract-expr141570%_
                (if (eq? _%contract-expr141558141564%_ absent-value)
                    '#f
                    _%contract-expr141558141564%_))
               (_%value141572%_
                (if (eq? _%value141559141565%_ absent-value)
                    '#f
                    _%value141559141565%_)))
          (raise (let ((__obj141691
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj141691
                    _%message141566%_
                    'where:
                    _%ctx141568%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr141570%_
                                (cons 'value: (cons _%value141572%_ '())))))
                   __obj141691)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords141577%_ . _%args141578%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords141577%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords141577%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords141577%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords141577%_
                  'value:
                  absent-value))
               _%args141578%_)))
    (define __raise-contract-violation-error
      (lambda _%args141560141584%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args141560141584%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler141531%_ _%thunk141532%_)
        (let* ((_%handler141535%_ _%handler141531%_)
               (_%thunk141543%_ _%thunk141532%_)
               (__tmp141699
                (lambda (_%exn141552%_)
                  (let ((_%exn141554%_ (wrap-runtime-exception _%exn141552%_)))
                    (declare (not safe))
                    (_%handler141535%_ _%exn141554%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp141699 _%thunk141543%_))))
    (define with-exception-handler
      (lambda (_%handler139566%_ _%thunk139567%_)
        (if (procedure? _%handler139566%_)
            (let ((_%handler139571%_ _%handler139566%_))
              (if (procedure? _%thunk139567%_)
                  (let ((_%thunk139581%_ _%thunk139567%_))
                    (__with-exception-handler
                     _%handler139571%_
                     _%thunk139581%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk139567%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler139566%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler141473%_ _%thunk141474%_)
        (let* ((_%handler141477%_ _%handler141473%_)
               (_%thunk141485%_ _%thunk141474%_)
               (__tmp141700
                (lambda (_%cont141494%_)
                  (let* ((_%handler141498%_
                          (lambda (_%exn141496%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont141494%_
                               _%handler141477%_
                               _%exn141496%_))))
                         (_%thunk141501%_ _%thunk141485%_)
                         (_%handler141506%_ _%handler141498%_)
                         (_%thunk141521%_ _%thunk141501%_))
                    (__with-exception-handler
                     _%handler141506%_
                     _%thunk141521%_)))))
          (declare (not safe))
          (##continuation-capture __tmp141700))))
    (define with-catch
      (lambda (_%handler139711%_ _%thunk139712%_)
        (if (procedure? _%handler139711%_)
            (let ((_%handler139716%_ _%handler139711%_))
              (if (procedure? _%thunk139712%_)
                  (let ((_%thunk139726%_ _%thunk139712%_))
                    (__with-catch _%handler139716%_ _%thunk139726%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk139712%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler139711%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn141460%_)
        (if (or (heap-overflow-exception? _%exn141460%_)
                (stack-overflow-exception? _%exn141460%_))
            _%exn141460%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn141460%_))
                _%exn141460%_
                (if (macro-exception? _%exn141460%_)
                    (let ((_%rte141468%_
                           (let ((__obj141692
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj141692
                                _%exn141460%_
                                '2
                                '#f
                                '#f))
                             __obj141692)))
                      (let ((__tmp141701
                             (lambda (_%cont141470%_)
                               (let ((__tmp141702
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont141470%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte141468%_
                                  'continuation
                                  __tmp141702)))))
                        (declare (not safe))
                        (##continuation-capture __tmp141701))
                      _%rte141468%_)
                    _%exn141460%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj141455%_)
        (let ((_%$e141457%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj141455%_))))
          (if _%$e141457%_ _%$e141457%_ (error-exception? _%obj141455%_)))))
    (define error-message
      (lambda (_%obj141414%_)
        (let ((_%$e141450%_
               (let* ((_%obj141416%_ _%obj141414%_)
                      (_%slot141419%_ 'message)
                      (_%E141422%_ false)
                      (_%slot141427%_ _%slot141419%_)
                      (_%E141440%_ _%E141422%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj141416%_ _%slot141427%_ _%E141440%_))))
          (if _%$e141450%_
              _%$e141450%_
              (if (error-exception? _%obj141414%_)
                  (error-exception-message _%obj141414%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj141409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141409%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141409%_ 'irritants))
            (if (error-exception? _%obj141409%_)
                (error-exception-parameters _%obj141409%_)
                '#f))))
    (define error-trace
      (lambda (_%obj141407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141407%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141407%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e141368%_ _%port141369%_)
        (let ((_%$e141391%_
               (let* ((_%obj141371%_ _%e141368%_)
                      (_%id141374%_ 'display-exception)
                      (_%id141379%_ _%id141374%_))
                 (declare (not safe))
                 (__method-ref _%obj141371%_ _%id141379%_))))
          (if _%$e141391%_
              ((lambda (_%f141394%_) (_%f141394%_ _%e141368%_ _%port141369%_))
               _%$e141391%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e141368%_ _%port141369%_))))))
    (define display-exception__0
      (lambda (_%e141400%_)
        (let ((_%port141402%_ (current-error-port)))
          (display-exception__% _%e141400%_ _%port141402%_))))
    (define display-exception
      (lambda _g141703_
        (let ((_g141704_ (let () (declare (not safe)) (##length _g141703_))))
          (cond ((let () (declare (not safe)) (##fx= _g141704_ 1))
                 (apply display-exception__0 _g141703_))
                ((let () (declare (not safe)) (##fx= _g141704_ 2))
                 (apply display-exception__% _g141703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g141703_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self141346%_ _%message141347%_ . _%rest141348%_)
        (let* ((_%self141351%_ _%self141346%_)
               (_%message141365%_
                (if (string? _%message141347%_)
                    _%message141347%_
                    (call-with-output-string
                     '""
                     (lambda (_%g141360141362%_)
                       (display _%message141347%_ _%g141360141362%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self141351%_ 'message _%message141365%_))
          (apply class-instance-init! _%self141351%_ _%rest141348%_))))
    (define Error:::init!::specialize
      (lambda (__klass141613 __method-table141614)
        (let ((__message141615
               (let ((__slot141616
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141613 'message))))
                 (if __slot141616
                     __slot141616
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self141346%_ _%message141347%_ . _%rest141348%_)
            (let* ((_%self141351%_ _%self141346%_)
                   (_%message141365%_
                    (if (string? _%message141347%_)
                        _%message141347%_
                        (call-with-output-string
                         '""
                         (lambda (_%g141360141362%_)
                           (display _%message141347%_ _%g141360141362%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self141351%_
                 _%message141365%_
                 __message141615
                 '#f
                 '#f))
              (apply class-instance-init! _%self141351%_ _%rest141348%_))))))
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
      (lambda (_%self141051%_ _%port141052%_)
        (let ((_%self141055%_ _%self141051%_))
          (let ((_%tmp-port141065%_ (open-output-string))
                (_%display-error-newline141066%_
                 (> (output-port-column _%port141052%_) '0)))
            (fix-port-width! _%tmp-port141065%_)
            (let ((__tmp141705
                   (lambda ()
                     (if _%display-error-newline141066%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e141069%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141055%_ 'where))))
                       (if _%$e141069%_ (display _%$e141069%_) (display '"?")))
                     (let ((__tmp141706
                            (let ((__tmp141707
                                   (let ((_%obj141073%_ _%self141055%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj141073%_))
                                         (let ((_%obj141078%_ _%obj141073%_))
                                           (declare (not safe))
                                           (__object-class _%obj141078%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj141073%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp141707))))
                       (declare (not safe))
                       (display* '" [" __tmp141706 '"]: "))
                     (let ((__tmp141708
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141055%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp141708))
                     (let ((_%irritants141093%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141055%_ 'irritants))))
                       (if (null? _%irritants141093%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj141095%_)
                                (if (u8vector? _%obj141095%_)
                                    (let ((__tmp141709
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj141095%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp141709))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj141095%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants141093%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont141096141098%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self141055%_
                                   'continuation))))
                           (if _%cont141096141098%_
                               (let ((_%cont141100%_ _%cont141096141098%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont141100%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp141705
               current-output-port
               _%tmp-port141065%_))
            (let ((__tmp141710 (get-output-string _%tmp-port141065%_)))
              (declare (not safe))
              (##write-string __tmp141710 _%port141052%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass141617 __method-table141618)
        (let ((__continuation141619
               (let ((__slot141623
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141617 'continuation))))
                 (if __slot141623
                     __slot141623
                     (error '"Unknown slot" 'continuation))))
              (__message141620
               (let ((__slot141624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141617 'message))))
                 (if __slot141624
                     __slot141624
                     (error '"Unknown slot" 'message))))
              (__where141621
               (let ((__slot141625
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141617 'where))))
                 (if __slot141625
                     __slot141625
                     (error '"Unknown slot" 'where))))
              (__irritants141622
               (let ((__slot141626
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141617 'irritants))))
                 (if __slot141626
                     __slot141626
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self141051%_ _%port141052%_)
            (let ((_%self141055%_ _%self141051%_))
              (let ((_%tmp-port141065%_ (open-output-string))
                    (_%display-error-newline141066%_
                     (> (output-port-column _%port141052%_) '0)))
                (fix-port-width! _%tmp-port141065%_)
                (let ((__tmp141711
                       (lambda ()
                         (if _%display-error-newline141066%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e141069%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141055%_
                                   __where141621
                                   '#f
                                   '#f))))
                           (if _%$e141069%_
                               (display _%$e141069%_)
                               (display '"?")))
                         (let ((__tmp141712
                                (let ((__tmp141713
                                       (let ((_%obj141073%_ _%self141055%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj141073%_))
                                             (let ((_%obj141078%_
                                                    _%obj141073%_))
                                               (declare (not safe))
                                               (__object-class _%obj141078%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj141073%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp141713))))
                           (declare (not safe))
                           (display* '" [" __tmp141712 '"]: "))
                         (let ((__tmp141714
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141055%_
                                   __message141620
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp141714))
                         (let ((_%irritants141093%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141055%_
                                   __irritants141622
                                   '#f
                                   '#f))))
                           (if (null? _%irritants141093%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj141095%_)
                                    (if (u8vector? _%obj141095%_)
                                        (let ((__tmp141715
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj141095%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp141715))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj141095%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants141093%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont141096141098%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self141055%_
                                       __continuation141619
                                       '#f
                                       '#f))))
                               (if _%cont141096141098%_
                                   (let ((_%cont141100%_ _%cont141096141098%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont141100%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp141711
                   current-output-port
                   _%tmp-port141065%_))
                (let ((__tmp141716 (get-output-string _%tmp-port141065%_)))
                  (declare (not safe))
                  (##write-string __tmp141716 _%port141052%_))))))))
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
      (lambda (_%self140908%_ _%port140909%_)
        (let* ((_%self140912%_ _%self140908%_)
               (_%tmp-port140922%_ (open-output-string)))
          (fix-port-width! _%tmp-port140922%_)
          (let ((__tmp141717
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self140912%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp141717 _%tmp-port140922%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont140923140925%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self140912%_ 'continuation))))
                (if _%cont140923140925%_
                    (let ((_%cont140927%_ _%cont140923140925%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port140922%_)
                      (newline _%tmp-port140922%_)
                      (display-continuation-backtrace
                       _%cont140927%_
                       _%tmp-port140922%_))
                    '#f))
              '#!void)
          (let ((__tmp141718 (get-output-string _%tmp-port140922%_)))
            (declare (not safe))
            (##write-string __tmp141718 _%port140909%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass141627 __method-table141628)
        (let ((__exception141629
               (let ((__slot141631
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141627 'exception))))
                 (if __slot141631
                     __slot141631
                     (error '"Unknown slot" 'exception))))
              (__continuation141630
               (let ((__slot141632
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141627 'continuation))))
                 (if __slot141632
                     __slot141632
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self140908%_ _%port140909%_)
            (let* ((_%self140912%_ _%self140908%_)
                   (_%tmp-port140922%_ (open-output-string)))
              (fix-port-width! _%tmp-port140922%_)
              (let ((__tmp141719
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self140912%_
                        __exception141629
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp141719 _%tmp-port140922%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont140923140925%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self140912%_
                            __continuation141630
                            '#f
                            '#f))))
                    (if _%cont140923140925%_
                        (let ((_%cont140927%_ _%cont140923140925%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port140922%_)
                          (newline _%tmp-port140922%_)
                          (display-continuation-backtrace
                           _%cont140927%_
                           _%tmp-port140922%_))
                        '#f))
                  '#!void)
              (let ((__tmp141720 (get-output-string _%tmp-port140922%_)))
                (declare (not safe))
                (##write-string __tmp141720 _%port140909%_)))))))
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
      (lambda (_%port140780%_)
        (if (macro-character-port? _%port140780%_)
            (let ((_%old-width140782%_
                   (macro-character-port-output-width _%port140780%_)))
              (macro-character-port-output-width-set!
               _%port140780%_
               (lambda (_%port140784%_) '256))
              _%old-width140782%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port140777%_ _%old-width140778%_)
        (if (macro-character-port? _%port140777%_)
            (macro-character-port-output-width-set!
             _%port140777%_
             _%old-width140778%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e140775%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e140775%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn140769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140769%_))
            (let ((_%e140772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140769%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e140772%_))
            (macro-abandoned-mutex-exception? _%exn140769%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn140765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140765%_))
            (let ((_%e140767%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140765%_ 'exception))))
              (macro-cfun-conversion-exception? _%e140767%_))
            (macro-cfun-conversion-exception? _%exn140765%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn140761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140761%_))
            (let ((_%e140763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140761%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140763%_)
                  (macro-cfun-conversion-exception-arguments _%e140763%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e140763%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140761%_)
                (macro-cfun-conversion-exception-arguments _%exn140761%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn140761%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn140757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140757%_))
            (let ((_%e140759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140757%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140759%_)
                  (macro-cfun-conversion-exception-code _%e140759%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e140759%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140757%_)
                (macro-cfun-conversion-exception-code _%exn140757%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn140757%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn140753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140753%_))
            (let ((_%e140755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140753%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140755%_)
                  (macro-cfun-conversion-exception-message _%e140755%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e140755%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140753%_)
                (macro-cfun-conversion-exception-message _%exn140753%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn140753%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn140747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140747%_))
            (let ((_%e140750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140747%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140750%_)
                  (macro-cfun-conversion-exception-procedure _%e140750%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e140750%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140747%_)
                (macro-cfun-conversion-exception-procedure _%exn140747%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn140747%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn140743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140743%_))
            (let ((_%e140745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140743%_ 'exception))))
              (macro-datum-parsing-exception? _%e140745%_))
            (macro-datum-parsing-exception? _%exn140743%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn140739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140739%_))
            (let ((_%e140741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140739%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140741%_)
                  (macro-datum-parsing-exception-kind _%e140741%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e140741%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140739%_)
                (macro-datum-parsing-exception-kind _%exn140739%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn140739%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn140735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140735%_))
            (let ((_%e140737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140735%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140737%_)
                  (macro-datum-parsing-exception-parameters _%e140737%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e140737%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140735%_)
                (macro-datum-parsing-exception-parameters _%exn140735%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn140735%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn140729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140729%_))
            (let ((_%e140732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140729%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140732%_)
                  (macro-datum-parsing-exception-readenv _%e140732%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e140732%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140729%_)
                (macro-datum-parsing-exception-readenv _%exn140729%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn140729%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn140723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140723%_))
            (let ((_%e140726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140723%_ 'exception))))
              (macro-deadlock-exception? _%e140726%_))
            (macro-deadlock-exception? _%exn140723%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn140719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140719%_))
            (let ((_%e140721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140719%_ 'exception))))
              (macro-divide-by-zero-exception? _%e140721%_))
            (macro-divide-by-zero-exception? _%exn140719%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn140715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140715%_))
            (let ((_%e140717%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140715%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e140717%_)
                  (macro-divide-by-zero-exception-arguments _%e140717%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e140717%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn140715%_)
                (macro-divide-by-zero-exception-arguments _%exn140715%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn140715%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn140709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140709%_))
            (let ((_%e140712%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140709%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e140712%_)
                  (macro-divide-by-zero-exception-procedure _%e140712%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e140712%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn140709%_)
                (macro-divide-by-zero-exception-procedure _%exn140709%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn140709%_ '())))))))
    (define error-exception?
      (lambda (_%exn140705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140705%_))
            (let ((_%e140707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140705%_ 'exception))))
              (macro-error-exception? _%e140707%_))
            (macro-error-exception? _%exn140705%_))))
    (define error-exception-message
      (lambda (_%exn140701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140701%_))
            (let ((_%e140703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140701%_ 'exception))))
              (if (macro-error-exception? _%e140703%_)
                  (macro-error-exception-message _%e140703%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e140703%_ '())))))
            (if (macro-error-exception? _%exn140701%_)
                (macro-error-exception-message _%exn140701%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn140701%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn140695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140695%_))
            (let ((_%e140698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140695%_ 'exception))))
              (if (macro-error-exception? _%e140698%_)
                  (macro-error-exception-parameters _%e140698%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e140698%_ '())))))
            (if (macro-error-exception? _%exn140695%_)
                (macro-error-exception-parameters _%exn140695%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn140695%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn140691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140691%_))
            (let ((_%e140693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140691%_ 'exception))))
              (macro-expression-parsing-exception? _%e140693%_))
            (macro-expression-parsing-exception? _%exn140691%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn140687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140687%_))
            (let ((_%e140689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140687%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140689%_)
                  (macro-expression-parsing-exception-kind _%e140689%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e140689%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140687%_)
                (macro-expression-parsing-exception-kind _%exn140687%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn140687%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn140683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140683%_))
            (let ((_%e140685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140683%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140685%_)
                  (macro-expression-parsing-exception-parameters _%e140685%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e140685%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140683%_)
                (macro-expression-parsing-exception-parameters _%exn140683%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn140683%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn140677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140677%_))
            (let ((_%e140680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140677%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140680%_)
                  (macro-expression-parsing-exception-source _%e140680%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e140680%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140677%_)
                (macro-expression-parsing-exception-source _%exn140677%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn140677%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn140673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140673%_))
            (let ((_%e140675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140673%_ 'exception))))
              (macro-file-exists-exception? _%e140675%_))
            (macro-file-exists-exception? _%exn140673%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn140669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140669%_))
            (let ((_%e140671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140669%_ 'exception))))
              (if (macro-file-exists-exception? _%e140671%_)
                  (macro-file-exists-exception-arguments _%e140671%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e140671%_ '())))))
            (if (macro-file-exists-exception? _%exn140669%_)
                (macro-file-exists-exception-arguments _%exn140669%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn140669%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn140663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140663%_))
            (let ((_%e140666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140663%_ 'exception))))
              (if (macro-file-exists-exception? _%e140666%_)
                  (macro-file-exists-exception-procedure _%e140666%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e140666%_ '())))))
            (if (macro-file-exists-exception? _%exn140663%_)
                (macro-file-exists-exception-procedure _%exn140663%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn140663%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn140659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140659%_))
            (let ((_%e140661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140659%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e140661%_))
            (macro-fixnum-overflow-exception? _%exn140659%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn140655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140655%_))
            (let ((_%e140657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140655%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e140657%_)
                  (macro-fixnum-overflow-exception-arguments _%e140657%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e140657%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn140655%_)
                (macro-fixnum-overflow-exception-arguments _%exn140655%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn140655%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn140649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140649%_))
            (let ((_%e140652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140649%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e140652%_)
                  (macro-fixnum-overflow-exception-procedure _%e140652%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e140652%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn140649%_)
                (macro-fixnum-overflow-exception-procedure _%exn140649%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn140649%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn140643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140643%_))
            (let ((_%e140646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140643%_ 'exception))))
              (macro-heap-overflow-exception? _%e140646%_))
            (macro-heap-overflow-exception? _%exn140643%_))))
    (define inactive-thread-exception?
      (lambda (_%exn140639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140639%_))
            (let ((_%e140641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140639%_ 'exception))))
              (macro-inactive-thread-exception? _%e140641%_))
            (macro-inactive-thread-exception? _%exn140639%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn140635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140635%_))
            (let ((_%e140637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140635%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e140637%_)
                  (macro-inactive-thread-exception-arguments _%e140637%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e140637%_ '())))))
            (if (macro-inactive-thread-exception? _%exn140635%_)
                (macro-inactive-thread-exception-arguments _%exn140635%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn140635%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn140629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140629%_))
            (let ((_%e140632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140629%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e140632%_)
                  (macro-inactive-thread-exception-procedure _%e140632%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e140632%_ '())))))
            (if (macro-inactive-thread-exception? _%exn140629%_)
                (macro-inactive-thread-exception-procedure _%exn140629%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn140629%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn140625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140625%_))
            (let ((_%e140627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140625%_ 'exception))))
              (macro-initialized-thread-exception? _%e140627%_))
            (macro-initialized-thread-exception? _%exn140625%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn140621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140621%_))
            (let ((_%e140623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140621%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e140623%_)
                  (macro-initialized-thread-exception-arguments _%e140623%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e140623%_ '())))))
            (if (macro-initialized-thread-exception? _%exn140621%_)
                (macro-initialized-thread-exception-arguments _%exn140621%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn140621%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn140615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140615%_))
            (let ((_%e140618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140615%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e140618%_)
                  (macro-initialized-thread-exception-procedure _%e140618%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e140618%_ '())))))
            (if (macro-initialized-thread-exception? _%exn140615%_)
                (macro-initialized-thread-exception-procedure _%exn140615%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn140615%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn140611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140611%_))
            (let ((_%e140613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140611%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e140613%_))
            (macro-invalid-hash-number-exception? _%exn140611%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn140607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140607%_))
            (let ((_%e140609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140607%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e140609%_)
                  (macro-invalid-hash-number-exception-arguments _%e140609%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e140609%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn140607%_)
                (macro-invalid-hash-number-exception-arguments _%exn140607%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn140607%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn140601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140601%_))
            (let ((_%e140604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140601%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e140604%_)
                  (macro-invalid-hash-number-exception-procedure _%e140604%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e140604%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn140601%_)
                (macro-invalid-hash-number-exception-procedure _%exn140601%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn140601%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn140597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140597%_))
            (let ((_%e140599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140597%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e140599%_))
            (macro-invalid-utf8-encoding-exception? _%exn140597%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn140593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140593%_))
            (let ((_%e140595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140593%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e140595%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e140595%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e140595%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn140593%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn140593%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn140593%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn140587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140587%_))
            (let ((_%e140590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140587%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e140590%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e140590%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e140590%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn140587%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn140587%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn140587%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn140583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140583%_))
            (let ((_%e140585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140583%_ 'exception))))
              (macro-join-timeout-exception? _%e140585%_))
            (macro-join-timeout-exception? _%exn140583%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn140579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140579%_))
            (let ((_%e140581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140579%_ 'exception))))
              (if (macro-join-timeout-exception? _%e140581%_)
                  (macro-join-timeout-exception-arguments _%e140581%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e140581%_ '())))))
            (if (macro-join-timeout-exception? _%exn140579%_)
                (macro-join-timeout-exception-arguments _%exn140579%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn140579%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn140573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140573%_))
            (let ((_%e140576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140573%_ 'exception))))
              (if (macro-join-timeout-exception? _%e140576%_)
                  (macro-join-timeout-exception-procedure _%e140576%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e140576%_ '())))))
            (if (macro-join-timeout-exception? _%exn140573%_)
                (macro-join-timeout-exception-procedure _%exn140573%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn140573%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn140569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140569%_))
            (let ((_%e140571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140569%_ 'exception))))
              (macro-keyword-expected-exception? _%e140571%_))
            (macro-keyword-expected-exception? _%exn140569%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn140565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140565%_))
            (let ((_%e140567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140565%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e140567%_)
                  (macro-keyword-expected-exception-arguments _%e140567%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e140567%_ '())))))
            (if (macro-keyword-expected-exception? _%exn140565%_)
                (macro-keyword-expected-exception-arguments _%exn140565%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn140565%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn140559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140559%_))
            (let ((_%e140562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140559%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e140562%_)
                  (macro-keyword-expected-exception-procedure _%e140562%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e140562%_ '())))))
            (if (macro-keyword-expected-exception? _%exn140559%_)
                (macro-keyword-expected-exception-procedure _%exn140559%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn140559%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn140555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140555%_))
            (let ((_%e140557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140555%_ 'exception))))
              (macro-length-mismatch-exception? _%e140557%_))
            (macro-length-mismatch-exception? _%exn140555%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn140551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140551%_))
            (let ((_%e140553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140551%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140553%_)
                  (macro-length-mismatch-exception-arg-id _%e140553%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e140553%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140551%_)
                (macro-length-mismatch-exception-arg-id _%exn140551%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn140551%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn140547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140547%_))
            (let ((_%e140549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140547%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140549%_)
                  (macro-length-mismatch-exception-arguments _%e140549%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e140549%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140547%_)
                (macro-length-mismatch-exception-arguments _%exn140547%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn140547%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn140541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140541%_))
            (let ((_%e140544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140541%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140544%_)
                  (macro-length-mismatch-exception-procedure _%e140544%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e140544%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140541%_)
                (macro-length-mismatch-exception-procedure _%exn140541%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn140541%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn140537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140537%_))
            (let ((_%e140539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140537%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e140539%_))
            (macro-mailbox-receive-timeout-exception? _%exn140537%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn140533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140533%_))
            (let ((_%e140535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140533%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e140535%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e140535%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e140535%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn140533%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn140533%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn140533%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn140527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140527%_))
            (let ((_%e140530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140527%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e140530%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e140530%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e140530%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn140527%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn140527%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn140527%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn140523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140523%_))
            (let ((_%e140525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140523%_ 'exception))))
              (macro-module-not-found-exception? _%e140525%_))
            (macro-module-not-found-exception? _%exn140523%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn140519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140519%_))
            (let ((_%e140521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140519%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140521%_)
                  (macro-module-not-found-exception-arguments _%e140521%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e140521%_ '())))))
            (if (macro-module-not-found-exception? _%exn140519%_)
                (macro-module-not-found-exception-arguments _%exn140519%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn140519%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn140513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140513%_))
            (let ((_%e140516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140513%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140516%_)
                  (macro-module-not-found-exception-procedure _%e140516%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e140516%_ '())))))
            (if (macro-module-not-found-exception? _%exn140513%_)
                (macro-module-not-found-exception-procedure _%exn140513%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn140513%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn140507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140507%_))
            (let ((_%e140510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140507%_ 'exception))))
              (macro-multiple-c-return-exception? _%e140510%_))
            (macro-multiple-c-return-exception? _%exn140507%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn140503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140503%_))
            (let ((_%e140505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140503%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e140505%_))
            (macro-no-such-file-or-directory-exception? _%exn140503%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn140499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140499%_))
            (let ((_%e140501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140499%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140501%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e140501%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e140501%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140499%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn140499%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn140499%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn140493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140493%_))
            (let ((_%e140496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140493%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140496%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e140496%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e140496%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140493%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn140493%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn140493%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn140489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140489%_))
            (let ((_%e140491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140489%_ 'exception))))
              (macro-noncontinuable-exception? _%e140491%_))
            (macro-noncontinuable-exception? _%exn140489%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn140483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140483%_))
            (let ((_%e140486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140483%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e140486%_)
                  (macro-noncontinuable-exception-reason _%e140486%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e140486%_ '())))))
            (if (macro-noncontinuable-exception? _%exn140483%_)
                (macro-noncontinuable-exception-reason _%exn140483%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn140483%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn140479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140479%_))
            (let ((_%e140481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140479%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e140481%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn140479%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn140475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140475%_))
            (let ((_%e140477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140475%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140477%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e140477%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e140477%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140475%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn140475%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn140475%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn140469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140469%_))
            (let ((_%e140472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140469%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140472%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e140472%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e140472%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140469%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn140469%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn140469%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn140465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140465%_))
            (let ((_%e140467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140465%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e140467%_))
            (macro-nonprocedure-operator-exception? _%exn140465%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn140461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140461%_))
            (let ((_%e140463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140461%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140463%_)
                  (macro-nonprocedure-operator-exception-arguments _%e140463%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e140463%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140461%_)
                (macro-nonprocedure-operator-exception-arguments _%exn140461%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn140461%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn140457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140457%_))
            (let ((_%e140459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140457%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140459%_)
                  (macro-nonprocedure-operator-exception-code _%e140459%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e140459%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140457%_)
                (macro-nonprocedure-operator-exception-code _%exn140457%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn140457%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn140453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140453%_))
            (let ((_%e140455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140453%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140455%_)
                  (macro-nonprocedure-operator-exception-operator _%e140455%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e140455%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140453%_)
                (macro-nonprocedure-operator-exception-operator _%exn140453%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn140453%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn140447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140447%_))
            (let ((_%e140450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140447%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140450%_)
                  (macro-nonprocedure-operator-exception-rte _%e140450%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e140450%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140447%_)
                (macro-nonprocedure-operator-exception-rte _%exn140447%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn140447%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn140443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140443%_))
            (let ((_%e140445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140443%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e140445%_))
            (macro-not-in-compilation-context-exception? _%exn140443%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn140439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140439%_))
            (let ((_%e140441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140439%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140441%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e140441%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e140441%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140439%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn140439%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn140439%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn140433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140433%_))
            (let ((_%e140436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140433%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140436%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e140436%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e140436%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140433%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn140433%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn140433%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn140429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140429%_))
            (let ((_%e140431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140429%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e140431%_))
            (macro-number-of-arguments-limit-exception? _%exn140429%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn140425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140425%_))
            (let ((_%e140427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140425%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140427%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e140427%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e140427%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140425%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn140425%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn140425%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn140419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140419%_))
            (let ((_%e140422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140419%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140422%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e140422%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e140422%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140419%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn140419%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn140419%_ '())))))))
    (define os-exception?
      (lambda (_%exn140415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140415%_))
            (let ((_%e140417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140415%_ 'exception))))
              (macro-os-exception? _%e140417%_))
            (macro-os-exception? _%exn140415%_))))
    (define os-exception-arguments
      (lambda (_%exn140411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140411%_))
            (let ((_%e140413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140411%_ 'exception))))
              (if (macro-os-exception? _%e140413%_)
                  (macro-os-exception-arguments _%e140413%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e140413%_ '())))))
            (if (macro-os-exception? _%exn140411%_)
                (macro-os-exception-arguments _%exn140411%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn140411%_ '())))))))
    (define os-exception-code
      (lambda (_%exn140407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140407%_))
            (let ((_%e140409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140407%_ 'exception))))
              (if (macro-os-exception? _%e140409%_)
                  (macro-os-exception-code _%e140409%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e140409%_ '())))))
            (if (macro-os-exception? _%exn140407%_)
                (macro-os-exception-code _%exn140407%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn140407%_ '())))))))
    (define os-exception-message
      (lambda (_%exn140403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140403%_))
            (let ((_%e140405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140403%_ 'exception))))
              (if (macro-os-exception? _%e140405%_)
                  (macro-os-exception-message _%e140405%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e140405%_ '())))))
            (if (macro-os-exception? _%exn140403%_)
                (macro-os-exception-message _%exn140403%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn140403%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn140397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140397%_))
            (let ((_%e140400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140397%_ 'exception))))
              (if (macro-os-exception? _%e140400%_)
                  (macro-os-exception-procedure _%e140400%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e140400%_ '())))))
            (if (macro-os-exception? _%exn140397%_)
                (macro-os-exception-procedure _%exn140397%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn140397%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn140393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140393%_))
            (let ((_%e140395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140393%_ 'exception))))
              (macro-permission-denied-exception? _%e140395%_))
            (macro-permission-denied-exception? _%exn140393%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn140389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140389%_))
            (let ((_%e140391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140389%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140391%_)
                  (macro-permission-denied-exception-arguments _%e140391%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e140391%_ '())))))
            (if (macro-permission-denied-exception? _%exn140389%_)
                (macro-permission-denied-exception-arguments _%exn140389%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn140389%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn140383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140383%_))
            (let ((_%e140386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140383%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140386%_)
                  (macro-permission-denied-exception-procedure _%e140386%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e140386%_ '())))))
            (if (macro-permission-denied-exception? _%exn140383%_)
                (macro-permission-denied-exception-procedure _%exn140383%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn140383%_ '())))))))
    (define range-exception?
      (lambda (_%exn140379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140379%_))
            (let ((_%e140381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140379%_ 'exception))))
              (macro-range-exception? _%e140381%_))
            (macro-range-exception? _%exn140379%_))))
    (define range-exception-arg-id
      (lambda (_%exn140375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140375%_))
            (let ((_%e140377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140375%_ 'exception))))
              (if (macro-range-exception? _%e140377%_)
                  (macro-range-exception-arg-id _%e140377%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e140377%_ '())))))
            (if (macro-range-exception? _%exn140375%_)
                (macro-range-exception-arg-id _%exn140375%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn140375%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn140371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140371%_))
            (let ((_%e140373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140371%_ 'exception))))
              (if (macro-range-exception? _%e140373%_)
                  (macro-range-exception-arguments _%e140373%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e140373%_ '())))))
            (if (macro-range-exception? _%exn140371%_)
                (macro-range-exception-arguments _%exn140371%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn140371%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn140365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140365%_))
            (let ((_%e140368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140365%_ 'exception))))
              (if (macro-range-exception? _%e140368%_)
                  (macro-range-exception-procedure _%e140368%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e140368%_ '())))))
            (if (macro-range-exception? _%exn140365%_)
                (macro-range-exception-procedure _%exn140365%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn140365%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn140361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140361%_))
            (let ((_%e140363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140361%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e140363%_))
            (macro-rpc-remote-error-exception? _%exn140361%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn140357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140357%_))
            (let ((_%e140359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140357%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140359%_)
                  (macro-rpc-remote-error-exception-arguments _%e140359%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e140359%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140357%_)
                (macro-rpc-remote-error-exception-arguments _%exn140357%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn140357%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn140353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140353%_))
            (let ((_%e140355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140353%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140355%_)
                  (macro-rpc-remote-error-exception-message _%e140355%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e140355%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140353%_)
                (macro-rpc-remote-error-exception-message _%exn140353%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn140353%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn140347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140347%_))
            (let ((_%e140350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140347%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140350%_)
                  (macro-rpc-remote-error-exception-procedure _%e140350%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e140350%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140347%_)
                (macro-rpc-remote-error-exception-procedure _%exn140347%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn140347%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn140343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140343%_))
            (let ((_%e140345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140343%_ 'exception))))
              (macro-scheduler-exception? _%e140345%_))
            (macro-scheduler-exception? _%exn140343%_))))
    (define scheduler-exception-reason
      (lambda (_%exn140337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140337%_))
            (let ((_%e140340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140337%_ 'exception))))
              (if (macro-scheduler-exception? _%e140340%_)
                  (macro-scheduler-exception-reason _%e140340%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e140340%_ '())))))
            (if (macro-scheduler-exception? _%exn140337%_)
                (macro-scheduler-exception-reason _%exn140337%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn140337%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn140333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140333%_))
            (let ((_%e140335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140333%_ 'exception))))
              (macro-sfun-conversion-exception? _%e140335%_))
            (macro-sfun-conversion-exception? _%exn140333%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn140329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140329%_))
            (let ((_%e140331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140329%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140331%_)
                  (macro-sfun-conversion-exception-arguments _%e140331%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e140331%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140329%_)
                (macro-sfun-conversion-exception-arguments _%exn140329%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn140329%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn140325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140325%_))
            (let ((_%e140327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140325%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140327%_)
                  (macro-sfun-conversion-exception-code _%e140327%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e140327%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140325%_)
                (macro-sfun-conversion-exception-code _%exn140325%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn140325%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn140321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140321%_))
            (let ((_%e140323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140321%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140323%_)
                  (macro-sfun-conversion-exception-message _%e140323%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e140323%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140321%_)
                (macro-sfun-conversion-exception-message _%exn140321%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn140321%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn140315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140315%_))
            (let ((_%e140318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140315%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140318%_)
                  (macro-sfun-conversion-exception-procedure _%e140318%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e140318%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140315%_)
                (macro-sfun-conversion-exception-procedure _%exn140315%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn140315%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn140309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140309%_))
            (let ((_%e140312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140309%_ 'exception))))
              (macro-stack-overflow-exception? _%e140312%_))
            (macro-stack-overflow-exception? _%exn140309%_))))
    (define started-thread-exception?
      (lambda (_%exn140305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140305%_))
            (let ((_%e140307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140305%_ 'exception))))
              (macro-started-thread-exception? _%e140307%_))
            (macro-started-thread-exception? _%exn140305%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn140301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140301%_))
            (let ((_%e140303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140301%_ 'exception))))
              (if (macro-started-thread-exception? _%e140303%_)
                  (macro-started-thread-exception-arguments _%e140303%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e140303%_ '())))))
            (if (macro-started-thread-exception? _%exn140301%_)
                (macro-started-thread-exception-arguments _%exn140301%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn140301%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn140295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140295%_))
            (let ((_%e140298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140295%_ 'exception))))
              (if (macro-started-thread-exception? _%e140298%_)
                  (macro-started-thread-exception-procedure _%e140298%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e140298%_ '())))))
            (if (macro-started-thread-exception? _%exn140295%_)
                (macro-started-thread-exception-procedure _%exn140295%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn140295%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn140291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140291%_))
            (let ((_%e140293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140291%_ 'exception))))
              (macro-terminated-thread-exception? _%e140293%_))
            (macro-terminated-thread-exception? _%exn140291%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn140287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140287%_))
            (let ((_%e140289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140287%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140289%_)
                  (macro-terminated-thread-exception-arguments _%e140289%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e140289%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140287%_)
                (macro-terminated-thread-exception-arguments _%exn140287%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn140287%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn140281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140281%_))
            (let ((_%e140284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140281%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140284%_)
                  (macro-terminated-thread-exception-procedure _%e140284%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e140284%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140281%_)
                (macro-terminated-thread-exception-procedure _%exn140281%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn140281%_ '())))))))
    (define type-exception?
      (lambda (_%exn140277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140277%_))
            (let ((_%e140279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140277%_ 'exception))))
              (macro-type-exception? _%e140279%_))
            (macro-type-exception? _%exn140277%_))))
    (define type-exception-arg-id
      (lambda (_%exn140273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140273%_))
            (let ((_%e140275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140273%_ 'exception))))
              (if (macro-type-exception? _%e140275%_)
                  (macro-type-exception-arg-id _%e140275%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e140275%_ '())))))
            (if (macro-type-exception? _%exn140273%_)
                (macro-type-exception-arg-id _%exn140273%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn140273%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn140269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140269%_))
            (let ((_%e140271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140269%_ 'exception))))
              (if (macro-type-exception? _%e140271%_)
                  (macro-type-exception-arguments _%e140271%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e140271%_ '())))))
            (if (macro-type-exception? _%exn140269%_)
                (macro-type-exception-arguments _%exn140269%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn140269%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn140265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140265%_))
            (let ((_%e140267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140265%_ 'exception))))
              (if (macro-type-exception? _%e140267%_)
                  (macro-type-exception-procedure _%e140267%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e140267%_ '())))))
            (if (macro-type-exception? _%exn140265%_)
                (macro-type-exception-procedure _%exn140265%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn140265%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn140259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140259%_))
            (let ((_%e140262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140259%_ 'exception))))
              (if (macro-type-exception? _%e140262%_)
                  (macro-type-exception-type-id _%e140262%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e140262%_ '())))))
            (if (macro-type-exception? _%exn140259%_)
                (macro-type-exception-type-id _%exn140259%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn140259%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn140255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140255%_))
            (let ((_%e140257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140255%_ 'exception))))
              (macro-unbound-global-exception? _%e140257%_))
            (macro-unbound-global-exception? _%exn140255%_))))
    (define unbound-global-exception-code
      (lambda (_%exn140251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140251%_))
            (let ((_%e140253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140251%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140253%_)
                  (macro-unbound-global-exception-code _%e140253%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e140253%_ '())))))
            (if (macro-unbound-global-exception? _%exn140251%_)
                (macro-unbound-global-exception-code _%exn140251%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn140251%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn140247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140247%_))
            (let ((_%e140249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140247%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140249%_)
                  (macro-unbound-global-exception-rte _%e140249%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e140249%_ '())))))
            (if (macro-unbound-global-exception? _%exn140247%_)
                (macro-unbound-global-exception-rte _%exn140247%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn140247%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn140241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140241%_))
            (let ((_%e140244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140241%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140244%_)
                  (macro-unbound-global-exception-variable _%e140244%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e140244%_ '())))))
            (if (macro-unbound-global-exception? _%exn140241%_)
                (macro-unbound-global-exception-variable _%exn140241%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn140241%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn140237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140237%_))
            (let ((_%e140239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140237%_ 'exception))))
              (macro-unbound-key-exception? _%e140239%_))
            (macro-unbound-key-exception? _%exn140237%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn140233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140233%_))
            (let ((_%e140235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140233%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140235%_)
                  (macro-unbound-key-exception-arguments _%e140235%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e140235%_ '())))))
            (if (macro-unbound-key-exception? _%exn140233%_)
                (macro-unbound-key-exception-arguments _%exn140233%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn140233%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn140227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140227%_))
            (let ((_%e140230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140227%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140230%_)
                  (macro-unbound-key-exception-procedure _%e140230%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e140230%_ '())))))
            (if (macro-unbound-key-exception? _%exn140227%_)
                (macro-unbound-key-exception-procedure _%exn140227%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn140227%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn140223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140223%_))
            (let ((_%e140225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140223%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e140225%_))
            (macro-unbound-os-environment-variable-exception? _%exn140223%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn140219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140219%_))
            (let ((_%e140221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140219%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140221%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e140221%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e140221%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140219%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn140219%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn140219%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn140213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140213%_))
            (let ((_%e140216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140213%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140216%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e140216%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e140216%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140213%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn140213%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn140213%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn140209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140209%_))
            (let ((_%e140211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140209%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e140211%_))
            (macro-unbound-serial-number-exception? _%exn140209%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn140205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140205%_))
            (let ((_%e140207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140205%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140207%_)
                  (macro-unbound-serial-number-exception-arguments _%e140207%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e140207%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140205%_)
                (macro-unbound-serial-number-exception-arguments _%exn140205%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn140205%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn140199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140199%_))
            (let ((_%e140202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140199%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140202%_)
                  (macro-unbound-serial-number-exception-procedure _%e140202%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e140202%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140199%_)
                (macro-unbound-serial-number-exception-procedure _%exn140199%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn140199%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn140195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140195%_))
            (let ((_%e140197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140195%_ 'exception))))
              (macro-uncaught-exception? _%e140197%_))
            (macro-uncaught-exception? _%exn140195%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn140191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140191%_))
            (let ((_%e140193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140191%_ 'exception))))
              (if (macro-uncaught-exception? _%e140193%_)
                  (macro-uncaught-exception-arguments _%e140193%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e140193%_ '())))))
            (if (macro-uncaught-exception? _%exn140191%_)
                (macro-uncaught-exception-arguments _%exn140191%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn140191%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn140187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140187%_))
            (let ((_%e140189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140187%_ 'exception))))
              (if (macro-uncaught-exception? _%e140189%_)
                  (macro-uncaught-exception-procedure _%e140189%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e140189%_ '())))))
            (if (macro-uncaught-exception? _%exn140187%_)
                (macro-uncaught-exception-procedure _%exn140187%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn140187%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn140181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140181%_))
            (let ((_%e140184%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140181%_ 'exception))))
              (if (macro-uncaught-exception? _%e140184%_)
                  (macro-uncaught-exception-reason _%e140184%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e140184%_ '())))))
            (if (macro-uncaught-exception? _%exn140181%_)
                (macro-uncaught-exception-reason _%exn140181%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn140181%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn140177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140177%_))
            (let ((_%e140179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140177%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e140179%_))
            (macro-uninitialized-thread-exception? _%exn140177%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn140173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140173%_))
            (let ((_%e140175%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140173%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140175%_)
                  (macro-uninitialized-thread-exception-arguments _%e140175%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e140175%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140173%_)
                (macro-uninitialized-thread-exception-arguments _%exn140173%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn140173%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn140167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140167%_))
            (let ((_%e140170%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140167%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140170%_)
                  (macro-uninitialized-thread-exception-procedure _%e140170%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e140170%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140167%_)
                (macro-uninitialized-thread-exception-procedure _%exn140167%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn140167%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn140163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140163%_))
            (let ((_%e140165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140163%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e140165%_))
            (macro-unknown-keyword-argument-exception? _%exn140163%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn140159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140159%_))
            (let ((_%e140161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140159%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140161%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e140161%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e140161%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140159%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn140159%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn140159%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn140153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140153%_))
            (let ((_%e140156%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140153%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140156%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e140156%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e140156%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140153%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn140153%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn140153%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn140149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140149%_))
            (let ((_%e140151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140149%_ 'exception))))
              (macro-unterminated-process-exception? _%e140151%_))
            (macro-unterminated-process-exception? _%exn140149%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn140145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140145%_))
            (let ((_%e140147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140145%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140147%_)
                  (macro-unterminated-process-exception-arguments _%e140147%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e140147%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140145%_)
                (macro-unterminated-process-exception-arguments _%exn140145%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn140145%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn140139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140139%_))
            (let ((_%e140142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140139%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140142%_)
                  (macro-unterminated-process-exception-procedure _%e140142%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e140142%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140139%_)
                (macro-unterminated-process-exception-procedure _%exn140139%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn140139%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn140135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140135%_))
            (let ((_%e140137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140135%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e140137%_))
            (macro-wrong-number-of-arguments-exception? _%exn140135%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn140131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140131%_))
            (let ((_%e140133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140131%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140133%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e140133%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e140133%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140131%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn140131%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn140131%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn140125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140125%_))
            (let ((_%e140128%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140125%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140128%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e140128%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e140128%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140125%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn140125%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn140125%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn140121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140121%_))
            (let ((_%e140123%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140121%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e140123%_))
            (macro-wrong-number-of-values-exception? _%exn140121%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn140117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140117%_))
            (let ((_%e140119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140117%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140119%_)
                  (macro-wrong-number-of-values-exception-code _%e140119%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e140119%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140117%_)
                (macro-wrong-number-of-values-exception-code _%exn140117%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn140117%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn140113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140113%_))
            (let ((_%e140115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140113%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140115%_)
                  (macro-wrong-number-of-values-exception-rte _%e140115%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e140115%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140113%_)
                (macro-wrong-number-of-values-exception-rte _%exn140113%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn140113%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn140107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140107%_))
            (let ((_%e140110%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140107%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140110%_)
                  (macro-wrong-number-of-values-exception-vals _%e140110%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e140110%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140107%_)
                (macro-wrong-number-of-values-exception-vals _%exn140107%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn140107%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn140101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140101%_))
            (let ((_%e140104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140101%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e140104%_))
            (macro-wrong-processor-c-return-exception? _%exn140101%_))))))
