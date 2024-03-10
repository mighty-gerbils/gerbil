(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710067691)
  (begin
    (define Exception::t
      (let ((__tmp66265 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66265
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66233_ (apply make-instance Exception::t _$args66233_)))
    (define StackTrace::t
      (let ((__tmp66266 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66266
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66230_ (apply make-instance StackTrace::t _$args66230_)))
    (define StackTrace-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor StackTrace::t 'continuation)))
    (define StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator StackTrace::t 'continuation)))
    (define &StackTrace-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor StackTrace::t 'continuation)))
    (define &StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator StackTrace::t 'continuation)))
    (define Error::t
      (let ((__tmp66267 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66267
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66227_ (apply make-instance Error::t _$args66227_)))
    (define Error-message
      (let ()
        (declare (not safe))
        (make-class-slot-accessor Error::t 'message)))
    (define Error-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-accessor Error::t 'irritants)))
    (define Error-where
      (let () (declare (not safe)) (make-class-slot-accessor Error::t 'where)))
    (define Error-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor Error::t 'continuation)))
    (define Error-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator Error::t 'message)))
    (define Error-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator Error::t 'irritants)))
    (define Error-where-set!
      (let () (declare (not safe)) (make-class-slot-mutator Error::t 'where)))
    (define Error-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator Error::t 'continuation)))
    (define &Error-message
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'message)))
    (define &Error-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'irritants)))
    (define &Error-where
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'where)))
    (define &Error-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor Error::t 'continuation)))
    (define &Error-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'message)))
    (define &Error-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'irritants)))
    (define &Error-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'where)))
    (define &Error-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator Error::t 'continuation)))
    (define RuntimeException::t
      (let ((__tmp66268 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66268
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66224_
        (apply make-instance RuntimeException::t _$args66224_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor RuntimeException::t 'continuation)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator RuntimeException::t 'exception)))
    (define RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator RuntimeException::t 'continuation)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         RuntimeException::t
         'continuation)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator RuntimeException::t 'continuation)))
    (define gerbil-exception-handler-hook
      (lambda (_exn66219_ _continue66220_)
        (let ((_exn66222_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66219_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66222_ _continue66220_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66215_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66215_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66215_ 'continuation))
                '#!void
                (let ((__tmp66269
                       (lambda (_cont66217_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66215_
                            'continuation
                            _cont66217_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66269)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66215_))))
    (define error
      (lambda (_message66212_ . _irritants66213_)
        (let ((__tmp66270
               (let ((__obj66259
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66259
                  _message66212_
                  'irritants:
                  _irritants66213_)
                 __obj66259)))
          (declare (not safe))
          (raise __tmp66270))))
    (define with-exception-handler
      (lambda (_handler66205_ _thunk66206_)
        (if (let () (declare (not safe)) (procedure? _handler66205_))
            '#!void
            (let ((__tmp66271
                   (let ((__obj66260
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66260
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66205_ '())))
                     __obj66260)))
              (declare (not safe))
              (raise __tmp66271)))
        (if (let () (declare (not safe)) (procedure? _thunk66206_))
            '#!void
            (let ((__tmp66272
                   (let ((__obj66261
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66261
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66206_ '())))
                     __obj66261)))
              (declare (not safe))
              (raise __tmp66272)))
        (let ((__tmp66273
               (lambda (_exn66208_)
                 (let ((_exn66210_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66208_))))
                   (_handler66205_ _exn66210_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66273 _thunk66206_))))
    (define with-catch
      (lambda (_handler66198_ _thunk66199_)
        (if (let () (declare (not safe)) (procedure? _handler66198_))
            '#!void
            (let ((__tmp66274
                   (let ((__obj66262
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66262
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66198_ '())))
                     __obj66262)))
              (declare (not safe))
              (raise __tmp66274)))
        (if (let () (declare (not safe)) (procedure? _thunk66199_))
            '#!void
            (let ((__tmp66275
                   (let ((__obj66263
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66263
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66199_ '())))
                     __obj66263)))
              (declare (not safe))
              (raise __tmp66275)))
        (let ((__tmp66276
               (lambda (_cont66201_)
                 (let ((__tmp66277
                        (lambda (_exn66203_)
                          (let ()
                            (declare (not safe))
                            (##continuation-graft
                             _cont66201_
                             _handler66198_
                             _exn66203_)))))
                   (declare (not safe))
                   (with-exception-handler __tmp66277 _thunk66199_)))))
          (declare (not safe))
          (##continuation-capture __tmp66276))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66189_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66189_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66189_)))
            _exn66189_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66189_))
                _exn66189_
                (if (macro-exception? _exn66189_)
                    (let ((_rte66194_
                           (let ((__obj66264
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66264
                                _exn66189_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66264)))
                      (let ((__tmp66278
                             (lambda (_cont66196_)
                               (let ((__tmp66279
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66196_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66194_
                                  'continuation
                                  __tmp66279)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66278))
                      _rte66194_)
                    _exn66189_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66184_)
        (let ((_$e66186_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66184_))))
          (if _$e66186_
              _$e66186_
              (let () (declare (not safe)) (error-exception? _obj66184_))))))
    (define error-message
      (lambda (_obj66182_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66182_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66182_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66182_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66182_))
                '#f))))
    (define error-irritants
      (lambda (_obj66180_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66180_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66180_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66180_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66180_))
                '#f))))
    (define error-trace
      (lambda (_obj66178_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66178_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66178_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66160_ _port66161_)
        (let ((_$e66163_
               (let ()
                 (declare (not safe))
                 (method-ref _e66160_ 'display-exception))))
          (if _$e66163_
              ((lambda (_f66166_) (_f66166_ _e66160_ _port66161_)) _$e66163_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66160_ _port66161_))))))
    (define display-exception__0
      (lambda (_e66171_)
        (let ((_port66173_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66171_ _port66173_))))
    (define display-exception
      (lambda _g66281_
        (let ((_g66280_ (let () (declare (not safe)) (##length _g66281_))))
          (cond ((let () (declare (not safe)) (##fx= _g66280_ 1))
                 (apply (lambda (_e66171_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66171_)))
                        _g66281_))
                ((let () (declare (not safe)) (##fx= _g66280_ 2))
                 (apply (lambda (_e66175_ _port66176_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66175_ _port66176_)))
                        _g66281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66281_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66149_ _message66150_ . _rest66151_)
        (let ((_message66157_
               (if (let () (declare (not safe)) (string? _message66150_))
                   _message66150_
                   (call-with-output-string
                    '""
                    (lambda (_g6615266154_)
                      (display _message66150_ _g6615266154_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66149_ 'message _message66157_))
          (apply class-instance-init! _self66149_ _rest66151_))))
    (define Error:::init!::specialize
      (lambda (__klass66235 __method-table66236)
        (let ((__message66237
               (let ((__slot66238
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66235 'message))))
                 (if __slot66238
                     __slot66238
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66149_ _message66150_ . _rest66151_)
            (let ((_message66157_
                   (if (let () (declare (not safe)) (string? _message66150_))
                       _message66150_
                       (call-with-output-string
                        '""
                        (lambda (_g6615266154_)
                          (display _message66150_ _g6615266154_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66149_
                 _message66157_
                 __message66237
                 __klass66235
                 '#f))
              (apply class-instance-init! _self66149_ _rest66151_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self66007_ _port66008_)
        (let ((_tmp-port66010_ (open-output-string))
              (_display-error-newline66011_
               (> (output-port-column _port66008_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66010_))
          (let ((__tmp66282
                 (lambda ()
                   (if _display-error-newline66011_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66014_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66007_ 'where))))
                     (if _$e66014_ (display _$e66014_) (display '"?")))
                   (let ((__tmp66283
                          (let ((__tmp66284 (object-type _self66007_)))
                            (declare (not safe))
                            (##type-name __tmp66284))))
                     (declare (not safe))
                     (display* '" [" __tmp66283 '"]: "))
                   (let ((__tmp66285
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66007_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66285))
                   (let ((_irritants66017_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66007_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66017_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66019_)
                              (write _obj66019_)
                              (write-char '#\space))
                            _irritants66017_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66007_))
                            (dump-stack-trace?))
                       (let ((_cont6602066022_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66007_
                                 'continuation))))
                         (if _cont6602066022_
                             (let ((_cont66025_ _cont6602066022_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66025_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66282
             current-output-port
             _tmp-port66010_))
          (let ((__tmp66286 (get-output-string _tmp-port66010_)))
            (declare (not safe))
            (##write-string __tmp66286 _port66008_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66239 __method-table66240)
        (let ((__continuation66241
               (let ((__slot66245
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66239 'continuation))))
                 (if __slot66245
                     __slot66245
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__message66242
               (let ((__slot66246
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66239 'message))))
                 (if __slot66246
                     __slot66246
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where66243
               (let ((__slot66247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66239 'where))))
                 (if __slot66247
                     __slot66247
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants66244
               (let ((__slot66248
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66239 'irritants))))
                 (if __slot66248
                     __slot66248
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants))))))
          (lambda (_self66007_ _port66008_)
            (let ((_tmp-port66010_ (open-output-string))
                  (_display-error-newline66011_
                   (> (output-port-column _port66008_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66010_))
              (let ((__tmp66287
                     (lambda ()
                       (if _display-error-newline66011_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66014_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66007_
                                 __where66243
                                 __klass66239
                                 '#f))))
                         (if _$e66014_ (display _$e66014_) (display '"?")))
                       (let ((__tmp66288
                              (let ((__tmp66289 (object-type _self66007_)))
                                (declare (not safe))
                                (##type-name __tmp66289))))
                         (declare (not safe))
                         (display* '" [" __tmp66288 '"]: "))
                       (let ((__tmp66290
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66007_
                                 __message66242
                                 __klass66239
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66290))
                       (let ((_irritants66017_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66007_
                                 __irritants66244
                                 __klass66239
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66017_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66019_)
                                  (write _obj66019_)
                                  (write-char '#\space))
                                _irritants66017_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66007_))
                                (dump-stack-trace?))
                           (let ((_cont6602066022_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66007_
                                     __continuation66241
                                     __klass66239
                                     '#f))))
                             (if _cont6602066022_
                                 (let ((_cont66025_ _cont6602066022_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66025_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66287
                 current-output-port
                 _tmp-port66010_))
              (let ((__tmp66291 (get-output-string _tmp-port66010_)))
                (declare (not safe))
                (##write-string __tmp66291 _port66008_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_self65874_ _port65875_)
        (let ((_tmp-port65877_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65877_))
          (let ((__tmp66292
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self65874_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66292 _tmp-port65877_))
          (if (dump-stack-trace?)
              (let ((_cont6587865880_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self65874_ 'continuation))))
                (if _cont6587865880_
                    (let ((_cont65883_ _cont6587865880_))
                      (display '"--- continuation backtrace:" _tmp-port65877_)
                      (newline _tmp-port65877_)
                      (display-continuation-backtrace
                       _cont65883_
                       _tmp-port65877_))
                    '#f))
              '#!void)
          (let ((__tmp66293 (get-output-string _tmp-port65877_)))
            (declare (not safe))
            (##write-string __tmp66293 _port65875_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66249 __method-table66250)
        (let ((__exception66251
               (let ((__slot66253
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66249 'exception))))
                 (if __slot66253
                     __slot66253
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation66252
               (let ((__slot66254
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66249 'continuation))))
                 (if __slot66254
                     __slot66254
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self65874_ _port65875_)
            (let ((_tmp-port65877_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65877_))
              (let ((__tmp66294
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self65874_
                        __exception66251
                        __klass66249
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66294 _tmp-port65877_))
              (if (dump-stack-trace?)
                  (let ((_cont6587865880_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self65874_
                            __continuation66252
                            __klass66249
                            '#f))))
                    (if _cont6587865880_
                        (let ((_cont65883_ _cont6587865880_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port65877_)
                          (newline _tmp-port65877_)
                          (display-continuation-backtrace
                           _cont65883_
                           _tmp-port65877_))
                        '#f))
                  '#!void)
              (let ((__tmp66295 (get-output-string _tmp-port65877_)))
                (declare (not safe))
                (##write-string __tmp66295 _port65875_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_port65746_)
        (if (macro-character-port? _port65746_)
            (let ((_old-width65748_
                   (macro-character-port-output-width _port65746_)))
              (macro-character-port-output-width-set!
               _port65746_
               (lambda (_port65750_) '256))
              _old-width65748_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port65743_ _old-width65744_)
        (if (macro-character-port? _port65743_)
            (macro-character-port-output-width-set!
             _port65743_
             _old-width65744_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e65741_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e65741_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn65735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65735_))
            (let ((_e65738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65735_ 'exception))))
              (macro-abandoned-mutex-exception? _e65738_))
            (macro-abandoned-mutex-exception? _exn65735_))))
    (define cfun-conversion-exception?
      (lambda (_exn65731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65731_))
            (let ((_e65733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65731_ 'exception))))
              (macro-cfun-conversion-exception? _e65733_))
            (macro-cfun-conversion-exception? _exn65731_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn65727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65727_))
            (let ((_e65729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65727_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65729_)
                  (macro-cfun-conversion-exception-arguments _e65729_)
                  (let ((__tmp66298
                         (let ((__tmp66299
                                (let ()
                                  (declare (not safe))
                                  (cons _e65729_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66299))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66298))))
            (if (macro-cfun-conversion-exception? _exn65727_)
                (macro-cfun-conversion-exception-arguments _exn65727_)
                (let ((__tmp66296
                       (let ((__tmp66297
                              (let ()
                                (declare (not safe))
                                (cons _exn65727_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66297))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66296))))))
    (define cfun-conversion-exception-code
      (lambda (_exn65723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65723_))
            (let ((_e65725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65723_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65725_)
                  (macro-cfun-conversion-exception-code _e65725_)
                  (let ((__tmp66302
                         (let ((__tmp66303
                                (let ()
                                  (declare (not safe))
                                  (cons _e65725_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66303))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66302))))
            (if (macro-cfun-conversion-exception? _exn65723_)
                (macro-cfun-conversion-exception-code _exn65723_)
                (let ((__tmp66300
                       (let ((__tmp66301
                              (let ()
                                (declare (not safe))
                                (cons _exn65723_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66301))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66300))))))
    (define cfun-conversion-exception-message
      (lambda (_exn65719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65719_))
            (let ((_e65721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65719_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65721_)
                  (macro-cfun-conversion-exception-message _e65721_)
                  (let ((__tmp66306
                         (let ((__tmp66307
                                (let ()
                                  (declare (not safe))
                                  (cons _e65721_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66307))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66306))))
            (if (macro-cfun-conversion-exception? _exn65719_)
                (macro-cfun-conversion-exception-message _exn65719_)
                (let ((__tmp66304
                       (let ((__tmp66305
                              (let ()
                                (declare (not safe))
                                (cons _exn65719_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66305))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66304))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn65713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65713_))
            (let ((_e65716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65713_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65716_)
                  (macro-cfun-conversion-exception-procedure _e65716_)
                  (let ((__tmp66310
                         (let ((__tmp66311
                                (let ()
                                  (declare (not safe))
                                  (cons _e65716_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66311))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66310))))
            (if (macro-cfun-conversion-exception? _exn65713_)
                (macro-cfun-conversion-exception-procedure _exn65713_)
                (let ((__tmp66308
                       (let ((__tmp66309
                              (let ()
                                (declare (not safe))
                                (cons _exn65713_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66309))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66308))))))
    (define datum-parsing-exception?
      (lambda (_exn65709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65709_))
            (let ((_e65711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65709_ 'exception))))
              (macro-datum-parsing-exception? _e65711_))
            (macro-datum-parsing-exception? _exn65709_))))
    (define datum-parsing-exception-kind
      (lambda (_exn65705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65705_))
            (let ((_e65707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65705_ 'exception))))
              (if (macro-datum-parsing-exception? _e65707_)
                  (macro-datum-parsing-exception-kind _e65707_)
                  (let ((__tmp66314
                         (let ((__tmp66315
                                (let ()
                                  (declare (not safe))
                                  (cons _e65707_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66315))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66314))))
            (if (macro-datum-parsing-exception? _exn65705_)
                (macro-datum-parsing-exception-kind _exn65705_)
                (let ((__tmp66312
                       (let ((__tmp66313
                              (let ()
                                (declare (not safe))
                                (cons _exn65705_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66313))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66312))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn65701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65701_))
            (let ((_e65703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65701_ 'exception))))
              (if (macro-datum-parsing-exception? _e65703_)
                  (macro-datum-parsing-exception-parameters _e65703_)
                  (let ((__tmp66318
                         (let ((__tmp66319
                                (let ()
                                  (declare (not safe))
                                  (cons _e65703_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66319))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66318))))
            (if (macro-datum-parsing-exception? _exn65701_)
                (macro-datum-parsing-exception-parameters _exn65701_)
                (let ((__tmp66316
                       (let ((__tmp66317
                              (let ()
                                (declare (not safe))
                                (cons _exn65701_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66317))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66316))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn65695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65695_))
            (let ((_e65698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65695_ 'exception))))
              (if (macro-datum-parsing-exception? _e65698_)
                  (macro-datum-parsing-exception-readenv _e65698_)
                  (let ((__tmp66322
                         (let ((__tmp66323
                                (let ()
                                  (declare (not safe))
                                  (cons _e65698_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66323))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66322))))
            (if (macro-datum-parsing-exception? _exn65695_)
                (macro-datum-parsing-exception-readenv _exn65695_)
                (let ((__tmp66320
                       (let ((__tmp66321
                              (let ()
                                (declare (not safe))
                                (cons _exn65695_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66321))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66320))))))
    (define deadlock-exception?
      (lambda (_exn65689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65689_))
            (let ((_e65692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65689_ 'exception))))
              (macro-deadlock-exception? _e65692_))
            (macro-deadlock-exception? _exn65689_))))
    (define divide-by-zero-exception?
      (lambda (_exn65685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65685_))
            (let ((_e65687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65685_ 'exception))))
              (macro-divide-by-zero-exception? _e65687_))
            (macro-divide-by-zero-exception? _exn65685_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn65681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65681_))
            (let ((_e65683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65681_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65683_)
                  (macro-divide-by-zero-exception-arguments _e65683_)
                  (let ((__tmp66326
                         (let ((__tmp66327
                                (let ()
                                  (declare (not safe))
                                  (cons _e65683_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66327))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66326))))
            (if (macro-divide-by-zero-exception? _exn65681_)
                (macro-divide-by-zero-exception-arguments _exn65681_)
                (let ((__tmp66324
                       (let ((__tmp66325
                              (let ()
                                (declare (not safe))
                                (cons _exn65681_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66325))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66324))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn65675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65675_))
            (let ((_e65678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65675_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65678_)
                  (macro-divide-by-zero-exception-procedure _e65678_)
                  (let ((__tmp66330
                         (let ((__tmp66331
                                (let ()
                                  (declare (not safe))
                                  (cons _e65678_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66331))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66330))))
            (if (macro-divide-by-zero-exception? _exn65675_)
                (macro-divide-by-zero-exception-procedure _exn65675_)
                (let ((__tmp66328
                       (let ((__tmp66329
                              (let ()
                                (declare (not safe))
                                (cons _exn65675_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66329))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66328))))))
    (define error-exception?
      (lambda (_exn65671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65671_))
            (let ((_e65673_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65671_ 'exception))))
              (macro-error-exception? _e65673_))
            (macro-error-exception? _exn65671_))))
    (define error-exception-message
      (lambda (_exn65667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65667_))
            (let ((_e65669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65667_ 'exception))))
              (if (macro-error-exception? _e65669_)
                  (macro-error-exception-message _e65669_)
                  (let ((__tmp66334
                         (let ((__tmp66335
                                (let ()
                                  (declare (not safe))
                                  (cons _e65669_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66335))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66334))))
            (if (macro-error-exception? _exn65667_)
                (macro-error-exception-message _exn65667_)
                (let ((__tmp66332
                       (let ((__tmp66333
                              (let ()
                                (declare (not safe))
                                (cons _exn65667_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66333))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66332))))))
    (define error-exception-parameters
      (lambda (_exn65661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65661_))
            (let ((_e65664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65661_ 'exception))))
              (if (macro-error-exception? _e65664_)
                  (macro-error-exception-parameters _e65664_)
                  (let ((__tmp66338
                         (let ((__tmp66339
                                (let ()
                                  (declare (not safe))
                                  (cons _e65664_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66339))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66338))))
            (if (macro-error-exception? _exn65661_)
                (macro-error-exception-parameters _exn65661_)
                (let ((__tmp66336
                       (let ((__tmp66337
                              (let ()
                                (declare (not safe))
                                (cons _exn65661_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66337))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66336))))))
    (define expression-parsing-exception?
      (lambda (_exn65657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65657_))
            (let ((_e65659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65657_ 'exception))))
              (macro-expression-parsing-exception? _e65659_))
            (macro-expression-parsing-exception? _exn65657_))))
    (define expression-parsing-exception-kind
      (lambda (_exn65653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65653_))
            (let ((_e65655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65653_ 'exception))))
              (if (macro-expression-parsing-exception? _e65655_)
                  (macro-expression-parsing-exception-kind _e65655_)
                  (let ((__tmp66342
                         (let ((__tmp66343
                                (let ()
                                  (declare (not safe))
                                  (cons _e65655_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66343))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66342))))
            (if (macro-expression-parsing-exception? _exn65653_)
                (macro-expression-parsing-exception-kind _exn65653_)
                (let ((__tmp66340
                       (let ((__tmp66341
                              (let ()
                                (declare (not safe))
                                (cons _exn65653_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66341))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66340))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn65649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65649_))
            (let ((_e65651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65649_ 'exception))))
              (if (macro-expression-parsing-exception? _e65651_)
                  (macro-expression-parsing-exception-parameters _e65651_)
                  (let ((__tmp66346
                         (let ((__tmp66347
                                (let ()
                                  (declare (not safe))
                                  (cons _e65651_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66347))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66346))))
            (if (macro-expression-parsing-exception? _exn65649_)
                (macro-expression-parsing-exception-parameters _exn65649_)
                (let ((__tmp66344
                       (let ((__tmp66345
                              (let ()
                                (declare (not safe))
                                (cons _exn65649_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66345))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66344))))))
    (define expression-parsing-exception-source
      (lambda (_exn65643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65643_))
            (let ((_e65646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65643_ 'exception))))
              (if (macro-expression-parsing-exception? _e65646_)
                  (macro-expression-parsing-exception-source _e65646_)
                  (let ((__tmp66350
                         (let ((__tmp66351
                                (let ()
                                  (declare (not safe))
                                  (cons _e65646_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66351))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66350))))
            (if (macro-expression-parsing-exception? _exn65643_)
                (macro-expression-parsing-exception-source _exn65643_)
                (let ((__tmp66348
                       (let ((__tmp66349
                              (let ()
                                (declare (not safe))
                                (cons _exn65643_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66349))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66348))))))
    (define file-exists-exception?
      (lambda (_exn65639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65639_))
            (let ((_e65641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65639_ 'exception))))
              (macro-file-exists-exception? _e65641_))
            (macro-file-exists-exception? _exn65639_))))
    (define file-exists-exception-arguments
      (lambda (_exn65635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65635_))
            (let ((_e65637_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65635_ 'exception))))
              (if (macro-file-exists-exception? _e65637_)
                  (macro-file-exists-exception-arguments _e65637_)
                  (let ((__tmp66354
                         (let ((__tmp66355
                                (let ()
                                  (declare (not safe))
                                  (cons _e65637_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66355))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66354))))
            (if (macro-file-exists-exception? _exn65635_)
                (macro-file-exists-exception-arguments _exn65635_)
                (let ((__tmp66352
                       (let ((__tmp66353
                              (let ()
                                (declare (not safe))
                                (cons _exn65635_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66353))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66352))))))
    (define file-exists-exception-procedure
      (lambda (_exn65629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65629_))
            (let ((_e65632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65629_ 'exception))))
              (if (macro-file-exists-exception? _e65632_)
                  (macro-file-exists-exception-procedure _e65632_)
                  (let ((__tmp66358
                         (let ((__tmp66359
                                (let ()
                                  (declare (not safe))
                                  (cons _e65632_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66359))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66358))))
            (if (macro-file-exists-exception? _exn65629_)
                (macro-file-exists-exception-procedure _exn65629_)
                (let ((__tmp66356
                       (let ((__tmp66357
                              (let ()
                                (declare (not safe))
                                (cons _exn65629_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66357))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66356))))))
    (define fixnum-overflow-exception?
      (lambda (_exn65625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65625_))
            (let ((_e65627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65625_ 'exception))))
              (macro-fixnum-overflow-exception? _e65627_))
            (macro-fixnum-overflow-exception? _exn65625_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn65621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65621_))
            (let ((_e65623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65621_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65623_)
                  (macro-fixnum-overflow-exception-arguments _e65623_)
                  (let ((__tmp66362
                         (let ((__tmp66363
                                (let ()
                                  (declare (not safe))
                                  (cons _e65623_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66363))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66362))))
            (if (macro-fixnum-overflow-exception? _exn65621_)
                (macro-fixnum-overflow-exception-arguments _exn65621_)
                (let ((__tmp66360
                       (let ((__tmp66361
                              (let ()
                                (declare (not safe))
                                (cons _exn65621_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66361))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66360))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn65615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65615_))
            (let ((_e65618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65615_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65618_)
                  (macro-fixnum-overflow-exception-procedure _e65618_)
                  (let ((__tmp66366
                         (let ((__tmp66367
                                (let ()
                                  (declare (not safe))
                                  (cons _e65618_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66367))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66366))))
            (if (macro-fixnum-overflow-exception? _exn65615_)
                (macro-fixnum-overflow-exception-procedure _exn65615_)
                (let ((__tmp66364
                       (let ((__tmp66365
                              (let ()
                                (declare (not safe))
                                (cons _exn65615_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66365))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66364))))))
    (define heap-overflow-exception?
      (lambda (_exn65609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65609_))
            (let ((_e65612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65609_ 'exception))))
              (macro-heap-overflow-exception? _e65612_))
            (macro-heap-overflow-exception? _exn65609_))))
    (define inactive-thread-exception?
      (lambda (_exn65605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65605_))
            (let ((_e65607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65605_ 'exception))))
              (macro-inactive-thread-exception? _e65607_))
            (macro-inactive-thread-exception? _exn65605_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn65601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65601_))
            (let ((_e65603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65601_ 'exception))))
              (if (macro-inactive-thread-exception? _e65603_)
                  (macro-inactive-thread-exception-arguments _e65603_)
                  (let ((__tmp66370
                         (let ((__tmp66371
                                (let ()
                                  (declare (not safe))
                                  (cons _e65603_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66371))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66370))))
            (if (macro-inactive-thread-exception? _exn65601_)
                (macro-inactive-thread-exception-arguments _exn65601_)
                (let ((__tmp66368
                       (let ((__tmp66369
                              (let ()
                                (declare (not safe))
                                (cons _exn65601_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66369))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66368))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn65595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65595_))
            (let ((_e65598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65595_ 'exception))))
              (if (macro-inactive-thread-exception? _e65598_)
                  (macro-inactive-thread-exception-procedure _e65598_)
                  (let ((__tmp66374
                         (let ((__tmp66375
                                (let ()
                                  (declare (not safe))
                                  (cons _e65598_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66375))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66374))))
            (if (macro-inactive-thread-exception? _exn65595_)
                (macro-inactive-thread-exception-procedure _exn65595_)
                (let ((__tmp66372
                       (let ((__tmp66373
                              (let ()
                                (declare (not safe))
                                (cons _exn65595_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66373))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66372))))))
    (define initialized-thread-exception?
      (lambda (_exn65591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65591_))
            (let ((_e65593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65591_ 'exception))))
              (macro-initialized-thread-exception? _e65593_))
            (macro-initialized-thread-exception? _exn65591_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn65587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65587_))
            (let ((_e65589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65587_ 'exception))))
              (if (macro-initialized-thread-exception? _e65589_)
                  (macro-initialized-thread-exception-arguments _e65589_)
                  (let ((__tmp66378
                         (let ((__tmp66379
                                (let ()
                                  (declare (not safe))
                                  (cons _e65589_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66379))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66378))))
            (if (macro-initialized-thread-exception? _exn65587_)
                (macro-initialized-thread-exception-arguments _exn65587_)
                (let ((__tmp66376
                       (let ((__tmp66377
                              (let ()
                                (declare (not safe))
                                (cons _exn65587_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66377))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66376))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn65581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65581_))
            (let ((_e65584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65581_ 'exception))))
              (if (macro-initialized-thread-exception? _e65584_)
                  (macro-initialized-thread-exception-procedure _e65584_)
                  (let ((__tmp66382
                         (let ((__tmp66383
                                (let ()
                                  (declare (not safe))
                                  (cons _e65584_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66383))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66382))))
            (if (macro-initialized-thread-exception? _exn65581_)
                (macro-initialized-thread-exception-procedure _exn65581_)
                (let ((__tmp66380
                       (let ((__tmp66381
                              (let ()
                                (declare (not safe))
                                (cons _exn65581_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66381))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66380))))))
    (define invalid-hash-number-exception?
      (lambda (_exn65577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65577_))
            (let ((_e65579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65577_ 'exception))))
              (macro-invalid-hash-number-exception? _e65579_))
            (macro-invalid-hash-number-exception? _exn65577_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn65573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65573_))
            (let ((_e65575_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65573_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65575_)
                  (macro-invalid-hash-number-exception-arguments _e65575_)
                  (let ((__tmp66386
                         (let ((__tmp66387
                                (let ()
                                  (declare (not safe))
                                  (cons _e65575_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66387))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66386))))
            (if (macro-invalid-hash-number-exception? _exn65573_)
                (macro-invalid-hash-number-exception-arguments _exn65573_)
                (let ((__tmp66384
                       (let ((__tmp66385
                              (let ()
                                (declare (not safe))
                                (cons _exn65573_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66385))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66384))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn65567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65567_))
            (let ((_e65570_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65567_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65570_)
                  (macro-invalid-hash-number-exception-procedure _e65570_)
                  (let ((__tmp66390
                         (let ((__tmp66391
                                (let ()
                                  (declare (not safe))
                                  (cons _e65570_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66391))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66390))))
            (if (macro-invalid-hash-number-exception? _exn65567_)
                (macro-invalid-hash-number-exception-procedure _exn65567_)
                (let ((__tmp66388
                       (let ((__tmp66389
                              (let ()
                                (declare (not safe))
                                (cons _exn65567_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66389))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66388))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65563_))
            (let ((_e65565_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65563_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65565_))
            (macro-invalid-utf8-encoding-exception? _exn65563_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65559_))
            (let ((_e65561_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65559_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65561_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65561_)
                  (let ((__tmp66394
                         (let ((__tmp66395
                                (let ()
                                  (declare (not safe))
                                  (cons _e65561_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66395))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66394))))
            (if (macro-invalid-utf8-encoding-exception? _exn65559_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65559_)
                (let ((__tmp66392
                       (let ((__tmp66393
                              (let ()
                                (declare (not safe))
                                (cons _exn65559_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66393))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66392))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65553_))
            (let ((_e65556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65553_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65556_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65556_)
                  (let ((__tmp66398
                         (let ((__tmp66399
                                (let ()
                                  (declare (not safe))
                                  (cons _e65556_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66399))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66398))))
            (if (macro-invalid-utf8-encoding-exception? _exn65553_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65553_)
                (let ((__tmp66396
                       (let ((__tmp66397
                              (let ()
                                (declare (not safe))
                                (cons _exn65553_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66397))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66396))))))
    (define join-timeout-exception?
      (lambda (_exn65549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65549_))
            (let ((_e65551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65549_ 'exception))))
              (macro-join-timeout-exception? _e65551_))
            (macro-join-timeout-exception? _exn65549_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65545_))
            (let ((_e65547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65545_ 'exception))))
              (if (macro-join-timeout-exception? _e65547_)
                  (macro-join-timeout-exception-arguments _e65547_)
                  (let ((__tmp66402
                         (let ((__tmp66403
                                (let ()
                                  (declare (not safe))
                                  (cons _e65547_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66403))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66402))))
            (if (macro-join-timeout-exception? _exn65545_)
                (macro-join-timeout-exception-arguments _exn65545_)
                (let ((__tmp66400
                       (let ((__tmp66401
                              (let ()
                                (declare (not safe))
                                (cons _exn65545_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66401))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66400))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65539_))
            (let ((_e65542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65539_ 'exception))))
              (if (macro-join-timeout-exception? _e65542_)
                  (macro-join-timeout-exception-procedure _e65542_)
                  (let ((__tmp66406
                         (let ((__tmp66407
                                (let ()
                                  (declare (not safe))
                                  (cons _e65542_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66407))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66406))))
            (if (macro-join-timeout-exception? _exn65539_)
                (macro-join-timeout-exception-procedure _exn65539_)
                (let ((__tmp66404
                       (let ((__tmp66405
                              (let ()
                                (declare (not safe))
                                (cons _exn65539_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66405))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66404))))))
    (define keyword-expected-exception?
      (lambda (_exn65535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65535_))
            (let ((_e65537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65535_ 'exception))))
              (macro-keyword-expected-exception? _e65537_))
            (macro-keyword-expected-exception? _exn65535_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65531_))
            (let ((_e65533_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65531_ 'exception))))
              (if (macro-keyword-expected-exception? _e65533_)
                  (macro-keyword-expected-exception-arguments _e65533_)
                  (let ((__tmp66410
                         (let ((__tmp66411
                                (let ()
                                  (declare (not safe))
                                  (cons _e65533_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66411))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66410))))
            (if (macro-keyword-expected-exception? _exn65531_)
                (macro-keyword-expected-exception-arguments _exn65531_)
                (let ((__tmp66408
                       (let ((__tmp66409
                              (let ()
                                (declare (not safe))
                                (cons _exn65531_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66409))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66408))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65525_))
            (let ((_e65528_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65525_ 'exception))))
              (if (macro-keyword-expected-exception? _e65528_)
                  (macro-keyword-expected-exception-procedure _e65528_)
                  (let ((__tmp66414
                         (let ((__tmp66415
                                (let ()
                                  (declare (not safe))
                                  (cons _e65528_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66415))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66414))))
            (if (macro-keyword-expected-exception? _exn65525_)
                (macro-keyword-expected-exception-procedure _exn65525_)
                (let ((__tmp66412
                       (let ((__tmp66413
                              (let ()
                                (declare (not safe))
                                (cons _exn65525_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66413))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66412))))))
    (define length-mismatch-exception?
      (lambda (_exn65521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65521_))
            (let ((_e65523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65521_ 'exception))))
              (macro-length-mismatch-exception? _e65523_))
            (macro-length-mismatch-exception? _exn65521_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65517_))
            (let ((_e65519_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65517_ 'exception))))
              (if (macro-length-mismatch-exception? _e65519_)
                  (macro-length-mismatch-exception-arg-id _e65519_)
                  (let ((__tmp66418
                         (let ((__tmp66419
                                (let ()
                                  (declare (not safe))
                                  (cons _e65519_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66419))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66418))))
            (if (macro-length-mismatch-exception? _exn65517_)
                (macro-length-mismatch-exception-arg-id _exn65517_)
                (let ((__tmp66416
                       (let ((__tmp66417
                              (let ()
                                (declare (not safe))
                                (cons _exn65517_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66417))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66416))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65513_))
            (let ((_e65515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65513_ 'exception))))
              (if (macro-length-mismatch-exception? _e65515_)
                  (macro-length-mismatch-exception-arguments _e65515_)
                  (let ((__tmp66422
                         (let ((__tmp66423
                                (let ()
                                  (declare (not safe))
                                  (cons _e65515_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66423))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66422))))
            (if (macro-length-mismatch-exception? _exn65513_)
                (macro-length-mismatch-exception-arguments _exn65513_)
                (let ((__tmp66420
                       (let ((__tmp66421
                              (let ()
                                (declare (not safe))
                                (cons _exn65513_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66421))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66420))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65507_))
            (let ((_e65510_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65507_ 'exception))))
              (if (macro-length-mismatch-exception? _e65510_)
                  (macro-length-mismatch-exception-procedure _e65510_)
                  (let ((__tmp66426
                         (let ((__tmp66427
                                (let ()
                                  (declare (not safe))
                                  (cons _e65510_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66427))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66426))))
            (if (macro-length-mismatch-exception? _exn65507_)
                (macro-length-mismatch-exception-procedure _exn65507_)
                (let ((__tmp66424
                       (let ((__tmp66425
                              (let ()
                                (declare (not safe))
                                (cons _exn65507_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66425))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66424))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65503_))
            (let ((_e65505_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65503_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65505_))
            (macro-mailbox-receive-timeout-exception? _exn65503_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65499_))
            (let ((_e65501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65499_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65501_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65501_)
                  (let ((__tmp66430
                         (let ((__tmp66431
                                (let ()
                                  (declare (not safe))
                                  (cons _e65501_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66431))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66430))))
            (if (macro-mailbox-receive-timeout-exception? _exn65499_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65499_)
                (let ((__tmp66428
                       (let ((__tmp66429
                              (let ()
                                (declare (not safe))
                                (cons _exn65499_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66429))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66428))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65493_))
            (let ((_e65496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65493_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65496_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65496_)
                  (let ((__tmp66434
                         (let ((__tmp66435
                                (let ()
                                  (declare (not safe))
                                  (cons _e65496_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66435))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66434))))
            (if (macro-mailbox-receive-timeout-exception? _exn65493_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65493_)
                (let ((__tmp66432
                       (let ((__tmp66433
                              (let ()
                                (declare (not safe))
                                (cons _exn65493_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66433))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66432))))))
    (define module-not-found-exception?
      (lambda (_exn65489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65489_))
            (let ((_e65491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65489_ 'exception))))
              (macro-module-not-found-exception? _e65491_))
            (macro-module-not-found-exception? _exn65489_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65485_))
            (let ((_e65487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65485_ 'exception))))
              (if (macro-module-not-found-exception? _e65487_)
                  (macro-module-not-found-exception-arguments _e65487_)
                  (let ((__tmp66438
                         (let ((__tmp66439
                                (let ()
                                  (declare (not safe))
                                  (cons _e65487_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66439))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66438))))
            (if (macro-module-not-found-exception? _exn65485_)
                (macro-module-not-found-exception-arguments _exn65485_)
                (let ((__tmp66436
                       (let ((__tmp66437
                              (let ()
                                (declare (not safe))
                                (cons _exn65485_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66437))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66436))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65479_))
            (let ((_e65482_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65479_ 'exception))))
              (if (macro-module-not-found-exception? _e65482_)
                  (macro-module-not-found-exception-procedure _e65482_)
                  (let ((__tmp66442
                         (let ((__tmp66443
                                (let ()
                                  (declare (not safe))
                                  (cons _e65482_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66443))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66442))))
            (if (macro-module-not-found-exception? _exn65479_)
                (macro-module-not-found-exception-procedure _exn65479_)
                (let ((__tmp66440
                       (let ((__tmp66441
                              (let ()
                                (declare (not safe))
                                (cons _exn65479_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66441))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66440))))))
    (define multiple-c-return-exception?
      (lambda (_exn65473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65473_))
            (let ((_e65476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65473_ 'exception))))
              (macro-multiple-c-return-exception? _e65476_))
            (macro-multiple-c-return-exception? _exn65473_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65469_))
            (let ((_e65471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65469_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65471_))
            (macro-no-such-file-or-directory-exception? _exn65469_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65465_))
            (let ((_e65467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65465_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65467_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65467_)
                  (let ((__tmp66446
                         (let ((__tmp66447
                                (let ()
                                  (declare (not safe))
                                  (cons _e65467_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66447))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66446))))
            (if (macro-no-such-file-or-directory-exception? _exn65465_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65465_)
                (let ((__tmp66444
                       (let ((__tmp66445
                              (let ()
                                (declare (not safe))
                                (cons _exn65465_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66445))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66444))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65459_))
            (let ((_e65462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65459_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65462_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65462_)
                  (let ((__tmp66450
                         (let ((__tmp66451
                                (let ()
                                  (declare (not safe))
                                  (cons _e65462_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66451))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66450))))
            (if (macro-no-such-file-or-directory-exception? _exn65459_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65459_)
                (let ((__tmp66448
                       (let ((__tmp66449
                              (let ()
                                (declare (not safe))
                                (cons _exn65459_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66449))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66448))))))
    (define noncontinuable-exception?
      (lambda (_exn65455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65455_))
            (let ((_e65457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65455_ 'exception))))
              (macro-noncontinuable-exception? _e65457_))
            (macro-noncontinuable-exception? _exn65455_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65449_))
            (let ((_e65452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65449_ 'exception))))
              (if (macro-noncontinuable-exception? _e65452_)
                  (macro-noncontinuable-exception-reason _e65452_)
                  (let ((__tmp66454
                         (let ((__tmp66455
                                (let ()
                                  (declare (not safe))
                                  (cons _e65452_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66455))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66454))))
            (if (macro-noncontinuable-exception? _exn65449_)
                (macro-noncontinuable-exception-reason _exn65449_)
                (let ((__tmp66452
                       (let ((__tmp66453
                              (let ()
                                (declare (not safe))
                                (cons _exn65449_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66453))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66452))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65445_))
            (let ((_e65447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65445_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65447_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65445_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65441_))
            (let ((_e65443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65441_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65443_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65443_)
                  (let ((__tmp66458
                         (let ((__tmp66459
                                (let ()
                                  (declare (not safe))
                                  (cons _e65443_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66459))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66458))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65441_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65441_)
                (let ((__tmp66456
                       (let ((__tmp66457
                              (let ()
                                (declare (not safe))
                                (cons _exn65441_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66457))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66456))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65435_))
            (let ((_e65438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65435_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65438_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65438_)
                  (let ((__tmp66462
                         (let ((__tmp66463
                                (let ()
                                  (declare (not safe))
                                  (cons _e65438_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66463))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66462))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65435_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65435_)
                (let ((__tmp66460
                       (let ((__tmp66461
                              (let ()
                                (declare (not safe))
                                (cons _exn65435_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66461))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66460))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65431_))
            (let ((_e65433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65431_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65433_))
            (macro-nonprocedure-operator-exception? _exn65431_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65427_))
            (let ((_e65429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65427_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65429_)
                  (macro-nonprocedure-operator-exception-arguments _e65429_)
                  (let ((__tmp66466
                         (let ((__tmp66467
                                (let ()
                                  (declare (not safe))
                                  (cons _e65429_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66467))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66466))))
            (if (macro-nonprocedure-operator-exception? _exn65427_)
                (macro-nonprocedure-operator-exception-arguments _exn65427_)
                (let ((__tmp66464
                       (let ((__tmp66465
                              (let ()
                                (declare (not safe))
                                (cons _exn65427_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66465))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66464))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65423_))
            (let ((_e65425_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65423_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65425_)
                  (macro-nonprocedure-operator-exception-code _e65425_)
                  (let ((__tmp66470
                         (let ((__tmp66471
                                (let ()
                                  (declare (not safe))
                                  (cons _e65425_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66471))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66470))))
            (if (macro-nonprocedure-operator-exception? _exn65423_)
                (macro-nonprocedure-operator-exception-code _exn65423_)
                (let ((__tmp66468
                       (let ((__tmp66469
                              (let ()
                                (declare (not safe))
                                (cons _exn65423_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66469))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66468))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65419_))
            (let ((_e65421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65419_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65421_)
                  (macro-nonprocedure-operator-exception-operator _e65421_)
                  (let ((__tmp66474
                         (let ((__tmp66475
                                (let ()
                                  (declare (not safe))
                                  (cons _e65421_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66475))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66474))))
            (if (macro-nonprocedure-operator-exception? _exn65419_)
                (macro-nonprocedure-operator-exception-operator _exn65419_)
                (let ((__tmp66472
                       (let ((__tmp66473
                              (let ()
                                (declare (not safe))
                                (cons _exn65419_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66473))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66472))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65413_))
            (let ((_e65416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65413_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65416_)
                  (macro-nonprocedure-operator-exception-rte _e65416_)
                  (let ((__tmp66478
                         (let ((__tmp66479
                                (let ()
                                  (declare (not safe))
                                  (cons _e65416_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66479))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66478))))
            (if (macro-nonprocedure-operator-exception? _exn65413_)
                (macro-nonprocedure-operator-exception-rte _exn65413_)
                (let ((__tmp66476
                       (let ((__tmp66477
                              (let ()
                                (declare (not safe))
                                (cons _exn65413_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66477))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66476))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65409_))
            (let ((_e65411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65409_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65411_))
            (macro-not-in-compilation-context-exception? _exn65409_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65405_))
            (let ((_e65407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65405_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65407_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65407_)
                  (let ((__tmp66482
                         (let ((__tmp66483
                                (let ()
                                  (declare (not safe))
                                  (cons _e65407_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66483))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66482))))
            (if (macro-not-in-compilation-context-exception? _exn65405_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65405_)
                (let ((__tmp66480
                       (let ((__tmp66481
                              (let ()
                                (declare (not safe))
                                (cons _exn65405_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66481))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66480))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65399_))
            (let ((_e65402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65399_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65402_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65402_)
                  (let ((__tmp66486
                         (let ((__tmp66487
                                (let ()
                                  (declare (not safe))
                                  (cons _e65402_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66487))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66486))))
            (if (macro-not-in-compilation-context-exception? _exn65399_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65399_)
                (let ((__tmp66484
                       (let ((__tmp66485
                              (let ()
                                (declare (not safe))
                                (cons _exn65399_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66485))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66484))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65395_))
            (let ((_e65397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65395_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65397_))
            (macro-number-of-arguments-limit-exception? _exn65395_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65391_))
            (let ((_e65393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65391_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65393_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65393_)
                  (let ((__tmp66490
                         (let ((__tmp66491
                                (let ()
                                  (declare (not safe))
                                  (cons _e65393_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66491))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66490))))
            (if (macro-number-of-arguments-limit-exception? _exn65391_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65391_)
                (let ((__tmp66488
                       (let ((__tmp66489
                              (let ()
                                (declare (not safe))
                                (cons _exn65391_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66489))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66488))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65385_))
            (let ((_e65388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65385_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65388_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65388_)
                  (let ((__tmp66494
                         (let ((__tmp66495
                                (let ()
                                  (declare (not safe))
                                  (cons _e65388_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66495))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66494))))
            (if (macro-number-of-arguments-limit-exception? _exn65385_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65385_)
                (let ((__tmp66492
                       (let ((__tmp66493
                              (let ()
                                (declare (not safe))
                                (cons _exn65385_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66493))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66492))))))
    (define os-exception?
      (lambda (_exn65381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65381_))
            (let ((_e65383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65381_ 'exception))))
              (macro-os-exception? _e65383_))
            (macro-os-exception? _exn65381_))))
    (define os-exception-arguments
      (lambda (_exn65377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65377_))
            (let ((_e65379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65377_ 'exception))))
              (if (macro-os-exception? _e65379_)
                  (macro-os-exception-arguments _e65379_)
                  (let ((__tmp66498
                         (let ((__tmp66499
                                (let ()
                                  (declare (not safe))
                                  (cons _e65379_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66499))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66498))))
            (if (macro-os-exception? _exn65377_)
                (macro-os-exception-arguments _exn65377_)
                (let ((__tmp66496
                       (let ((__tmp66497
                              (let ()
                                (declare (not safe))
                                (cons _exn65377_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66497))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66496))))))
    (define os-exception-code
      (lambda (_exn65373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65373_))
            (let ((_e65375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65373_ 'exception))))
              (if (macro-os-exception? _e65375_)
                  (macro-os-exception-code _e65375_)
                  (let ((__tmp66502
                         (let ((__tmp66503
                                (let ()
                                  (declare (not safe))
                                  (cons _e65375_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66503))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66502))))
            (if (macro-os-exception? _exn65373_)
                (macro-os-exception-code _exn65373_)
                (let ((__tmp66500
                       (let ((__tmp66501
                              (let ()
                                (declare (not safe))
                                (cons _exn65373_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66501))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66500))))))
    (define os-exception-message
      (lambda (_exn65369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65369_))
            (let ((_e65371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65369_ 'exception))))
              (if (macro-os-exception? _e65371_)
                  (macro-os-exception-message _e65371_)
                  (let ((__tmp66506
                         (let ((__tmp66507
                                (let ()
                                  (declare (not safe))
                                  (cons _e65371_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66507))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66506))))
            (if (macro-os-exception? _exn65369_)
                (macro-os-exception-message _exn65369_)
                (let ((__tmp66504
                       (let ((__tmp66505
                              (let ()
                                (declare (not safe))
                                (cons _exn65369_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66505))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66504))))))
    (define os-exception-procedure
      (lambda (_exn65363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65363_))
            (let ((_e65366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65363_ 'exception))))
              (if (macro-os-exception? _e65366_)
                  (macro-os-exception-procedure _e65366_)
                  (let ((__tmp66510
                         (let ((__tmp66511
                                (let ()
                                  (declare (not safe))
                                  (cons _e65366_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66511))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66510))))
            (if (macro-os-exception? _exn65363_)
                (macro-os-exception-procedure _exn65363_)
                (let ((__tmp66508
                       (let ((__tmp66509
                              (let ()
                                (declare (not safe))
                                (cons _exn65363_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66509))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66508))))))
    (define permission-denied-exception?
      (lambda (_exn65359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65359_))
            (let ((_e65361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65359_ 'exception))))
              (macro-permission-denied-exception? _e65361_))
            (macro-permission-denied-exception? _exn65359_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65355_))
            (let ((_e65357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65355_ 'exception))))
              (if (macro-permission-denied-exception? _e65357_)
                  (macro-permission-denied-exception-arguments _e65357_)
                  (let ((__tmp66514
                         (let ((__tmp66515
                                (let ()
                                  (declare (not safe))
                                  (cons _e65357_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66515))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66514))))
            (if (macro-permission-denied-exception? _exn65355_)
                (macro-permission-denied-exception-arguments _exn65355_)
                (let ((__tmp66512
                       (let ((__tmp66513
                              (let ()
                                (declare (not safe))
                                (cons _exn65355_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66513))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66512))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65349_))
            (let ((_e65352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65349_ 'exception))))
              (if (macro-permission-denied-exception? _e65352_)
                  (macro-permission-denied-exception-procedure _e65352_)
                  (let ((__tmp66518
                         (let ((__tmp66519
                                (let ()
                                  (declare (not safe))
                                  (cons _e65352_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66519))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66518))))
            (if (macro-permission-denied-exception? _exn65349_)
                (macro-permission-denied-exception-procedure _exn65349_)
                (let ((__tmp66516
                       (let ((__tmp66517
                              (let ()
                                (declare (not safe))
                                (cons _exn65349_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66517))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66516))))))
    (define range-exception?
      (lambda (_exn65345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65345_))
            (let ((_e65347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65345_ 'exception))))
              (macro-range-exception? _e65347_))
            (macro-range-exception? _exn65345_))))
    (define range-exception-arg-id
      (lambda (_exn65341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65341_))
            (let ((_e65343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65341_ 'exception))))
              (if (macro-range-exception? _e65343_)
                  (macro-range-exception-arg-id _e65343_)
                  (let ((__tmp66522
                         (let ((__tmp66523
                                (let ()
                                  (declare (not safe))
                                  (cons _e65343_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66523))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66522))))
            (if (macro-range-exception? _exn65341_)
                (macro-range-exception-arg-id _exn65341_)
                (let ((__tmp66520
                       (let ((__tmp66521
                              (let ()
                                (declare (not safe))
                                (cons _exn65341_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66521))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66520))))))
    (define range-exception-arguments
      (lambda (_exn65337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65337_))
            (let ((_e65339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65337_ 'exception))))
              (if (macro-range-exception? _e65339_)
                  (macro-range-exception-arguments _e65339_)
                  (let ((__tmp66526
                         (let ((__tmp66527
                                (let ()
                                  (declare (not safe))
                                  (cons _e65339_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66527))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66526))))
            (if (macro-range-exception? _exn65337_)
                (macro-range-exception-arguments _exn65337_)
                (let ((__tmp66524
                       (let ((__tmp66525
                              (let ()
                                (declare (not safe))
                                (cons _exn65337_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66525))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66524))))))
    (define range-exception-procedure
      (lambda (_exn65331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65331_))
            (let ((_e65334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65331_ 'exception))))
              (if (macro-range-exception? _e65334_)
                  (macro-range-exception-procedure _e65334_)
                  (let ((__tmp66530
                         (let ((__tmp66531
                                (let ()
                                  (declare (not safe))
                                  (cons _e65334_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66531))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66530))))
            (if (macro-range-exception? _exn65331_)
                (macro-range-exception-procedure _exn65331_)
                (let ((__tmp66528
                       (let ((__tmp66529
                              (let ()
                                (declare (not safe))
                                (cons _exn65331_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66529))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66528))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65327_))
            (let ((_e65329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65327_ 'exception))))
              (macro-rpc-remote-error-exception? _e65329_))
            (macro-rpc-remote-error-exception? _exn65327_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65323_))
            (let ((_e65325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65323_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65325_)
                  (macro-rpc-remote-error-exception-arguments _e65325_)
                  (let ((__tmp66534
                         (let ((__tmp66535
                                (let ()
                                  (declare (not safe))
                                  (cons _e65325_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66535))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66534))))
            (if (macro-rpc-remote-error-exception? _exn65323_)
                (macro-rpc-remote-error-exception-arguments _exn65323_)
                (let ((__tmp66532
                       (let ((__tmp66533
                              (let ()
                                (declare (not safe))
                                (cons _exn65323_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66533))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66532))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65319_))
            (let ((_e65321_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65319_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65321_)
                  (macro-rpc-remote-error-exception-message _e65321_)
                  (let ((__tmp66538
                         (let ((__tmp66539
                                (let ()
                                  (declare (not safe))
                                  (cons _e65321_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66539))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66538))))
            (if (macro-rpc-remote-error-exception? _exn65319_)
                (macro-rpc-remote-error-exception-message _exn65319_)
                (let ((__tmp66536
                       (let ((__tmp66537
                              (let ()
                                (declare (not safe))
                                (cons _exn65319_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66537))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66536))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65313_))
            (let ((_e65316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65313_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65316_)
                  (macro-rpc-remote-error-exception-procedure _e65316_)
                  (let ((__tmp66542
                         (let ((__tmp66543
                                (let ()
                                  (declare (not safe))
                                  (cons _e65316_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66543))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66542))))
            (if (macro-rpc-remote-error-exception? _exn65313_)
                (macro-rpc-remote-error-exception-procedure _exn65313_)
                (let ((__tmp66540
                       (let ((__tmp66541
                              (let ()
                                (declare (not safe))
                                (cons _exn65313_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66541))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66540))))))
    (define scheduler-exception?
      (lambda (_exn65309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65309_))
            (let ((_e65311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65309_ 'exception))))
              (macro-scheduler-exception? _e65311_))
            (macro-scheduler-exception? _exn65309_))))
    (define scheduler-exception-reason
      (lambda (_exn65303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65303_))
            (let ((_e65306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65303_ 'exception))))
              (if (macro-scheduler-exception? _e65306_)
                  (macro-scheduler-exception-reason _e65306_)
                  (let ((__tmp66546
                         (let ((__tmp66547
                                (let ()
                                  (declare (not safe))
                                  (cons _e65306_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66547))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66546))))
            (if (macro-scheduler-exception? _exn65303_)
                (macro-scheduler-exception-reason _exn65303_)
                (let ((__tmp66544
                       (let ((__tmp66545
                              (let ()
                                (declare (not safe))
                                (cons _exn65303_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66545))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66544))))))
    (define sfun-conversion-exception?
      (lambda (_exn65299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65299_))
            (let ((_e65301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65299_ 'exception))))
              (macro-sfun-conversion-exception? _e65301_))
            (macro-sfun-conversion-exception? _exn65299_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65295_))
            (let ((_e65297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65295_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65297_)
                  (macro-sfun-conversion-exception-arguments _e65297_)
                  (let ((__tmp66550
                         (let ((__tmp66551
                                (let ()
                                  (declare (not safe))
                                  (cons _e65297_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66551))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66550))))
            (if (macro-sfun-conversion-exception? _exn65295_)
                (macro-sfun-conversion-exception-arguments _exn65295_)
                (let ((__tmp66548
                       (let ((__tmp66549
                              (let ()
                                (declare (not safe))
                                (cons _exn65295_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66549))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66548))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65291_))
            (let ((_e65293_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65291_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65293_)
                  (macro-sfun-conversion-exception-code _e65293_)
                  (let ((__tmp66554
                         (let ((__tmp66555
                                (let ()
                                  (declare (not safe))
                                  (cons _e65293_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66555))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66554))))
            (if (macro-sfun-conversion-exception? _exn65291_)
                (macro-sfun-conversion-exception-code _exn65291_)
                (let ((__tmp66552
                       (let ((__tmp66553
                              (let ()
                                (declare (not safe))
                                (cons _exn65291_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66553))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66552))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65287_))
            (let ((_e65289_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65287_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65289_)
                  (macro-sfun-conversion-exception-message _e65289_)
                  (let ((__tmp66558
                         (let ((__tmp66559
                                (let ()
                                  (declare (not safe))
                                  (cons _e65289_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66559))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66558))))
            (if (macro-sfun-conversion-exception? _exn65287_)
                (macro-sfun-conversion-exception-message _exn65287_)
                (let ((__tmp66556
                       (let ((__tmp66557
                              (let ()
                                (declare (not safe))
                                (cons _exn65287_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66557))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66556))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65281_))
            (let ((_e65284_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65281_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65284_)
                  (macro-sfun-conversion-exception-procedure _e65284_)
                  (let ((__tmp66562
                         (let ((__tmp66563
                                (let ()
                                  (declare (not safe))
                                  (cons _e65284_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66563))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66562))))
            (if (macro-sfun-conversion-exception? _exn65281_)
                (macro-sfun-conversion-exception-procedure _exn65281_)
                (let ((__tmp66560
                       (let ((__tmp66561
                              (let ()
                                (declare (not safe))
                                (cons _exn65281_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66561))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66560))))))
    (define stack-overflow-exception?
      (lambda (_exn65275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65275_))
            (let ((_e65278_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65275_ 'exception))))
              (macro-stack-overflow-exception? _e65278_))
            (macro-stack-overflow-exception? _exn65275_))))
    (define started-thread-exception?
      (lambda (_exn65271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65271_))
            (let ((_e65273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65271_ 'exception))))
              (macro-started-thread-exception? _e65273_))
            (macro-started-thread-exception? _exn65271_))))
    (define started-thread-exception-arguments
      (lambda (_exn65267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65267_))
            (let ((_e65269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65267_ 'exception))))
              (if (macro-started-thread-exception? _e65269_)
                  (macro-started-thread-exception-arguments _e65269_)
                  (let ((__tmp66566
                         (let ((__tmp66567
                                (let ()
                                  (declare (not safe))
                                  (cons _e65269_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66567))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66566))))
            (if (macro-started-thread-exception? _exn65267_)
                (macro-started-thread-exception-arguments _exn65267_)
                (let ((__tmp66564
                       (let ((__tmp66565
                              (let ()
                                (declare (not safe))
                                (cons _exn65267_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66565))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66564))))))
    (define started-thread-exception-procedure
      (lambda (_exn65261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65261_))
            (let ((_e65264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65261_ 'exception))))
              (if (macro-started-thread-exception? _e65264_)
                  (macro-started-thread-exception-procedure _e65264_)
                  (let ((__tmp66570
                         (let ((__tmp66571
                                (let ()
                                  (declare (not safe))
                                  (cons _e65264_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66571))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66570))))
            (if (macro-started-thread-exception? _exn65261_)
                (macro-started-thread-exception-procedure _exn65261_)
                (let ((__tmp66568
                       (let ((__tmp66569
                              (let ()
                                (declare (not safe))
                                (cons _exn65261_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66569))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66568))))))
    (define terminated-thread-exception?
      (lambda (_exn65257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65257_))
            (let ((_e65259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65257_ 'exception))))
              (macro-terminated-thread-exception? _e65259_))
            (macro-terminated-thread-exception? _exn65257_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65253_))
            (let ((_e65255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65253_ 'exception))))
              (if (macro-terminated-thread-exception? _e65255_)
                  (macro-terminated-thread-exception-arguments _e65255_)
                  (let ((__tmp66574
                         (let ((__tmp66575
                                (let ()
                                  (declare (not safe))
                                  (cons _e65255_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp66575))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66574))))
            (if (macro-terminated-thread-exception? _exn65253_)
                (macro-terminated-thread-exception-arguments _exn65253_)
                (let ((__tmp66572
                       (let ((__tmp66573
                              (let ()
                                (declare (not safe))
                                (cons _exn65253_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp66573))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66572))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65247_))
            (let ((_e65250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65247_ 'exception))))
              (if (macro-terminated-thread-exception? _e65250_)
                  (macro-terminated-thread-exception-procedure _e65250_)
                  (let ((__tmp66578
                         (let ((__tmp66579
                                (let ()
                                  (declare (not safe))
                                  (cons _e65250_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp66579))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66578))))
            (if (macro-terminated-thread-exception? _exn65247_)
                (macro-terminated-thread-exception-procedure _exn65247_)
                (let ((__tmp66576
                       (let ((__tmp66577
                              (let ()
                                (declare (not safe))
                                (cons _exn65247_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp66577))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66576))))))
    (define type-exception?
      (lambda (_exn65243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65243_))
            (let ((_e65245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65243_ 'exception))))
              (macro-type-exception? _e65245_))
            (macro-type-exception? _exn65243_))))
    (define type-exception-arg-id
      (lambda (_exn65239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65239_))
            (let ((_e65241_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65239_ 'exception))))
              (if (macro-type-exception? _e65241_)
                  (macro-type-exception-arg-id _e65241_)
                  (let ((__tmp66582
                         (let ((__tmp66583
                                (let ()
                                  (declare (not safe))
                                  (cons _e65241_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp66583))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66582))))
            (if (macro-type-exception? _exn65239_)
                (macro-type-exception-arg-id _exn65239_)
                (let ((__tmp66580
                       (let ((__tmp66581
                              (let ()
                                (declare (not safe))
                                (cons _exn65239_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp66581))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66580))))))
    (define type-exception-arguments
      (lambda (_exn65235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65235_))
            (let ((_e65237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65235_ 'exception))))
              (if (macro-type-exception? _e65237_)
                  (macro-type-exception-arguments _e65237_)
                  (let ((__tmp66586
                         (let ((__tmp66587
                                (let ()
                                  (declare (not safe))
                                  (cons _e65237_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp66587))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66586))))
            (if (macro-type-exception? _exn65235_)
                (macro-type-exception-arguments _exn65235_)
                (let ((__tmp66584
                       (let ((__tmp66585
                              (let ()
                                (declare (not safe))
                                (cons _exn65235_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp66585))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66584))))))
    (define type-exception-procedure
      (lambda (_exn65231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65231_))
            (let ((_e65233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65231_ 'exception))))
              (if (macro-type-exception? _e65233_)
                  (macro-type-exception-procedure _e65233_)
                  (let ((__tmp66590
                         (let ((__tmp66591
                                (let ()
                                  (declare (not safe))
                                  (cons _e65233_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp66591))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66590))))
            (if (macro-type-exception? _exn65231_)
                (macro-type-exception-procedure _exn65231_)
                (let ((__tmp66588
                       (let ((__tmp66589
                              (let ()
                                (declare (not safe))
                                (cons _exn65231_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp66589))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66588))))))
    (define type-exception-type-id
      (lambda (_exn65225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65225_))
            (let ((_e65228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65225_ 'exception))))
              (if (macro-type-exception? _e65228_)
                  (macro-type-exception-type-id _e65228_)
                  (let ((__tmp66594
                         (let ((__tmp66595
                                (let ()
                                  (declare (not safe))
                                  (cons _e65228_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp66595))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66594))))
            (if (macro-type-exception? _exn65225_)
                (macro-type-exception-type-id _exn65225_)
                (let ((__tmp66592
                       (let ((__tmp66593
                              (let ()
                                (declare (not safe))
                                (cons _exn65225_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp66593))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66592))))))
    (define unbound-global-exception?
      (lambda (_exn65221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65221_))
            (let ((_e65223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65221_ 'exception))))
              (macro-unbound-global-exception? _e65223_))
            (macro-unbound-global-exception? _exn65221_))))
    (define unbound-global-exception-code
      (lambda (_exn65217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65217_))
            (let ((_e65219_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65217_ 'exception))))
              (if (macro-unbound-global-exception? _e65219_)
                  (macro-unbound-global-exception-code _e65219_)
                  (let ((__tmp66598
                         (let ((__tmp66599
                                (let ()
                                  (declare (not safe))
                                  (cons _e65219_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp66599))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66598))))
            (if (macro-unbound-global-exception? _exn65217_)
                (macro-unbound-global-exception-code _exn65217_)
                (let ((__tmp66596
                       (let ((__tmp66597
                              (let ()
                                (declare (not safe))
                                (cons _exn65217_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp66597))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66596))))))
    (define unbound-global-exception-rte
      (lambda (_exn65213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65213_))
            (let ((_e65215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65213_ 'exception))))
              (if (macro-unbound-global-exception? _e65215_)
                  (macro-unbound-global-exception-rte _e65215_)
                  (let ((__tmp66602
                         (let ((__tmp66603
                                (let ()
                                  (declare (not safe))
                                  (cons _e65215_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp66603))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66602))))
            (if (macro-unbound-global-exception? _exn65213_)
                (macro-unbound-global-exception-rte _exn65213_)
                (let ((__tmp66600
                       (let ((__tmp66601
                              (let ()
                                (declare (not safe))
                                (cons _exn65213_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp66601))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66600))))))
    (define unbound-global-exception-variable
      (lambda (_exn65207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65207_))
            (let ((_e65210_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65207_ 'exception))))
              (if (macro-unbound-global-exception? _e65210_)
                  (macro-unbound-global-exception-variable _e65210_)
                  (let ((__tmp66606
                         (let ((__tmp66607
                                (let ()
                                  (declare (not safe))
                                  (cons _e65210_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp66607))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66606))))
            (if (macro-unbound-global-exception? _exn65207_)
                (macro-unbound-global-exception-variable _exn65207_)
                (let ((__tmp66604
                       (let ((__tmp66605
                              (let ()
                                (declare (not safe))
                                (cons _exn65207_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp66605))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66604))))))
    (define unbound-key-exception?
      (lambda (_exn65203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65203_))
            (let ((_e65205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65203_ 'exception))))
              (macro-unbound-key-exception? _e65205_))
            (macro-unbound-key-exception? _exn65203_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65199_))
            (let ((_e65201_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65199_ 'exception))))
              (if (macro-unbound-key-exception? _e65201_)
                  (macro-unbound-key-exception-arguments _e65201_)
                  (let ((__tmp66610
                         (let ((__tmp66611
                                (let ()
                                  (declare (not safe))
                                  (cons _e65201_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp66611))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66610))))
            (if (macro-unbound-key-exception? _exn65199_)
                (macro-unbound-key-exception-arguments _exn65199_)
                (let ((__tmp66608
                       (let ((__tmp66609
                              (let ()
                                (declare (not safe))
                                (cons _exn65199_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp66609))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66608))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65193_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65193_))
            (let ((_e65196_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65193_ 'exception))))
              (if (macro-unbound-key-exception? _e65196_)
                  (macro-unbound-key-exception-procedure _e65196_)
                  (let ((__tmp66614
                         (let ((__tmp66615
                                (let ()
                                  (declare (not safe))
                                  (cons _e65196_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp66615))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66614))))
            (if (macro-unbound-key-exception? _exn65193_)
                (macro-unbound-key-exception-procedure _exn65193_)
                (let ((__tmp66612
                       (let ((__tmp66613
                              (let ()
                                (declare (not safe))
                                (cons _exn65193_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp66613))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66612))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65189_))
            (let ((_e65191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65189_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65191_))
            (macro-unbound-os-environment-variable-exception? _exn65189_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65185_))
            (let ((_e65187_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65185_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65187_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65187_)
                  (let ((__tmp66618
                         (let ((__tmp66619
                                (let ()
                                  (declare (not safe))
                                  (cons _e65187_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp66619))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66618))))
            (if (macro-unbound-os-environment-variable-exception? _exn65185_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65185_)
                (let ((__tmp66616
                       (let ((__tmp66617
                              (let ()
                                (declare (not safe))
                                (cons _exn65185_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp66617))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66616))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65179_))
            (let ((_e65182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65179_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65182_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65182_)
                  (let ((__tmp66622
                         (let ((__tmp66623
                                (let ()
                                  (declare (not safe))
                                  (cons _e65182_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp66623))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66622))))
            (if (macro-unbound-os-environment-variable-exception? _exn65179_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65179_)
                (let ((__tmp66620
                       (let ((__tmp66621
                              (let ()
                                (declare (not safe))
                                (cons _exn65179_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp66621))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66620))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65175_))
            (let ((_e65177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65175_ 'exception))))
              (macro-unbound-serial-number-exception? _e65177_))
            (macro-unbound-serial-number-exception? _exn65175_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65171_))
            (let ((_e65173_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65171_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65173_)
                  (macro-unbound-serial-number-exception-arguments _e65173_)
                  (let ((__tmp66626
                         (let ((__tmp66627
                                (let ()
                                  (declare (not safe))
                                  (cons _e65173_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp66627))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66626))))
            (if (macro-unbound-serial-number-exception? _exn65171_)
                (macro-unbound-serial-number-exception-arguments _exn65171_)
                (let ((__tmp66624
                       (let ((__tmp66625
                              (let ()
                                (declare (not safe))
                                (cons _exn65171_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp66625))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66624))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65165_))
            (let ((_e65168_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65165_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65168_)
                  (macro-unbound-serial-number-exception-procedure _e65168_)
                  (let ((__tmp66630
                         (let ((__tmp66631
                                (let ()
                                  (declare (not safe))
                                  (cons _e65168_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp66631))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66630))))
            (if (macro-unbound-serial-number-exception? _exn65165_)
                (macro-unbound-serial-number-exception-procedure _exn65165_)
                (let ((__tmp66628
                       (let ((__tmp66629
                              (let ()
                                (declare (not safe))
                                (cons _exn65165_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp66629))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66628))))))
    (define uncaught-exception?
      (lambda (_exn65161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65161_))
            (let ((_e65163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65161_ 'exception))))
              (macro-uncaught-exception? _e65163_))
            (macro-uncaught-exception? _exn65161_))))
    (define uncaught-exception-arguments
      (lambda (_exn65157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65157_))
            (let ((_e65159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65157_ 'exception))))
              (if (macro-uncaught-exception? _e65159_)
                  (macro-uncaught-exception-arguments _e65159_)
                  (let ((__tmp66634
                         (let ((__tmp66635
                                (let ()
                                  (declare (not safe))
                                  (cons _e65159_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp66635))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66634))))
            (if (macro-uncaught-exception? _exn65157_)
                (macro-uncaught-exception-arguments _exn65157_)
                (let ((__tmp66632
                       (let ((__tmp66633
                              (let ()
                                (declare (not safe))
                                (cons _exn65157_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp66633))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66632))))))
    (define uncaught-exception-procedure
      (lambda (_exn65153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65153_))
            (let ((_e65155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65153_ 'exception))))
              (if (macro-uncaught-exception? _e65155_)
                  (macro-uncaught-exception-procedure _e65155_)
                  (let ((__tmp66638
                         (let ((__tmp66639
                                (let ()
                                  (declare (not safe))
                                  (cons _e65155_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp66639))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66638))))
            (if (macro-uncaught-exception? _exn65153_)
                (macro-uncaught-exception-procedure _exn65153_)
                (let ((__tmp66636
                       (let ((__tmp66637
                              (let ()
                                (declare (not safe))
                                (cons _exn65153_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp66637))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66636))))))
    (define uncaught-exception-reason
      (lambda (_exn65147_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65147_))
            (let ((_e65150_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65147_ 'exception))))
              (if (macro-uncaught-exception? _e65150_)
                  (macro-uncaught-exception-reason _e65150_)
                  (let ((__tmp66642
                         (let ((__tmp66643
                                (let ()
                                  (declare (not safe))
                                  (cons _e65150_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp66643))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66642))))
            (if (macro-uncaught-exception? _exn65147_)
                (macro-uncaught-exception-reason _exn65147_)
                (let ((__tmp66640
                       (let ((__tmp66641
                              (let ()
                                (declare (not safe))
                                (cons _exn65147_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp66641))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66640))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65143_))
            (let ((_e65145_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65143_ 'exception))))
              (macro-uninitialized-thread-exception? _e65145_))
            (macro-uninitialized-thread-exception? _exn65143_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65139_))
            (let ((_e65141_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65139_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65141_)
                  (macro-uninitialized-thread-exception-arguments _e65141_)
                  (let ((__tmp66646
                         (let ((__tmp66647
                                (let ()
                                  (declare (not safe))
                                  (cons _e65141_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp66647))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66646))))
            (if (macro-uninitialized-thread-exception? _exn65139_)
                (macro-uninitialized-thread-exception-arguments _exn65139_)
                (let ((__tmp66644
                       (let ((__tmp66645
                              (let ()
                                (declare (not safe))
                                (cons _exn65139_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp66645))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66644))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65133_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65133_))
            (let ((_e65136_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65133_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65136_)
                  (macro-uninitialized-thread-exception-procedure _e65136_)
                  (let ((__tmp66650
                         (let ((__tmp66651
                                (let ()
                                  (declare (not safe))
                                  (cons _e65136_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp66651))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66650))))
            (if (macro-uninitialized-thread-exception? _exn65133_)
                (macro-uninitialized-thread-exception-procedure _exn65133_)
                (let ((__tmp66648
                       (let ((__tmp66649
                              (let ()
                                (declare (not safe))
                                (cons _exn65133_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp66649))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66648))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65129_))
            (let ((_e65131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65129_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65131_))
            (macro-unknown-keyword-argument-exception? _exn65129_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65125_))
            (let ((_e65127_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65125_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65127_)
                  (macro-unknown-keyword-argument-exception-arguments _e65127_)
                  (let ((__tmp66654
                         (let ((__tmp66655
                                (let ()
                                  (declare (not safe))
                                  (cons _e65127_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp66655))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66654))))
            (if (macro-unknown-keyword-argument-exception? _exn65125_)
                (macro-unknown-keyword-argument-exception-arguments _exn65125_)
                (let ((__tmp66652
                       (let ((__tmp66653
                              (let ()
                                (declare (not safe))
                                (cons _exn65125_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp66653))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66652))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65119_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65119_))
            (let ((_e65122_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65119_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65122_)
                  (macro-unknown-keyword-argument-exception-procedure _e65122_)
                  (let ((__tmp66658
                         (let ((__tmp66659
                                (let ()
                                  (declare (not safe))
                                  (cons _e65122_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp66659))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66658))))
            (if (macro-unknown-keyword-argument-exception? _exn65119_)
                (macro-unknown-keyword-argument-exception-procedure _exn65119_)
                (let ((__tmp66656
                       (let ((__tmp66657
                              (let ()
                                (declare (not safe))
                                (cons _exn65119_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp66657))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66656))))))
    (define unterminated-process-exception?
      (lambda (_exn65115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65115_))
            (let ((_e65117_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65115_ 'exception))))
              (macro-unterminated-process-exception? _e65117_))
            (macro-unterminated-process-exception? _exn65115_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65111_))
            (let ((_e65113_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65111_ 'exception))))
              (if (macro-unterminated-process-exception? _e65113_)
                  (macro-unterminated-process-exception-arguments _e65113_)
                  (let ((__tmp66662
                         (let ((__tmp66663
                                (let ()
                                  (declare (not safe))
                                  (cons _e65113_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp66663))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66662))))
            (if (macro-unterminated-process-exception? _exn65111_)
                (macro-unterminated-process-exception-arguments _exn65111_)
                (let ((__tmp66660
                       (let ((__tmp66661
                              (let ()
                                (declare (not safe))
                                (cons _exn65111_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp66661))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66660))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65105_))
            (let ((_e65108_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65105_ 'exception))))
              (if (macro-unterminated-process-exception? _e65108_)
                  (macro-unterminated-process-exception-procedure _e65108_)
                  (let ((__tmp66666
                         (let ((__tmp66667
                                (let ()
                                  (declare (not safe))
                                  (cons _e65108_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp66667))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66666))))
            (if (macro-unterminated-process-exception? _exn65105_)
                (macro-unterminated-process-exception-procedure _exn65105_)
                (let ((__tmp66664
                       (let ((__tmp66665
                              (let ()
                                (declare (not safe))
                                (cons _exn65105_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp66665))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66664))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65101_))
            (let ((_e65103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65101_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65103_))
            (macro-wrong-number-of-arguments-exception? _exn65101_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65097_))
            (let ((_e65099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65097_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65099_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65099_)
                  (let ((__tmp66670
                         (let ((__tmp66671
                                (let ()
                                  (declare (not safe))
                                  (cons _e65099_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp66671))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66670))))
            (if (macro-wrong-number-of-arguments-exception? _exn65097_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65097_)
                (let ((__tmp66668
                       (let ((__tmp66669
                              (let ()
                                (declare (not safe))
                                (cons _exn65097_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp66669))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66668))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65091_))
            (let ((_e65094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65091_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65094_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65094_)
                  (let ((__tmp66674
                         (let ((__tmp66675
                                (let ()
                                  (declare (not safe))
                                  (cons _e65094_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp66675))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66674))))
            (if (macro-wrong-number-of-arguments-exception? _exn65091_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65091_)
                (let ((__tmp66672
                       (let ((__tmp66673
                              (let ()
                                (declare (not safe))
                                (cons _exn65091_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp66673))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66672))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65087_))
            (let ((_e65089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65087_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65089_))
            (macro-wrong-number-of-values-exception? _exn65087_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65083_))
            (let ((_e65085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65083_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65085_)
                  (macro-wrong-number-of-values-exception-code _e65085_)
                  (let ((__tmp66678
                         (let ((__tmp66679
                                (let ()
                                  (declare (not safe))
                                  (cons _e65085_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp66679))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66678))))
            (if (macro-wrong-number-of-values-exception? _exn65083_)
                (macro-wrong-number-of-values-exception-code _exn65083_)
                (let ((__tmp66676
                       (let ((__tmp66677
                              (let ()
                                (declare (not safe))
                                (cons _exn65083_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp66677))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66676))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65079_))
            (let ((_e65081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65079_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65081_)
                  (macro-wrong-number-of-values-exception-rte _e65081_)
                  (let ((__tmp66682
                         (let ((__tmp66683
                                (let ()
                                  (declare (not safe))
                                  (cons _e65081_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp66683))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66682))))
            (if (macro-wrong-number-of-values-exception? _exn65079_)
                (macro-wrong-number-of-values-exception-rte _exn65079_)
                (let ((__tmp66680
                       (let ((__tmp66681
                              (let ()
                                (declare (not safe))
                                (cons _exn65079_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp66681))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66680))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65073_))
            (let ((_e65076_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65073_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65076_)
                  (macro-wrong-number-of-values-exception-vals _e65076_)
                  (let ((__tmp66686
                         (let ((__tmp66687
                                (let ()
                                  (declare (not safe))
                                  (cons _e65076_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp66687))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66686))))
            (if (macro-wrong-number-of-values-exception? _exn65073_)
                (macro-wrong-number-of-values-exception-vals _exn65073_)
                (let ((__tmp66684
                       (let ((__tmp66685
                              (let ()
                                (declare (not safe))
                                (cons _exn65073_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp66685))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66684))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65067_))
            (let ((_e65070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65067_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65070_))
            (macro-wrong-processor-c-return-exception? _exn65067_))))))
