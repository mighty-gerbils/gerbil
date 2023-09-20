(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1695201399)
  (begin
    (define Exception::t
      (make-class-type
       'gerbil/runtime/error#Exception::t
       '()
       '()
       'Exception
       '()
       '#f))
    (define Exception? (make-class-predicate Exception::t))
    (define make-Exception
      (lambda _$args5732_
        (apply make-class-instance Exception::t _$args5732_)))
    (define StackTrace::t
      (make-class-type
       'gerbil/runtime/error#StackTrace::t
       '()
       '(continuation)
       'StackTrace
       '()
       '#f))
    (define StackTrace? (make-class-predicate StackTrace::t))
    (define make-StackTrace
      (lambda _$args5729_
        (apply make-class-instance StackTrace::t _$args5729_)))
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
       'gerbil/runtime/error#Error::t
       (cons StackTrace::t (cons Exception::t '()))
       '(message irritants where)
       'Error
       '((transparent: . #t))
       ':init!))
    (define Error? (make-class-predicate Error::t))
    (define make-Error
      (lambda _$args5726_ (apply make-class-instance Error::t _$args5726_)))
    (define Error-message (make-class-slot-accessor Error::t 'message))
    (define Error-irritants (make-class-slot-accessor Error::t 'irritants))
    (define Error-where (make-class-slot-accessor Error::t 'where))
    (define Error-message-set! (make-class-slot-mutator Error::t 'message))
    (define Error-irritants-set! (make-class-slot-mutator Error::t 'irritants))
    (define Error-where-set! (make-class-slot-mutator Error::t 'where))
    (define &Error-message
      (make-class-slot-unchecked-accessor Error::t 'message))
    (define &Error-irritants
      (make-class-slot-unchecked-accessor Error::t 'irritants))
    (define &Error-where (make-class-slot-unchecked-accessor Error::t 'where))
    (define &Error-message-set!
      (make-class-slot-unchecked-mutator Error::t 'message))
    (define &Error-irritants-set!
      (make-class-slot-unchecked-mutator Error::t 'irritants))
    (define &Error-where-set!
      (make-class-slot-unchecked-mutator Error::t 'where))
    (define RuntimeException::t
      (make-class-type
       'gerbil/runtime/error#RuntimeException::t
       (cons StackTrace::t (cons Exception::t '()))
       '(exception)
       'RuntimeException
       '((transparent: . #t))
       '#f))
    (define RuntimeException? (make-class-predicate RuntimeException::t))
    (define make-RuntimeException
      (lambda _$args5723_
        (apply make-class-instance RuntimeException::t _$args5723_)))
    (define RuntimeException-exception
      (make-class-slot-accessor RuntimeException::t 'exception))
    (define RuntimeException-exception-set!
      (make-class-slot-mutator RuntimeException::t 'exception))
    (define &RuntimeException-exception
      (make-class-slot-unchecked-accessor RuntimeException::t 'exception))
    (define &RuntimeException-exception-set!
      (make-class-slot-unchecked-mutator RuntimeException::t 'exception))
    (define gerbil-exception-handler-hook
      (lambda (_exn5718_ _continue5719_)
        (let ((_exn5721_ (wrap-runtime-exception _exn5718_)))
          (declare (not safe))
          (##repl-exception-handler-hook _exn5721_ _continue5719_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn5714_)
        (if (StackTrace? _exn5714_)
            (if (&StackTrace-continuation _exn5714_)
                '#!void
                (let ((__tmp5734
                       (lambda (_cont5716_)
                         (unchecked-slot-set!
                          _exn5714_
                          'continuation
                          _cont5716_))))
                  (declare (not safe))
                  (##continuation-capture __tmp5734)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn5714_))))
    (define error
      (lambda (_message5711_ . _irritants5712_)
        (raise (make-Error _message5711_ 'irritants: _irritants5712_))))
    (define with-exception-handler
      (lambda (_handler5704_ _thunk5705_)
        (if (procedure? _handler5704_)
            '#!void
            (raise (make-Error
                    '"expected procedure"
                    'where:
                    'with-exception-handler
                    'irritants:
                    (cons _handler5704_ '()))))
        (if (procedure? _thunk5705_)
            '#!void
            (raise (make-Error
                    '"expected procedure"
                    'where:
                    'with-exception-hander
                    'irritants:
                    (cons _thunk5705_ '()))))
        (let ((__tmp5735
               (lambda (_exn5707_)
                 (let ((_exn5709_ (wrap-runtime-exception _exn5707_)))
                   (_handler5704_ _exn5709_)))))
          (declare (not safe))
          (##with-exception-handler __tmp5735 _thunk5705_))))
    (define with-catch
      (lambda (_handler5697_ _thunk5698_)
        (if (procedure? _handler5697_)
            '#!void
            (raise (make-Error
                    '"expected procedure"
                    'where:
                    'with-exception-handler
                    'irritants:
                    (cons _handler5697_ '()))))
        (if (procedure? _thunk5698_)
            '#!void
            (raise (make-Error
                    '"expected procedure"
                    'where:
                    'with-exception-hander
                    'irritants:
                    (cons _thunk5698_ '()))))
        (let ((__tmp5736
               (lambda (_cont5700_)
                 (with-exception-handler
                  (lambda (_exn5702_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont5700_
                       _handler5697_
                       _exn5702_)))
                  _thunk5698_))))
          (declare (not safe))
          (##continuation-capture __tmp5736))))
    (define wrap-runtime-exception
      (lambda (_exn5688_)
        (if (or (heap-overflow-exception? _exn5688_)
                (stack-overflow-exception? _exn5688_))
            _exn5688_
            (if (Exception? _exn5688_)
                _exn5688_
                (if (macro-exception? _exn5688_)
                    (let ((_rte5693_
                           (make-RuntimeException 'exception: _exn5688_)))
                      (let ((__tmp5737
                             (lambda (_cont5695_)
                               (unchecked-slot-set!
                                _rte5693_
                                'continuation
                                (let ()
                                  (declare (not safe))
                                  (##continuation-next _cont5695_))))))
                        (declare (not safe))
                        (##continuation-capture __tmp5737))
                      _rte5693_)
                    _exn5688_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj5683_)
        (let ((_$e5685_ (Error? _obj5683_)))
          (if _$e5685_ _$e5685_ (error-exception? _obj5683_)))))
    (define error-message
      (lambda (_obj5681_)
        (if (Error? _obj5681_)
            (&Error-message _obj5681_)
            (if (error-exception? _obj5681_)
                (error-exception-message _obj5681_)
                '#f))))
    (define error-irritants
      (lambda (_obj5679_)
        (if (Error? _obj5679_)
            (&Error-irritants _obj5679_)
            (if (error-exception? _obj5679_)
                (error-exception-parameters _obj5679_)
                '#f))))
    (define error-trace
      (lambda (_obj5677_)
        (if (Error? _obj5677_) (&Error-where _obj5677_) '#f)))
    (define display-exception
      (let ((_opt-lambda56575667_
             (lambda (_e5659_ _port5660_)
               (let ((_$e5662_ (method-ref _e5659_ 'display-exception)))
                 (if _$e5662_
                     ((lambda (_f5665_) (_f5665_ _e5659_ _port5660_)) _$e5662_)
                     (let ()
                       (declare (not safe))
                       (##default-display-exception _e5659_ _port5660_)))))))
        (lambda _g5739_
          (let ((_g5738_ (let () (declare (not safe)) (##length _g5739_))))
            (cond ((let () (declare (not safe)) (##fx= _g5738_ 1))
                   (apply (lambda (_e5670_)
                            (let ((_port5672_ (current-error-port)))
                              (_opt-lambda56575667_ _e5670_ _port5672_)))
                          _g5739_))
                  ((let () (declare (not safe)) (##fx= _g5738_ 2))
                   (apply _opt-lambda56575667_ _g5739_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    display-exception
                    _g5739_)))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self5654_ _message5655_ . _rest5656_)
        (unchecked-slot-set! _self5654_ 'message _message5655_)
        (apply class-instance-init! _self5654_ _rest5656_)))
    (bind-method! Error::t ':init! Error:::init! '#f)
    (define Error::display-exception
      (lambda (_self5513_ _port5514_)
        (let ((_tmp-port5516_ (open-output-string)))
          (fix-port-width! _tmp-port5516_)
          (call-with-parameters
           (lambda ()
             (display '"*** ERROR IN ")
             (let ((_$e5519_ (&Error-where _self5513_)))
               (if _$e5519_ (display _$e5519_) (display '"?")))
             (display*
              '" ["
              (let ((__tmp5740 (object-type _self5513_)))
                (declare (not safe))
                (##type-name __tmp5740))
              '"]: ")
             (displayln (&Error-message _self5513_))
             (let ((_irritants5522_ (&Error-irritants _self5513_)))
               (if (null? _irritants5522_)
                   '#!void
                   (begin
                     (display '"--- irritants: ")
                     (for-each
                      (lambda (_obj5524_) (display* _obj5524_ '" "))
                      _irritants5522_)
                     (newline))))
             (if (StackTrace? _self5513_)
                 (let ((_cont55255527_ (&StackTrace-continuation _self5513_)))
                   (if _cont55255527_
                       (let ((_cont5530_ _cont55255527_))
                         (displayln '"--- continuation backtrace:")
                         (display-continuation-backtrace _cont5530_))
                       '#f))
                 '#!void))
           current-output-port
           _tmp-port5516_)
          (let ((__tmp5741 (get-output-string _tmp-port5516_)))
            (declare (not safe))
            (##write-string __tmp5741 _port5514_)))))
    (bind-method! Error::t 'display-exception Error::display-exception '#t)
    (define RuntimeException::display-exception
      (lambda (_self5380_ _port5381_)
        (let ((_tmp-port5383_ (open-output-string)))
          (fix-port-width! _tmp-port5383_)
          (let ((__tmp5742 (&RuntimeException-exception _self5380_)))
            (declare (not safe))
            (##default-display-exception __tmp5742 _tmp-port5383_))
          (let ((_cont53845386_ (&StackTrace-continuation _self5380_)))
            (if _cont53845386_
                (let ((_cont5389_ _cont53845386_))
                  (display '"--- continuation backtrace:" _tmp-port5383_)
                  (newline _tmp-port5383_)
                  (display-continuation-backtrace _cont5389_ _tmp-port5383_))
                '#f))
          (let ((__tmp5743 (get-output-string _tmp-port5383_)))
            (declare (not safe))
            (##write-string __tmp5743 _port5381_)))))
    (bind-method!
     RuntimeException::t
     'display-exception
     RuntimeException::display-exception
     '#f)
    (define fix-port-width!
      (lambda (_port5252_)
        (if (macro-character-port? _port5252_)
            (let ((_old-width5254_
                   (macro-character-port-output-width _port5252_)))
              (macro-character-port-output-width-set!
               _port5252_
               (lambda (_port5256_) '256))
              _old-width5254_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port5249_ _old-width5250_)
        (if (macro-character-port? _port5249_)
            (macro-character-port-output-width-set! _port5249_ _old-width5250_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e5247_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e5247_))))
    (define abandoned-mutex-exception?
      (lambda (_exn5241_)
        (if (RuntimeException? _exn5241_)
            (let ((_e5244_ (&RuntimeException-exception _exn5241_)))
              (macro-abandoned-mutex-exception? _e5244_))
            (macro-abandoned-mutex-exception? _exn5241_))))
    (define cfun-conversion-exception?
      (lambda (_exn5237_)
        (if (RuntimeException? _exn5237_)
            (let ((_e5239_ (&RuntimeException-exception _exn5237_)))
              (macro-cfun-conversion-exception? _e5239_))
            (macro-cfun-conversion-exception? _exn5237_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn5233_)
        (if (RuntimeException? _exn5233_)
            (let ((_e5235_ (&RuntimeException-exception _exn5233_)))
              (if (macro-cfun-conversion-exception? _e5235_)
                  (macro-cfun-conversion-exception-arguments _e5235_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _e5235_ '())))))
            (if (macro-cfun-conversion-exception? _exn5233_)
                (macro-cfun-conversion-exception-arguments _exn5233_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _exn5233_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_exn5229_)
        (if (RuntimeException? _exn5229_)
            (let ((_e5231_ (&RuntimeException-exception _exn5229_)))
              (if (macro-cfun-conversion-exception? _e5231_)
                  (macro-cfun-conversion-exception-code _e5231_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _e5231_ '())))))
            (if (macro-cfun-conversion-exception? _exn5229_)
                (macro-cfun-conversion-exception-code _exn5229_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _exn5229_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_exn5225_)
        (if (RuntimeException? _exn5225_)
            (let ((_e5227_ (&RuntimeException-exception _exn5225_)))
              (if (macro-cfun-conversion-exception? _e5227_)
                  (macro-cfun-conversion-exception-message _e5227_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _e5227_ '())))))
            (if (macro-cfun-conversion-exception? _exn5225_)
                (macro-cfun-conversion-exception-message _exn5225_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _exn5225_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn5219_)
        (if (RuntimeException? _exn5219_)
            (let ((_e5222_ (&RuntimeException-exception _exn5219_)))
              (if (macro-cfun-conversion-exception? _e5222_)
                  (macro-cfun-conversion-exception-procedure _e5222_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _e5222_ '())))))
            (if (macro-cfun-conversion-exception? _exn5219_)
                (macro-cfun-conversion-exception-procedure _exn5219_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _exn5219_ '())))))))
    (define datum-parsing-exception?
      (lambda (_exn5215_)
        (if (RuntimeException? _exn5215_)
            (let ((_e5217_ (&RuntimeException-exception _exn5215_)))
              (macro-datum-parsing-exception? _e5217_))
            (macro-datum-parsing-exception? _exn5215_))))
    (define datum-parsing-exception-kind
      (lambda (_exn5211_)
        (if (RuntimeException? _exn5211_)
            (let ((_e5213_ (&RuntimeException-exception _exn5211_)))
              (if (macro-datum-parsing-exception? _e5213_)
                  (macro-datum-parsing-exception-kind _e5213_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _e5213_ '())))))
            (if (macro-datum-parsing-exception? _exn5211_)
                (macro-datum-parsing-exception-kind _exn5211_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _exn5211_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn5207_)
        (if (RuntimeException? _exn5207_)
            (let ((_e5209_ (&RuntimeException-exception _exn5207_)))
              (if (macro-datum-parsing-exception? _e5209_)
                  (macro-datum-parsing-exception-parameters _e5209_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _e5209_ '())))))
            (if (macro-datum-parsing-exception? _exn5207_)
                (macro-datum-parsing-exception-parameters _exn5207_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _exn5207_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn5201_)
        (if (RuntimeException? _exn5201_)
            (let ((_e5204_ (&RuntimeException-exception _exn5201_)))
              (if (macro-datum-parsing-exception? _e5204_)
                  (macro-datum-parsing-exception-readenv _e5204_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _e5204_ '())))))
            (if (macro-datum-parsing-exception? _exn5201_)
                (macro-datum-parsing-exception-readenv _exn5201_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _exn5201_ '())))))))
    (define deadlock-exception?
      (lambda (_exn5195_)
        (if (RuntimeException? _exn5195_)
            (let ((_e5198_ (&RuntimeException-exception _exn5195_)))
              (macro-deadlock-exception? _e5198_))
            (macro-deadlock-exception? _exn5195_))))
    (define divide-by-zero-exception?
      (lambda (_exn5191_)
        (if (RuntimeException? _exn5191_)
            (let ((_e5193_ (&RuntimeException-exception _exn5191_)))
              (macro-divide-by-zero-exception? _e5193_))
            (macro-divide-by-zero-exception? _exn5191_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn5187_)
        (if (RuntimeException? _exn5187_)
            (let ((_e5189_ (&RuntimeException-exception _exn5187_)))
              (if (macro-divide-by-zero-exception? _e5189_)
                  (macro-divide-by-zero-exception-arguments _e5189_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _e5189_ '())))))
            (if (macro-divide-by-zero-exception? _exn5187_)
                (macro-divide-by-zero-exception-arguments _exn5187_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _exn5187_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn5181_)
        (if (RuntimeException? _exn5181_)
            (let ((_e5184_ (&RuntimeException-exception _exn5181_)))
              (if (macro-divide-by-zero-exception? _e5184_)
                  (macro-divide-by-zero-exception-procedure _e5184_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _e5184_ '())))))
            (if (macro-divide-by-zero-exception? _exn5181_)
                (macro-divide-by-zero-exception-procedure _exn5181_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _exn5181_ '())))))))
    (define error-exception?
      (lambda (_exn5177_)
        (if (RuntimeException? _exn5177_)
            (let ((_e5179_ (&RuntimeException-exception _exn5177_)))
              (macro-error-exception? _e5179_))
            (macro-error-exception? _exn5177_))))
    (define error-exception-message
      (lambda (_exn5173_)
        (if (RuntimeException? _exn5173_)
            (let ((_e5175_ (&RuntimeException-exception _exn5173_)))
              (if (macro-error-exception? _e5175_)
                  (macro-error-exception-message _e5175_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message (cons _e5175_ '())))))
            (if (macro-error-exception? _exn5173_)
                (macro-error-exception-message _exn5173_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _exn5173_ '())))))))
    (define error-exception-parameters
      (lambda (_exn5167_)
        (if (RuntimeException? _exn5167_)
            (let ((_e5170_ (&RuntimeException-exception _exn5167_)))
              (if (macro-error-exception? _e5170_)
                  (macro-error-exception-parameters _e5170_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _e5170_ '())))))
            (if (macro-error-exception? _exn5167_)
                (macro-error-exception-parameters _exn5167_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _exn5167_ '())))))))
    (define expression-parsing-exception?
      (lambda (_exn5163_)
        (if (RuntimeException? _exn5163_)
            (let ((_e5165_ (&RuntimeException-exception _exn5163_)))
              (macro-expression-parsing-exception? _e5165_))
            (macro-expression-parsing-exception? _exn5163_))))
    (define expression-parsing-exception-kind
      (lambda (_exn5159_)
        (if (RuntimeException? _exn5159_)
            (let ((_e5161_ (&RuntimeException-exception _exn5159_)))
              (if (macro-expression-parsing-exception? _e5161_)
                  (macro-expression-parsing-exception-kind _e5161_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _e5161_ '())))))
            (if (macro-expression-parsing-exception? _exn5159_)
                (macro-expression-parsing-exception-kind _exn5159_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _exn5159_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn5155_)
        (if (RuntimeException? _exn5155_)
            (let ((_e5157_ (&RuntimeException-exception _exn5155_)))
              (if (macro-expression-parsing-exception? _e5157_)
                  (macro-expression-parsing-exception-parameters _e5157_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _e5157_ '())))))
            (if (macro-expression-parsing-exception? _exn5155_)
                (macro-expression-parsing-exception-parameters _exn5155_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _exn5155_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_exn5149_)
        (if (RuntimeException? _exn5149_)
            (let ((_e5152_ (&RuntimeException-exception _exn5149_)))
              (if (macro-expression-parsing-exception? _e5152_)
                  (macro-expression-parsing-exception-source _e5152_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _e5152_ '())))))
            (if (macro-expression-parsing-exception? _exn5149_)
                (macro-expression-parsing-exception-source _exn5149_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _exn5149_ '())))))))
    (define file-exists-exception?
      (lambda (_exn5145_)
        (if (RuntimeException? _exn5145_)
            (let ((_e5147_ (&RuntimeException-exception _exn5145_)))
              (macro-file-exists-exception? _e5147_))
            (macro-file-exists-exception? _exn5145_))))
    (define file-exists-exception-arguments
      (lambda (_exn5141_)
        (if (RuntimeException? _exn5141_)
            (let ((_e5143_ (&RuntimeException-exception _exn5141_)))
              (if (macro-file-exists-exception? _e5143_)
                  (macro-file-exists-exception-arguments _e5143_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _e5143_ '())))))
            (if (macro-file-exists-exception? _exn5141_)
                (macro-file-exists-exception-arguments _exn5141_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _exn5141_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_exn5135_)
        (if (RuntimeException? _exn5135_)
            (let ((_e5138_ (&RuntimeException-exception _exn5135_)))
              (if (macro-file-exists-exception? _e5138_)
                  (macro-file-exists-exception-procedure _e5138_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _e5138_ '())))))
            (if (macro-file-exists-exception? _exn5135_)
                (macro-file-exists-exception-procedure _exn5135_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _exn5135_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_exn5131_)
        (if (RuntimeException? _exn5131_)
            (let ((_e5133_ (&RuntimeException-exception _exn5131_)))
              (macro-fixnum-overflow-exception? _e5133_))
            (macro-fixnum-overflow-exception? _exn5131_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn5127_)
        (if (RuntimeException? _exn5127_)
            (let ((_e5129_ (&RuntimeException-exception _exn5127_)))
              (if (macro-fixnum-overflow-exception? _e5129_)
                  (macro-fixnum-overflow-exception-arguments _e5129_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _e5129_ '())))))
            (if (macro-fixnum-overflow-exception? _exn5127_)
                (macro-fixnum-overflow-exception-arguments _exn5127_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _exn5127_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn5121_)
        (if (RuntimeException? _exn5121_)
            (let ((_e5124_ (&RuntimeException-exception _exn5121_)))
              (if (macro-fixnum-overflow-exception? _e5124_)
                  (macro-fixnum-overflow-exception-procedure _e5124_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _e5124_ '())))))
            (if (macro-fixnum-overflow-exception? _exn5121_)
                (macro-fixnum-overflow-exception-procedure _exn5121_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _exn5121_ '())))))))
    (define heap-overflow-exception?
      (lambda (_exn5115_)
        (if (RuntimeException? _exn5115_)
            (let ((_e5118_ (&RuntimeException-exception _exn5115_)))
              (macro-heap-overflow-exception? _e5118_))
            (macro-heap-overflow-exception? _exn5115_))))
    (define inactive-thread-exception?
      (lambda (_exn5111_)
        (if (RuntimeException? _exn5111_)
            (let ((_e5113_ (&RuntimeException-exception _exn5111_)))
              (macro-inactive-thread-exception? _e5113_))
            (macro-inactive-thread-exception? _exn5111_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn5107_)
        (if (RuntimeException? _exn5107_)
            (let ((_e5109_ (&RuntimeException-exception _exn5107_)))
              (if (macro-inactive-thread-exception? _e5109_)
                  (macro-inactive-thread-exception-arguments _e5109_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _e5109_ '())))))
            (if (macro-inactive-thread-exception? _exn5107_)
                (macro-inactive-thread-exception-arguments _exn5107_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _exn5107_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn5101_)
        (if (RuntimeException? _exn5101_)
            (let ((_e5104_ (&RuntimeException-exception _exn5101_)))
              (if (macro-inactive-thread-exception? _e5104_)
                  (macro-inactive-thread-exception-procedure _e5104_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _e5104_ '())))))
            (if (macro-inactive-thread-exception? _exn5101_)
                (macro-inactive-thread-exception-procedure _exn5101_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _exn5101_ '())))))))
    (define initialized-thread-exception?
      (lambda (_exn5097_)
        (if (RuntimeException? _exn5097_)
            (let ((_e5099_ (&RuntimeException-exception _exn5097_)))
              (macro-initialized-thread-exception? _e5099_))
            (macro-initialized-thread-exception? _exn5097_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn5093_)
        (if (RuntimeException? _exn5093_)
            (let ((_e5095_ (&RuntimeException-exception _exn5093_)))
              (if (macro-initialized-thread-exception? _e5095_)
                  (macro-initialized-thread-exception-arguments _e5095_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _e5095_ '())))))
            (if (macro-initialized-thread-exception? _exn5093_)
                (macro-initialized-thread-exception-arguments _exn5093_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _exn5093_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn5087_)
        (if (RuntimeException? _exn5087_)
            (let ((_e5090_ (&RuntimeException-exception _exn5087_)))
              (if (macro-initialized-thread-exception? _e5090_)
                  (macro-initialized-thread-exception-procedure _e5090_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _e5090_ '())))))
            (if (macro-initialized-thread-exception? _exn5087_)
                (macro-initialized-thread-exception-procedure _exn5087_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _exn5087_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_exn5083_)
        (if (RuntimeException? _exn5083_)
            (let ((_e5085_ (&RuntimeException-exception _exn5083_)))
              (macro-invalid-hash-number-exception? _e5085_))
            (macro-invalid-hash-number-exception? _exn5083_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn5079_)
        (if (RuntimeException? _exn5079_)
            (let ((_e5081_ (&RuntimeException-exception _exn5079_)))
              (if (macro-invalid-hash-number-exception? _e5081_)
                  (macro-invalid-hash-number-exception-arguments _e5081_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _e5081_ '())))))
            (if (macro-invalid-hash-number-exception? _exn5079_)
                (macro-invalid-hash-number-exception-arguments _exn5079_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _exn5079_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn5073_)
        (if (RuntimeException? _exn5073_)
            (let ((_e5076_ (&RuntimeException-exception _exn5073_)))
              (if (macro-invalid-hash-number-exception? _e5076_)
                  (macro-invalid-hash-number-exception-procedure _e5076_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _e5076_ '())))))
            (if (macro-invalid-hash-number-exception? _exn5073_)
                (macro-invalid-hash-number-exception-procedure _exn5073_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _exn5073_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn5069_)
        (if (RuntimeException? _exn5069_)
            (let ((_e5071_ (&RuntimeException-exception _exn5069_)))
              (macro-invalid-utf8-encoding-exception? _e5071_))
            (macro-invalid-utf8-encoding-exception? _exn5069_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn5065_)
        (if (RuntimeException? _exn5065_)
            (let ((_e5067_ (&RuntimeException-exception _exn5065_)))
              (if (macro-invalid-utf8-encoding-exception? _e5067_)
                  (macro-invalid-utf8-encoding-exception-arguments _e5067_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _e5067_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _exn5065_)
                (macro-invalid-utf8-encoding-exception-arguments _exn5065_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _exn5065_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn5059_)
        (if (RuntimeException? _exn5059_)
            (let ((_e5062_ (&RuntimeException-exception _exn5059_)))
              (if (macro-invalid-utf8-encoding-exception? _e5062_)
                  (macro-invalid-utf8-encoding-exception-procedure _e5062_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _e5062_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _exn5059_)
                (macro-invalid-utf8-encoding-exception-procedure _exn5059_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _exn5059_ '())))))))
    (define join-timeout-exception?
      (lambda (_exn5055_)
        (if (RuntimeException? _exn5055_)
            (let ((_e5057_ (&RuntimeException-exception _exn5055_)))
              (macro-join-timeout-exception? _e5057_))
            (macro-join-timeout-exception? _exn5055_))))
    (define join-timeout-exception-arguments
      (lambda (_exn5051_)
        (if (RuntimeException? _exn5051_)
            (let ((_e5053_ (&RuntimeException-exception _exn5051_)))
              (if (macro-join-timeout-exception? _e5053_)
                  (macro-join-timeout-exception-arguments _e5053_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _e5053_ '())))))
            (if (macro-join-timeout-exception? _exn5051_)
                (macro-join-timeout-exception-arguments _exn5051_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _exn5051_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_exn5045_)
        (if (RuntimeException? _exn5045_)
            (let ((_e5048_ (&RuntimeException-exception _exn5045_)))
              (if (macro-join-timeout-exception? _e5048_)
                  (macro-join-timeout-exception-procedure _e5048_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _e5048_ '())))))
            (if (macro-join-timeout-exception? _exn5045_)
                (macro-join-timeout-exception-procedure _exn5045_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _exn5045_ '())))))))
    (define keyword-expected-exception?
      (lambda (_exn5041_)
        (if (RuntimeException? _exn5041_)
            (let ((_e5043_ (&RuntimeException-exception _exn5041_)))
              (macro-keyword-expected-exception? _e5043_))
            (macro-keyword-expected-exception? _exn5041_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn5037_)
        (if (RuntimeException? _exn5037_)
            (let ((_e5039_ (&RuntimeException-exception _exn5037_)))
              (if (macro-keyword-expected-exception? _e5039_)
                  (macro-keyword-expected-exception-arguments _e5039_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _e5039_ '())))))
            (if (macro-keyword-expected-exception? _exn5037_)
                (macro-keyword-expected-exception-arguments _exn5037_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _exn5037_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn5031_)
        (if (RuntimeException? _exn5031_)
            (let ((_e5034_ (&RuntimeException-exception _exn5031_)))
              (if (macro-keyword-expected-exception? _e5034_)
                  (macro-keyword-expected-exception-procedure _e5034_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _e5034_ '())))))
            (if (macro-keyword-expected-exception? _exn5031_)
                (macro-keyword-expected-exception-procedure _exn5031_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _exn5031_ '())))))))
    (define length-mismatch-exception?
      (lambda (_exn5027_)
        (if (RuntimeException? _exn5027_)
            (let ((_e5029_ (&RuntimeException-exception _exn5027_)))
              (macro-length-mismatch-exception? _e5029_))
            (macro-length-mismatch-exception? _exn5027_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn5023_)
        (if (RuntimeException? _exn5023_)
            (let ((_e5025_ (&RuntimeException-exception _exn5023_)))
              (if (macro-length-mismatch-exception? _e5025_)
                  (macro-length-mismatch-exception-arg-id _e5025_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _e5025_ '())))))
            (if (macro-length-mismatch-exception? _exn5023_)
                (macro-length-mismatch-exception-arg-id _exn5023_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _exn5023_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn5019_)
        (if (RuntimeException? _exn5019_)
            (let ((_e5021_ (&RuntimeException-exception _exn5019_)))
              (if (macro-length-mismatch-exception? _e5021_)
                  (macro-length-mismatch-exception-arguments _e5021_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _e5021_ '())))))
            (if (macro-length-mismatch-exception? _exn5019_)
                (macro-length-mismatch-exception-arguments _exn5019_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _exn5019_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn5013_)
        (if (RuntimeException? _exn5013_)
            (let ((_e5016_ (&RuntimeException-exception _exn5013_)))
              (if (macro-length-mismatch-exception? _e5016_)
                  (macro-length-mismatch-exception-procedure _e5016_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _e5016_ '())))))
            (if (macro-length-mismatch-exception? _exn5013_)
                (macro-length-mismatch-exception-procedure _exn5013_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _exn5013_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn5009_)
        (if (RuntimeException? _exn5009_)
            (let ((_e5011_ (&RuntimeException-exception _exn5009_)))
              (macro-mailbox-receive-timeout-exception? _e5011_))
            (macro-mailbox-receive-timeout-exception? _exn5009_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn5005_)
        (if (RuntimeException? _exn5005_)
            (let ((_e5007_ (&RuntimeException-exception _exn5005_)))
              (if (macro-mailbox-receive-timeout-exception? _e5007_)
                  (macro-mailbox-receive-timeout-exception-arguments _e5007_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _e5007_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _exn5005_)
                (macro-mailbox-receive-timeout-exception-arguments _exn5005_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _exn5005_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn4999_)
        (if (RuntimeException? _exn4999_)
            (let ((_e5002_ (&RuntimeException-exception _exn4999_)))
              (if (macro-mailbox-receive-timeout-exception? _e5002_)
                  (macro-mailbox-receive-timeout-exception-procedure _e5002_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _e5002_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _exn4999_)
                (macro-mailbox-receive-timeout-exception-procedure _exn4999_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _exn4999_ '())))))))
    (define module-not-found-exception?
      (lambda (_exn4995_)
        (if (RuntimeException? _exn4995_)
            (let ((_e4997_ (&RuntimeException-exception _exn4995_)))
              (macro-module-not-found-exception? _e4997_))
            (macro-module-not-found-exception? _exn4995_))))
    (define module-not-found-exception-arguments
      (lambda (_exn4991_)
        (if (RuntimeException? _exn4991_)
            (let ((_e4993_ (&RuntimeException-exception _exn4991_)))
              (if (macro-module-not-found-exception? _e4993_)
                  (macro-module-not-found-exception-arguments _e4993_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _e4993_ '())))))
            (if (macro-module-not-found-exception? _exn4991_)
                (macro-module-not-found-exception-arguments _exn4991_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _exn4991_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_exn4985_)
        (if (RuntimeException? _exn4985_)
            (let ((_e4988_ (&RuntimeException-exception _exn4985_)))
              (if (macro-module-not-found-exception? _e4988_)
                  (macro-module-not-found-exception-procedure _e4988_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _e4988_ '())))))
            (if (macro-module-not-found-exception? _exn4985_)
                (macro-module-not-found-exception-procedure _exn4985_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _exn4985_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_exn4979_)
        (if (RuntimeException? _exn4979_)
            (let ((_e4982_ (&RuntimeException-exception _exn4979_)))
              (macro-multiple-c-return-exception? _e4982_))
            (macro-multiple-c-return-exception? _exn4979_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn4975_)
        (if (RuntimeException? _exn4975_)
            (let ((_e4977_ (&RuntimeException-exception _exn4975_)))
              (macro-no-such-file-or-directory-exception? _e4977_))
            (macro-no-such-file-or-directory-exception? _exn4975_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn4971_)
        (if (RuntimeException? _exn4971_)
            (let ((_e4973_ (&RuntimeException-exception _exn4971_)))
              (if (macro-no-such-file-or-directory-exception? _e4973_)
                  (macro-no-such-file-or-directory-exception-arguments _e4973_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _e4973_ '())))))
            (if (macro-no-such-file-or-directory-exception? _exn4971_)
                (macro-no-such-file-or-directory-exception-arguments _exn4971_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _exn4971_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn4965_)
        (if (RuntimeException? _exn4965_)
            (let ((_e4968_ (&RuntimeException-exception _exn4965_)))
              (if (macro-no-such-file-or-directory-exception? _e4968_)
                  (macro-no-such-file-or-directory-exception-procedure _e4968_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _e4968_ '())))))
            (if (macro-no-such-file-or-directory-exception? _exn4965_)
                (macro-no-such-file-or-directory-exception-procedure _exn4965_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _exn4965_ '())))))))
    (define noncontinuable-exception?
      (lambda (_exn4961_)
        (if (RuntimeException? _exn4961_)
            (let ((_e4963_ (&RuntimeException-exception _exn4961_)))
              (macro-noncontinuable-exception? _e4963_))
            (macro-noncontinuable-exception? _exn4961_))))
    (define noncontinuable-exception-reason
      (lambda (_exn4955_)
        (if (RuntimeException? _exn4955_)
            (let ((_e4958_ (&RuntimeException-exception _exn4955_)))
              (if (macro-noncontinuable-exception? _e4958_)
                  (macro-noncontinuable-exception-reason _e4958_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _e4958_ '())))))
            (if (macro-noncontinuable-exception? _exn4955_)
                (macro-noncontinuable-exception-reason _exn4955_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _exn4955_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn4951_)
        (if (RuntimeException? _exn4951_)
            (let ((_e4953_ (&RuntimeException-exception _exn4951_)))
              (macro-nonempty-input-port-character-buffer-exception? _e4953_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn4951_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn4947_)
        (if (RuntimeException? _exn4947_)
            (let ((_e4949_ (&RuntimeException-exception _exn4947_)))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e4949_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e4949_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _e4949_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn4947_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn4947_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _exn4947_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn4941_)
        (if (RuntimeException? _exn4941_)
            (let ((_e4944_ (&RuntimeException-exception _exn4941_)))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e4944_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e4944_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _e4944_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn4941_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn4941_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _exn4941_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn4937_)
        (if (RuntimeException? _exn4937_)
            (let ((_e4939_ (&RuntimeException-exception _exn4937_)))
              (macro-nonprocedure-operator-exception? _e4939_))
            (macro-nonprocedure-operator-exception? _exn4937_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn4933_)
        (if (RuntimeException? _exn4933_)
            (let ((_e4935_ (&RuntimeException-exception _exn4933_)))
              (if (macro-nonprocedure-operator-exception? _e4935_)
                  (macro-nonprocedure-operator-exception-arguments _e4935_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _e4935_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn4933_)
                (macro-nonprocedure-operator-exception-arguments _exn4933_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _exn4933_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn4929_)
        (if (RuntimeException? _exn4929_)
            (let ((_e4931_ (&RuntimeException-exception _exn4929_)))
              (if (macro-nonprocedure-operator-exception? _e4931_)
                  (macro-nonprocedure-operator-exception-code _e4931_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _e4931_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn4929_)
                (macro-nonprocedure-operator-exception-code _exn4929_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _exn4929_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn4925_)
        (if (RuntimeException? _exn4925_)
            (let ((_e4927_ (&RuntimeException-exception _exn4925_)))
              (if (macro-nonprocedure-operator-exception? _e4927_)
                  (macro-nonprocedure-operator-exception-operator _e4927_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _e4927_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn4925_)
                (macro-nonprocedure-operator-exception-operator _exn4925_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _exn4925_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn4919_)
        (if (RuntimeException? _exn4919_)
            (let ((_e4922_ (&RuntimeException-exception _exn4919_)))
              (if (macro-nonprocedure-operator-exception? _e4922_)
                  (macro-nonprocedure-operator-exception-rte _e4922_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _e4922_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn4919_)
                (macro-nonprocedure-operator-exception-rte _exn4919_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _exn4919_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn4915_)
        (if (RuntimeException? _exn4915_)
            (let ((_e4917_ (&RuntimeException-exception _exn4915_)))
              (macro-not-in-compilation-context-exception? _e4917_))
            (macro-not-in-compilation-context-exception? _exn4915_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn4911_)
        (if (RuntimeException? _exn4911_)
            (let ((_e4913_ (&RuntimeException-exception _exn4911_)))
              (if (macro-not-in-compilation-context-exception? _e4913_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e4913_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _e4913_ '())))))
            (if (macro-not-in-compilation-context-exception? _exn4911_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn4911_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _exn4911_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn4905_)
        (if (RuntimeException? _exn4905_)
            (let ((_e4908_ (&RuntimeException-exception _exn4905_)))
              (if (macro-not-in-compilation-context-exception? _e4908_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e4908_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _e4908_ '())))))
            (if (macro-not-in-compilation-context-exception? _exn4905_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn4905_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _exn4905_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn4901_)
        (if (RuntimeException? _exn4901_)
            (let ((_e4903_ (&RuntimeException-exception _exn4901_)))
              (macro-number-of-arguments-limit-exception? _e4903_))
            (macro-number-of-arguments-limit-exception? _exn4901_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn4897_)
        (if (RuntimeException? _exn4897_)
            (let ((_e4899_ (&RuntimeException-exception _exn4897_)))
              (if (macro-number-of-arguments-limit-exception? _e4899_)
                  (macro-number-of-arguments-limit-exception-arguments _e4899_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _e4899_ '())))))
            (if (macro-number-of-arguments-limit-exception? _exn4897_)
                (macro-number-of-arguments-limit-exception-arguments _exn4897_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _exn4897_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn4891_)
        (if (RuntimeException? _exn4891_)
            (let ((_e4894_ (&RuntimeException-exception _exn4891_)))
              (if (macro-number-of-arguments-limit-exception? _e4894_)
                  (macro-number-of-arguments-limit-exception-procedure _e4894_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _e4894_ '())))))
            (if (macro-number-of-arguments-limit-exception? _exn4891_)
                (macro-number-of-arguments-limit-exception-procedure _exn4891_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _exn4891_ '())))))))
    (define os-exception?
      (lambda (_exn4887_)
        (if (RuntimeException? _exn4887_)
            (let ((_e4889_ (&RuntimeException-exception _exn4887_)))
              (macro-os-exception? _e4889_))
            (macro-os-exception? _exn4887_))))
    (define os-exception-arguments
      (lambda (_exn4883_)
        (if (RuntimeException? _exn4883_)
            (let ((_e4885_ (&RuntimeException-exception _exn4883_)))
              (if (macro-os-exception? _e4885_)
                  (macro-os-exception-arguments _e4885_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments (cons _e4885_ '())))))
            (if (macro-os-exception? _exn4883_)
                (macro-os-exception-arguments _exn4883_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments (cons _exn4883_ '())))))))
    (define os-exception-code
      (lambda (_exn4879_)
        (if (RuntimeException? _exn4879_)
            (let ((_e4881_ (&RuntimeException-exception _exn4879_)))
              (if (macro-os-exception? _e4881_)
                  (macro-os-exception-code _e4881_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _e4881_ '())))))
            (if (macro-os-exception? _exn4879_)
                (macro-os-exception-code _exn4879_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _exn4879_ '())))))))
    (define os-exception-message
      (lambda (_exn4875_)
        (if (RuntimeException? _exn4875_)
            (let ((_e4877_ (&RuntimeException-exception _exn4875_)))
              (if (macro-os-exception? _e4877_)
                  (macro-os-exception-message _e4877_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _e4877_ '())))))
            (if (macro-os-exception? _exn4875_)
                (macro-os-exception-message _exn4875_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message (cons _exn4875_ '())))))))
    (define os-exception-procedure
      (lambda (_exn4869_)
        (if (RuntimeException? _exn4869_)
            (let ((_e4872_ (&RuntimeException-exception _exn4869_)))
              (if (macro-os-exception? _e4872_)
                  (macro-os-exception-procedure _e4872_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure (cons _e4872_ '())))))
            (if (macro-os-exception? _exn4869_)
                (macro-os-exception-procedure _exn4869_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure (cons _exn4869_ '())))))))
    (define permission-denied-exception?
      (lambda (_exn4865_)
        (if (RuntimeException? _exn4865_)
            (let ((_e4867_ (&RuntimeException-exception _exn4865_)))
              (macro-permission-denied-exception? _e4867_))
            (macro-permission-denied-exception? _exn4865_))))
    (define permission-denied-exception-arguments
      (lambda (_exn4861_)
        (if (RuntimeException? _exn4861_)
            (let ((_e4863_ (&RuntimeException-exception _exn4861_)))
              (if (macro-permission-denied-exception? _e4863_)
                  (macro-permission-denied-exception-arguments _e4863_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _e4863_ '())))))
            (if (macro-permission-denied-exception? _exn4861_)
                (macro-permission-denied-exception-arguments _exn4861_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _exn4861_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_exn4855_)
        (if (RuntimeException? _exn4855_)
            (let ((_e4858_ (&RuntimeException-exception _exn4855_)))
              (if (macro-permission-denied-exception? _e4858_)
                  (macro-permission-denied-exception-procedure _e4858_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _e4858_ '())))))
            (if (macro-permission-denied-exception? _exn4855_)
                (macro-permission-denied-exception-procedure _exn4855_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _exn4855_ '())))))))
    (define range-exception?
      (lambda (_exn4851_)
        (if (RuntimeException? _exn4851_)
            (let ((_e4853_ (&RuntimeException-exception _exn4851_)))
              (macro-range-exception? _e4853_))
            (macro-range-exception? _exn4851_))))
    (define range-exception-arg-id
      (lambda (_exn4847_)
        (if (RuntimeException? _exn4847_)
            (let ((_e4849_ (&RuntimeException-exception _exn4847_)))
              (if (macro-range-exception? _e4849_)
                  (macro-range-exception-arg-id _e4849_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id (cons _e4849_ '())))))
            (if (macro-range-exception? _exn4847_)
                (macro-range-exception-arg-id _exn4847_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id (cons _exn4847_ '())))))))
    (define range-exception-arguments
      (lambda (_exn4843_)
        (if (RuntimeException? _exn4843_)
            (let ((_e4845_ (&RuntimeException-exception _exn4843_)))
              (if (macro-range-exception? _e4845_)
                  (macro-range-exception-arguments _e4845_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _e4845_ '())))))
            (if (macro-range-exception? _exn4843_)
                (macro-range-exception-arguments _exn4843_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _exn4843_ '())))))))
    (define range-exception-procedure
      (lambda (_exn4837_)
        (if (RuntimeException? _exn4837_)
            (let ((_e4840_ (&RuntimeException-exception _exn4837_)))
              (if (macro-range-exception? _e4840_)
                  (macro-range-exception-procedure _e4840_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _e4840_ '())))))
            (if (macro-range-exception? _exn4837_)
                (macro-range-exception-procedure _exn4837_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _exn4837_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_exn4833_)
        (if (RuntimeException? _exn4833_)
            (let ((_e4835_ (&RuntimeException-exception _exn4833_)))
              (macro-rpc-remote-error-exception? _e4835_))
            (macro-rpc-remote-error-exception? _exn4833_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn4829_)
        (if (RuntimeException? _exn4829_)
            (let ((_e4831_ (&RuntimeException-exception _exn4829_)))
              (if (macro-rpc-remote-error-exception? _e4831_)
                  (macro-rpc-remote-error-exception-arguments _e4831_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _e4831_ '())))))
            (if (macro-rpc-remote-error-exception? _exn4829_)
                (macro-rpc-remote-error-exception-arguments _exn4829_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _exn4829_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn4825_)
        (if (RuntimeException? _exn4825_)
            (let ((_e4827_ (&RuntimeException-exception _exn4825_)))
              (if (macro-rpc-remote-error-exception? _e4827_)
                  (macro-rpc-remote-error-exception-message _e4827_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _e4827_ '())))))
            (if (macro-rpc-remote-error-exception? _exn4825_)
                (macro-rpc-remote-error-exception-message _exn4825_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _exn4825_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn4819_)
        (if (RuntimeException? _exn4819_)
            (let ((_e4822_ (&RuntimeException-exception _exn4819_)))
              (if (macro-rpc-remote-error-exception? _e4822_)
                  (macro-rpc-remote-error-exception-procedure _e4822_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _e4822_ '())))))
            (if (macro-rpc-remote-error-exception? _exn4819_)
                (macro-rpc-remote-error-exception-procedure _exn4819_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _exn4819_ '())))))))
    (define scheduler-exception?
      (lambda (_exn4815_)
        (if (RuntimeException? _exn4815_)
            (let ((_e4817_ (&RuntimeException-exception _exn4815_)))
              (macro-scheduler-exception? _e4817_))
            (macro-scheduler-exception? _exn4815_))))
    (define scheduler-exception-reason
      (lambda (_exn4809_)
        (if (RuntimeException? _exn4809_)
            (let ((_e4812_ (&RuntimeException-exception _exn4809_)))
              (if (macro-scheduler-exception? _e4812_)
                  (macro-scheduler-exception-reason _e4812_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _e4812_ '())))))
            (if (macro-scheduler-exception? _exn4809_)
                (macro-scheduler-exception-reason _exn4809_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _exn4809_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_exn4805_)
        (if (RuntimeException? _exn4805_)
            (let ((_e4807_ (&RuntimeException-exception _exn4805_)))
              (macro-sfun-conversion-exception? _e4807_))
            (macro-sfun-conversion-exception? _exn4805_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn4801_)
        (if (RuntimeException? _exn4801_)
            (let ((_e4803_ (&RuntimeException-exception _exn4801_)))
              (if (macro-sfun-conversion-exception? _e4803_)
                  (macro-sfun-conversion-exception-arguments _e4803_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _e4803_ '())))))
            (if (macro-sfun-conversion-exception? _exn4801_)
                (macro-sfun-conversion-exception-arguments _exn4801_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _exn4801_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_exn4797_)
        (if (RuntimeException? _exn4797_)
            (let ((_e4799_ (&RuntimeException-exception _exn4797_)))
              (if (macro-sfun-conversion-exception? _e4799_)
                  (macro-sfun-conversion-exception-code _e4799_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _e4799_ '())))))
            (if (macro-sfun-conversion-exception? _exn4797_)
                (macro-sfun-conversion-exception-code _exn4797_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _exn4797_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_exn4793_)
        (if (RuntimeException? _exn4793_)
            (let ((_e4795_ (&RuntimeException-exception _exn4793_)))
              (if (macro-sfun-conversion-exception? _e4795_)
                  (macro-sfun-conversion-exception-message _e4795_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _e4795_ '())))))
            (if (macro-sfun-conversion-exception? _exn4793_)
                (macro-sfun-conversion-exception-message _exn4793_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _exn4793_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn4787_)
        (if (RuntimeException? _exn4787_)
            (let ((_e4790_ (&RuntimeException-exception _exn4787_)))
              (if (macro-sfun-conversion-exception? _e4790_)
                  (macro-sfun-conversion-exception-procedure _e4790_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _e4790_ '())))))
            (if (macro-sfun-conversion-exception? _exn4787_)
                (macro-sfun-conversion-exception-procedure _exn4787_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _exn4787_ '())))))))
    (define stack-overflow-exception?
      (lambda (_exn4781_)
        (if (RuntimeException? _exn4781_)
            (let ((_e4784_ (&RuntimeException-exception _exn4781_)))
              (macro-stack-overflow-exception? _e4784_))
            (macro-stack-overflow-exception? _exn4781_))))
    (define started-thread-exception?
      (lambda (_exn4777_)
        (if (RuntimeException? _exn4777_)
            (let ((_e4779_ (&RuntimeException-exception _exn4777_)))
              (macro-started-thread-exception? _e4779_))
            (macro-started-thread-exception? _exn4777_))))
    (define started-thread-exception-arguments
      (lambda (_exn4773_)
        (if (RuntimeException? _exn4773_)
            (let ((_e4775_ (&RuntimeException-exception _exn4773_)))
              (if (macro-started-thread-exception? _e4775_)
                  (macro-started-thread-exception-arguments _e4775_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _e4775_ '())))))
            (if (macro-started-thread-exception? _exn4773_)
                (macro-started-thread-exception-arguments _exn4773_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _exn4773_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_exn4767_)
        (if (RuntimeException? _exn4767_)
            (let ((_e4770_ (&RuntimeException-exception _exn4767_)))
              (if (macro-started-thread-exception? _e4770_)
                  (macro-started-thread-exception-procedure _e4770_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _e4770_ '())))))
            (if (macro-started-thread-exception? _exn4767_)
                (macro-started-thread-exception-procedure _exn4767_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _exn4767_ '())))))))
    (define terminated-thread-exception?
      (lambda (_exn4763_)
        (if (RuntimeException? _exn4763_)
            (let ((_e4765_ (&RuntimeException-exception _exn4763_)))
              (macro-terminated-thread-exception? _e4765_))
            (macro-terminated-thread-exception? _exn4763_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn4759_)
        (if (RuntimeException? _exn4759_)
            (let ((_e4761_ (&RuntimeException-exception _exn4759_)))
              (if (macro-terminated-thread-exception? _e4761_)
                  (macro-terminated-thread-exception-arguments _e4761_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _e4761_ '())))))
            (if (macro-terminated-thread-exception? _exn4759_)
                (macro-terminated-thread-exception-arguments _exn4759_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _exn4759_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn4753_)
        (if (RuntimeException? _exn4753_)
            (let ((_e4756_ (&RuntimeException-exception _exn4753_)))
              (if (macro-terminated-thread-exception? _e4756_)
                  (macro-terminated-thread-exception-procedure _e4756_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _e4756_ '())))))
            (if (macro-terminated-thread-exception? _exn4753_)
                (macro-terminated-thread-exception-procedure _exn4753_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _exn4753_ '())))))))
    (define type-exception?
      (lambda (_exn4749_)
        (if (RuntimeException? _exn4749_)
            (let ((_e4751_ (&RuntimeException-exception _exn4749_)))
              (macro-type-exception? _e4751_))
            (macro-type-exception? _exn4749_))))
    (define type-exception-arg-id
      (lambda (_exn4745_)
        (if (RuntimeException? _exn4745_)
            (let ((_e4747_ (&RuntimeException-exception _exn4745_)))
              (if (macro-type-exception? _e4747_)
                  (macro-type-exception-arg-id _e4747_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id (cons _e4747_ '())))))
            (if (macro-type-exception? _exn4745_)
                (macro-type-exception-arg-id _exn4745_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id (cons _exn4745_ '())))))))
    (define type-exception-arguments
      (lambda (_exn4741_)
        (if (RuntimeException? _exn4741_)
            (let ((_e4743_ (&RuntimeException-exception _exn4741_)))
              (if (macro-type-exception? _e4743_)
                  (macro-type-exception-arguments _e4743_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments (cons _e4743_ '())))))
            (if (macro-type-exception? _exn4741_)
                (macro-type-exception-arguments _exn4741_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _exn4741_ '())))))))
    (define type-exception-procedure
      (lambda (_exn4737_)
        (if (RuntimeException? _exn4737_)
            (let ((_e4739_ (&RuntimeException-exception _exn4737_)))
              (if (macro-type-exception? _e4739_)
                  (macro-type-exception-procedure _e4739_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure (cons _e4739_ '())))))
            (if (macro-type-exception? _exn4737_)
                (macro-type-exception-procedure _exn4737_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _exn4737_ '())))))))
    (define type-exception-type-id
      (lambda (_exn4731_)
        (if (RuntimeException? _exn4731_)
            (let ((_e4734_ (&RuntimeException-exception _exn4731_)))
              (if (macro-type-exception? _e4734_)
                  (macro-type-exception-type-id _e4734_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id (cons _e4734_ '())))))
            (if (macro-type-exception? _exn4731_)
                (macro-type-exception-type-id _exn4731_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id (cons _exn4731_ '())))))))
    (define unbound-global-exception?
      (lambda (_exn4727_)
        (if (RuntimeException? _exn4727_)
            (let ((_e4729_ (&RuntimeException-exception _exn4727_)))
              (macro-unbound-global-exception? _e4729_))
            (macro-unbound-global-exception? _exn4727_))))
    (define unbound-global-exception-code
      (lambda (_exn4723_)
        (if (RuntimeException? _exn4723_)
            (let ((_e4725_ (&RuntimeException-exception _exn4723_)))
              (if (macro-unbound-global-exception? _e4725_)
                  (macro-unbound-global-exception-code _e4725_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _e4725_ '())))))
            (if (macro-unbound-global-exception? _exn4723_)
                (macro-unbound-global-exception-code _exn4723_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _exn4723_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_exn4719_)
        (if (RuntimeException? _exn4719_)
            (let ((_e4721_ (&RuntimeException-exception _exn4719_)))
              (if (macro-unbound-global-exception? _e4721_)
                  (macro-unbound-global-exception-rte _e4721_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _e4721_ '())))))
            (if (macro-unbound-global-exception? _exn4719_)
                (macro-unbound-global-exception-rte _exn4719_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _exn4719_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_exn4713_)
        (if (RuntimeException? _exn4713_)
            (let ((_e4716_ (&RuntimeException-exception _exn4713_)))
              (if (macro-unbound-global-exception? _e4716_)
                  (macro-unbound-global-exception-variable _e4716_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _e4716_ '())))))
            (if (macro-unbound-global-exception? _exn4713_)
                (macro-unbound-global-exception-variable _exn4713_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _exn4713_ '())))))))
    (define unbound-key-exception?
      (lambda (_exn4709_)
        (if (RuntimeException? _exn4709_)
            (let ((_e4711_ (&RuntimeException-exception _exn4709_)))
              (macro-unbound-key-exception? _e4711_))
            (macro-unbound-key-exception? _exn4709_))))
    (define unbound-key-exception-arguments
      (lambda (_exn4705_)
        (if (RuntimeException? _exn4705_)
            (let ((_e4707_ (&RuntimeException-exception _exn4705_)))
              (if (macro-unbound-key-exception? _e4707_)
                  (macro-unbound-key-exception-arguments _e4707_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _e4707_ '())))))
            (if (macro-unbound-key-exception? _exn4705_)
                (macro-unbound-key-exception-arguments _exn4705_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _exn4705_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_exn4699_)
        (if (RuntimeException? _exn4699_)
            (let ((_e4702_ (&RuntimeException-exception _exn4699_)))
              (if (macro-unbound-key-exception? _e4702_)
                  (macro-unbound-key-exception-procedure _e4702_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _e4702_ '())))))
            (if (macro-unbound-key-exception? _exn4699_)
                (macro-unbound-key-exception-procedure _exn4699_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _exn4699_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn4695_)
        (if (RuntimeException? _exn4695_)
            (let ((_e4697_ (&RuntimeException-exception _exn4695_)))
              (macro-unbound-os-environment-variable-exception? _e4697_))
            (macro-unbound-os-environment-variable-exception? _exn4695_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn4691_)
        (if (RuntimeException? _exn4691_)
            (let ((_e4693_ (&RuntimeException-exception _exn4691_)))
              (if (macro-unbound-os-environment-variable-exception? _e4693_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e4693_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _e4693_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _exn4691_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn4691_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _exn4691_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn4685_)
        (if (RuntimeException? _exn4685_)
            (let ((_e4688_ (&RuntimeException-exception _exn4685_)))
              (if (macro-unbound-os-environment-variable-exception? _e4688_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e4688_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _e4688_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _exn4685_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn4685_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _exn4685_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_exn4681_)
        (if (RuntimeException? _exn4681_)
            (let ((_e4683_ (&RuntimeException-exception _exn4681_)))
              (macro-unbound-serial-number-exception? _e4683_))
            (macro-unbound-serial-number-exception? _exn4681_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn4677_)
        (if (RuntimeException? _exn4677_)
            (let ((_e4679_ (&RuntimeException-exception _exn4677_)))
              (if (macro-unbound-serial-number-exception? _e4679_)
                  (macro-unbound-serial-number-exception-arguments _e4679_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _e4679_ '())))))
            (if (macro-unbound-serial-number-exception? _exn4677_)
                (macro-unbound-serial-number-exception-arguments _exn4677_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _exn4677_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn4671_)
        (if (RuntimeException? _exn4671_)
            (let ((_e4674_ (&RuntimeException-exception _exn4671_)))
              (if (macro-unbound-serial-number-exception? _e4674_)
                  (macro-unbound-serial-number-exception-procedure _e4674_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _e4674_ '())))))
            (if (macro-unbound-serial-number-exception? _exn4671_)
                (macro-unbound-serial-number-exception-procedure _exn4671_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _exn4671_ '())))))))
    (define uncaught-exception?
      (lambda (_exn4667_)
        (if (RuntimeException? _exn4667_)
            (let ((_e4669_ (&RuntimeException-exception _exn4667_)))
              (macro-uncaught-exception? _e4669_))
            (macro-uncaught-exception? _exn4667_))))
    (define uncaught-exception-arguments
      (lambda (_exn4663_)
        (if (RuntimeException? _exn4663_)
            (let ((_e4665_ (&RuntimeException-exception _exn4663_)))
              (if (macro-uncaught-exception? _e4665_)
                  (macro-uncaught-exception-arguments _e4665_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _e4665_ '())))))
            (if (macro-uncaught-exception? _exn4663_)
                (macro-uncaught-exception-arguments _exn4663_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _exn4663_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_exn4659_)
        (if (RuntimeException? _exn4659_)
            (let ((_e4661_ (&RuntimeException-exception _exn4659_)))
              (if (macro-uncaught-exception? _e4661_)
                  (macro-uncaught-exception-procedure _e4661_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _e4661_ '())))))
            (if (macro-uncaught-exception? _exn4659_)
                (macro-uncaught-exception-procedure _exn4659_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _exn4659_ '())))))))
    (define uncaught-exception-reason
      (lambda (_exn4653_)
        (if (RuntimeException? _exn4653_)
            (let ((_e4656_ (&RuntimeException-exception _exn4653_)))
              (if (macro-uncaught-exception? _e4656_)
                  (macro-uncaught-exception-reason _e4656_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _e4656_ '())))))
            (if (macro-uncaught-exception? _exn4653_)
                (macro-uncaught-exception-reason _exn4653_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _exn4653_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_exn4649_)
        (if (RuntimeException? _exn4649_)
            (let ((_e4651_ (&RuntimeException-exception _exn4649_)))
              (macro-uninitialized-thread-exception? _e4651_))
            (macro-uninitialized-thread-exception? _exn4649_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn4645_)
        (if (RuntimeException? _exn4645_)
            (let ((_e4647_ (&RuntimeException-exception _exn4645_)))
              (if (macro-uninitialized-thread-exception? _e4647_)
                  (macro-uninitialized-thread-exception-arguments _e4647_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _e4647_ '())))))
            (if (macro-uninitialized-thread-exception? _exn4645_)
                (macro-uninitialized-thread-exception-arguments _exn4645_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _exn4645_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn4639_)
        (if (RuntimeException? _exn4639_)
            (let ((_e4642_ (&RuntimeException-exception _exn4639_)))
              (if (macro-uninitialized-thread-exception? _e4642_)
                  (macro-uninitialized-thread-exception-procedure _e4642_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _e4642_ '())))))
            (if (macro-uninitialized-thread-exception? _exn4639_)
                (macro-uninitialized-thread-exception-procedure _exn4639_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _exn4639_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn4635_)
        (if (RuntimeException? _exn4635_)
            (let ((_e4637_ (&RuntimeException-exception _exn4635_)))
              (macro-unknown-keyword-argument-exception? _e4637_))
            (macro-unknown-keyword-argument-exception? _exn4635_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn4631_)
        (if (RuntimeException? _exn4631_)
            (let ((_e4633_ (&RuntimeException-exception _exn4631_)))
              (if (macro-unknown-keyword-argument-exception? _e4633_)
                  (macro-unknown-keyword-argument-exception-arguments _e4633_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _e4633_ '())))))
            (if (macro-unknown-keyword-argument-exception? _exn4631_)
                (macro-unknown-keyword-argument-exception-arguments _exn4631_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _exn4631_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn4625_)
        (if (RuntimeException? _exn4625_)
            (let ((_e4628_ (&RuntimeException-exception _exn4625_)))
              (if (macro-unknown-keyword-argument-exception? _e4628_)
                  (macro-unknown-keyword-argument-exception-procedure _e4628_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _e4628_ '())))))
            (if (macro-unknown-keyword-argument-exception? _exn4625_)
                (macro-unknown-keyword-argument-exception-procedure _exn4625_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _exn4625_ '())))))))
    (define unterminated-process-exception?
      (lambda (_exn4621_)
        (if (RuntimeException? _exn4621_)
            (let ((_e4623_ (&RuntimeException-exception _exn4621_)))
              (macro-unterminated-process-exception? _e4623_))
            (macro-unterminated-process-exception? _exn4621_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn4617_)
        (if (RuntimeException? _exn4617_)
            (let ((_e4619_ (&RuntimeException-exception _exn4617_)))
              (if (macro-unterminated-process-exception? _e4619_)
                  (macro-unterminated-process-exception-arguments _e4619_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _e4619_ '())))))
            (if (macro-unterminated-process-exception? _exn4617_)
                (macro-unterminated-process-exception-arguments _exn4617_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _exn4617_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn4611_)
        (if (RuntimeException? _exn4611_)
            (let ((_e4614_ (&RuntimeException-exception _exn4611_)))
              (if (macro-unterminated-process-exception? _e4614_)
                  (macro-unterminated-process-exception-procedure _e4614_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _e4614_ '())))))
            (if (macro-unterminated-process-exception? _exn4611_)
                (macro-unterminated-process-exception-procedure _exn4611_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _exn4611_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn4607_)
        (if (RuntimeException? _exn4607_)
            (let ((_e4609_ (&RuntimeException-exception _exn4607_)))
              (macro-wrong-number-of-arguments-exception? _e4609_))
            (macro-wrong-number-of-arguments-exception? _exn4607_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn4603_)
        (if (RuntimeException? _exn4603_)
            (let ((_e4605_ (&RuntimeException-exception _exn4603_)))
              (if (macro-wrong-number-of-arguments-exception? _e4605_)
                  (macro-wrong-number-of-arguments-exception-arguments _e4605_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _e4605_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _exn4603_)
                (macro-wrong-number-of-arguments-exception-arguments _exn4603_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _exn4603_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn4597_)
        (if (RuntimeException? _exn4597_)
            (let ((_e4600_ (&RuntimeException-exception _exn4597_)))
              (if (macro-wrong-number-of-arguments-exception? _e4600_)
                  (macro-wrong-number-of-arguments-exception-procedure _e4600_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _e4600_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _exn4597_)
                (macro-wrong-number-of-arguments-exception-procedure _exn4597_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _exn4597_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn4593_)
        (if (RuntimeException? _exn4593_)
            (let ((_e4595_ (&RuntimeException-exception _exn4593_)))
              (macro-wrong-number-of-values-exception? _e4595_))
            (macro-wrong-number-of-values-exception? _exn4593_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn4589_)
        (if (RuntimeException? _exn4589_)
            (let ((_e4591_ (&RuntimeException-exception _exn4589_)))
              (if (macro-wrong-number-of-values-exception? _e4591_)
                  (macro-wrong-number-of-values-exception-code _e4591_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _e4591_ '())))))
            (if (macro-wrong-number-of-values-exception? _exn4589_)
                (macro-wrong-number-of-values-exception-code _exn4589_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _exn4589_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn4585_)
        (if (RuntimeException? _exn4585_)
            (let ((_e4587_ (&RuntimeException-exception _exn4585_)))
              (if (macro-wrong-number-of-values-exception? _e4587_)
                  (macro-wrong-number-of-values-exception-rte _e4587_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _e4587_ '())))))
            (if (macro-wrong-number-of-values-exception? _exn4585_)
                (macro-wrong-number-of-values-exception-rte _exn4585_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _exn4585_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn4579_)
        (if (RuntimeException? _exn4579_)
            (let ((_e4582_ (&RuntimeException-exception _exn4579_)))
              (if (macro-wrong-number-of-values-exception? _e4582_)
                  (macro-wrong-number-of-values-exception-vals _e4582_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _e4582_ '())))))
            (if (macro-wrong-number-of-values-exception? _exn4579_)
                (macro-wrong-number-of-values-exception-vals _exn4579_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _exn4579_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn4573_)
        (if (RuntimeException? _exn4573_)
            (let ((_e4576_ (&RuntimeException-exception _exn4573_)))
              (macro-wrong-processor-c-return-exception? _e4576_))
            (macro-wrong-processor-c-return-exception? _exn4573_))))))
