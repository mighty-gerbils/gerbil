(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1770513294)
  (begin
    (define Exception::t
      (let ((__tmp138908 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp138908
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args138826%_
        (apply make-instance Exception::t _%$args138826%_)))
    (define StackTrace::t
      (let ((__tmp138909 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp138909
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args138823%_
        (apply make-instance StackTrace::t _%$args138823%_)))
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
      (let ((__tmp138910 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp138910
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args138820%_ (apply make-instance Error::t _%$args138820%_)))
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
      (let ((__tmp138911 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp138911
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args138817%_
        (apply make-instance ContractViolation::t _%$args138817%_)))
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
      (let ((__tmp138912 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp138912
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args138814%_
        (apply make-instance RuntimeException::t _%$args138814%_)))
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
      (lambda (_%exn138809%_ _%continue138810%_)
        (let ((_%exn138812%_ (wrap-runtime-exception _%exn138809%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn138812%_ _%continue138810%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn138805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn138805%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn138805%_ 'continuation))
                '#!void
                (let ((__tmp138913
                       (lambda (_%cont138807%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn138805%_
                            'continuation
                            _%cont138807%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp138913)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn138805%_))))
    (define error
      (lambda (_%message138802%_ . _%irritants138803%_)
        (raise (let ((__obj138905
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj138905
                  _%message138802%_
                  'irritants:
                  _%irritants138803%_)
                 __obj138905))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords138777%_
               _%ctx138772138778%_
               _%contract-expr138773138779%_
               _%value138774138780%_
               _%message138781%_)
        (let* ((_%ctx138783%_
                (if (eq? _%ctx138772138778%_ absent-value)
                    '#f
                    _%ctx138772138778%_))
               (_%contract-expr138785%_
                (if (eq? _%contract-expr138773138779%_ absent-value)
                    '#f
                    _%contract-expr138773138779%_))
               (_%value138787%_
                (if (eq? _%value138774138780%_ absent-value)
                    '#f
                    _%value138774138780%_)))
          (raise (let ((__obj138906
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj138906
                    _%message138781%_
                    'where:
                    _%ctx138783%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr138785%_
                                (cons 'value: (cons _%value138787%_ '())))))
                   __obj138906)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords138792%_ . _%args138793%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords138792%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138792%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138792%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138792%_
                  'value:
                  absent-value))
               _%args138793%_)))
    (define __raise-contract-violation-error
      (lambda _%args138775138799%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args138775138799%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler138746%_ _%thunk138747%_)
        (let* ((_%handler138750%_ _%handler138746%_)
               (_%thunk138758%_ _%thunk138747%_)
               (__tmp138914
                (lambda (_%exn138767%_)
                  (let ((_%exn138769%_ (wrap-runtime-exception _%exn138767%_)))
                    (declare (not safe))
                    (_%handler138750%_ _%exn138769%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp138914 _%thunk138758%_))))
    (define with-exception-handler
      (lambda (_%handler136781%_ _%thunk136782%_)
        (if (procedure? _%handler136781%_)
            (let ((_%handler136786%_ _%handler136781%_))
              (if (procedure? _%thunk136782%_)
                  (let ((_%thunk136796%_ _%thunk136782%_))
                    (__with-exception-handler
                     _%handler136786%_
                     _%thunk136796%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk136782%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler136781%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler138688%_ _%thunk138689%_)
        (let* ((_%handler138692%_ _%handler138688%_)
               (_%thunk138700%_ _%thunk138689%_)
               (__tmp138915
                (lambda (_%cont138709%_)
                  (let* ((_%handler138713%_
                          (lambda (_%exn138711%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont138709%_
                               _%handler138692%_
                               _%exn138711%_))))
                         (_%thunk138716%_ _%thunk138700%_)
                         (_%handler138721%_ _%handler138713%_)
                         (_%thunk138736%_ _%thunk138716%_))
                    (__with-exception-handler
                     _%handler138721%_
                     _%thunk138736%_)))))
          (declare (not safe))
          (##continuation-capture __tmp138915))))
    (define with-catch
      (lambda (_%handler136926%_ _%thunk136927%_)
        (if (procedure? _%handler136926%_)
            (let ((_%handler136931%_ _%handler136926%_))
              (if (procedure? _%thunk136927%_)
                  (let ((_%thunk136941%_ _%thunk136927%_))
                    (__with-catch _%handler136931%_ _%thunk136941%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk136927%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler136926%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn138675%_)
        (if (or (heap-overflow-exception? _%exn138675%_)
                (stack-overflow-exception? _%exn138675%_))
            _%exn138675%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn138675%_))
                _%exn138675%_
                (if (macro-exception? _%exn138675%_)
                    (let ((_%rte138683%_
                           (let ((__obj138907
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj138907
                                _%exn138675%_
                                '2
                                '#f
                                '#f))
                             __obj138907)))
                      (let ((__tmp138916
                             (lambda (_%cont138685%_)
                               (let ((__tmp138917
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont138685%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte138683%_
                                  'continuation
                                  __tmp138917)))))
                        (declare (not safe))
                        (##continuation-capture __tmp138916))
                      _%rte138683%_)
                    _%exn138675%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj138670%_)
        (let ((_%$e138672%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj138670%_))))
          (if _%$e138672%_ _%$e138672%_ (error-exception? _%obj138670%_)))))
    (define error-message
      (lambda (_%obj138629%_)
        (let ((_%$e138665%_
               (let* ((_%obj138631%_ _%obj138629%_)
                      (_%slot138634%_ 'message)
                      (_%E138637%_ false)
                      (_%slot138642%_ _%slot138634%_)
                      (_%E138655%_ _%E138637%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj138631%_ _%slot138642%_ _%E138655%_))))
          (if _%$e138665%_
              _%$e138665%_
              (if (error-exception? _%obj138629%_)
                  (error-exception-message _%obj138629%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj138624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj138624%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj138624%_ 'irritants))
            (if (error-exception? _%obj138624%_)
                (error-exception-parameters _%obj138624%_)
                '#f))))
    (define error-trace
      (lambda (_%obj138622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj138622%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj138622%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e138583%_ _%port138584%_)
        (let ((_%$e138606%_
               (let* ((_%obj138586%_ _%e138583%_)
                      (_%id138589%_ 'display-exception)
                      (_%id138594%_ _%id138589%_))
                 (declare (not safe))
                 (__method-ref _%obj138586%_ _%id138594%_))))
          (if _%$e138606%_
              ((lambda (_%f138609%_) (_%f138609%_ _%e138583%_ _%port138584%_))
               _%$e138606%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e138583%_ _%port138584%_))))))
    (define display-exception__0
      (lambda (_%e138615%_)
        (let ((_%port138617%_ (current-error-port)))
          (display-exception__% _%e138615%_ _%port138617%_))))
    (define display-exception
      (lambda _g138918_
        (let ((_g138919_ (let () (declare (not safe)) (##length _g138918_))))
          (cond ((let () (declare (not safe)) (##fx= _g138919_ 1))
                 (apply display-exception__0 _g138918_))
                ((let () (declare (not safe)) (##fx= _g138919_ 2))
                 (apply display-exception__% _g138918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g138918_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self138561%_ _%message138562%_ . _%rest138563%_)
        (let* ((_%self138566%_ _%self138561%_)
               (_%message138580%_
                (if (string? _%message138562%_)
                    _%message138562%_
                    (call-with-output-string
                     '""
                     (lambda (_%g138575138577%_)
                       (display _%message138562%_ _%g138575138577%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self138566%_ 'message _%message138580%_))
          (apply class-instance-init! _%self138566%_ _%rest138563%_))))
    (define Error:::init!::specialize
      (lambda (__klass138828 __method-table138829)
        (let ((__message138830
               (let ((__slot138831
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138828 'message))))
                 (if __slot138831
                     __slot138831
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self138561%_ _%message138562%_ . _%rest138563%_)
            (let* ((_%self138566%_ _%self138561%_)
                   (_%message138580%_
                    (if (string? _%message138562%_)
                        _%message138562%_
                        (call-with-output-string
                         '""
                         (lambda (_%g138575138577%_)
                           (display _%message138562%_ _%g138575138577%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self138566%_
                 _%message138580%_
                 __message138830
                 '#f
                 '#f))
              (apply class-instance-init! _%self138566%_ _%rest138563%_))))))
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
      (lambda (_%self138266%_ _%port138267%_)
        (let ((_%self138270%_ _%self138266%_))
          (let ((_%tmp-port138280%_ (open-output-string))
                (_%display-error-newline138281%_
                 (> (output-port-column _%port138267%_) '0)))
            (fix-port-width! _%tmp-port138280%_)
            (let ((__tmp138920
                   (lambda ()
                     (if _%display-error-newline138281%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e138284%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138270%_ 'where))))
                       (if _%$e138284%_ (display _%$e138284%_) (display '"?")))
                     (let ((__tmp138921
                            (let ((__tmp138922
                                   (let ((_%obj138288%_ _%self138270%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj138288%_))
                                         (let ((_%obj138293%_ _%obj138288%_))
                                           (declare (not safe))
                                           (__object-class _%obj138293%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj138288%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp138922))))
                       (declare (not safe))
                       (display* '" [" __tmp138921 '"]: "))
                     (let ((__tmp138923
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138270%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp138923))
                     (let ((_%irritants138308%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138270%_ 'irritants))))
                       (if (null? _%irritants138308%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj138310%_)
                                (if (u8vector? _%obj138310%_)
                                    (let ((__tmp138924
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj138310%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp138924))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj138310%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants138308%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont138311138313%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self138270%_
                                   'continuation))))
                           (if _%cont138311138313%_
                               (let ((_%cont138315%_ _%cont138311138313%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont138315%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp138920
               current-output-port
               _%tmp-port138280%_))
            (let ((__tmp138925 (get-output-string _%tmp-port138280%_)))
              (declare (not safe))
              (##write-string __tmp138925 _%port138267%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass138832 __method-table138833)
        (let ((__message138834
               (let ((__slot138838
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138832 'message))))
                 (if __slot138838
                     __slot138838
                     (error '"Unknown slot" 'message))))
              (__continuation138835
               (let ((__slot138839
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138832 'continuation))))
                 (if __slot138839
                     __slot138839
                     (error '"Unknown slot" 'continuation))))
              (__irritants138836
               (let ((__slot138840
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138832 'irritants))))
                 (if __slot138840
                     __slot138840
                     (error '"Unknown slot" 'irritants))))
              (__where138837
               (let ((__slot138841
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138832 'where))))
                 (if __slot138841
                     __slot138841
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self138266%_ _%port138267%_)
            (let ((_%self138270%_ _%self138266%_))
              (let ((_%tmp-port138280%_ (open-output-string))
                    (_%display-error-newline138281%_
                     (> (output-port-column _%port138267%_) '0)))
                (fix-port-width! _%tmp-port138280%_)
                (let ((__tmp138926
                       (lambda ()
                         (if _%display-error-newline138281%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e138284%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138270%_
                                   __where138837
                                   '#f
                                   '#f))))
                           (if _%$e138284%_
                               (display _%$e138284%_)
                               (display '"?")))
                         (let ((__tmp138927
                                (let ((__tmp138928
                                       (let ((_%obj138288%_ _%self138270%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj138288%_))
                                             (let ((_%obj138293%_
                                                    _%obj138288%_))
                                               (declare (not safe))
                                               (__object-class _%obj138293%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj138288%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp138928))))
                           (declare (not safe))
                           (display* '" [" __tmp138927 '"]: "))
                         (let ((__tmp138929
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138270%_
                                   __message138834
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp138929))
                         (let ((_%irritants138308%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138270%_
                                   __irritants138836
                                   '#f
                                   '#f))))
                           (if (null? _%irritants138308%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj138310%_)
                                    (if (u8vector? _%obj138310%_)
                                        (let ((__tmp138930
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj138310%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp138930))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj138310%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants138308%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont138311138313%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self138270%_
                                       __continuation138835
                                       '#f
                                       '#f))))
                               (if _%cont138311138313%_
                                   (let ((_%cont138315%_ _%cont138311138313%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont138315%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp138926
                   current-output-port
                   _%tmp-port138280%_))
                (let ((__tmp138931 (get-output-string _%tmp-port138280%_)))
                  (declare (not safe))
                  (##write-string __tmp138931 _%port138267%_))))))))
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
      (lambda (_%self138123%_ _%port138124%_)
        (let* ((_%self138127%_ _%self138123%_)
               (_%tmp-port138137%_ (open-output-string)))
          (fix-port-width! _%tmp-port138137%_)
          (let ((__tmp138932
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self138127%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp138932 _%tmp-port138137%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont138138138140%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self138127%_ 'continuation))))
                (if _%cont138138138140%_
                    (let ((_%cont138142%_ _%cont138138138140%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port138137%_)
                      (newline _%tmp-port138137%_)
                      (display-continuation-backtrace
                       _%cont138142%_
                       _%tmp-port138137%_))
                    '#f))
              '#!void)
          (let ((__tmp138933 (get-output-string _%tmp-port138137%_)))
            (declare (not safe))
            (##write-string __tmp138933 _%port138124%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass138842 __method-table138843)
        (let ((__continuation138844
               (let ((__slot138846
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138842 'continuation))))
                 (if __slot138846
                     __slot138846
                     (error '"Unknown slot" 'continuation))))
              (__exception138845
               (let ((__slot138847
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138842 'exception))))
                 (if __slot138847
                     __slot138847
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self138123%_ _%port138124%_)
            (let* ((_%self138127%_ _%self138123%_)
                   (_%tmp-port138137%_ (open-output-string)))
              (fix-port-width! _%tmp-port138137%_)
              (let ((__tmp138934
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self138127%_
                        __exception138845
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp138934 _%tmp-port138137%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont138138138140%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self138127%_
                            __continuation138844
                            '#f
                            '#f))))
                    (if _%cont138138138140%_
                        (let ((_%cont138142%_ _%cont138138138140%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port138137%_)
                          (newline _%tmp-port138137%_)
                          (display-continuation-backtrace
                           _%cont138142%_
                           _%tmp-port138137%_))
                        '#f))
                  '#!void)
              (let ((__tmp138935 (get-output-string _%tmp-port138137%_)))
                (declare (not safe))
                (##write-string __tmp138935 _%port138124%_)))))))
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
      (lambda (_%port137995%_)
        (if (macro-character-port? _%port137995%_)
            (let ((_%old-width137997%_
                   (macro-character-port-output-width _%port137995%_)))
              (macro-character-port-output-width-set!
               _%port137995%_
               (lambda (_%port137999%_) '256))
              _%old-width137997%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port137992%_ _%old-width137993%_)
        (if (macro-character-port? _%port137992%_)
            (macro-character-port-output-width-set!
             _%port137992%_
             _%old-width137993%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e137990%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e137990%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn137984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137984%_))
            (let ((_%e137987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137984%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e137987%_))
            (macro-abandoned-mutex-exception? _%exn137984%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn137980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137980%_))
            (let ((_%e137982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137980%_ 'exception))))
              (macro-cfun-conversion-exception? _%e137982%_))
            (macro-cfun-conversion-exception? _%exn137980%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn137976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137976%_))
            (let ((_%e137978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137976%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137978%_)
                  (macro-cfun-conversion-exception-arguments _%e137978%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e137978%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137976%_)
                (macro-cfun-conversion-exception-arguments _%exn137976%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn137976%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn137972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137972%_))
            (let ((_%e137974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137972%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137974%_)
                  (macro-cfun-conversion-exception-code _%e137974%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e137974%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137972%_)
                (macro-cfun-conversion-exception-code _%exn137972%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn137972%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn137968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137968%_))
            (let ((_%e137970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137968%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137970%_)
                  (macro-cfun-conversion-exception-message _%e137970%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e137970%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137968%_)
                (macro-cfun-conversion-exception-message _%exn137968%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn137968%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn137962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137962%_))
            (let ((_%e137965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137962%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137965%_)
                  (macro-cfun-conversion-exception-procedure _%e137965%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e137965%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137962%_)
                (macro-cfun-conversion-exception-procedure _%exn137962%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn137962%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn137958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137958%_))
            (let ((_%e137960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137958%_ 'exception))))
              (macro-datum-parsing-exception? _%e137960%_))
            (macro-datum-parsing-exception? _%exn137958%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn137954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137954%_))
            (let ((_%e137956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137954%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137956%_)
                  (macro-datum-parsing-exception-kind _%e137956%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e137956%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137954%_)
                (macro-datum-parsing-exception-kind _%exn137954%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn137954%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn137950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137950%_))
            (let ((_%e137952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137950%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137952%_)
                  (macro-datum-parsing-exception-parameters _%e137952%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e137952%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137950%_)
                (macro-datum-parsing-exception-parameters _%exn137950%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn137950%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn137944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137944%_))
            (let ((_%e137947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137944%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137947%_)
                  (macro-datum-parsing-exception-readenv _%e137947%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e137947%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137944%_)
                (macro-datum-parsing-exception-readenv _%exn137944%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn137944%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn137938%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137938%_))
            (let ((_%e137941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137938%_ 'exception))))
              (macro-deadlock-exception? _%e137941%_))
            (macro-deadlock-exception? _%exn137938%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn137934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137934%_))
            (let ((_%e137936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137934%_ 'exception))))
              (macro-divide-by-zero-exception? _%e137936%_))
            (macro-divide-by-zero-exception? _%exn137934%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn137930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137930%_))
            (let ((_%e137932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137930%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e137932%_)
                  (macro-divide-by-zero-exception-arguments _%e137932%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e137932%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn137930%_)
                (macro-divide-by-zero-exception-arguments _%exn137930%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn137930%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn137924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137924%_))
            (let ((_%e137927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137924%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e137927%_)
                  (macro-divide-by-zero-exception-procedure _%e137927%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e137927%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn137924%_)
                (macro-divide-by-zero-exception-procedure _%exn137924%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn137924%_ '())))))))
    (define error-exception?
      (lambda (_%exn137920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137920%_))
            (let ((_%e137922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137920%_ 'exception))))
              (macro-error-exception? _%e137922%_))
            (macro-error-exception? _%exn137920%_))))
    (define error-exception-message
      (lambda (_%exn137916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137916%_))
            (let ((_%e137918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137916%_ 'exception))))
              (if (macro-error-exception? _%e137918%_)
                  (macro-error-exception-message _%e137918%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e137918%_ '())))))
            (if (macro-error-exception? _%exn137916%_)
                (macro-error-exception-message _%exn137916%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn137916%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn137910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137910%_))
            (let ((_%e137913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137910%_ 'exception))))
              (if (macro-error-exception? _%e137913%_)
                  (macro-error-exception-parameters _%e137913%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e137913%_ '())))))
            (if (macro-error-exception? _%exn137910%_)
                (macro-error-exception-parameters _%exn137910%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn137910%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn137906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137906%_))
            (let ((_%e137908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137906%_ 'exception))))
              (macro-expression-parsing-exception? _%e137908%_))
            (macro-expression-parsing-exception? _%exn137906%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn137902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137902%_))
            (let ((_%e137904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137902%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137904%_)
                  (macro-expression-parsing-exception-kind _%e137904%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e137904%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137902%_)
                (macro-expression-parsing-exception-kind _%exn137902%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn137902%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn137898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137898%_))
            (let ((_%e137900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137898%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137900%_)
                  (macro-expression-parsing-exception-parameters _%e137900%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e137900%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137898%_)
                (macro-expression-parsing-exception-parameters _%exn137898%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn137898%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn137892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137892%_))
            (let ((_%e137895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137892%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137895%_)
                  (macro-expression-parsing-exception-source _%e137895%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e137895%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137892%_)
                (macro-expression-parsing-exception-source _%exn137892%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn137892%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn137888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137888%_))
            (let ((_%e137890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137888%_ 'exception))))
              (macro-file-exists-exception? _%e137890%_))
            (macro-file-exists-exception? _%exn137888%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn137884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137884%_))
            (let ((_%e137886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137884%_ 'exception))))
              (if (macro-file-exists-exception? _%e137886%_)
                  (macro-file-exists-exception-arguments _%e137886%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e137886%_ '())))))
            (if (macro-file-exists-exception? _%exn137884%_)
                (macro-file-exists-exception-arguments _%exn137884%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn137884%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn137878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137878%_))
            (let ((_%e137881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137878%_ 'exception))))
              (if (macro-file-exists-exception? _%e137881%_)
                  (macro-file-exists-exception-procedure _%e137881%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e137881%_ '())))))
            (if (macro-file-exists-exception? _%exn137878%_)
                (macro-file-exists-exception-procedure _%exn137878%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn137878%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn137874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137874%_))
            (let ((_%e137876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137874%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e137876%_))
            (macro-fixnum-overflow-exception? _%exn137874%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn137870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137870%_))
            (let ((_%e137872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137870%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e137872%_)
                  (macro-fixnum-overflow-exception-arguments _%e137872%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e137872%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn137870%_)
                (macro-fixnum-overflow-exception-arguments _%exn137870%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn137870%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn137864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137864%_))
            (let ((_%e137867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137864%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e137867%_)
                  (macro-fixnum-overflow-exception-procedure _%e137867%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e137867%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn137864%_)
                (macro-fixnum-overflow-exception-procedure _%exn137864%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn137864%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn137858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137858%_))
            (let ((_%e137861%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137858%_ 'exception))))
              (macro-heap-overflow-exception? _%e137861%_))
            (macro-heap-overflow-exception? _%exn137858%_))))
    (define inactive-thread-exception?
      (lambda (_%exn137854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137854%_))
            (let ((_%e137856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137854%_ 'exception))))
              (macro-inactive-thread-exception? _%e137856%_))
            (macro-inactive-thread-exception? _%exn137854%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn137850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137850%_))
            (let ((_%e137852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137850%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e137852%_)
                  (macro-inactive-thread-exception-arguments _%e137852%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e137852%_ '())))))
            (if (macro-inactive-thread-exception? _%exn137850%_)
                (macro-inactive-thread-exception-arguments _%exn137850%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn137850%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn137844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137844%_))
            (let ((_%e137847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137844%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e137847%_)
                  (macro-inactive-thread-exception-procedure _%e137847%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e137847%_ '())))))
            (if (macro-inactive-thread-exception? _%exn137844%_)
                (macro-inactive-thread-exception-procedure _%exn137844%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn137844%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn137840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137840%_))
            (let ((_%e137842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137840%_ 'exception))))
              (macro-initialized-thread-exception? _%e137842%_))
            (macro-initialized-thread-exception? _%exn137840%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn137836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137836%_))
            (let ((_%e137838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137836%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e137838%_)
                  (macro-initialized-thread-exception-arguments _%e137838%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e137838%_ '())))))
            (if (macro-initialized-thread-exception? _%exn137836%_)
                (macro-initialized-thread-exception-arguments _%exn137836%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn137836%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn137830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137830%_))
            (let ((_%e137833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137830%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e137833%_)
                  (macro-initialized-thread-exception-procedure _%e137833%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e137833%_ '())))))
            (if (macro-initialized-thread-exception? _%exn137830%_)
                (macro-initialized-thread-exception-procedure _%exn137830%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn137830%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn137826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137826%_))
            (let ((_%e137828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137826%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e137828%_))
            (macro-invalid-hash-number-exception? _%exn137826%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn137822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137822%_))
            (let ((_%e137824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137822%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e137824%_)
                  (macro-invalid-hash-number-exception-arguments _%e137824%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e137824%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn137822%_)
                (macro-invalid-hash-number-exception-arguments _%exn137822%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn137822%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn137816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137816%_))
            (let ((_%e137819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137816%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e137819%_)
                  (macro-invalid-hash-number-exception-procedure _%e137819%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e137819%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn137816%_)
                (macro-invalid-hash-number-exception-procedure _%exn137816%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn137816%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn137812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137812%_))
            (let ((_%e137814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137812%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e137814%_))
            (macro-invalid-utf8-encoding-exception? _%exn137812%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn137808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137808%_))
            (let ((_%e137810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137808%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e137810%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e137810%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e137810%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn137808%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn137808%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn137808%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn137802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137802%_))
            (let ((_%e137805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137802%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e137805%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e137805%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e137805%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn137802%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn137802%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn137802%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn137798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137798%_))
            (let ((_%e137800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137798%_ 'exception))))
              (macro-join-timeout-exception? _%e137800%_))
            (macro-join-timeout-exception? _%exn137798%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn137794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137794%_))
            (let ((_%e137796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137794%_ 'exception))))
              (if (macro-join-timeout-exception? _%e137796%_)
                  (macro-join-timeout-exception-arguments _%e137796%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e137796%_ '())))))
            (if (macro-join-timeout-exception? _%exn137794%_)
                (macro-join-timeout-exception-arguments _%exn137794%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn137794%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn137788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137788%_))
            (let ((_%e137791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137788%_ 'exception))))
              (if (macro-join-timeout-exception? _%e137791%_)
                  (macro-join-timeout-exception-procedure _%e137791%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e137791%_ '())))))
            (if (macro-join-timeout-exception? _%exn137788%_)
                (macro-join-timeout-exception-procedure _%exn137788%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn137788%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn137784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137784%_))
            (let ((_%e137786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137784%_ 'exception))))
              (macro-keyword-expected-exception? _%e137786%_))
            (macro-keyword-expected-exception? _%exn137784%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn137780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137780%_))
            (let ((_%e137782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137780%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e137782%_)
                  (macro-keyword-expected-exception-arguments _%e137782%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e137782%_ '())))))
            (if (macro-keyword-expected-exception? _%exn137780%_)
                (macro-keyword-expected-exception-arguments _%exn137780%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn137780%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn137774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137774%_))
            (let ((_%e137777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137774%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e137777%_)
                  (macro-keyword-expected-exception-procedure _%e137777%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e137777%_ '())))))
            (if (macro-keyword-expected-exception? _%exn137774%_)
                (macro-keyword-expected-exception-procedure _%exn137774%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn137774%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn137770%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137770%_))
            (let ((_%e137772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137770%_ 'exception))))
              (macro-length-mismatch-exception? _%e137772%_))
            (macro-length-mismatch-exception? _%exn137770%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn137766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137766%_))
            (let ((_%e137768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137766%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137768%_)
                  (macro-length-mismatch-exception-arg-id _%e137768%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e137768%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137766%_)
                (macro-length-mismatch-exception-arg-id _%exn137766%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn137766%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn137762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137762%_))
            (let ((_%e137764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137762%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137764%_)
                  (macro-length-mismatch-exception-arguments _%e137764%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e137764%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137762%_)
                (macro-length-mismatch-exception-arguments _%exn137762%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn137762%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn137756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137756%_))
            (let ((_%e137759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137756%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137759%_)
                  (macro-length-mismatch-exception-procedure _%e137759%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e137759%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137756%_)
                (macro-length-mismatch-exception-procedure _%exn137756%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn137756%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn137752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137752%_))
            (let ((_%e137754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137752%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e137754%_))
            (macro-mailbox-receive-timeout-exception? _%exn137752%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn137748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137748%_))
            (let ((_%e137750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137748%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e137750%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e137750%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e137750%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn137748%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn137748%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn137748%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn137742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137742%_))
            (let ((_%e137745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137742%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e137745%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e137745%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e137745%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn137742%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn137742%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn137742%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn137738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137738%_))
            (let ((_%e137740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137738%_ 'exception))))
              (macro-module-not-found-exception? _%e137740%_))
            (macro-module-not-found-exception? _%exn137738%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn137734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137734%_))
            (let ((_%e137736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137734%_ 'exception))))
              (if (macro-module-not-found-exception? _%e137736%_)
                  (macro-module-not-found-exception-arguments _%e137736%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e137736%_ '())))))
            (if (macro-module-not-found-exception? _%exn137734%_)
                (macro-module-not-found-exception-arguments _%exn137734%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn137734%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn137728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137728%_))
            (let ((_%e137731%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137728%_ 'exception))))
              (if (macro-module-not-found-exception? _%e137731%_)
                  (macro-module-not-found-exception-procedure _%e137731%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e137731%_ '())))))
            (if (macro-module-not-found-exception? _%exn137728%_)
                (macro-module-not-found-exception-procedure _%exn137728%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn137728%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn137722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137722%_))
            (let ((_%e137725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137722%_ 'exception))))
              (macro-multiple-c-return-exception? _%e137725%_))
            (macro-multiple-c-return-exception? _%exn137722%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn137718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137718%_))
            (let ((_%e137720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137718%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e137720%_))
            (macro-no-such-file-or-directory-exception? _%exn137718%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn137714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137714%_))
            (let ((_%e137716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137714%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e137716%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e137716%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e137716%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn137714%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn137714%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn137714%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn137708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137708%_))
            (let ((_%e137711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137708%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e137711%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e137711%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e137711%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn137708%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn137708%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn137708%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn137704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137704%_))
            (let ((_%e137706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137704%_ 'exception))))
              (macro-noncontinuable-exception? _%e137706%_))
            (macro-noncontinuable-exception? _%exn137704%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn137698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137698%_))
            (let ((_%e137701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137698%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e137701%_)
                  (macro-noncontinuable-exception-reason _%e137701%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e137701%_ '())))))
            (if (macro-noncontinuable-exception? _%exn137698%_)
                (macro-noncontinuable-exception-reason _%exn137698%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn137698%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn137694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137694%_))
            (let ((_%e137696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137694%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e137696%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn137694%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn137690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137690%_))
            (let ((_%e137692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137690%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e137692%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e137692%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e137692%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn137690%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn137690%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn137690%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn137684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137684%_))
            (let ((_%e137687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137684%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e137687%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e137687%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e137687%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn137684%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn137684%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn137684%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn137680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137680%_))
            (let ((_%e137682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137680%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e137682%_))
            (macro-nonprocedure-operator-exception? _%exn137680%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn137676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137676%_))
            (let ((_%e137678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137676%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137678%_)
                  (macro-nonprocedure-operator-exception-arguments _%e137678%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e137678%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137676%_)
                (macro-nonprocedure-operator-exception-arguments _%exn137676%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn137676%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn137672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137672%_))
            (let ((_%e137674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137672%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137674%_)
                  (macro-nonprocedure-operator-exception-code _%e137674%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e137674%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137672%_)
                (macro-nonprocedure-operator-exception-code _%exn137672%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn137672%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn137668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137668%_))
            (let ((_%e137670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137668%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137670%_)
                  (macro-nonprocedure-operator-exception-operator _%e137670%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e137670%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137668%_)
                (macro-nonprocedure-operator-exception-operator _%exn137668%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn137668%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn137662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137662%_))
            (let ((_%e137665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137662%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137665%_)
                  (macro-nonprocedure-operator-exception-rte _%e137665%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e137665%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137662%_)
                (macro-nonprocedure-operator-exception-rte _%exn137662%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn137662%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn137658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137658%_))
            (let ((_%e137660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137658%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e137660%_))
            (macro-not-in-compilation-context-exception? _%exn137658%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn137654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137654%_))
            (let ((_%e137656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137654%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e137656%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e137656%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e137656%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn137654%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn137654%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn137654%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn137648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137648%_))
            (let ((_%e137651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137648%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e137651%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e137651%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e137651%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn137648%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn137648%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn137648%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn137644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137644%_))
            (let ((_%e137646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137644%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e137646%_))
            (macro-number-of-arguments-limit-exception? _%exn137644%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn137640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137640%_))
            (let ((_%e137642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137640%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e137642%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e137642%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e137642%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn137640%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn137640%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn137640%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn137634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137634%_))
            (let ((_%e137637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137634%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e137637%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e137637%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e137637%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn137634%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn137634%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn137634%_ '())))))))
    (define os-exception?
      (lambda (_%exn137630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137630%_))
            (let ((_%e137632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137630%_ 'exception))))
              (macro-os-exception? _%e137632%_))
            (macro-os-exception? _%exn137630%_))))
    (define os-exception-arguments
      (lambda (_%exn137626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137626%_))
            (let ((_%e137628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137626%_ 'exception))))
              (if (macro-os-exception? _%e137628%_)
                  (macro-os-exception-arguments _%e137628%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e137628%_ '())))))
            (if (macro-os-exception? _%exn137626%_)
                (macro-os-exception-arguments _%exn137626%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn137626%_ '())))))))
    (define os-exception-code
      (lambda (_%exn137622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137622%_))
            (let ((_%e137624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137622%_ 'exception))))
              (if (macro-os-exception? _%e137624%_)
                  (macro-os-exception-code _%e137624%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e137624%_ '())))))
            (if (macro-os-exception? _%exn137622%_)
                (macro-os-exception-code _%exn137622%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn137622%_ '())))))))
    (define os-exception-message
      (lambda (_%exn137618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137618%_))
            (let ((_%e137620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137618%_ 'exception))))
              (if (macro-os-exception? _%e137620%_)
                  (macro-os-exception-message _%e137620%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e137620%_ '())))))
            (if (macro-os-exception? _%exn137618%_)
                (macro-os-exception-message _%exn137618%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn137618%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn137612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137612%_))
            (let ((_%e137615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137612%_ 'exception))))
              (if (macro-os-exception? _%e137615%_)
                  (macro-os-exception-procedure _%e137615%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e137615%_ '())))))
            (if (macro-os-exception? _%exn137612%_)
                (macro-os-exception-procedure _%exn137612%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn137612%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn137608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137608%_))
            (let ((_%e137610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137608%_ 'exception))))
              (macro-permission-denied-exception? _%e137610%_))
            (macro-permission-denied-exception? _%exn137608%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn137604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137604%_))
            (let ((_%e137606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137604%_ 'exception))))
              (if (macro-permission-denied-exception? _%e137606%_)
                  (macro-permission-denied-exception-arguments _%e137606%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e137606%_ '())))))
            (if (macro-permission-denied-exception? _%exn137604%_)
                (macro-permission-denied-exception-arguments _%exn137604%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn137604%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn137598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137598%_))
            (let ((_%e137601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137598%_ 'exception))))
              (if (macro-permission-denied-exception? _%e137601%_)
                  (macro-permission-denied-exception-procedure _%e137601%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e137601%_ '())))))
            (if (macro-permission-denied-exception? _%exn137598%_)
                (macro-permission-denied-exception-procedure _%exn137598%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn137598%_ '())))))))
    (define range-exception?
      (lambda (_%exn137594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137594%_))
            (let ((_%e137596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137594%_ 'exception))))
              (macro-range-exception? _%e137596%_))
            (macro-range-exception? _%exn137594%_))))
    (define range-exception-arg-id
      (lambda (_%exn137590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137590%_))
            (let ((_%e137592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137590%_ 'exception))))
              (if (macro-range-exception? _%e137592%_)
                  (macro-range-exception-arg-id _%e137592%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e137592%_ '())))))
            (if (macro-range-exception? _%exn137590%_)
                (macro-range-exception-arg-id _%exn137590%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn137590%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn137586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137586%_))
            (let ((_%e137588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137586%_ 'exception))))
              (if (macro-range-exception? _%e137588%_)
                  (macro-range-exception-arguments _%e137588%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e137588%_ '())))))
            (if (macro-range-exception? _%exn137586%_)
                (macro-range-exception-arguments _%exn137586%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn137586%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn137580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137580%_))
            (let ((_%e137583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137580%_ 'exception))))
              (if (macro-range-exception? _%e137583%_)
                  (macro-range-exception-procedure _%e137583%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e137583%_ '())))))
            (if (macro-range-exception? _%exn137580%_)
                (macro-range-exception-procedure _%exn137580%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn137580%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn137576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137576%_))
            (let ((_%e137578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137576%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e137578%_))
            (macro-rpc-remote-error-exception? _%exn137576%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn137572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137572%_))
            (let ((_%e137574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137572%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137574%_)
                  (macro-rpc-remote-error-exception-arguments _%e137574%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e137574%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137572%_)
                (macro-rpc-remote-error-exception-arguments _%exn137572%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn137572%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn137568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137568%_))
            (let ((_%e137570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137568%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137570%_)
                  (macro-rpc-remote-error-exception-message _%e137570%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e137570%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137568%_)
                (macro-rpc-remote-error-exception-message _%exn137568%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn137568%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn137562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137562%_))
            (let ((_%e137565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137562%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137565%_)
                  (macro-rpc-remote-error-exception-procedure _%e137565%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e137565%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137562%_)
                (macro-rpc-remote-error-exception-procedure _%exn137562%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn137562%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn137558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137558%_))
            (let ((_%e137560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137558%_ 'exception))))
              (macro-scheduler-exception? _%e137560%_))
            (macro-scheduler-exception? _%exn137558%_))))
    (define scheduler-exception-reason
      (lambda (_%exn137552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137552%_))
            (let ((_%e137555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137552%_ 'exception))))
              (if (macro-scheduler-exception? _%e137555%_)
                  (macro-scheduler-exception-reason _%e137555%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e137555%_ '())))))
            (if (macro-scheduler-exception? _%exn137552%_)
                (macro-scheduler-exception-reason _%exn137552%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn137552%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn137548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137548%_))
            (let ((_%e137550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137548%_ 'exception))))
              (macro-sfun-conversion-exception? _%e137550%_))
            (macro-sfun-conversion-exception? _%exn137548%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn137544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137544%_))
            (let ((_%e137546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137544%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137546%_)
                  (macro-sfun-conversion-exception-arguments _%e137546%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e137546%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137544%_)
                (macro-sfun-conversion-exception-arguments _%exn137544%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn137544%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn137540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137540%_))
            (let ((_%e137542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137540%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137542%_)
                  (macro-sfun-conversion-exception-code _%e137542%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e137542%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137540%_)
                (macro-sfun-conversion-exception-code _%exn137540%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn137540%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn137536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137536%_))
            (let ((_%e137538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137536%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137538%_)
                  (macro-sfun-conversion-exception-message _%e137538%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e137538%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137536%_)
                (macro-sfun-conversion-exception-message _%exn137536%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn137536%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn137530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137530%_))
            (let ((_%e137533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137530%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137533%_)
                  (macro-sfun-conversion-exception-procedure _%e137533%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e137533%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137530%_)
                (macro-sfun-conversion-exception-procedure _%exn137530%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn137530%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn137524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137524%_))
            (let ((_%e137527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137524%_ 'exception))))
              (macro-stack-overflow-exception? _%e137527%_))
            (macro-stack-overflow-exception? _%exn137524%_))))
    (define started-thread-exception?
      (lambda (_%exn137520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137520%_))
            (let ((_%e137522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137520%_ 'exception))))
              (macro-started-thread-exception? _%e137522%_))
            (macro-started-thread-exception? _%exn137520%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn137516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137516%_))
            (let ((_%e137518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137516%_ 'exception))))
              (if (macro-started-thread-exception? _%e137518%_)
                  (macro-started-thread-exception-arguments _%e137518%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e137518%_ '())))))
            (if (macro-started-thread-exception? _%exn137516%_)
                (macro-started-thread-exception-arguments _%exn137516%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn137516%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn137510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137510%_))
            (let ((_%e137513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137510%_ 'exception))))
              (if (macro-started-thread-exception? _%e137513%_)
                  (macro-started-thread-exception-procedure _%e137513%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e137513%_ '())))))
            (if (macro-started-thread-exception? _%exn137510%_)
                (macro-started-thread-exception-procedure _%exn137510%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn137510%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn137506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137506%_))
            (let ((_%e137508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137506%_ 'exception))))
              (macro-terminated-thread-exception? _%e137508%_))
            (macro-terminated-thread-exception? _%exn137506%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn137502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137502%_))
            (let ((_%e137504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137502%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e137504%_)
                  (macro-terminated-thread-exception-arguments _%e137504%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e137504%_ '())))))
            (if (macro-terminated-thread-exception? _%exn137502%_)
                (macro-terminated-thread-exception-arguments _%exn137502%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn137502%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn137496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137496%_))
            (let ((_%e137499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137496%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e137499%_)
                  (macro-terminated-thread-exception-procedure _%e137499%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e137499%_ '())))))
            (if (macro-terminated-thread-exception? _%exn137496%_)
                (macro-terminated-thread-exception-procedure _%exn137496%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn137496%_ '())))))))
    (define type-exception?
      (lambda (_%exn137492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137492%_))
            (let ((_%e137494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137492%_ 'exception))))
              (macro-type-exception? _%e137494%_))
            (macro-type-exception? _%exn137492%_))))
    (define type-exception-arg-id
      (lambda (_%exn137488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137488%_))
            (let ((_%e137490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137488%_ 'exception))))
              (if (macro-type-exception? _%e137490%_)
                  (macro-type-exception-arg-id _%e137490%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e137490%_ '())))))
            (if (macro-type-exception? _%exn137488%_)
                (macro-type-exception-arg-id _%exn137488%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn137488%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn137484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137484%_))
            (let ((_%e137486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137484%_ 'exception))))
              (if (macro-type-exception? _%e137486%_)
                  (macro-type-exception-arguments _%e137486%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e137486%_ '())))))
            (if (macro-type-exception? _%exn137484%_)
                (macro-type-exception-arguments _%exn137484%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn137484%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn137480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137480%_))
            (let ((_%e137482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137480%_ 'exception))))
              (if (macro-type-exception? _%e137482%_)
                  (macro-type-exception-procedure _%e137482%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e137482%_ '())))))
            (if (macro-type-exception? _%exn137480%_)
                (macro-type-exception-procedure _%exn137480%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn137480%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn137474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137474%_))
            (let ((_%e137477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137474%_ 'exception))))
              (if (macro-type-exception? _%e137477%_)
                  (macro-type-exception-type-id _%e137477%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e137477%_ '())))))
            (if (macro-type-exception? _%exn137474%_)
                (macro-type-exception-type-id _%exn137474%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn137474%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn137470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137470%_))
            (let ((_%e137472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137470%_ 'exception))))
              (macro-unbound-global-exception? _%e137472%_))
            (macro-unbound-global-exception? _%exn137470%_))))
    (define unbound-global-exception-code
      (lambda (_%exn137466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137466%_))
            (let ((_%e137468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137466%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137468%_)
                  (macro-unbound-global-exception-code _%e137468%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e137468%_ '())))))
            (if (macro-unbound-global-exception? _%exn137466%_)
                (macro-unbound-global-exception-code _%exn137466%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn137466%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn137462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137462%_))
            (let ((_%e137464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137462%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137464%_)
                  (macro-unbound-global-exception-rte _%e137464%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e137464%_ '())))))
            (if (macro-unbound-global-exception? _%exn137462%_)
                (macro-unbound-global-exception-rte _%exn137462%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn137462%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn137456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137456%_))
            (let ((_%e137459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137456%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137459%_)
                  (macro-unbound-global-exception-variable _%e137459%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e137459%_ '())))))
            (if (macro-unbound-global-exception? _%exn137456%_)
                (macro-unbound-global-exception-variable _%exn137456%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn137456%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn137452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137452%_))
            (let ((_%e137454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137452%_ 'exception))))
              (macro-unbound-key-exception? _%e137454%_))
            (macro-unbound-key-exception? _%exn137452%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn137448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137448%_))
            (let ((_%e137450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137448%_ 'exception))))
              (if (macro-unbound-key-exception? _%e137450%_)
                  (macro-unbound-key-exception-arguments _%e137450%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e137450%_ '())))))
            (if (macro-unbound-key-exception? _%exn137448%_)
                (macro-unbound-key-exception-arguments _%exn137448%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn137448%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn137442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137442%_))
            (let ((_%e137445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137442%_ 'exception))))
              (if (macro-unbound-key-exception? _%e137445%_)
                  (macro-unbound-key-exception-procedure _%e137445%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e137445%_ '())))))
            (if (macro-unbound-key-exception? _%exn137442%_)
                (macro-unbound-key-exception-procedure _%exn137442%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn137442%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn137438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137438%_))
            (let ((_%e137440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137438%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e137440%_))
            (macro-unbound-os-environment-variable-exception? _%exn137438%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn137434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137434%_))
            (let ((_%e137436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137434%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e137436%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e137436%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e137436%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn137434%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn137434%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn137434%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn137428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137428%_))
            (let ((_%e137431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137428%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e137431%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e137431%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e137431%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn137428%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn137428%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn137428%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn137424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137424%_))
            (let ((_%e137426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137424%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e137426%_))
            (macro-unbound-serial-number-exception? _%exn137424%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn137420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137420%_))
            (let ((_%e137422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137420%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e137422%_)
                  (macro-unbound-serial-number-exception-arguments _%e137422%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e137422%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn137420%_)
                (macro-unbound-serial-number-exception-arguments _%exn137420%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn137420%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn137414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137414%_))
            (let ((_%e137417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137414%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e137417%_)
                  (macro-unbound-serial-number-exception-procedure _%e137417%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e137417%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn137414%_)
                (macro-unbound-serial-number-exception-procedure _%exn137414%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn137414%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn137410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137410%_))
            (let ((_%e137412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137410%_ 'exception))))
              (macro-uncaught-exception? _%e137412%_))
            (macro-uncaught-exception? _%exn137410%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn137406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137406%_))
            (let ((_%e137408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137406%_ 'exception))))
              (if (macro-uncaught-exception? _%e137408%_)
                  (macro-uncaught-exception-arguments _%e137408%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e137408%_ '())))))
            (if (macro-uncaught-exception? _%exn137406%_)
                (macro-uncaught-exception-arguments _%exn137406%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn137406%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn137402%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137402%_))
            (let ((_%e137404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137402%_ 'exception))))
              (if (macro-uncaught-exception? _%e137404%_)
                  (macro-uncaught-exception-procedure _%e137404%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e137404%_ '())))))
            (if (macro-uncaught-exception? _%exn137402%_)
                (macro-uncaught-exception-procedure _%exn137402%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn137402%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn137396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137396%_))
            (let ((_%e137399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137396%_ 'exception))))
              (if (macro-uncaught-exception? _%e137399%_)
                  (macro-uncaught-exception-reason _%e137399%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e137399%_ '())))))
            (if (macro-uncaught-exception? _%exn137396%_)
                (macro-uncaught-exception-reason _%exn137396%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn137396%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn137392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137392%_))
            (let ((_%e137394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137392%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e137394%_))
            (macro-uninitialized-thread-exception? _%exn137392%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn137388%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137388%_))
            (let ((_%e137390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137388%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e137390%_)
                  (macro-uninitialized-thread-exception-arguments _%e137390%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e137390%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn137388%_)
                (macro-uninitialized-thread-exception-arguments _%exn137388%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn137388%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn137382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137382%_))
            (let ((_%e137385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137382%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e137385%_)
                  (macro-uninitialized-thread-exception-procedure _%e137385%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e137385%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn137382%_)
                (macro-uninitialized-thread-exception-procedure _%exn137382%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn137382%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn137378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137378%_))
            (let ((_%e137380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137378%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e137380%_))
            (macro-unknown-keyword-argument-exception? _%exn137378%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn137374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137374%_))
            (let ((_%e137376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137374%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e137376%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e137376%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e137376%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn137374%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn137374%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn137374%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn137368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137368%_))
            (let ((_%e137371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137368%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e137371%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e137371%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e137371%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn137368%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn137368%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn137368%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn137364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137364%_))
            (let ((_%e137366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137364%_ 'exception))))
              (macro-unterminated-process-exception? _%e137366%_))
            (macro-unterminated-process-exception? _%exn137364%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn137360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137360%_))
            (let ((_%e137362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137360%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e137362%_)
                  (macro-unterminated-process-exception-arguments _%e137362%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e137362%_ '())))))
            (if (macro-unterminated-process-exception? _%exn137360%_)
                (macro-unterminated-process-exception-arguments _%exn137360%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn137360%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn137354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137354%_))
            (let ((_%e137357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137354%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e137357%_)
                  (macro-unterminated-process-exception-procedure _%e137357%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e137357%_ '())))))
            (if (macro-unterminated-process-exception? _%exn137354%_)
                (macro-unterminated-process-exception-procedure _%exn137354%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn137354%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn137350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137350%_))
            (let ((_%e137352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137350%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e137352%_))
            (macro-wrong-number-of-arguments-exception? _%exn137350%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn137346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137346%_))
            (let ((_%e137348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137346%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e137348%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e137348%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e137348%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn137346%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn137346%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn137346%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn137340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137340%_))
            (let ((_%e137343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137340%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e137343%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e137343%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e137343%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn137340%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn137340%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn137340%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn137336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137336%_))
            (let ((_%e137338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137336%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e137338%_))
            (macro-wrong-number-of-values-exception? _%exn137336%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn137332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137332%_))
            (let ((_%e137334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137332%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137334%_)
                  (macro-wrong-number-of-values-exception-code _%e137334%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e137334%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137332%_)
                (macro-wrong-number-of-values-exception-code _%exn137332%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn137332%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn137328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137328%_))
            (let ((_%e137330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137328%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137330%_)
                  (macro-wrong-number-of-values-exception-rte _%e137330%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e137330%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137328%_)
                (macro-wrong-number-of-values-exception-rte _%exn137328%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn137328%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn137322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137322%_))
            (let ((_%e137325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137322%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137325%_)
                  (macro-wrong-number-of-values-exception-vals _%e137325%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e137325%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137322%_)
                (macro-wrong-number-of-values-exception-vals _%exn137322%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn137322%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn137316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137316%_))
            (let ((_%e137319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137316%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e137319%_))
            (macro-wrong-processor-c-return-exception? _%exn137316%_))))))
