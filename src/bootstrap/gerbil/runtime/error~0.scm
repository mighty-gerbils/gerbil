(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1781119038)
  (begin
    (define Exception::t
      (make-class-type 'Exception::t 'Exception (list) '() '() '#f))
    (define Exception? (make-class-predicate Exception::t))
    (define make-Exception
      (lambda _%$args124034%_
        (apply make-instance Exception::t _%$args124034%_)))
    (define StackTrace::t
      (make-class-type
       'StackTrace::t
       'StackTrace
       (list)
       '(continuation)
       '((transparent: . #t))
       '#f))
    (define StackTrace? (make-class-predicate StackTrace::t))
    (define make-StackTrace
      (lambda _%$args124031%_
        (apply make-instance StackTrace::t _%$args124031%_)))
    (define StackTrace-continuation
      (make-class-slot-accessor StackTrace::t 'continuation))
    (define StackTrace-continuation-set!
      (make-class-slot-mutator StackTrace::t 'continuation))
    (define &StackTrace-continuation
      (make-class-slot-unchecked-accessor StackTrace::t 'continuation))
    (define &StackTrace-continuation-set!
      (make-class-slot-unchecked-mutator StackTrace::t 'continuation))
    (define Error::t
      (make-class-type
       'Error::t
       'Error
       (list StackTrace::t Exception::t)
       '(message irritants where)
       '((transparent: . #t))
       ':init!))
    (define Error? (make-class-predicate Error::t))
    (define make-Error
      (lambda _%$args124028%_ (apply make-instance Error::t _%$args124028%_)))
    (define Error-message (make-class-slot-accessor Error::t 'message))
    (define Error-irritants (make-class-slot-accessor Error::t 'irritants))
    (define Error-where (make-class-slot-accessor Error::t 'where))
    (define Error-continuation
      (make-class-slot-accessor Error::t 'continuation))
    (define Error-message-set! (make-class-slot-mutator Error::t 'message))
    (define Error-irritants-set! (make-class-slot-mutator Error::t 'irritants))
    (define Error-where-set! (make-class-slot-mutator Error::t 'where))
    (define Error-continuation-set!
      (make-class-slot-mutator Error::t 'continuation))
    (define &Error-message
      (make-class-slot-unchecked-accessor Error::t 'message))
    (define &Error-irritants
      (make-class-slot-unchecked-accessor Error::t 'irritants))
    (define &Error-where (make-class-slot-unchecked-accessor Error::t 'where))
    (define &Error-continuation
      (make-class-slot-unchecked-accessor Error::t 'continuation))
    (define &Error-message-set!
      (make-class-slot-unchecked-mutator Error::t 'message))
    (define &Error-irritants-set!
      (make-class-slot-unchecked-mutator Error::t 'irritants))
    (define &Error-where-set!
      (make-class-slot-unchecked-mutator Error::t 'where))
    (define &Error-continuation-set!
      (make-class-slot-unchecked-mutator Error::t 'continuation))
    (define ContractViolation::t
      (make-class-type
       'ContractViolation::t
       'ContractViolation
       (list Error::t)
       '()
       '()
       '#f))
    (define ContractViolation? (make-class-predicate ContractViolation::t))
    (define make-ContractViolation
      (lambda _%$args124025%_
        (apply make-instance ContractViolation::t _%$args124025%_)))
    (define ContractViolation-message
      (make-class-slot-accessor ContractViolation::t 'message))
    (define ContractViolation-irritants
      (make-class-slot-accessor ContractViolation::t 'irritants))
    (define ContractViolation-where
      (make-class-slot-accessor ContractViolation::t 'where))
    (define ContractViolation-continuation
      (make-class-slot-accessor ContractViolation::t 'continuation))
    (define ContractViolation-message-set!
      (make-class-slot-mutator ContractViolation::t 'message))
    (define ContractViolation-irritants-set!
      (make-class-slot-mutator ContractViolation::t 'irritants))
    (define ContractViolation-where-set!
      (make-class-slot-mutator ContractViolation::t 'where))
    (define ContractViolation-continuation-set!
      (make-class-slot-mutator ContractViolation::t 'continuation))
    (define &ContractViolation-message
      (make-class-slot-unchecked-accessor ContractViolation::t 'message))
    (define &ContractViolation-irritants
      (make-class-slot-unchecked-accessor ContractViolation::t 'irritants))
    (define &ContractViolation-where
      (make-class-slot-unchecked-accessor ContractViolation::t 'where))
    (define &ContractViolation-continuation
      (make-class-slot-unchecked-accessor ContractViolation::t 'continuation))
    (define &ContractViolation-message-set!
      (make-class-slot-unchecked-mutator ContractViolation::t 'message))
    (define &ContractViolation-irritants-set!
      (make-class-slot-unchecked-mutator ContractViolation::t 'irritants))
    (define &ContractViolation-where-set!
      (make-class-slot-unchecked-mutator ContractViolation::t 'where))
    (define &ContractViolation-continuation-set!
      (make-class-slot-unchecked-mutator ContractViolation::t 'continuation))
    (define RuntimeException::t
      (make-class-type
       'RuntimeException::t
       'RuntimeException
       (list StackTrace::t Exception::t)
       '(exception)
       '((transparent: . #t))
       '#f))
    (define RuntimeException? (make-class-predicate RuntimeException::t))
    (define make-RuntimeException
      (lambda _%$args124022%_
        (apply make-instance RuntimeException::t _%$args124022%_)))
    (define RuntimeException-exception
      (make-class-slot-accessor RuntimeException::t 'exception))
    (define RuntimeException-continuation
      (make-class-slot-accessor RuntimeException::t 'continuation))
    (define RuntimeException-exception-set!
      (make-class-slot-mutator RuntimeException::t 'exception))
    (define RuntimeException-continuation-set!
      (make-class-slot-mutator RuntimeException::t 'continuation))
    (define &RuntimeException-exception
      (make-class-slot-unchecked-accessor RuntimeException::t 'exception))
    (define &RuntimeException-continuation
      (make-class-slot-unchecked-accessor RuntimeException::t 'continuation))
    (define &RuntimeException-exception-set!
      (make-class-slot-unchecked-mutator RuntimeException::t 'exception))
    (define &RuntimeException-continuation-set!
      (make-class-slot-unchecked-mutator RuntimeException::t 'continuation))
    (define gerbil-exception-handler-hook
      (lambda (_%exn124017%_ _%continue124018%_)
        (let ((_%exn124020%_ (wrap-runtime-exception _%exn124017%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn124020%_ _%continue124018%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn124013%_)
        (if (StackTrace? _%exn124013%_)
            (if (&StackTrace-continuation _%exn124013%_)
                '#!void
                (let ((__tmp124036
                       (lambda (_%cont124015%_)
                         (unchecked-slot-set!
                          _%exn124013%_
                          'continuation
                          _%cont124015%_))))
                  (declare (not safe))
                  (##continuation-capture __tmp124036)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn124013%_))))
    (define error
      (lambda (_%message124010%_ . _%irritants124011%_)
        (raise (make-Error
                _%message124010%_
                'irritants:
                _%irritants124011%_))))
    (define __raise-contract-violation-error
      (let ((_%$%kw-lambda123978124004%_
             (let ((_%$%kw-lambda-main123979123997%_
                    (lambda (_%@@keywords123985%_
                             _%$%ctx123980123986%_
                             _%$%contract-expr123981123987%_
                             _%$%value123982123988%_
                             _%message123989%_)
                      (let* ((_%ctx123991%_
                              (if (eq? _%$%ctx123980123986%_ absent-value)
                                  '#f
                                  _%$%ctx123980123986%_))
                             (_%contract-expr123993%_
                              (if (eq? _%$%contract-expr123981123987%_
                                       absent-value)
                                  '#f
                                  _%$%contract-expr123981123987%_))
                             (_%value123995%_
                              (if (eq? _%$%value123982123988%_ absent-value)
                                  '#f
                                  _%$%value123982123988%_)))
                        (raise (make-ContractViolation
                                _%message123989%_
                                'where:
                                _%ctx123991%_
                                'irritants:
                                (cons 'contract:
                                      (cons _%contract-expr123993%_
                                            (cons 'value:
                                                  (cons _%value123995%_
                                                        '()))))))))))
               (lambda (_%@@keywords124000%_ . _%args124001%_)
                 (apply _%$%kw-lambda-main123979123997%_
                        _%@@keywords124000%_
                        (symbolic-table-ref
                         _%@@keywords124000%_
                         'context:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords124000%_
                         'contract:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords124000%_
                         'value:
                         absent-value)
                        _%args124001%_)))))
        (lambda _%$%args123983124007%_
          (apply keyword-dispatch
                 '#(context: #f value: contract:)
                 _%$%kw-lambda123978124004%_
                 _%$%args123983124007%_))))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler123954%_ _%thunk123955%_)
        (let* ((_%handler123958%_ _%handler123954%_)
               (_%thunk123966%_ _%thunk123955%_)
               (__tmp124037
                (lambda (_%exn123975%_)
                  (let ((_%exn123977%_ (wrap-runtime-exception _%exn123975%_)))
                    (_%handler123958%_ _%exn123977%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp124037 _%thunk123966%_))))
    (define with-exception-handler
      (lambda (_%handler123929%_ _%thunk123930%_)
        (if (procedure? _%handler123929%_)
            (let ((_%handler123934%_ _%handler123929%_))
              (if (procedure? _%thunk123930%_)
                  (let ((_%thunk123944%_ _%thunk123930%_))
                    (__with-exception-handler
                     _%handler123934%_
                     _%thunk123944%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk123930%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler123929%_)
              (void)))))
    (define __with-catch
      (lambda (_%handler123871%_ _%thunk123872%_)
        (let* ((_%handler123875%_ _%handler123871%_)
               (_%thunk123883%_ _%thunk123872%_)
               (__tmp124038
                (lambda (_%cont123892%_)
                  (let* ((_%handler123896%_
                          (lambda (_%exn123894%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont123892%_
                               _%handler123875%_
                               _%exn123894%_))))
                         (_%thunk123899%_ _%thunk123883%_))
                    (if (procedure? _%handler123896%_)
                        (let ((_%handler123904%_ _%handler123896%_))
                          (if (procedure? _%thunk123899%_)
                              (let ((_%thunk123919%_ _%thunk123899%_))
                                (__with-exception-handler
                                 _%handler123904%_
                                 _%thunk123919%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/error
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%thunk123899%_)
                                (void))))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/error
                           'contract:
                           'procedure?
                           'value:
                           _%handler123896%_)
                          (void)))))))
          (declare (not safe))
          (##continuation-capture __tmp124038))))
    (define with-catch
      (lambda (_%handler123846%_ _%thunk123847%_)
        (if (procedure? _%handler123846%_)
            (let ((_%handler123851%_ _%handler123846%_))
              (if (procedure? _%thunk123847%_)
                  (let ((_%thunk123861%_ _%thunk123847%_))
                    (__with-catch _%handler123851%_ _%thunk123861%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk123847%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler123846%_)
              (void)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn123833%_)
        (if (or (heap-overflow-exception? _%exn123833%_)
                (stack-overflow-exception? _%exn123833%_))
            _%exn123833%_
            (if (Exception? _%exn123833%_)
                _%exn123833%_
                (if (macro-exception? _%exn123833%_)
                    (let ((_%rte123841%_
                           (make-RuntimeException 'exception: _%exn123833%_)))
                      (let ((__tmp124039
                             (lambda (_%cont123843%_)
                               (unchecked-slot-set!
                                _%rte123841%_
                                'continuation
                                (let ()
                                  (declare (not safe))
                                  (##continuation-next _%cont123843%_))))))
                        (declare (not safe))
                        (##continuation-capture __tmp124039))
                      _%rte123841%_)
                    _%exn123833%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj123828%_)
        (let ((_%$e123830%_ (Error? _%obj123828%_)))
          (if _%$e123830%_ _%$e123830%_ (error-exception? _%obj123828%_)))))
    (define error-message
      (lambda (_%obj123787%_)
        (let ((_%$e123823%_
               (let* ((_%obj123789%_ _%obj123787%_)
                      (_%slot123792%_ 'message)
                      (_%E123795%_ false))
                 (if (symbol? _%slot123792%_)
                     (let ((_%slot123800%_ _%slot123792%_))
                       (if (procedure? _%E123795%_)
                           (let ((_%E123813%_ _%E123795%_))
                             (__slot-ref
                              _%obj123789%_
                              _%slot123800%_
                              _%E123813%_))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/error
                              'contract:
                              'procedure?
                              'value:
                              _%E123795%_)
                             (void))))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/error
                        'contract:
                        'symbol?
                        'value:
                        _%slot123792%_)
                       (void))))))
          (if _%$e123823%_
              _%$e123823%_
              (if (error-exception? _%obj123787%_)
                  (error-exception-message _%obj123787%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj123782%_)
        (if (Error? _%obj123782%_)
            (&Error-irritants _%obj123782%_)
            (if (error-exception? _%obj123782%_)
                (error-exception-parameters _%obj123782%_)
                '#f))))
    (define error-trace
      (lambda (_%obj123780%_)
        (if (Error? _%obj123780%_) (&Error-where _%obj123780%_) '#f)))
    (define display-exception
      (let ((_%$%opt-lambda123739123770%_
             (lambda (_%e123741%_ _%port123742%_)
               (let ((_%$e123764%_
                      (let* ((_%obj123744%_ _%e123741%_)
                             (_%id123747%_ 'display-exception))
                        (if (symbol? _%id123747%_)
                            (let ((_%id123752%_ _%id123747%_))
                              (__method-ref _%obj123744%_ _%id123752%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/error
                               'contract:
                               'symbol?
                               'value:
                               _%id123747%_)
                              (void))))))
                 (if _%$e123764%_
                     ((lambda (_%f123767%_)
                        (_%f123767%_ _%e123741%_ _%port123742%_))
                      _%$e123764%_)
                     (let ()
                       (declare (not safe))
                       (##default-display-exception
                        _%e123741%_
                        _%port123742%_)))))))
        (lambda _g124040_
          (let ((_g124041_ (let () (declare (not safe)) (##length _g124040_))))
            (cond ((let () (declare (not safe)) (##fx= _g124041_ 1))
                   (apply (lambda (_%e123773%_)
                            (let ((_%port123775%_ (current-error-port)))
                              (_%$%opt-lambda123739123770%_
                               _%e123773%_
                               _%port123775%_)))
                          _g124040_))
                  ((let () (declare (not safe)) (##fx= _g124041_ 2))
                   (apply _%$%opt-lambda123739123770%_ _g124040_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    display-exception
                    _g124040_)))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self123719%_ _%message123720%_ . _%rest123721%_)
        (let* ((_%self123724%_ _%self123719%_)
               (_%message123738%_
                (if (string? _%message123720%_)
                    _%message123720%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g123733123735%_)
                       (display _%message123720%_ _%$%g123733123735%_))))))
          (&Error-message-set! _%self123724%_ _%message123738%_)
          (apply class-instance-init! _%self123724%_ _%rest123721%_))))
    (bind-method! Error::t ':init! Error:::init! '#f)
    (define ContractViolation:::init! Error:::init!)
    (bind-method! ContractViolation::t ':init! ContractViolation:::init! '#f)
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_%self123424%_ _%port123425%_)
        (let ((_%self123428%_ _%self123424%_))
          (let ((_%tmp-port123438%_ (open-output-string))
                (_%display-error-newline123439%_
                 (> (output-port-column _%port123425%_) '0)))
            (fix-port-width! _%tmp-port123438%_)
            (call-with-parameters
             (lambda ()
               (if _%display-error-newline123439%_ (newline) '#!void)
               (display '"*** ERROR IN ")
               (let ((_%$e123442%_ (&Error-where _%self123428%_)))
                 (if _%$e123442%_ (display _%$e123442%_) (display '"?")))
               (display*
                '" ["
                (let ((__tmp124042
                       (let ((_%obj123446%_ _%self123428%_))
                         (if (object? _%obj123446%_)
                             (let ((_%obj123451%_ _%obj123446%_))
                               (__object-class _%obj123451%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/error
                                'contract:
                                'object?
                                'value:
                                _%obj123446%_)
                               (void))))))
                  (declare (not safe))
                  (##type-name __tmp124042))
                '"]: ")
               (displayln (&Error-message _%self123428%_))
               (let ((_%irritants123466%_ (&Error-irritants _%self123428%_)))
                 (if (null? _%irritants123466%_)
                     '#!void
                     (begin
                       (display '"--- irritants: ")
                       (for-each
                        (lambda (_%obj123468%_)
                          (if (u8vector? _%obj123468%_)
                              (write (cons '<u8vector>
                                           (cons (u8vector-length
                                                  _%obj123468%_)
                                                 '())))
                              (write _%obj123468%_))
                          (write-char '#\space))
                        _%irritants123466%_)
                       (newline))))
               (if (dump-stack-trace?)
                   (let ((_%$%cont123469123471%_
                          (&Error-continuation _%self123428%_)))
                     (if _%$%cont123469123471%_
                         (let ((_%cont123473%_ _%$%cont123469123471%_))
                           (displayln '"--- continuation backtrace:")
                           (display-continuation-backtrace _%cont123473%_))
                         '#f))
                   '#!void))
             current-output-port
             _%tmp-port123438%_)
            (let ((__tmp124043 (get-output-string _%tmp-port123438%_)))
              (declare (not safe))
              (##write-string __tmp124043 _%port123425%_))))))
    (bind-method! Error::t 'display-exception Error::display-exception '#t)
    (define RuntimeException::display-exception
      (lambda (_%self123281%_ _%port123282%_)
        (let* ((_%self123285%_ _%self123281%_)
               (_%tmp-port123295%_ (open-output-string)))
          (fix-port-width! _%tmp-port123295%_)
          (let ((__tmp124044 (&RuntimeException-exception _%self123285%_)))
            (declare (not safe))
            (##default-display-exception __tmp124044 _%tmp-port123295%_))
          (if (dump-stack-trace?)
              (let ((_%$%cont123296123298%_
                     (&RuntimeException-continuation _%self123285%_)))
                (if _%$%cont123296123298%_
                    (let ((_%cont123300%_ _%$%cont123296123298%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port123295%_)
                      (newline _%tmp-port123295%_)
                      (display-continuation-backtrace
                       _%cont123300%_
                       _%tmp-port123295%_))
                    '#f))
              '#!void)
          (let ((__tmp124045 (get-output-string _%tmp-port123295%_)))
            (declare (not safe))
            (##write-string __tmp124045 _%port123282%_)))))
    (bind-method!
     RuntimeException::t
     'display-exception
     RuntimeException::display-exception
     '#f)
    (define fix-port-width!
      (lambda (_%port123153%_)
        (if (macro-character-port? _%port123153%_)
            (let ((_%old-width123155%_
                   (macro-character-port-output-width _%port123153%_)))
              (macro-character-port-output-width-set!
               _%port123153%_
               (lambda (_%port123157%_) '512))
              _%old-width123155%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port123150%_ _%old-width123151%_)
        (if (macro-character-port? _%port123150%_)
            (macro-character-port-output-width-set!
             _%port123150%_
             _%old-width123151%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e123148%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e123148%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn123142%_)
        (if (RuntimeException? _%exn123142%_)
            (let ((_%e123145%_ (&RuntimeException-exception _%exn123142%_)))
              (macro-abandoned-mutex-exception? _%e123145%_))
            (macro-abandoned-mutex-exception? _%exn123142%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn123138%_)
        (if (RuntimeException? _%exn123138%_)
            (let ((_%e123140%_ (&RuntimeException-exception _%exn123138%_)))
              (macro-cfun-conversion-exception? _%e123140%_))
            (macro-cfun-conversion-exception? _%exn123138%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn123134%_)
        (if (RuntimeException? _%exn123134%_)
            (let ((_%e123136%_ (&RuntimeException-exception _%exn123134%_)))
              (if (macro-cfun-conversion-exception? _%e123136%_)
                  (macro-cfun-conversion-exception-arguments _%e123136%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e123136%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn123134%_)
                (macro-cfun-conversion-exception-arguments _%exn123134%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn123134%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn123130%_)
        (if (RuntimeException? _%exn123130%_)
            (let ((_%e123132%_ (&RuntimeException-exception _%exn123130%_)))
              (if (macro-cfun-conversion-exception? _%e123132%_)
                  (macro-cfun-conversion-exception-code _%e123132%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e123132%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn123130%_)
                (macro-cfun-conversion-exception-code _%exn123130%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn123130%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn123126%_)
        (if (RuntimeException? _%exn123126%_)
            (let ((_%e123128%_ (&RuntimeException-exception _%exn123126%_)))
              (if (macro-cfun-conversion-exception? _%e123128%_)
                  (macro-cfun-conversion-exception-message _%e123128%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e123128%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn123126%_)
                (macro-cfun-conversion-exception-message _%exn123126%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn123126%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn123120%_)
        (if (RuntimeException? _%exn123120%_)
            (let ((_%e123123%_ (&RuntimeException-exception _%exn123120%_)))
              (if (macro-cfun-conversion-exception? _%e123123%_)
                  (macro-cfun-conversion-exception-procedure _%e123123%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e123123%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn123120%_)
                (macro-cfun-conversion-exception-procedure _%exn123120%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn123120%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn123116%_)
        (if (RuntimeException? _%exn123116%_)
            (let ((_%e123118%_ (&RuntimeException-exception _%exn123116%_)))
              (macro-datum-parsing-exception? _%e123118%_))
            (macro-datum-parsing-exception? _%exn123116%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn123112%_)
        (if (RuntimeException? _%exn123112%_)
            (let ((_%e123114%_ (&RuntimeException-exception _%exn123112%_)))
              (if (macro-datum-parsing-exception? _%e123114%_)
                  (macro-datum-parsing-exception-kind _%e123114%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e123114%_ '())))))
            (if (macro-datum-parsing-exception? _%exn123112%_)
                (macro-datum-parsing-exception-kind _%exn123112%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn123112%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn123108%_)
        (if (RuntimeException? _%exn123108%_)
            (let ((_%e123110%_ (&RuntimeException-exception _%exn123108%_)))
              (if (macro-datum-parsing-exception? _%e123110%_)
                  (macro-datum-parsing-exception-parameters _%e123110%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e123110%_ '())))))
            (if (macro-datum-parsing-exception? _%exn123108%_)
                (macro-datum-parsing-exception-parameters _%exn123108%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn123108%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn123102%_)
        (if (RuntimeException? _%exn123102%_)
            (let ((_%e123105%_ (&RuntimeException-exception _%exn123102%_)))
              (if (macro-datum-parsing-exception? _%e123105%_)
                  (macro-datum-parsing-exception-readenv _%e123105%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e123105%_ '())))))
            (if (macro-datum-parsing-exception? _%exn123102%_)
                (macro-datum-parsing-exception-readenv _%exn123102%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn123102%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn123096%_)
        (if (RuntimeException? _%exn123096%_)
            (let ((_%e123099%_ (&RuntimeException-exception _%exn123096%_)))
              (macro-deadlock-exception? _%e123099%_))
            (macro-deadlock-exception? _%exn123096%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn123092%_)
        (if (RuntimeException? _%exn123092%_)
            (let ((_%e123094%_ (&RuntimeException-exception _%exn123092%_)))
              (macro-divide-by-zero-exception? _%e123094%_))
            (macro-divide-by-zero-exception? _%exn123092%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn123088%_)
        (if (RuntimeException? _%exn123088%_)
            (let ((_%e123090%_ (&RuntimeException-exception _%exn123088%_)))
              (if (macro-divide-by-zero-exception? _%e123090%_)
                  (macro-divide-by-zero-exception-arguments _%e123090%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e123090%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn123088%_)
                (macro-divide-by-zero-exception-arguments _%exn123088%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn123088%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn123082%_)
        (if (RuntimeException? _%exn123082%_)
            (let ((_%e123085%_ (&RuntimeException-exception _%exn123082%_)))
              (if (macro-divide-by-zero-exception? _%e123085%_)
                  (macro-divide-by-zero-exception-procedure _%e123085%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e123085%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn123082%_)
                (macro-divide-by-zero-exception-procedure _%exn123082%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn123082%_ '())))))))
    (define error-exception?
      (lambda (_%exn123078%_)
        (if (RuntimeException? _%exn123078%_)
            (let ((_%e123080%_ (&RuntimeException-exception _%exn123078%_)))
              (macro-error-exception? _%e123080%_))
            (macro-error-exception? _%exn123078%_))))
    (define error-exception-message
      (lambda (_%exn123074%_)
        (if (RuntimeException? _%exn123074%_)
            (let ((_%e123076%_ (&RuntimeException-exception _%exn123074%_)))
              (if (macro-error-exception? _%e123076%_)
                  (macro-error-exception-message _%e123076%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e123076%_ '())))))
            (if (macro-error-exception? _%exn123074%_)
                (macro-error-exception-message _%exn123074%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn123074%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn123068%_)
        (if (RuntimeException? _%exn123068%_)
            (let ((_%e123071%_ (&RuntimeException-exception _%exn123068%_)))
              (if (macro-error-exception? _%e123071%_)
                  (macro-error-exception-parameters _%e123071%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e123071%_ '())))))
            (if (macro-error-exception? _%exn123068%_)
                (macro-error-exception-parameters _%exn123068%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn123068%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn123064%_)
        (if (RuntimeException? _%exn123064%_)
            (let ((_%e123066%_ (&RuntimeException-exception _%exn123064%_)))
              (macro-expression-parsing-exception? _%e123066%_))
            (macro-expression-parsing-exception? _%exn123064%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn123060%_)
        (if (RuntimeException? _%exn123060%_)
            (let ((_%e123062%_ (&RuntimeException-exception _%exn123060%_)))
              (if (macro-expression-parsing-exception? _%e123062%_)
                  (macro-expression-parsing-exception-kind _%e123062%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e123062%_ '())))))
            (if (macro-expression-parsing-exception? _%exn123060%_)
                (macro-expression-parsing-exception-kind _%exn123060%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn123060%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn123056%_)
        (if (RuntimeException? _%exn123056%_)
            (let ((_%e123058%_ (&RuntimeException-exception _%exn123056%_)))
              (if (macro-expression-parsing-exception? _%e123058%_)
                  (macro-expression-parsing-exception-parameters _%e123058%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e123058%_ '())))))
            (if (macro-expression-parsing-exception? _%exn123056%_)
                (macro-expression-parsing-exception-parameters _%exn123056%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn123056%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn123050%_)
        (if (RuntimeException? _%exn123050%_)
            (let ((_%e123053%_ (&RuntimeException-exception _%exn123050%_)))
              (if (macro-expression-parsing-exception? _%e123053%_)
                  (macro-expression-parsing-exception-source _%e123053%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e123053%_ '())))))
            (if (macro-expression-parsing-exception? _%exn123050%_)
                (macro-expression-parsing-exception-source _%exn123050%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn123050%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn123046%_)
        (if (RuntimeException? _%exn123046%_)
            (let ((_%e123048%_ (&RuntimeException-exception _%exn123046%_)))
              (macro-file-exists-exception? _%e123048%_))
            (macro-file-exists-exception? _%exn123046%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn123042%_)
        (if (RuntimeException? _%exn123042%_)
            (let ((_%e123044%_ (&RuntimeException-exception _%exn123042%_)))
              (if (macro-file-exists-exception? _%e123044%_)
                  (macro-file-exists-exception-arguments _%e123044%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e123044%_ '())))))
            (if (macro-file-exists-exception? _%exn123042%_)
                (macro-file-exists-exception-arguments _%exn123042%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn123042%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn123036%_)
        (if (RuntimeException? _%exn123036%_)
            (let ((_%e123039%_ (&RuntimeException-exception _%exn123036%_)))
              (if (macro-file-exists-exception? _%e123039%_)
                  (macro-file-exists-exception-procedure _%e123039%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e123039%_ '())))))
            (if (macro-file-exists-exception? _%exn123036%_)
                (macro-file-exists-exception-procedure _%exn123036%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn123036%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn123032%_)
        (if (RuntimeException? _%exn123032%_)
            (let ((_%e123034%_ (&RuntimeException-exception _%exn123032%_)))
              (macro-fixnum-overflow-exception? _%e123034%_))
            (macro-fixnum-overflow-exception? _%exn123032%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn123028%_)
        (if (RuntimeException? _%exn123028%_)
            (let ((_%e123030%_ (&RuntimeException-exception _%exn123028%_)))
              (if (macro-fixnum-overflow-exception? _%e123030%_)
                  (macro-fixnum-overflow-exception-arguments _%e123030%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e123030%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn123028%_)
                (macro-fixnum-overflow-exception-arguments _%exn123028%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn123028%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn123022%_)
        (if (RuntimeException? _%exn123022%_)
            (let ((_%e123025%_ (&RuntimeException-exception _%exn123022%_)))
              (if (macro-fixnum-overflow-exception? _%e123025%_)
                  (macro-fixnum-overflow-exception-procedure _%e123025%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e123025%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn123022%_)
                (macro-fixnum-overflow-exception-procedure _%exn123022%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn123022%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn123016%_)
        (if (RuntimeException? _%exn123016%_)
            (let ((_%e123019%_ (&RuntimeException-exception _%exn123016%_)))
              (macro-heap-overflow-exception? _%e123019%_))
            (macro-heap-overflow-exception? _%exn123016%_))))
    (define inactive-thread-exception?
      (lambda (_%exn123012%_)
        (if (RuntimeException? _%exn123012%_)
            (let ((_%e123014%_ (&RuntimeException-exception _%exn123012%_)))
              (macro-inactive-thread-exception? _%e123014%_))
            (macro-inactive-thread-exception? _%exn123012%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn123008%_)
        (if (RuntimeException? _%exn123008%_)
            (let ((_%e123010%_ (&RuntimeException-exception _%exn123008%_)))
              (if (macro-inactive-thread-exception? _%e123010%_)
                  (macro-inactive-thread-exception-arguments _%e123010%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e123010%_ '())))))
            (if (macro-inactive-thread-exception? _%exn123008%_)
                (macro-inactive-thread-exception-arguments _%exn123008%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn123008%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn123002%_)
        (if (RuntimeException? _%exn123002%_)
            (let ((_%e123005%_ (&RuntimeException-exception _%exn123002%_)))
              (if (macro-inactive-thread-exception? _%e123005%_)
                  (macro-inactive-thread-exception-procedure _%e123005%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e123005%_ '())))))
            (if (macro-inactive-thread-exception? _%exn123002%_)
                (macro-inactive-thread-exception-procedure _%exn123002%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn123002%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn122998%_)
        (if (RuntimeException? _%exn122998%_)
            (let ((_%e123000%_ (&RuntimeException-exception _%exn122998%_)))
              (macro-initialized-thread-exception? _%e123000%_))
            (macro-initialized-thread-exception? _%exn122998%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn122994%_)
        (if (RuntimeException? _%exn122994%_)
            (let ((_%e122996%_ (&RuntimeException-exception _%exn122994%_)))
              (if (macro-initialized-thread-exception? _%e122996%_)
                  (macro-initialized-thread-exception-arguments _%e122996%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e122996%_ '())))))
            (if (macro-initialized-thread-exception? _%exn122994%_)
                (macro-initialized-thread-exception-arguments _%exn122994%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn122994%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn122988%_)
        (if (RuntimeException? _%exn122988%_)
            (let ((_%e122991%_ (&RuntimeException-exception _%exn122988%_)))
              (if (macro-initialized-thread-exception? _%e122991%_)
                  (macro-initialized-thread-exception-procedure _%e122991%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e122991%_ '())))))
            (if (macro-initialized-thread-exception? _%exn122988%_)
                (macro-initialized-thread-exception-procedure _%exn122988%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn122988%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn122984%_)
        (if (RuntimeException? _%exn122984%_)
            (let ((_%e122986%_ (&RuntimeException-exception _%exn122984%_)))
              (macro-invalid-hash-number-exception? _%e122986%_))
            (macro-invalid-hash-number-exception? _%exn122984%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn122980%_)
        (if (RuntimeException? _%exn122980%_)
            (let ((_%e122982%_ (&RuntimeException-exception _%exn122980%_)))
              (if (macro-invalid-hash-number-exception? _%e122982%_)
                  (macro-invalid-hash-number-exception-arguments _%e122982%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e122982%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn122980%_)
                (macro-invalid-hash-number-exception-arguments _%exn122980%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn122980%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn122974%_)
        (if (RuntimeException? _%exn122974%_)
            (let ((_%e122977%_ (&RuntimeException-exception _%exn122974%_)))
              (if (macro-invalid-hash-number-exception? _%e122977%_)
                  (macro-invalid-hash-number-exception-procedure _%e122977%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e122977%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn122974%_)
                (macro-invalid-hash-number-exception-procedure _%exn122974%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn122974%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn122970%_)
        (if (RuntimeException? _%exn122970%_)
            (let ((_%e122972%_ (&RuntimeException-exception _%exn122970%_)))
              (macro-invalid-utf8-encoding-exception? _%e122972%_))
            (macro-invalid-utf8-encoding-exception? _%exn122970%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn122966%_)
        (if (RuntimeException? _%exn122966%_)
            (let ((_%e122968%_ (&RuntimeException-exception _%exn122966%_)))
              (if (macro-invalid-utf8-encoding-exception? _%e122968%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e122968%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e122968%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn122966%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn122966%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn122966%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn122960%_)
        (if (RuntimeException? _%exn122960%_)
            (let ((_%e122963%_ (&RuntimeException-exception _%exn122960%_)))
              (if (macro-invalid-utf8-encoding-exception? _%e122963%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e122963%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e122963%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn122960%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn122960%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn122960%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn122956%_)
        (if (RuntimeException? _%exn122956%_)
            (let ((_%e122958%_ (&RuntimeException-exception _%exn122956%_)))
              (macro-join-timeout-exception? _%e122958%_))
            (macro-join-timeout-exception? _%exn122956%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn122952%_)
        (if (RuntimeException? _%exn122952%_)
            (let ((_%e122954%_ (&RuntimeException-exception _%exn122952%_)))
              (if (macro-join-timeout-exception? _%e122954%_)
                  (macro-join-timeout-exception-arguments _%e122954%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e122954%_ '())))))
            (if (macro-join-timeout-exception? _%exn122952%_)
                (macro-join-timeout-exception-arguments _%exn122952%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn122952%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn122946%_)
        (if (RuntimeException? _%exn122946%_)
            (let ((_%e122949%_ (&RuntimeException-exception _%exn122946%_)))
              (if (macro-join-timeout-exception? _%e122949%_)
                  (macro-join-timeout-exception-procedure _%e122949%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e122949%_ '())))))
            (if (macro-join-timeout-exception? _%exn122946%_)
                (macro-join-timeout-exception-procedure _%exn122946%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn122946%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn122942%_)
        (if (RuntimeException? _%exn122942%_)
            (let ((_%e122944%_ (&RuntimeException-exception _%exn122942%_)))
              (macro-keyword-expected-exception? _%e122944%_))
            (macro-keyword-expected-exception? _%exn122942%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn122938%_)
        (if (RuntimeException? _%exn122938%_)
            (let ((_%e122940%_ (&RuntimeException-exception _%exn122938%_)))
              (if (macro-keyword-expected-exception? _%e122940%_)
                  (macro-keyword-expected-exception-arguments _%e122940%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e122940%_ '())))))
            (if (macro-keyword-expected-exception? _%exn122938%_)
                (macro-keyword-expected-exception-arguments _%exn122938%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn122938%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn122932%_)
        (if (RuntimeException? _%exn122932%_)
            (let ((_%e122935%_ (&RuntimeException-exception _%exn122932%_)))
              (if (macro-keyword-expected-exception? _%e122935%_)
                  (macro-keyword-expected-exception-procedure _%e122935%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e122935%_ '())))))
            (if (macro-keyword-expected-exception? _%exn122932%_)
                (macro-keyword-expected-exception-procedure _%exn122932%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn122932%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn122928%_)
        (if (RuntimeException? _%exn122928%_)
            (let ((_%e122930%_ (&RuntimeException-exception _%exn122928%_)))
              (macro-length-mismatch-exception? _%e122930%_))
            (macro-length-mismatch-exception? _%exn122928%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn122924%_)
        (if (RuntimeException? _%exn122924%_)
            (let ((_%e122926%_ (&RuntimeException-exception _%exn122924%_)))
              (if (macro-length-mismatch-exception? _%e122926%_)
                  (macro-length-mismatch-exception-arg-id _%e122926%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e122926%_ '())))))
            (if (macro-length-mismatch-exception? _%exn122924%_)
                (macro-length-mismatch-exception-arg-id _%exn122924%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn122924%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn122920%_)
        (if (RuntimeException? _%exn122920%_)
            (let ((_%e122922%_ (&RuntimeException-exception _%exn122920%_)))
              (if (macro-length-mismatch-exception? _%e122922%_)
                  (macro-length-mismatch-exception-arguments _%e122922%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e122922%_ '())))))
            (if (macro-length-mismatch-exception? _%exn122920%_)
                (macro-length-mismatch-exception-arguments _%exn122920%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn122920%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn122914%_)
        (if (RuntimeException? _%exn122914%_)
            (let ((_%e122917%_ (&RuntimeException-exception _%exn122914%_)))
              (if (macro-length-mismatch-exception? _%e122917%_)
                  (macro-length-mismatch-exception-procedure _%e122917%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e122917%_ '())))))
            (if (macro-length-mismatch-exception? _%exn122914%_)
                (macro-length-mismatch-exception-procedure _%exn122914%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn122914%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn122910%_)
        (if (RuntimeException? _%exn122910%_)
            (let ((_%e122912%_ (&RuntimeException-exception _%exn122910%_)))
              (macro-mailbox-receive-timeout-exception? _%e122912%_))
            (macro-mailbox-receive-timeout-exception? _%exn122910%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn122906%_)
        (if (RuntimeException? _%exn122906%_)
            (let ((_%e122908%_ (&RuntimeException-exception _%exn122906%_)))
              (if (macro-mailbox-receive-timeout-exception? _%e122908%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e122908%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e122908%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn122906%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn122906%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn122906%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn122900%_)
        (if (RuntimeException? _%exn122900%_)
            (let ((_%e122903%_ (&RuntimeException-exception _%exn122900%_)))
              (if (macro-mailbox-receive-timeout-exception? _%e122903%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e122903%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e122903%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn122900%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn122900%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn122900%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn122896%_)
        (if (RuntimeException? _%exn122896%_)
            (let ((_%e122898%_ (&RuntimeException-exception _%exn122896%_)))
              (macro-module-not-found-exception? _%e122898%_))
            (macro-module-not-found-exception? _%exn122896%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn122892%_)
        (if (RuntimeException? _%exn122892%_)
            (let ((_%e122894%_ (&RuntimeException-exception _%exn122892%_)))
              (if (macro-module-not-found-exception? _%e122894%_)
                  (macro-module-not-found-exception-arguments _%e122894%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e122894%_ '())))))
            (if (macro-module-not-found-exception? _%exn122892%_)
                (macro-module-not-found-exception-arguments _%exn122892%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn122892%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn122886%_)
        (if (RuntimeException? _%exn122886%_)
            (let ((_%e122889%_ (&RuntimeException-exception _%exn122886%_)))
              (if (macro-module-not-found-exception? _%e122889%_)
                  (macro-module-not-found-exception-procedure _%e122889%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e122889%_ '())))))
            (if (macro-module-not-found-exception? _%exn122886%_)
                (macro-module-not-found-exception-procedure _%exn122886%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn122886%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn122880%_)
        (if (RuntimeException? _%exn122880%_)
            (let ((_%e122883%_ (&RuntimeException-exception _%exn122880%_)))
              (macro-multiple-c-return-exception? _%e122883%_))
            (macro-multiple-c-return-exception? _%exn122880%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn122876%_)
        (if (RuntimeException? _%exn122876%_)
            (let ((_%e122878%_ (&RuntimeException-exception _%exn122876%_)))
              (macro-no-such-file-or-directory-exception? _%e122878%_))
            (macro-no-such-file-or-directory-exception? _%exn122876%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn122872%_)
        (if (RuntimeException? _%exn122872%_)
            (let ((_%e122874%_ (&RuntimeException-exception _%exn122872%_)))
              (if (macro-no-such-file-or-directory-exception? _%e122874%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e122874%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e122874%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn122872%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn122872%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn122872%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn122866%_)
        (if (RuntimeException? _%exn122866%_)
            (let ((_%e122869%_ (&RuntimeException-exception _%exn122866%_)))
              (if (macro-no-such-file-or-directory-exception? _%e122869%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e122869%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e122869%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn122866%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn122866%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn122866%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn122862%_)
        (if (RuntimeException? _%exn122862%_)
            (let ((_%e122864%_ (&RuntimeException-exception _%exn122862%_)))
              (macro-noncontinuable-exception? _%e122864%_))
            (macro-noncontinuable-exception? _%exn122862%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn122856%_)
        (if (RuntimeException? _%exn122856%_)
            (let ((_%e122859%_ (&RuntimeException-exception _%exn122856%_)))
              (if (macro-noncontinuable-exception? _%e122859%_)
                  (macro-noncontinuable-exception-reason _%e122859%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e122859%_ '())))))
            (if (macro-noncontinuable-exception? _%exn122856%_)
                (macro-noncontinuable-exception-reason _%exn122856%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn122856%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn122852%_)
        (if (RuntimeException? _%exn122852%_)
            (let ((_%e122854%_ (&RuntimeException-exception _%exn122852%_)))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e122854%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn122852%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn122848%_)
        (if (RuntimeException? _%exn122848%_)
            (let ((_%e122850%_ (&RuntimeException-exception _%exn122848%_)))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e122850%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e122850%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e122850%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn122848%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn122848%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn122848%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn122842%_)
        (if (RuntimeException? _%exn122842%_)
            (let ((_%e122845%_ (&RuntimeException-exception _%exn122842%_)))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e122845%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e122845%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e122845%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn122842%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn122842%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn122842%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn122838%_)
        (if (RuntimeException? _%exn122838%_)
            (let ((_%e122840%_ (&RuntimeException-exception _%exn122838%_)))
              (macro-nonprocedure-operator-exception? _%e122840%_))
            (macro-nonprocedure-operator-exception? _%exn122838%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn122834%_)
        (if (RuntimeException? _%exn122834%_)
            (let ((_%e122836%_ (&RuntimeException-exception _%exn122834%_)))
              (if (macro-nonprocedure-operator-exception? _%e122836%_)
                  (macro-nonprocedure-operator-exception-arguments _%e122836%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e122836%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn122834%_)
                (macro-nonprocedure-operator-exception-arguments _%exn122834%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn122834%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn122830%_)
        (if (RuntimeException? _%exn122830%_)
            (let ((_%e122832%_ (&RuntimeException-exception _%exn122830%_)))
              (if (macro-nonprocedure-operator-exception? _%e122832%_)
                  (macro-nonprocedure-operator-exception-code _%e122832%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e122832%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn122830%_)
                (macro-nonprocedure-operator-exception-code _%exn122830%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn122830%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn122826%_)
        (if (RuntimeException? _%exn122826%_)
            (let ((_%e122828%_ (&RuntimeException-exception _%exn122826%_)))
              (if (macro-nonprocedure-operator-exception? _%e122828%_)
                  (macro-nonprocedure-operator-exception-operator _%e122828%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e122828%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn122826%_)
                (macro-nonprocedure-operator-exception-operator _%exn122826%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn122826%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn122820%_)
        (if (RuntimeException? _%exn122820%_)
            (let ((_%e122823%_ (&RuntimeException-exception _%exn122820%_)))
              (if (macro-nonprocedure-operator-exception? _%e122823%_)
                  (macro-nonprocedure-operator-exception-rte _%e122823%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e122823%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn122820%_)
                (macro-nonprocedure-operator-exception-rte _%exn122820%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn122820%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn122816%_)
        (if (RuntimeException? _%exn122816%_)
            (let ((_%e122818%_ (&RuntimeException-exception _%exn122816%_)))
              (macro-not-in-compilation-context-exception? _%e122818%_))
            (macro-not-in-compilation-context-exception? _%exn122816%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn122812%_)
        (if (RuntimeException? _%exn122812%_)
            (let ((_%e122814%_ (&RuntimeException-exception _%exn122812%_)))
              (if (macro-not-in-compilation-context-exception? _%e122814%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e122814%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e122814%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn122812%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn122812%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn122812%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn122806%_)
        (if (RuntimeException? _%exn122806%_)
            (let ((_%e122809%_ (&RuntimeException-exception _%exn122806%_)))
              (if (macro-not-in-compilation-context-exception? _%e122809%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e122809%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e122809%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn122806%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn122806%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn122806%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn122802%_)
        (if (RuntimeException? _%exn122802%_)
            (let ((_%e122804%_ (&RuntimeException-exception _%exn122802%_)))
              (macro-number-of-arguments-limit-exception? _%e122804%_))
            (macro-number-of-arguments-limit-exception? _%exn122802%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn122798%_)
        (if (RuntimeException? _%exn122798%_)
            (let ((_%e122800%_ (&RuntimeException-exception _%exn122798%_)))
              (if (macro-number-of-arguments-limit-exception? _%e122800%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e122800%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e122800%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn122798%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn122798%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn122798%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn122792%_)
        (if (RuntimeException? _%exn122792%_)
            (let ((_%e122795%_ (&RuntimeException-exception _%exn122792%_)))
              (if (macro-number-of-arguments-limit-exception? _%e122795%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e122795%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e122795%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn122792%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn122792%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn122792%_ '())))))))
    (define os-exception?
      (lambda (_%exn122788%_)
        (if (RuntimeException? _%exn122788%_)
            (let ((_%e122790%_ (&RuntimeException-exception _%exn122788%_)))
              (macro-os-exception? _%e122790%_))
            (macro-os-exception? _%exn122788%_))))
    (define os-exception-arguments
      (lambda (_%exn122784%_)
        (if (RuntimeException? _%exn122784%_)
            (let ((_%e122786%_ (&RuntimeException-exception _%exn122784%_)))
              (if (macro-os-exception? _%e122786%_)
                  (macro-os-exception-arguments _%e122786%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e122786%_ '())))))
            (if (macro-os-exception? _%exn122784%_)
                (macro-os-exception-arguments _%exn122784%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn122784%_ '())))))))
    (define os-exception-code
      (lambda (_%exn122780%_)
        (if (RuntimeException? _%exn122780%_)
            (let ((_%e122782%_ (&RuntimeException-exception _%exn122780%_)))
              (if (macro-os-exception? _%e122782%_)
                  (macro-os-exception-code _%e122782%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e122782%_ '())))))
            (if (macro-os-exception? _%exn122780%_)
                (macro-os-exception-code _%exn122780%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn122780%_ '())))))))
    (define os-exception-message
      (lambda (_%exn122776%_)
        (if (RuntimeException? _%exn122776%_)
            (let ((_%e122778%_ (&RuntimeException-exception _%exn122776%_)))
              (if (macro-os-exception? _%e122778%_)
                  (macro-os-exception-message _%e122778%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e122778%_ '())))))
            (if (macro-os-exception? _%exn122776%_)
                (macro-os-exception-message _%exn122776%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn122776%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn122770%_)
        (if (RuntimeException? _%exn122770%_)
            (let ((_%e122773%_ (&RuntimeException-exception _%exn122770%_)))
              (if (macro-os-exception? _%e122773%_)
                  (macro-os-exception-procedure _%e122773%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e122773%_ '())))))
            (if (macro-os-exception? _%exn122770%_)
                (macro-os-exception-procedure _%exn122770%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn122770%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn122766%_)
        (if (RuntimeException? _%exn122766%_)
            (let ((_%e122768%_ (&RuntimeException-exception _%exn122766%_)))
              (macro-permission-denied-exception? _%e122768%_))
            (macro-permission-denied-exception? _%exn122766%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn122762%_)
        (if (RuntimeException? _%exn122762%_)
            (let ((_%e122764%_ (&RuntimeException-exception _%exn122762%_)))
              (if (macro-permission-denied-exception? _%e122764%_)
                  (macro-permission-denied-exception-arguments _%e122764%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e122764%_ '())))))
            (if (macro-permission-denied-exception? _%exn122762%_)
                (macro-permission-denied-exception-arguments _%exn122762%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn122762%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn122756%_)
        (if (RuntimeException? _%exn122756%_)
            (let ((_%e122759%_ (&RuntimeException-exception _%exn122756%_)))
              (if (macro-permission-denied-exception? _%e122759%_)
                  (macro-permission-denied-exception-procedure _%e122759%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e122759%_ '())))))
            (if (macro-permission-denied-exception? _%exn122756%_)
                (macro-permission-denied-exception-procedure _%exn122756%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn122756%_ '())))))))
    (define range-exception?
      (lambda (_%exn122752%_)
        (if (RuntimeException? _%exn122752%_)
            (let ((_%e122754%_ (&RuntimeException-exception _%exn122752%_)))
              (macro-range-exception? _%e122754%_))
            (macro-range-exception? _%exn122752%_))))
    (define range-exception-arg-id
      (lambda (_%exn122748%_)
        (if (RuntimeException? _%exn122748%_)
            (let ((_%e122750%_ (&RuntimeException-exception _%exn122748%_)))
              (if (macro-range-exception? _%e122750%_)
                  (macro-range-exception-arg-id _%e122750%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e122750%_ '())))))
            (if (macro-range-exception? _%exn122748%_)
                (macro-range-exception-arg-id _%exn122748%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn122748%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn122744%_)
        (if (RuntimeException? _%exn122744%_)
            (let ((_%e122746%_ (&RuntimeException-exception _%exn122744%_)))
              (if (macro-range-exception? _%e122746%_)
                  (macro-range-exception-arguments _%e122746%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e122746%_ '())))))
            (if (macro-range-exception? _%exn122744%_)
                (macro-range-exception-arguments _%exn122744%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn122744%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn122738%_)
        (if (RuntimeException? _%exn122738%_)
            (let ((_%e122741%_ (&RuntimeException-exception _%exn122738%_)))
              (if (macro-range-exception? _%e122741%_)
                  (macro-range-exception-procedure _%e122741%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e122741%_ '())))))
            (if (macro-range-exception? _%exn122738%_)
                (macro-range-exception-procedure _%exn122738%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn122738%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn122734%_)
        (if (RuntimeException? _%exn122734%_)
            (let ((_%e122736%_ (&RuntimeException-exception _%exn122734%_)))
              (macro-rpc-remote-error-exception? _%e122736%_))
            (macro-rpc-remote-error-exception? _%exn122734%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn122730%_)
        (if (RuntimeException? _%exn122730%_)
            (let ((_%e122732%_ (&RuntimeException-exception _%exn122730%_)))
              (if (macro-rpc-remote-error-exception? _%e122732%_)
                  (macro-rpc-remote-error-exception-arguments _%e122732%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e122732%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn122730%_)
                (macro-rpc-remote-error-exception-arguments _%exn122730%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn122730%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn122726%_)
        (if (RuntimeException? _%exn122726%_)
            (let ((_%e122728%_ (&RuntimeException-exception _%exn122726%_)))
              (if (macro-rpc-remote-error-exception? _%e122728%_)
                  (macro-rpc-remote-error-exception-message _%e122728%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e122728%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn122726%_)
                (macro-rpc-remote-error-exception-message _%exn122726%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn122726%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn122720%_)
        (if (RuntimeException? _%exn122720%_)
            (let ((_%e122723%_ (&RuntimeException-exception _%exn122720%_)))
              (if (macro-rpc-remote-error-exception? _%e122723%_)
                  (macro-rpc-remote-error-exception-procedure _%e122723%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e122723%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn122720%_)
                (macro-rpc-remote-error-exception-procedure _%exn122720%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn122720%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn122716%_)
        (if (RuntimeException? _%exn122716%_)
            (let ((_%e122718%_ (&RuntimeException-exception _%exn122716%_)))
              (macro-scheduler-exception? _%e122718%_))
            (macro-scheduler-exception? _%exn122716%_))))
    (define scheduler-exception-reason
      (lambda (_%exn122710%_)
        (if (RuntimeException? _%exn122710%_)
            (let ((_%e122713%_ (&RuntimeException-exception _%exn122710%_)))
              (if (macro-scheduler-exception? _%e122713%_)
                  (macro-scheduler-exception-reason _%e122713%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e122713%_ '())))))
            (if (macro-scheduler-exception? _%exn122710%_)
                (macro-scheduler-exception-reason _%exn122710%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn122710%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn122706%_)
        (if (RuntimeException? _%exn122706%_)
            (let ((_%e122708%_ (&RuntimeException-exception _%exn122706%_)))
              (macro-sfun-conversion-exception? _%e122708%_))
            (macro-sfun-conversion-exception? _%exn122706%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn122702%_)
        (if (RuntimeException? _%exn122702%_)
            (let ((_%e122704%_ (&RuntimeException-exception _%exn122702%_)))
              (if (macro-sfun-conversion-exception? _%e122704%_)
                  (macro-sfun-conversion-exception-arguments _%e122704%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e122704%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn122702%_)
                (macro-sfun-conversion-exception-arguments _%exn122702%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn122702%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn122698%_)
        (if (RuntimeException? _%exn122698%_)
            (let ((_%e122700%_ (&RuntimeException-exception _%exn122698%_)))
              (if (macro-sfun-conversion-exception? _%e122700%_)
                  (macro-sfun-conversion-exception-code _%e122700%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e122700%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn122698%_)
                (macro-sfun-conversion-exception-code _%exn122698%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn122698%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn122694%_)
        (if (RuntimeException? _%exn122694%_)
            (let ((_%e122696%_ (&RuntimeException-exception _%exn122694%_)))
              (if (macro-sfun-conversion-exception? _%e122696%_)
                  (macro-sfun-conversion-exception-message _%e122696%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e122696%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn122694%_)
                (macro-sfun-conversion-exception-message _%exn122694%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn122694%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn122688%_)
        (if (RuntimeException? _%exn122688%_)
            (let ((_%e122691%_ (&RuntimeException-exception _%exn122688%_)))
              (if (macro-sfun-conversion-exception? _%e122691%_)
                  (macro-sfun-conversion-exception-procedure _%e122691%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e122691%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn122688%_)
                (macro-sfun-conversion-exception-procedure _%exn122688%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn122688%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn122682%_)
        (if (RuntimeException? _%exn122682%_)
            (let ((_%e122685%_ (&RuntimeException-exception _%exn122682%_)))
              (macro-stack-overflow-exception? _%e122685%_))
            (macro-stack-overflow-exception? _%exn122682%_))))
    (define started-thread-exception?
      (lambda (_%exn122678%_)
        (if (RuntimeException? _%exn122678%_)
            (let ((_%e122680%_ (&RuntimeException-exception _%exn122678%_)))
              (macro-started-thread-exception? _%e122680%_))
            (macro-started-thread-exception? _%exn122678%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn122674%_)
        (if (RuntimeException? _%exn122674%_)
            (let ((_%e122676%_ (&RuntimeException-exception _%exn122674%_)))
              (if (macro-started-thread-exception? _%e122676%_)
                  (macro-started-thread-exception-arguments _%e122676%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e122676%_ '())))))
            (if (macro-started-thread-exception? _%exn122674%_)
                (macro-started-thread-exception-arguments _%exn122674%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn122674%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn122668%_)
        (if (RuntimeException? _%exn122668%_)
            (let ((_%e122671%_ (&RuntimeException-exception _%exn122668%_)))
              (if (macro-started-thread-exception? _%e122671%_)
                  (macro-started-thread-exception-procedure _%e122671%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e122671%_ '())))))
            (if (macro-started-thread-exception? _%exn122668%_)
                (macro-started-thread-exception-procedure _%exn122668%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn122668%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn122664%_)
        (if (RuntimeException? _%exn122664%_)
            (let ((_%e122666%_ (&RuntimeException-exception _%exn122664%_)))
              (macro-terminated-thread-exception? _%e122666%_))
            (macro-terminated-thread-exception? _%exn122664%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn122660%_)
        (if (RuntimeException? _%exn122660%_)
            (let ((_%e122662%_ (&RuntimeException-exception _%exn122660%_)))
              (if (macro-terminated-thread-exception? _%e122662%_)
                  (macro-terminated-thread-exception-arguments _%e122662%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e122662%_ '())))))
            (if (macro-terminated-thread-exception? _%exn122660%_)
                (macro-terminated-thread-exception-arguments _%exn122660%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn122660%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn122654%_)
        (if (RuntimeException? _%exn122654%_)
            (let ((_%e122657%_ (&RuntimeException-exception _%exn122654%_)))
              (if (macro-terminated-thread-exception? _%e122657%_)
                  (macro-terminated-thread-exception-procedure _%e122657%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e122657%_ '())))))
            (if (macro-terminated-thread-exception? _%exn122654%_)
                (macro-terminated-thread-exception-procedure _%exn122654%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn122654%_ '())))))))
    (define type-exception?
      (lambda (_%exn122650%_)
        (if (RuntimeException? _%exn122650%_)
            (let ((_%e122652%_ (&RuntimeException-exception _%exn122650%_)))
              (macro-type-exception? _%e122652%_))
            (macro-type-exception? _%exn122650%_))))
    (define type-exception-arg-id
      (lambda (_%exn122646%_)
        (if (RuntimeException? _%exn122646%_)
            (let ((_%e122648%_ (&RuntimeException-exception _%exn122646%_)))
              (if (macro-type-exception? _%e122648%_)
                  (macro-type-exception-arg-id _%e122648%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e122648%_ '())))))
            (if (macro-type-exception? _%exn122646%_)
                (macro-type-exception-arg-id _%exn122646%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn122646%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn122642%_)
        (if (RuntimeException? _%exn122642%_)
            (let ((_%e122644%_ (&RuntimeException-exception _%exn122642%_)))
              (if (macro-type-exception? _%e122644%_)
                  (macro-type-exception-arguments _%e122644%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e122644%_ '())))))
            (if (macro-type-exception? _%exn122642%_)
                (macro-type-exception-arguments _%exn122642%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn122642%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn122638%_)
        (if (RuntimeException? _%exn122638%_)
            (let ((_%e122640%_ (&RuntimeException-exception _%exn122638%_)))
              (if (macro-type-exception? _%e122640%_)
                  (macro-type-exception-procedure _%e122640%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e122640%_ '())))))
            (if (macro-type-exception? _%exn122638%_)
                (macro-type-exception-procedure _%exn122638%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn122638%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn122632%_)
        (if (RuntimeException? _%exn122632%_)
            (let ((_%e122635%_ (&RuntimeException-exception _%exn122632%_)))
              (if (macro-type-exception? _%e122635%_)
                  (macro-type-exception-type-id _%e122635%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e122635%_ '())))))
            (if (macro-type-exception? _%exn122632%_)
                (macro-type-exception-type-id _%exn122632%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn122632%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn122628%_)
        (if (RuntimeException? _%exn122628%_)
            (let ((_%e122630%_ (&RuntimeException-exception _%exn122628%_)))
              (macro-unbound-global-exception? _%e122630%_))
            (macro-unbound-global-exception? _%exn122628%_))))
    (define unbound-global-exception-code
      (lambda (_%exn122624%_)
        (if (RuntimeException? _%exn122624%_)
            (let ((_%e122626%_ (&RuntimeException-exception _%exn122624%_)))
              (if (macro-unbound-global-exception? _%e122626%_)
                  (macro-unbound-global-exception-code _%e122626%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e122626%_ '())))))
            (if (macro-unbound-global-exception? _%exn122624%_)
                (macro-unbound-global-exception-code _%exn122624%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn122624%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn122620%_)
        (if (RuntimeException? _%exn122620%_)
            (let ((_%e122622%_ (&RuntimeException-exception _%exn122620%_)))
              (if (macro-unbound-global-exception? _%e122622%_)
                  (macro-unbound-global-exception-rte _%e122622%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e122622%_ '())))))
            (if (macro-unbound-global-exception? _%exn122620%_)
                (macro-unbound-global-exception-rte _%exn122620%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn122620%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn122614%_)
        (if (RuntimeException? _%exn122614%_)
            (let ((_%e122617%_ (&RuntimeException-exception _%exn122614%_)))
              (if (macro-unbound-global-exception? _%e122617%_)
                  (macro-unbound-global-exception-variable _%e122617%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e122617%_ '())))))
            (if (macro-unbound-global-exception? _%exn122614%_)
                (macro-unbound-global-exception-variable _%exn122614%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn122614%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn122610%_)
        (if (RuntimeException? _%exn122610%_)
            (let ((_%e122612%_ (&RuntimeException-exception _%exn122610%_)))
              (macro-unbound-key-exception? _%e122612%_))
            (macro-unbound-key-exception? _%exn122610%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn122606%_)
        (if (RuntimeException? _%exn122606%_)
            (let ((_%e122608%_ (&RuntimeException-exception _%exn122606%_)))
              (if (macro-unbound-key-exception? _%e122608%_)
                  (macro-unbound-key-exception-arguments _%e122608%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e122608%_ '())))))
            (if (macro-unbound-key-exception? _%exn122606%_)
                (macro-unbound-key-exception-arguments _%exn122606%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn122606%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn122600%_)
        (if (RuntimeException? _%exn122600%_)
            (let ((_%e122603%_ (&RuntimeException-exception _%exn122600%_)))
              (if (macro-unbound-key-exception? _%e122603%_)
                  (macro-unbound-key-exception-procedure _%e122603%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e122603%_ '())))))
            (if (macro-unbound-key-exception? _%exn122600%_)
                (macro-unbound-key-exception-procedure _%exn122600%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn122600%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn122596%_)
        (if (RuntimeException? _%exn122596%_)
            (let ((_%e122598%_ (&RuntimeException-exception _%exn122596%_)))
              (macro-unbound-os-environment-variable-exception? _%e122598%_))
            (macro-unbound-os-environment-variable-exception? _%exn122596%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn122592%_)
        (if (RuntimeException? _%exn122592%_)
            (let ((_%e122594%_ (&RuntimeException-exception _%exn122592%_)))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e122594%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e122594%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e122594%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn122592%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn122592%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn122592%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn122586%_)
        (if (RuntimeException? _%exn122586%_)
            (let ((_%e122589%_ (&RuntimeException-exception _%exn122586%_)))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e122589%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e122589%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e122589%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn122586%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn122586%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn122586%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn122582%_)
        (if (RuntimeException? _%exn122582%_)
            (let ((_%e122584%_ (&RuntimeException-exception _%exn122582%_)))
              (macro-unbound-serial-number-exception? _%e122584%_))
            (macro-unbound-serial-number-exception? _%exn122582%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn122578%_)
        (if (RuntimeException? _%exn122578%_)
            (let ((_%e122580%_ (&RuntimeException-exception _%exn122578%_)))
              (if (macro-unbound-serial-number-exception? _%e122580%_)
                  (macro-unbound-serial-number-exception-arguments _%e122580%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e122580%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn122578%_)
                (macro-unbound-serial-number-exception-arguments _%exn122578%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn122578%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn122572%_)
        (if (RuntimeException? _%exn122572%_)
            (let ((_%e122575%_ (&RuntimeException-exception _%exn122572%_)))
              (if (macro-unbound-serial-number-exception? _%e122575%_)
                  (macro-unbound-serial-number-exception-procedure _%e122575%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e122575%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn122572%_)
                (macro-unbound-serial-number-exception-procedure _%exn122572%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn122572%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn122568%_)
        (if (RuntimeException? _%exn122568%_)
            (let ((_%e122570%_ (&RuntimeException-exception _%exn122568%_)))
              (macro-uncaught-exception? _%e122570%_))
            (macro-uncaught-exception? _%exn122568%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn122564%_)
        (if (RuntimeException? _%exn122564%_)
            (let ((_%e122566%_ (&RuntimeException-exception _%exn122564%_)))
              (if (macro-uncaught-exception? _%e122566%_)
                  (macro-uncaught-exception-arguments _%e122566%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e122566%_ '())))))
            (if (macro-uncaught-exception? _%exn122564%_)
                (macro-uncaught-exception-arguments _%exn122564%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn122564%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn122560%_)
        (if (RuntimeException? _%exn122560%_)
            (let ((_%e122562%_ (&RuntimeException-exception _%exn122560%_)))
              (if (macro-uncaught-exception? _%e122562%_)
                  (macro-uncaught-exception-procedure _%e122562%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e122562%_ '())))))
            (if (macro-uncaught-exception? _%exn122560%_)
                (macro-uncaught-exception-procedure _%exn122560%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn122560%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn122554%_)
        (if (RuntimeException? _%exn122554%_)
            (let ((_%e122557%_ (&RuntimeException-exception _%exn122554%_)))
              (if (macro-uncaught-exception? _%e122557%_)
                  (macro-uncaught-exception-reason _%e122557%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e122557%_ '())))))
            (if (macro-uncaught-exception? _%exn122554%_)
                (macro-uncaught-exception-reason _%exn122554%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn122554%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn122550%_)
        (if (RuntimeException? _%exn122550%_)
            (let ((_%e122552%_ (&RuntimeException-exception _%exn122550%_)))
              (macro-uninitialized-thread-exception? _%e122552%_))
            (macro-uninitialized-thread-exception? _%exn122550%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn122546%_)
        (if (RuntimeException? _%exn122546%_)
            (let ((_%e122548%_ (&RuntimeException-exception _%exn122546%_)))
              (if (macro-uninitialized-thread-exception? _%e122548%_)
                  (macro-uninitialized-thread-exception-arguments _%e122548%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e122548%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn122546%_)
                (macro-uninitialized-thread-exception-arguments _%exn122546%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn122546%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn122540%_)
        (if (RuntimeException? _%exn122540%_)
            (let ((_%e122543%_ (&RuntimeException-exception _%exn122540%_)))
              (if (macro-uninitialized-thread-exception? _%e122543%_)
                  (macro-uninitialized-thread-exception-procedure _%e122543%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e122543%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn122540%_)
                (macro-uninitialized-thread-exception-procedure _%exn122540%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn122540%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn122536%_)
        (if (RuntimeException? _%exn122536%_)
            (let ((_%e122538%_ (&RuntimeException-exception _%exn122536%_)))
              (macro-unknown-keyword-argument-exception? _%e122538%_))
            (macro-unknown-keyword-argument-exception? _%exn122536%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn122532%_)
        (if (RuntimeException? _%exn122532%_)
            (let ((_%e122534%_ (&RuntimeException-exception _%exn122532%_)))
              (if (macro-unknown-keyword-argument-exception? _%e122534%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e122534%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e122534%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn122532%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn122532%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn122532%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn122526%_)
        (if (RuntimeException? _%exn122526%_)
            (let ((_%e122529%_ (&RuntimeException-exception _%exn122526%_)))
              (if (macro-unknown-keyword-argument-exception? _%e122529%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e122529%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e122529%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn122526%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn122526%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn122526%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn122522%_)
        (if (RuntimeException? _%exn122522%_)
            (let ((_%e122524%_ (&RuntimeException-exception _%exn122522%_)))
              (macro-unterminated-process-exception? _%e122524%_))
            (macro-unterminated-process-exception? _%exn122522%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn122518%_)
        (if (RuntimeException? _%exn122518%_)
            (let ((_%e122520%_ (&RuntimeException-exception _%exn122518%_)))
              (if (macro-unterminated-process-exception? _%e122520%_)
                  (macro-unterminated-process-exception-arguments _%e122520%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e122520%_ '())))))
            (if (macro-unterminated-process-exception? _%exn122518%_)
                (macro-unterminated-process-exception-arguments _%exn122518%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn122518%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn122512%_)
        (if (RuntimeException? _%exn122512%_)
            (let ((_%e122515%_ (&RuntimeException-exception _%exn122512%_)))
              (if (macro-unterminated-process-exception? _%e122515%_)
                  (macro-unterminated-process-exception-procedure _%e122515%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e122515%_ '())))))
            (if (macro-unterminated-process-exception? _%exn122512%_)
                (macro-unterminated-process-exception-procedure _%exn122512%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn122512%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn122508%_)
        (if (RuntimeException? _%exn122508%_)
            (let ((_%e122510%_ (&RuntimeException-exception _%exn122508%_)))
              (macro-wrong-number-of-arguments-exception? _%e122510%_))
            (macro-wrong-number-of-arguments-exception? _%exn122508%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn122504%_)
        (if (RuntimeException? _%exn122504%_)
            (let ((_%e122506%_ (&RuntimeException-exception _%exn122504%_)))
              (if (macro-wrong-number-of-arguments-exception? _%e122506%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e122506%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e122506%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn122504%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn122504%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn122504%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn122498%_)
        (if (RuntimeException? _%exn122498%_)
            (let ((_%e122501%_ (&RuntimeException-exception _%exn122498%_)))
              (if (macro-wrong-number-of-arguments-exception? _%e122501%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e122501%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e122501%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn122498%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn122498%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn122498%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn122494%_)
        (if (RuntimeException? _%exn122494%_)
            (let ((_%e122496%_ (&RuntimeException-exception _%exn122494%_)))
              (macro-wrong-number-of-values-exception? _%e122496%_))
            (macro-wrong-number-of-values-exception? _%exn122494%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn122490%_)
        (if (RuntimeException? _%exn122490%_)
            (let ((_%e122492%_ (&RuntimeException-exception _%exn122490%_)))
              (if (macro-wrong-number-of-values-exception? _%e122492%_)
                  (macro-wrong-number-of-values-exception-code _%e122492%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e122492%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn122490%_)
                (macro-wrong-number-of-values-exception-code _%exn122490%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn122490%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn122486%_)
        (if (RuntimeException? _%exn122486%_)
            (let ((_%e122488%_ (&RuntimeException-exception _%exn122486%_)))
              (if (macro-wrong-number-of-values-exception? _%e122488%_)
                  (macro-wrong-number-of-values-exception-rte _%e122488%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e122488%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn122486%_)
                (macro-wrong-number-of-values-exception-rte _%exn122486%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn122486%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn122480%_)
        (if (RuntimeException? _%exn122480%_)
            (let ((_%e122483%_ (&RuntimeException-exception _%exn122480%_)))
              (if (macro-wrong-number-of-values-exception? _%e122483%_)
                  (macro-wrong-number-of-values-exception-vals _%e122483%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e122483%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn122480%_)
                (macro-wrong-number-of-values-exception-vals _%exn122480%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn122480%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn122474%_)
        (if (RuntimeException? _%exn122474%_)
            (let ((_%e122477%_ (&RuntimeException-exception _%exn122474%_)))
              (macro-wrong-processor-c-return-exception? _%e122477%_))
            (macro-wrong-processor-c-return-exception? _%exn122474%_))))))
