(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709111635)
  (begin
    (define Exception::t
      (let ((__tmp66323 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66323
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66291_ (apply make-instance Exception::t _$args66291_)))
    (define StackTrace::t
      (let ((__tmp66324 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66324
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66288_ (apply make-instance StackTrace::t _$args66288_)))
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
      (let ((__tmp66325 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66325
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66285_ (apply make-instance Error::t _$args66285_)))
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
      (let ((__tmp66326 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66326
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66282_
        (apply make-instance RuntimeException::t _$args66282_)))
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
      (lambda (_exn66277_ _continue66278_)
        (let ((_exn66280_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66277_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66280_ _continue66278_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66273_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66273_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66273_ 'continuation))
                '#!void
                (let ((__tmp66327
                       (lambda (_cont66275_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66273_
                            'continuation
                            _cont66275_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66327)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66273_))))
    (define error
      (lambda (_message66270_ . _irritants66271_)
        (raise (let ((__obj66317
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66317
                  _message66270_
                  'irritants:
                  _irritants66271_)
                 __obj66317))))
    (define with-exception-handler
      (lambda (_handler66263_ _thunk66264_)
        (if (let () (declare (not safe)) (procedure? _handler66263_))
            '#!void
            (raise (let ((__obj66318
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66318
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66263_ '())))
                     __obj66318)))
        (if (let () (declare (not safe)) (procedure? _thunk66264_))
            '#!void
            (raise (let ((__obj66319
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66319
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66264_ '())))
                     __obj66319)))
        (let ((__tmp66328
               (lambda (_exn66266_)
                 (let ((_exn66268_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66266_))))
                   (_handler66263_ _exn66268_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66328 _thunk66264_))))
    (define with-catch
      (lambda (_handler66256_ _thunk66257_)
        (if (let () (declare (not safe)) (procedure? _handler66256_))
            '#!void
            (raise (let ((__obj66320
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66320
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66256_ '())))
                     __obj66320)))
        (if (let () (declare (not safe)) (procedure? _thunk66257_))
            '#!void
            (raise (let ((__obj66321
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66321
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66257_ '())))
                     __obj66321)))
        (let ((__tmp66329
               (lambda (_cont66259_)
                 (with-exception-handler
                  (lambda (_exn66261_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66259_
                       _handler66256_
                       _exn66261_)))
                  _thunk66257_))))
          (declare (not safe))
          (##continuation-capture __tmp66329))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66247_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66247_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66247_)))
            _exn66247_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66247_))
                _exn66247_
                (if (macro-exception? _exn66247_)
                    (let ((_rte66252_
                           (let ((__obj66322
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66322
                                _exn66247_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66322)))
                      (let ((__tmp66330
                             (lambda (_cont66254_)
                               (let ((__tmp66331
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66254_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66252_
                                  'continuation
                                  __tmp66331)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66330))
                      _rte66252_)
                    _exn66247_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66242_)
        (let ((_$e66244_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66242_))))
          (if _$e66244_
              _$e66244_
              (let () (declare (not safe)) (error-exception? _obj66242_))))))
    (define error-message
      (lambda (_obj66240_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66240_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66240_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66240_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66240_))
                '#f))))
    (define error-irritants
      (lambda (_obj66238_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66238_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66238_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66238_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66238_))
                '#f))))
    (define error-trace
      (lambda (_obj66236_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66236_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66236_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66218_ _port66219_)
        (let ((_$e66221_
               (let ()
                 (declare (not safe))
                 (method-ref _e66218_ 'display-exception))))
          (if _$e66221_
              ((lambda (_f66224_) (_f66224_ _e66218_ _port66219_)) _$e66221_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66218_ _port66219_))))))
    (define display-exception__0
      (lambda (_e66229_)
        (let ((_port66231_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66229_ _port66231_))))
    (define display-exception
      (lambda _g66333_
        (let ((_g66332_ (let () (declare (not safe)) (##length _g66333_))))
          (cond ((let () (declare (not safe)) (##fx= _g66332_ 1))
                 (apply (lambda (_e66229_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66229_)))
                        _g66333_))
                ((let () (declare (not safe)) (##fx= _g66332_ 2))
                 (apply (lambda (_e66233_ _port66234_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66233_ _port66234_)))
                        _g66333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66333_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66207_ _message66208_ . _rest66209_)
        (let ((_message66215_
               (if (let () (declare (not safe)) (string? _message66208_))
                   _message66208_
                   (call-with-output-string
                    '""
                    (lambda (_g6621066212_)
                      (display _message66208_ _g6621066212_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66207_ 'message _message66215_))
          (apply class-instance-init! _self66207_ _rest66209_))))
    (define Error:::init!::specialize
      (lambda (__klass66293 __method-table66294)
        (let ((__message66295
               (let ((__slot66296
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66293 'message))))
                 (if __slot66296
                     __slot66296
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66207_ _message66208_ . _rest66209_)
            (let ((_message66215_
                   (if (let () (declare (not safe)) (string? _message66208_))
                       _message66208_
                       (call-with-output-string
                        '""
                        (lambda (_g6621066212_)
                          (display _message66208_ _g6621066212_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66207_
                 _message66215_
                 __message66295
                 __klass66293
                 '#f))
              (apply class-instance-init! _self66207_ _rest66209_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self66065_ _port66066_)
        (let ((_tmp-port66068_ (open-output-string))
              (_display-error-newline66069_
               (> (output-port-column _port66066_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66068_))
          (let ((__tmp66334
                 (lambda ()
                   (if _display-error-newline66069_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66072_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66065_ 'where))))
                     (if _$e66072_ (display _$e66072_) (display '"?")))
                   (let ((__tmp66335
                          (let ((__tmp66336 (object-type _self66065_)))
                            (declare (not safe))
                            (##type-name __tmp66336))))
                     (declare (not safe))
                     (display* '" [" __tmp66335 '"]: "))
                   (let ((__tmp66337
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66065_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66337))
                   (let ((_irritants66075_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66065_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66075_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66077_)
                              (write _obj66077_)
                              (write-char '#\space))
                            _irritants66075_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66065_))
                            (dump-stack-trace?))
                       (let ((_cont6607866080_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66065_
                                 'continuation))))
                         (if _cont6607866080_
                             (let ((_cont66083_ _cont6607866080_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66083_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66334
             current-output-port
             _tmp-port66068_))
          (let ((__tmp66338 (get-output-string _tmp-port66068_)))
            (declare (not safe))
            (##write-string __tmp66338 _port66066_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66297 __method-table66298)
        (let ((__irritants66299
               (let ((__slot66303
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66297 'irritants))))
                 (if __slot66303
                     __slot66303
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message66300
               (let ((__slot66304
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66297 'message))))
                 (if __slot66304
                     __slot66304
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__continuation66301
               (let ((__slot66305
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66297 'continuation))))
                 (if __slot66305
                     __slot66305
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where66302
               (let ((__slot66306
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66297 'where))))
                 (if __slot66306
                     __slot66306
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where))))))
          (lambda (_self66065_ _port66066_)
            (let ((_tmp-port66068_ (open-output-string))
                  (_display-error-newline66069_
                   (> (output-port-column _port66066_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66068_))
              (let ((__tmp66339
                     (lambda ()
                       (if _display-error-newline66069_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66072_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66065_
                                 __where66302
                                 __klass66297
                                 '#f))))
                         (if _$e66072_ (display _$e66072_) (display '"?")))
                       (let ((__tmp66340
                              (let ((__tmp66341 (object-type _self66065_)))
                                (declare (not safe))
                                (##type-name __tmp66341))))
                         (declare (not safe))
                         (display* '" [" __tmp66340 '"]: "))
                       (let ((__tmp66342
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66065_
                                 __message66300
                                 __klass66297
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66342))
                       (let ((_irritants66075_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66065_
                                 __irritants66299
                                 __klass66297
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66075_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66077_)
                                  (write _obj66077_)
                                  (write-char '#\space))
                                _irritants66075_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66065_))
                                (dump-stack-trace?))
                           (let ((_cont6607866080_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66065_
                                     __continuation66301
                                     __klass66297
                                     '#f))))
                             (if _cont6607866080_
                                 (let ((_cont66083_ _cont6607866080_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66083_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66339
                 current-output-port
                 _tmp-port66068_))
              (let ((__tmp66343 (get-output-string _tmp-port66068_)))
                (declare (not safe))
                (##write-string __tmp66343 _port66066_)))))))
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
      (lambda (_self65932_ _port65933_)
        (let ((_tmp-port65935_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65935_))
          (let ((__tmp66344
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self65932_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66344 _tmp-port65935_))
          (if (dump-stack-trace?)
              (let ((_cont6593665938_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self65932_ 'continuation))))
                (if _cont6593665938_
                    (let ((_cont65941_ _cont6593665938_))
                      (display '"--- continuation backtrace:" _tmp-port65935_)
                      (newline _tmp-port65935_)
                      (display-continuation-backtrace
                       _cont65941_
                       _tmp-port65935_))
                    '#f))
              '#!void)
          (let ((__tmp66345 (get-output-string _tmp-port65935_)))
            (declare (not safe))
            (##write-string __tmp66345 _port65933_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66307 __method-table66308)
        (let ((__continuation66309
               (let ((__slot66311
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66307 'continuation))))
                 (if __slot66311
                     __slot66311
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception66310
               (let ((__slot66312
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66307 'exception))))
                 (if __slot66312
                     __slot66312
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self65932_ _port65933_)
            (let ((_tmp-port65935_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65935_))
              (let ((__tmp66346
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self65932_
                        __exception66310
                        __klass66307
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66346 _tmp-port65935_))
              (if (dump-stack-trace?)
                  (let ((_cont6593665938_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self65932_
                            __continuation66309
                            __klass66307
                            '#f))))
                    (if _cont6593665938_
                        (let ((_cont65941_ _cont6593665938_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port65935_)
                          (newline _tmp-port65935_)
                          (display-continuation-backtrace
                           _cont65941_
                           _tmp-port65935_))
                        '#f))
                  '#!void)
              (let ((__tmp66347 (get-output-string _tmp-port65935_)))
                (declare (not safe))
                (##write-string __tmp66347 _port65933_)))))))
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
      (lambda (_port65804_)
        (if (macro-character-port? _port65804_)
            (let ((_old-width65806_
                   (macro-character-port-output-width _port65804_)))
              (macro-character-port-output-width-set!
               _port65804_
               (lambda (_port65808_) '256))
              _old-width65806_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port65801_ _old-width65802_)
        (if (macro-character-port? _port65801_)
            (macro-character-port-output-width-set!
             _port65801_
             _old-width65802_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e65799_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e65799_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn65793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65793_))
            (let ((_e65796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65793_ 'exception))))
              (macro-abandoned-mutex-exception? _e65796_))
            (macro-abandoned-mutex-exception? _exn65793_))))
    (define cfun-conversion-exception?
      (lambda (_exn65789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65789_))
            (let ((_e65791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65789_ 'exception))))
              (macro-cfun-conversion-exception? _e65791_))
            (macro-cfun-conversion-exception? _exn65789_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn65785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65785_))
            (let ((_e65787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65785_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65787_)
                  (macro-cfun-conversion-exception-arguments _e65787_)
                  (let ((__tmp66350
                         (let ((__tmp66351
                                (let ()
                                  (declare (not safe))
                                  (cons _e65787_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66351))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66350))))
            (if (macro-cfun-conversion-exception? _exn65785_)
                (macro-cfun-conversion-exception-arguments _exn65785_)
                (let ((__tmp66348
                       (let ((__tmp66349
                              (let ()
                                (declare (not safe))
                                (cons _exn65785_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66349))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66348))))))
    (define cfun-conversion-exception-code
      (lambda (_exn65781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65781_))
            (let ((_e65783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65781_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65783_)
                  (macro-cfun-conversion-exception-code _e65783_)
                  (let ((__tmp66354
                         (let ((__tmp66355
                                (let ()
                                  (declare (not safe))
                                  (cons _e65783_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66355))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66354))))
            (if (macro-cfun-conversion-exception? _exn65781_)
                (macro-cfun-conversion-exception-code _exn65781_)
                (let ((__tmp66352
                       (let ((__tmp66353
                              (let ()
                                (declare (not safe))
                                (cons _exn65781_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66353))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66352))))))
    (define cfun-conversion-exception-message
      (lambda (_exn65777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65777_))
            (let ((_e65779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65777_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65779_)
                  (macro-cfun-conversion-exception-message _e65779_)
                  (let ((__tmp66358
                         (let ((__tmp66359
                                (let ()
                                  (declare (not safe))
                                  (cons _e65779_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66359))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66358))))
            (if (macro-cfun-conversion-exception? _exn65777_)
                (macro-cfun-conversion-exception-message _exn65777_)
                (let ((__tmp66356
                       (let ((__tmp66357
                              (let ()
                                (declare (not safe))
                                (cons _exn65777_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66357))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66356))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn65771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65771_))
            (let ((_e65774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65771_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65774_)
                  (macro-cfun-conversion-exception-procedure _e65774_)
                  (let ((__tmp66362
                         (let ((__tmp66363
                                (let ()
                                  (declare (not safe))
                                  (cons _e65774_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66363))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66362))))
            (if (macro-cfun-conversion-exception? _exn65771_)
                (macro-cfun-conversion-exception-procedure _exn65771_)
                (let ((__tmp66360
                       (let ((__tmp66361
                              (let ()
                                (declare (not safe))
                                (cons _exn65771_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66361))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66360))))))
    (define datum-parsing-exception?
      (lambda (_exn65767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65767_))
            (let ((_e65769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65767_ 'exception))))
              (macro-datum-parsing-exception? _e65769_))
            (macro-datum-parsing-exception? _exn65767_))))
    (define datum-parsing-exception-kind
      (lambda (_exn65763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65763_))
            (let ((_e65765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65763_ 'exception))))
              (if (macro-datum-parsing-exception? _e65765_)
                  (macro-datum-parsing-exception-kind _e65765_)
                  (let ((__tmp66366
                         (let ((__tmp66367
                                (let ()
                                  (declare (not safe))
                                  (cons _e65765_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66367))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66366))))
            (if (macro-datum-parsing-exception? _exn65763_)
                (macro-datum-parsing-exception-kind _exn65763_)
                (let ((__tmp66364
                       (let ((__tmp66365
                              (let ()
                                (declare (not safe))
                                (cons _exn65763_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66365))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66364))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn65759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65759_))
            (let ((_e65761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65759_ 'exception))))
              (if (macro-datum-parsing-exception? _e65761_)
                  (macro-datum-parsing-exception-parameters _e65761_)
                  (let ((__tmp66370
                         (let ((__tmp66371
                                (let ()
                                  (declare (not safe))
                                  (cons _e65761_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66371))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66370))))
            (if (macro-datum-parsing-exception? _exn65759_)
                (macro-datum-parsing-exception-parameters _exn65759_)
                (let ((__tmp66368
                       (let ((__tmp66369
                              (let ()
                                (declare (not safe))
                                (cons _exn65759_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66369))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66368))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn65753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65753_))
            (let ((_e65756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65753_ 'exception))))
              (if (macro-datum-parsing-exception? _e65756_)
                  (macro-datum-parsing-exception-readenv _e65756_)
                  (let ((__tmp66374
                         (let ((__tmp66375
                                (let ()
                                  (declare (not safe))
                                  (cons _e65756_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66375))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66374))))
            (if (macro-datum-parsing-exception? _exn65753_)
                (macro-datum-parsing-exception-readenv _exn65753_)
                (let ((__tmp66372
                       (let ((__tmp66373
                              (let ()
                                (declare (not safe))
                                (cons _exn65753_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66373))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66372))))))
    (define deadlock-exception?
      (lambda (_exn65747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65747_))
            (let ((_e65750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65747_ 'exception))))
              (macro-deadlock-exception? _e65750_))
            (macro-deadlock-exception? _exn65747_))))
    (define divide-by-zero-exception?
      (lambda (_exn65743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65743_))
            (let ((_e65745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65743_ 'exception))))
              (macro-divide-by-zero-exception? _e65745_))
            (macro-divide-by-zero-exception? _exn65743_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn65739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65739_))
            (let ((_e65741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65739_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65741_)
                  (macro-divide-by-zero-exception-arguments _e65741_)
                  (let ((__tmp66378
                         (let ((__tmp66379
                                (let ()
                                  (declare (not safe))
                                  (cons _e65741_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66379))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66378))))
            (if (macro-divide-by-zero-exception? _exn65739_)
                (macro-divide-by-zero-exception-arguments _exn65739_)
                (let ((__tmp66376
                       (let ((__tmp66377
                              (let ()
                                (declare (not safe))
                                (cons _exn65739_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66377))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66376))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn65733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65733_))
            (let ((_e65736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65733_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65736_)
                  (macro-divide-by-zero-exception-procedure _e65736_)
                  (let ((__tmp66382
                         (let ((__tmp66383
                                (let ()
                                  (declare (not safe))
                                  (cons _e65736_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66383))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66382))))
            (if (macro-divide-by-zero-exception? _exn65733_)
                (macro-divide-by-zero-exception-procedure _exn65733_)
                (let ((__tmp66380
                       (let ((__tmp66381
                              (let ()
                                (declare (not safe))
                                (cons _exn65733_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66381))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66380))))))
    (define error-exception?
      (lambda (_exn65729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65729_))
            (let ((_e65731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65729_ 'exception))))
              (macro-error-exception? _e65731_))
            (macro-error-exception? _exn65729_))))
    (define error-exception-message
      (lambda (_exn65725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65725_))
            (let ((_e65727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65725_ 'exception))))
              (if (macro-error-exception? _e65727_)
                  (macro-error-exception-message _e65727_)
                  (let ((__tmp66386
                         (let ((__tmp66387
                                (let ()
                                  (declare (not safe))
                                  (cons _e65727_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66387))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66386))))
            (if (macro-error-exception? _exn65725_)
                (macro-error-exception-message _exn65725_)
                (let ((__tmp66384
                       (let ((__tmp66385
                              (let ()
                                (declare (not safe))
                                (cons _exn65725_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66385))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66384))))))
    (define error-exception-parameters
      (lambda (_exn65719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65719_))
            (let ((_e65722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65719_ 'exception))))
              (if (macro-error-exception? _e65722_)
                  (macro-error-exception-parameters _e65722_)
                  (let ((__tmp66390
                         (let ((__tmp66391
                                (let ()
                                  (declare (not safe))
                                  (cons _e65722_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66391))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66390))))
            (if (macro-error-exception? _exn65719_)
                (macro-error-exception-parameters _exn65719_)
                (let ((__tmp66388
                       (let ((__tmp66389
                              (let ()
                                (declare (not safe))
                                (cons _exn65719_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66389))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66388))))))
    (define expression-parsing-exception?
      (lambda (_exn65715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65715_))
            (let ((_e65717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65715_ 'exception))))
              (macro-expression-parsing-exception? _e65717_))
            (macro-expression-parsing-exception? _exn65715_))))
    (define expression-parsing-exception-kind
      (lambda (_exn65711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65711_))
            (let ((_e65713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65711_ 'exception))))
              (if (macro-expression-parsing-exception? _e65713_)
                  (macro-expression-parsing-exception-kind _e65713_)
                  (let ((__tmp66394
                         (let ((__tmp66395
                                (let ()
                                  (declare (not safe))
                                  (cons _e65713_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66395))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66394))))
            (if (macro-expression-parsing-exception? _exn65711_)
                (macro-expression-parsing-exception-kind _exn65711_)
                (let ((__tmp66392
                       (let ((__tmp66393
                              (let ()
                                (declare (not safe))
                                (cons _exn65711_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66393))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66392))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn65707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65707_))
            (let ((_e65709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65707_ 'exception))))
              (if (macro-expression-parsing-exception? _e65709_)
                  (macro-expression-parsing-exception-parameters _e65709_)
                  (let ((__tmp66398
                         (let ((__tmp66399
                                (let ()
                                  (declare (not safe))
                                  (cons _e65709_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66399))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66398))))
            (if (macro-expression-parsing-exception? _exn65707_)
                (macro-expression-parsing-exception-parameters _exn65707_)
                (let ((__tmp66396
                       (let ((__tmp66397
                              (let ()
                                (declare (not safe))
                                (cons _exn65707_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66397))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66396))))))
    (define expression-parsing-exception-source
      (lambda (_exn65701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65701_))
            (let ((_e65704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65701_ 'exception))))
              (if (macro-expression-parsing-exception? _e65704_)
                  (macro-expression-parsing-exception-source _e65704_)
                  (let ((__tmp66402
                         (let ((__tmp66403
                                (let ()
                                  (declare (not safe))
                                  (cons _e65704_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66403))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66402))))
            (if (macro-expression-parsing-exception? _exn65701_)
                (macro-expression-parsing-exception-source _exn65701_)
                (let ((__tmp66400
                       (let ((__tmp66401
                              (let ()
                                (declare (not safe))
                                (cons _exn65701_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66401))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66400))))))
    (define file-exists-exception?
      (lambda (_exn65697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65697_))
            (let ((_e65699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65697_ 'exception))))
              (macro-file-exists-exception? _e65699_))
            (macro-file-exists-exception? _exn65697_))))
    (define file-exists-exception-arguments
      (lambda (_exn65693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65693_))
            (let ((_e65695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65693_ 'exception))))
              (if (macro-file-exists-exception? _e65695_)
                  (macro-file-exists-exception-arguments _e65695_)
                  (let ((__tmp66406
                         (let ((__tmp66407
                                (let ()
                                  (declare (not safe))
                                  (cons _e65695_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66407))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66406))))
            (if (macro-file-exists-exception? _exn65693_)
                (macro-file-exists-exception-arguments _exn65693_)
                (let ((__tmp66404
                       (let ((__tmp66405
                              (let ()
                                (declare (not safe))
                                (cons _exn65693_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66405))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66404))))))
    (define file-exists-exception-procedure
      (lambda (_exn65687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65687_))
            (let ((_e65690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65687_ 'exception))))
              (if (macro-file-exists-exception? _e65690_)
                  (macro-file-exists-exception-procedure _e65690_)
                  (let ((__tmp66410
                         (let ((__tmp66411
                                (let ()
                                  (declare (not safe))
                                  (cons _e65690_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66411))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66410))))
            (if (macro-file-exists-exception? _exn65687_)
                (macro-file-exists-exception-procedure _exn65687_)
                (let ((__tmp66408
                       (let ((__tmp66409
                              (let ()
                                (declare (not safe))
                                (cons _exn65687_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66409))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66408))))))
    (define fixnum-overflow-exception?
      (lambda (_exn65683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65683_))
            (let ((_e65685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65683_ 'exception))))
              (macro-fixnum-overflow-exception? _e65685_))
            (macro-fixnum-overflow-exception? _exn65683_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn65679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65679_))
            (let ((_e65681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65679_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65681_)
                  (macro-fixnum-overflow-exception-arguments _e65681_)
                  (let ((__tmp66414
                         (let ((__tmp66415
                                (let ()
                                  (declare (not safe))
                                  (cons _e65681_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66415))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66414))))
            (if (macro-fixnum-overflow-exception? _exn65679_)
                (macro-fixnum-overflow-exception-arguments _exn65679_)
                (let ((__tmp66412
                       (let ((__tmp66413
                              (let ()
                                (declare (not safe))
                                (cons _exn65679_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66413))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66412))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn65673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65673_))
            (let ((_e65676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65673_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65676_)
                  (macro-fixnum-overflow-exception-procedure _e65676_)
                  (let ((__tmp66418
                         (let ((__tmp66419
                                (let ()
                                  (declare (not safe))
                                  (cons _e65676_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66419))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66418))))
            (if (macro-fixnum-overflow-exception? _exn65673_)
                (macro-fixnum-overflow-exception-procedure _exn65673_)
                (let ((__tmp66416
                       (let ((__tmp66417
                              (let ()
                                (declare (not safe))
                                (cons _exn65673_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66417))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66416))))))
    (define heap-overflow-exception?
      (lambda (_exn65667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65667_))
            (let ((_e65670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65667_ 'exception))))
              (macro-heap-overflow-exception? _e65670_))
            (macro-heap-overflow-exception? _exn65667_))))
    (define inactive-thread-exception?
      (lambda (_exn65663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65663_))
            (let ((_e65665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65663_ 'exception))))
              (macro-inactive-thread-exception? _e65665_))
            (macro-inactive-thread-exception? _exn65663_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn65659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65659_))
            (let ((_e65661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65659_ 'exception))))
              (if (macro-inactive-thread-exception? _e65661_)
                  (macro-inactive-thread-exception-arguments _e65661_)
                  (let ((__tmp66422
                         (let ((__tmp66423
                                (let ()
                                  (declare (not safe))
                                  (cons _e65661_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66423))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66422))))
            (if (macro-inactive-thread-exception? _exn65659_)
                (macro-inactive-thread-exception-arguments _exn65659_)
                (let ((__tmp66420
                       (let ((__tmp66421
                              (let ()
                                (declare (not safe))
                                (cons _exn65659_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66421))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66420))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn65653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65653_))
            (let ((_e65656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65653_ 'exception))))
              (if (macro-inactive-thread-exception? _e65656_)
                  (macro-inactive-thread-exception-procedure _e65656_)
                  (let ((__tmp66426
                         (let ((__tmp66427
                                (let ()
                                  (declare (not safe))
                                  (cons _e65656_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66427))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66426))))
            (if (macro-inactive-thread-exception? _exn65653_)
                (macro-inactive-thread-exception-procedure _exn65653_)
                (let ((__tmp66424
                       (let ((__tmp66425
                              (let ()
                                (declare (not safe))
                                (cons _exn65653_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66425))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66424))))))
    (define initialized-thread-exception?
      (lambda (_exn65649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65649_))
            (let ((_e65651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65649_ 'exception))))
              (macro-initialized-thread-exception? _e65651_))
            (macro-initialized-thread-exception? _exn65649_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn65645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65645_))
            (let ((_e65647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65645_ 'exception))))
              (if (macro-initialized-thread-exception? _e65647_)
                  (macro-initialized-thread-exception-arguments _e65647_)
                  (let ((__tmp66430
                         (let ((__tmp66431
                                (let ()
                                  (declare (not safe))
                                  (cons _e65647_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66431))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66430))))
            (if (macro-initialized-thread-exception? _exn65645_)
                (macro-initialized-thread-exception-arguments _exn65645_)
                (let ((__tmp66428
                       (let ((__tmp66429
                              (let ()
                                (declare (not safe))
                                (cons _exn65645_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66429))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66428))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn65639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65639_))
            (let ((_e65642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65639_ 'exception))))
              (if (macro-initialized-thread-exception? _e65642_)
                  (macro-initialized-thread-exception-procedure _e65642_)
                  (let ((__tmp66434
                         (let ((__tmp66435
                                (let ()
                                  (declare (not safe))
                                  (cons _e65642_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66435))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66434))))
            (if (macro-initialized-thread-exception? _exn65639_)
                (macro-initialized-thread-exception-procedure _exn65639_)
                (let ((__tmp66432
                       (let ((__tmp66433
                              (let ()
                                (declare (not safe))
                                (cons _exn65639_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66433))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66432))))))
    (define invalid-hash-number-exception?
      (lambda (_exn65635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65635_))
            (let ((_e65637_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65635_ 'exception))))
              (macro-invalid-hash-number-exception? _e65637_))
            (macro-invalid-hash-number-exception? _exn65635_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn65631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65631_))
            (let ((_e65633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65631_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65633_)
                  (macro-invalid-hash-number-exception-arguments _e65633_)
                  (let ((__tmp66438
                         (let ((__tmp66439
                                (let ()
                                  (declare (not safe))
                                  (cons _e65633_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66439))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66438))))
            (if (macro-invalid-hash-number-exception? _exn65631_)
                (macro-invalid-hash-number-exception-arguments _exn65631_)
                (let ((__tmp66436
                       (let ((__tmp66437
                              (let ()
                                (declare (not safe))
                                (cons _exn65631_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66437))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66436))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn65625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65625_))
            (let ((_e65628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65625_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65628_)
                  (macro-invalid-hash-number-exception-procedure _e65628_)
                  (let ((__tmp66442
                         (let ((__tmp66443
                                (let ()
                                  (declare (not safe))
                                  (cons _e65628_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66443))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66442))))
            (if (macro-invalid-hash-number-exception? _exn65625_)
                (macro-invalid-hash-number-exception-procedure _exn65625_)
                (let ((__tmp66440
                       (let ((__tmp66441
                              (let ()
                                (declare (not safe))
                                (cons _exn65625_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66441))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66440))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65621_))
            (let ((_e65623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65621_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65623_))
            (macro-invalid-utf8-encoding-exception? _exn65621_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65617_))
            (let ((_e65619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65617_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65619_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65619_)
                  (let ((__tmp66446
                         (let ((__tmp66447
                                (let ()
                                  (declare (not safe))
                                  (cons _e65619_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66447))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66446))))
            (if (macro-invalid-utf8-encoding-exception? _exn65617_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65617_)
                (let ((__tmp66444
                       (let ((__tmp66445
                              (let ()
                                (declare (not safe))
                                (cons _exn65617_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66445))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66444))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65611_))
            (let ((_e65614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65611_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65614_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65614_)
                  (let ((__tmp66450
                         (let ((__tmp66451
                                (let ()
                                  (declare (not safe))
                                  (cons _e65614_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66451))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66450))))
            (if (macro-invalid-utf8-encoding-exception? _exn65611_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65611_)
                (let ((__tmp66448
                       (let ((__tmp66449
                              (let ()
                                (declare (not safe))
                                (cons _exn65611_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66449))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66448))))))
    (define join-timeout-exception?
      (lambda (_exn65607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65607_))
            (let ((_e65609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65607_ 'exception))))
              (macro-join-timeout-exception? _e65609_))
            (macro-join-timeout-exception? _exn65607_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65603_))
            (let ((_e65605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65603_ 'exception))))
              (if (macro-join-timeout-exception? _e65605_)
                  (macro-join-timeout-exception-arguments _e65605_)
                  (let ((__tmp66454
                         (let ((__tmp66455
                                (let ()
                                  (declare (not safe))
                                  (cons _e65605_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66455))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66454))))
            (if (macro-join-timeout-exception? _exn65603_)
                (macro-join-timeout-exception-arguments _exn65603_)
                (let ((__tmp66452
                       (let ((__tmp66453
                              (let ()
                                (declare (not safe))
                                (cons _exn65603_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66453))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66452))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65597_))
            (let ((_e65600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65597_ 'exception))))
              (if (macro-join-timeout-exception? _e65600_)
                  (macro-join-timeout-exception-procedure _e65600_)
                  (let ((__tmp66458
                         (let ((__tmp66459
                                (let ()
                                  (declare (not safe))
                                  (cons _e65600_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66459))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66458))))
            (if (macro-join-timeout-exception? _exn65597_)
                (macro-join-timeout-exception-procedure _exn65597_)
                (let ((__tmp66456
                       (let ((__tmp66457
                              (let ()
                                (declare (not safe))
                                (cons _exn65597_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66457))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66456))))))
    (define keyword-expected-exception?
      (lambda (_exn65593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65593_))
            (let ((_e65595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65593_ 'exception))))
              (macro-keyword-expected-exception? _e65595_))
            (macro-keyword-expected-exception? _exn65593_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65589_))
            (let ((_e65591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65589_ 'exception))))
              (if (macro-keyword-expected-exception? _e65591_)
                  (macro-keyword-expected-exception-arguments _e65591_)
                  (let ((__tmp66462
                         (let ((__tmp66463
                                (let ()
                                  (declare (not safe))
                                  (cons _e65591_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66463))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66462))))
            (if (macro-keyword-expected-exception? _exn65589_)
                (macro-keyword-expected-exception-arguments _exn65589_)
                (let ((__tmp66460
                       (let ((__tmp66461
                              (let ()
                                (declare (not safe))
                                (cons _exn65589_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66461))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66460))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65583_))
            (let ((_e65586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65583_ 'exception))))
              (if (macro-keyword-expected-exception? _e65586_)
                  (macro-keyword-expected-exception-procedure _e65586_)
                  (let ((__tmp66466
                         (let ((__tmp66467
                                (let ()
                                  (declare (not safe))
                                  (cons _e65586_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66467))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66466))))
            (if (macro-keyword-expected-exception? _exn65583_)
                (macro-keyword-expected-exception-procedure _exn65583_)
                (let ((__tmp66464
                       (let ((__tmp66465
                              (let ()
                                (declare (not safe))
                                (cons _exn65583_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66465))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66464))))))
    (define length-mismatch-exception?
      (lambda (_exn65579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65579_))
            (let ((_e65581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65579_ 'exception))))
              (macro-length-mismatch-exception? _e65581_))
            (macro-length-mismatch-exception? _exn65579_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65575_))
            (let ((_e65577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65575_ 'exception))))
              (if (macro-length-mismatch-exception? _e65577_)
                  (macro-length-mismatch-exception-arg-id _e65577_)
                  (let ((__tmp66470
                         (let ((__tmp66471
                                (let ()
                                  (declare (not safe))
                                  (cons _e65577_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66471))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66470))))
            (if (macro-length-mismatch-exception? _exn65575_)
                (macro-length-mismatch-exception-arg-id _exn65575_)
                (let ((__tmp66468
                       (let ((__tmp66469
                              (let ()
                                (declare (not safe))
                                (cons _exn65575_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66469))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66468))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65571_))
            (let ((_e65573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65571_ 'exception))))
              (if (macro-length-mismatch-exception? _e65573_)
                  (macro-length-mismatch-exception-arguments _e65573_)
                  (let ((__tmp66474
                         (let ((__tmp66475
                                (let ()
                                  (declare (not safe))
                                  (cons _e65573_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66475))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66474))))
            (if (macro-length-mismatch-exception? _exn65571_)
                (macro-length-mismatch-exception-arguments _exn65571_)
                (let ((__tmp66472
                       (let ((__tmp66473
                              (let ()
                                (declare (not safe))
                                (cons _exn65571_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66473))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66472))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65565_))
            (let ((_e65568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65565_ 'exception))))
              (if (macro-length-mismatch-exception? _e65568_)
                  (macro-length-mismatch-exception-procedure _e65568_)
                  (let ((__tmp66478
                         (let ((__tmp66479
                                (let ()
                                  (declare (not safe))
                                  (cons _e65568_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66479))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66478))))
            (if (macro-length-mismatch-exception? _exn65565_)
                (macro-length-mismatch-exception-procedure _exn65565_)
                (let ((__tmp66476
                       (let ((__tmp66477
                              (let ()
                                (declare (not safe))
                                (cons _exn65565_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66477))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66476))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65561_))
            (let ((_e65563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65561_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65563_))
            (macro-mailbox-receive-timeout-exception? _exn65561_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65557_))
            (let ((_e65559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65557_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65559_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65559_)
                  (let ((__tmp66482
                         (let ((__tmp66483
                                (let ()
                                  (declare (not safe))
                                  (cons _e65559_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66483))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66482))))
            (if (macro-mailbox-receive-timeout-exception? _exn65557_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65557_)
                (let ((__tmp66480
                       (let ((__tmp66481
                              (let ()
                                (declare (not safe))
                                (cons _exn65557_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66481))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66480))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65551_))
            (let ((_e65554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65551_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65554_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65554_)
                  (let ((__tmp66486
                         (let ((__tmp66487
                                (let ()
                                  (declare (not safe))
                                  (cons _e65554_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66487))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66486))))
            (if (macro-mailbox-receive-timeout-exception? _exn65551_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65551_)
                (let ((__tmp66484
                       (let ((__tmp66485
                              (let ()
                                (declare (not safe))
                                (cons _exn65551_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66485))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66484))))))
    (define module-not-found-exception?
      (lambda (_exn65547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65547_))
            (let ((_e65549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65547_ 'exception))))
              (macro-module-not-found-exception? _e65549_))
            (macro-module-not-found-exception? _exn65547_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65543_))
            (let ((_e65545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65543_ 'exception))))
              (if (macro-module-not-found-exception? _e65545_)
                  (macro-module-not-found-exception-arguments _e65545_)
                  (let ((__tmp66490
                         (let ((__tmp66491
                                (let ()
                                  (declare (not safe))
                                  (cons _e65545_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66491))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66490))))
            (if (macro-module-not-found-exception? _exn65543_)
                (macro-module-not-found-exception-arguments _exn65543_)
                (let ((__tmp66488
                       (let ((__tmp66489
                              (let ()
                                (declare (not safe))
                                (cons _exn65543_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66489))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66488))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65537_))
            (let ((_e65540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65537_ 'exception))))
              (if (macro-module-not-found-exception? _e65540_)
                  (macro-module-not-found-exception-procedure _e65540_)
                  (let ((__tmp66494
                         (let ((__tmp66495
                                (let ()
                                  (declare (not safe))
                                  (cons _e65540_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66495))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66494))))
            (if (macro-module-not-found-exception? _exn65537_)
                (macro-module-not-found-exception-procedure _exn65537_)
                (let ((__tmp66492
                       (let ((__tmp66493
                              (let ()
                                (declare (not safe))
                                (cons _exn65537_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66493))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66492))))))
    (define multiple-c-return-exception?
      (lambda (_exn65531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65531_))
            (let ((_e65534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65531_ 'exception))))
              (macro-multiple-c-return-exception? _e65534_))
            (macro-multiple-c-return-exception? _exn65531_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65527_))
            (let ((_e65529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65527_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65529_))
            (macro-no-such-file-or-directory-exception? _exn65527_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65523_))
            (let ((_e65525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65523_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65525_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65525_)
                  (let ((__tmp66498
                         (let ((__tmp66499
                                (let ()
                                  (declare (not safe))
                                  (cons _e65525_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66499))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66498))))
            (if (macro-no-such-file-or-directory-exception? _exn65523_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65523_)
                (let ((__tmp66496
                       (let ((__tmp66497
                              (let ()
                                (declare (not safe))
                                (cons _exn65523_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66497))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66496))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65517_))
            (let ((_e65520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65517_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65520_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65520_)
                  (let ((__tmp66502
                         (let ((__tmp66503
                                (let ()
                                  (declare (not safe))
                                  (cons _e65520_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66503))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66502))))
            (if (macro-no-such-file-or-directory-exception? _exn65517_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65517_)
                (let ((__tmp66500
                       (let ((__tmp66501
                              (let ()
                                (declare (not safe))
                                (cons _exn65517_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66501))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66500))))))
    (define noncontinuable-exception?
      (lambda (_exn65513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65513_))
            (let ((_e65515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65513_ 'exception))))
              (macro-noncontinuable-exception? _e65515_))
            (macro-noncontinuable-exception? _exn65513_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65507_))
            (let ((_e65510_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65507_ 'exception))))
              (if (macro-noncontinuable-exception? _e65510_)
                  (macro-noncontinuable-exception-reason _e65510_)
                  (let ((__tmp66506
                         (let ((__tmp66507
                                (let ()
                                  (declare (not safe))
                                  (cons _e65510_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66507))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66506))))
            (if (macro-noncontinuable-exception? _exn65507_)
                (macro-noncontinuable-exception-reason _exn65507_)
                (let ((__tmp66504
                       (let ((__tmp66505
                              (let ()
                                (declare (not safe))
                                (cons _exn65507_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66505))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66504))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65503_))
            (let ((_e65505_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65503_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65505_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65503_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65499_))
            (let ((_e65501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65499_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65501_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65501_)
                  (let ((__tmp66510
                         (let ((__tmp66511
                                (let ()
                                  (declare (not safe))
                                  (cons _e65501_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66511))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66510))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65499_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65499_)
                (let ((__tmp66508
                       (let ((__tmp66509
                              (let ()
                                (declare (not safe))
                                (cons _exn65499_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66509))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66508))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65493_))
            (let ((_e65496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65493_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65496_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65496_)
                  (let ((__tmp66514
                         (let ((__tmp66515
                                (let ()
                                  (declare (not safe))
                                  (cons _e65496_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66515))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66514))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65493_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65493_)
                (let ((__tmp66512
                       (let ((__tmp66513
                              (let ()
                                (declare (not safe))
                                (cons _exn65493_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66513))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66512))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65489_))
            (let ((_e65491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65489_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65491_))
            (macro-nonprocedure-operator-exception? _exn65489_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65485_))
            (let ((_e65487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65485_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65487_)
                  (macro-nonprocedure-operator-exception-arguments _e65487_)
                  (let ((__tmp66518
                         (let ((__tmp66519
                                (let ()
                                  (declare (not safe))
                                  (cons _e65487_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66519))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66518))))
            (if (macro-nonprocedure-operator-exception? _exn65485_)
                (macro-nonprocedure-operator-exception-arguments _exn65485_)
                (let ((__tmp66516
                       (let ((__tmp66517
                              (let ()
                                (declare (not safe))
                                (cons _exn65485_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66517))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66516))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65481_))
            (let ((_e65483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65481_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65483_)
                  (macro-nonprocedure-operator-exception-code _e65483_)
                  (let ((__tmp66522
                         (let ((__tmp66523
                                (let ()
                                  (declare (not safe))
                                  (cons _e65483_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66523))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66522))))
            (if (macro-nonprocedure-operator-exception? _exn65481_)
                (macro-nonprocedure-operator-exception-code _exn65481_)
                (let ((__tmp66520
                       (let ((__tmp66521
                              (let ()
                                (declare (not safe))
                                (cons _exn65481_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66521))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66520))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65477_))
            (let ((_e65479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65477_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65479_)
                  (macro-nonprocedure-operator-exception-operator _e65479_)
                  (let ((__tmp66526
                         (let ((__tmp66527
                                (let ()
                                  (declare (not safe))
                                  (cons _e65479_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66527))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66526))))
            (if (macro-nonprocedure-operator-exception? _exn65477_)
                (macro-nonprocedure-operator-exception-operator _exn65477_)
                (let ((__tmp66524
                       (let ((__tmp66525
                              (let ()
                                (declare (not safe))
                                (cons _exn65477_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66525))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66524))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65471_))
            (let ((_e65474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65471_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65474_)
                  (macro-nonprocedure-operator-exception-rte _e65474_)
                  (let ((__tmp66530
                         (let ((__tmp66531
                                (let ()
                                  (declare (not safe))
                                  (cons _e65474_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66531))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66530))))
            (if (macro-nonprocedure-operator-exception? _exn65471_)
                (macro-nonprocedure-operator-exception-rte _exn65471_)
                (let ((__tmp66528
                       (let ((__tmp66529
                              (let ()
                                (declare (not safe))
                                (cons _exn65471_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66529))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66528))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65467_))
            (let ((_e65469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65467_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65469_))
            (macro-not-in-compilation-context-exception? _exn65467_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65463_))
            (let ((_e65465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65463_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65465_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65465_)
                  (let ((__tmp66534
                         (let ((__tmp66535
                                (let ()
                                  (declare (not safe))
                                  (cons _e65465_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66535))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66534))))
            (if (macro-not-in-compilation-context-exception? _exn65463_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65463_)
                (let ((__tmp66532
                       (let ((__tmp66533
                              (let ()
                                (declare (not safe))
                                (cons _exn65463_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66533))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66532))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65457_))
            (let ((_e65460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65457_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65460_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65460_)
                  (let ((__tmp66538
                         (let ((__tmp66539
                                (let ()
                                  (declare (not safe))
                                  (cons _e65460_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66539))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66538))))
            (if (macro-not-in-compilation-context-exception? _exn65457_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65457_)
                (let ((__tmp66536
                       (let ((__tmp66537
                              (let ()
                                (declare (not safe))
                                (cons _exn65457_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66537))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66536))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65453_))
            (let ((_e65455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65453_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65455_))
            (macro-number-of-arguments-limit-exception? _exn65453_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65449_))
            (let ((_e65451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65449_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65451_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65451_)
                  (let ((__tmp66542
                         (let ((__tmp66543
                                (let ()
                                  (declare (not safe))
                                  (cons _e65451_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66543))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66542))))
            (if (macro-number-of-arguments-limit-exception? _exn65449_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65449_)
                (let ((__tmp66540
                       (let ((__tmp66541
                              (let ()
                                (declare (not safe))
                                (cons _exn65449_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66541))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66540))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65443_))
            (let ((_e65446_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65443_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65446_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65446_)
                  (let ((__tmp66546
                         (let ((__tmp66547
                                (let ()
                                  (declare (not safe))
                                  (cons _e65446_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66547))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66546))))
            (if (macro-number-of-arguments-limit-exception? _exn65443_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65443_)
                (let ((__tmp66544
                       (let ((__tmp66545
                              (let ()
                                (declare (not safe))
                                (cons _exn65443_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66545))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66544))))))
    (define os-exception?
      (lambda (_exn65439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65439_))
            (let ((_e65441_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65439_ 'exception))))
              (macro-os-exception? _e65441_))
            (macro-os-exception? _exn65439_))))
    (define os-exception-arguments
      (lambda (_exn65435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65435_))
            (let ((_e65437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65435_ 'exception))))
              (if (macro-os-exception? _e65437_)
                  (macro-os-exception-arguments _e65437_)
                  (let ((__tmp66550
                         (let ((__tmp66551
                                (let ()
                                  (declare (not safe))
                                  (cons _e65437_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66551))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66550))))
            (if (macro-os-exception? _exn65435_)
                (macro-os-exception-arguments _exn65435_)
                (let ((__tmp66548
                       (let ((__tmp66549
                              (let ()
                                (declare (not safe))
                                (cons _exn65435_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66549))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66548))))))
    (define os-exception-code
      (lambda (_exn65431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65431_))
            (let ((_e65433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65431_ 'exception))))
              (if (macro-os-exception? _e65433_)
                  (macro-os-exception-code _e65433_)
                  (let ((__tmp66554
                         (let ((__tmp66555
                                (let ()
                                  (declare (not safe))
                                  (cons _e65433_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66555))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66554))))
            (if (macro-os-exception? _exn65431_)
                (macro-os-exception-code _exn65431_)
                (let ((__tmp66552
                       (let ((__tmp66553
                              (let ()
                                (declare (not safe))
                                (cons _exn65431_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66553))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66552))))))
    (define os-exception-message
      (lambda (_exn65427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65427_))
            (let ((_e65429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65427_ 'exception))))
              (if (macro-os-exception? _e65429_)
                  (macro-os-exception-message _e65429_)
                  (let ((__tmp66558
                         (let ((__tmp66559
                                (let ()
                                  (declare (not safe))
                                  (cons _e65429_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66559))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66558))))
            (if (macro-os-exception? _exn65427_)
                (macro-os-exception-message _exn65427_)
                (let ((__tmp66556
                       (let ((__tmp66557
                              (let ()
                                (declare (not safe))
                                (cons _exn65427_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66557))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66556))))))
    (define os-exception-procedure
      (lambda (_exn65421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65421_))
            (let ((_e65424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65421_ 'exception))))
              (if (macro-os-exception? _e65424_)
                  (macro-os-exception-procedure _e65424_)
                  (let ((__tmp66562
                         (let ((__tmp66563
                                (let ()
                                  (declare (not safe))
                                  (cons _e65424_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66563))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66562))))
            (if (macro-os-exception? _exn65421_)
                (macro-os-exception-procedure _exn65421_)
                (let ((__tmp66560
                       (let ((__tmp66561
                              (let ()
                                (declare (not safe))
                                (cons _exn65421_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66561))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66560))))))
    (define permission-denied-exception?
      (lambda (_exn65417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65417_))
            (let ((_e65419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65417_ 'exception))))
              (macro-permission-denied-exception? _e65419_))
            (macro-permission-denied-exception? _exn65417_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65413_))
            (let ((_e65415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65413_ 'exception))))
              (if (macro-permission-denied-exception? _e65415_)
                  (macro-permission-denied-exception-arguments _e65415_)
                  (let ((__tmp66566
                         (let ((__tmp66567
                                (let ()
                                  (declare (not safe))
                                  (cons _e65415_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66567))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66566))))
            (if (macro-permission-denied-exception? _exn65413_)
                (macro-permission-denied-exception-arguments _exn65413_)
                (let ((__tmp66564
                       (let ((__tmp66565
                              (let ()
                                (declare (not safe))
                                (cons _exn65413_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66565))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66564))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65407_))
            (let ((_e65410_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65407_ 'exception))))
              (if (macro-permission-denied-exception? _e65410_)
                  (macro-permission-denied-exception-procedure _e65410_)
                  (let ((__tmp66570
                         (let ((__tmp66571
                                (let ()
                                  (declare (not safe))
                                  (cons _e65410_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66571))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66570))))
            (if (macro-permission-denied-exception? _exn65407_)
                (macro-permission-denied-exception-procedure _exn65407_)
                (let ((__tmp66568
                       (let ((__tmp66569
                              (let ()
                                (declare (not safe))
                                (cons _exn65407_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66569))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66568))))))
    (define range-exception?
      (lambda (_exn65403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65403_))
            (let ((_e65405_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65403_ 'exception))))
              (macro-range-exception? _e65405_))
            (macro-range-exception? _exn65403_))))
    (define range-exception-arg-id
      (lambda (_exn65399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65399_))
            (let ((_e65401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65399_ 'exception))))
              (if (macro-range-exception? _e65401_)
                  (macro-range-exception-arg-id _e65401_)
                  (let ((__tmp66574
                         (let ((__tmp66575
                                (let ()
                                  (declare (not safe))
                                  (cons _e65401_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66575))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66574))))
            (if (macro-range-exception? _exn65399_)
                (macro-range-exception-arg-id _exn65399_)
                (let ((__tmp66572
                       (let ((__tmp66573
                              (let ()
                                (declare (not safe))
                                (cons _exn65399_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66573))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66572))))))
    (define range-exception-arguments
      (lambda (_exn65395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65395_))
            (let ((_e65397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65395_ 'exception))))
              (if (macro-range-exception? _e65397_)
                  (macro-range-exception-arguments _e65397_)
                  (let ((__tmp66578
                         (let ((__tmp66579
                                (let ()
                                  (declare (not safe))
                                  (cons _e65397_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66579))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66578))))
            (if (macro-range-exception? _exn65395_)
                (macro-range-exception-arguments _exn65395_)
                (let ((__tmp66576
                       (let ((__tmp66577
                              (let ()
                                (declare (not safe))
                                (cons _exn65395_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66577))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66576))))))
    (define range-exception-procedure
      (lambda (_exn65389_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65389_))
            (let ((_e65392_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65389_ 'exception))))
              (if (macro-range-exception? _e65392_)
                  (macro-range-exception-procedure _e65392_)
                  (let ((__tmp66582
                         (let ((__tmp66583
                                (let ()
                                  (declare (not safe))
                                  (cons _e65392_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66583))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66582))))
            (if (macro-range-exception? _exn65389_)
                (macro-range-exception-procedure _exn65389_)
                (let ((__tmp66580
                       (let ((__tmp66581
                              (let ()
                                (declare (not safe))
                                (cons _exn65389_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66581))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66580))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65385_))
            (let ((_e65387_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65385_ 'exception))))
              (macro-rpc-remote-error-exception? _e65387_))
            (macro-rpc-remote-error-exception? _exn65385_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65381_))
            (let ((_e65383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65381_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65383_)
                  (macro-rpc-remote-error-exception-arguments _e65383_)
                  (let ((__tmp66586
                         (let ((__tmp66587
                                (let ()
                                  (declare (not safe))
                                  (cons _e65383_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66587))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66586))))
            (if (macro-rpc-remote-error-exception? _exn65381_)
                (macro-rpc-remote-error-exception-arguments _exn65381_)
                (let ((__tmp66584
                       (let ((__tmp66585
                              (let ()
                                (declare (not safe))
                                (cons _exn65381_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66585))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66584))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65377_))
            (let ((_e65379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65377_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65379_)
                  (macro-rpc-remote-error-exception-message _e65379_)
                  (let ((__tmp66590
                         (let ((__tmp66591
                                (let ()
                                  (declare (not safe))
                                  (cons _e65379_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66591))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66590))))
            (if (macro-rpc-remote-error-exception? _exn65377_)
                (macro-rpc-remote-error-exception-message _exn65377_)
                (let ((__tmp66588
                       (let ((__tmp66589
                              (let ()
                                (declare (not safe))
                                (cons _exn65377_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66589))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66588))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65371_))
            (let ((_e65374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65371_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65374_)
                  (macro-rpc-remote-error-exception-procedure _e65374_)
                  (let ((__tmp66594
                         (let ((__tmp66595
                                (let ()
                                  (declare (not safe))
                                  (cons _e65374_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66595))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66594))))
            (if (macro-rpc-remote-error-exception? _exn65371_)
                (macro-rpc-remote-error-exception-procedure _exn65371_)
                (let ((__tmp66592
                       (let ((__tmp66593
                              (let ()
                                (declare (not safe))
                                (cons _exn65371_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66593))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66592))))))
    (define scheduler-exception?
      (lambda (_exn65367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65367_))
            (let ((_e65369_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65367_ 'exception))))
              (macro-scheduler-exception? _e65369_))
            (macro-scheduler-exception? _exn65367_))))
    (define scheduler-exception-reason
      (lambda (_exn65361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65361_))
            (let ((_e65364_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65361_ 'exception))))
              (if (macro-scheduler-exception? _e65364_)
                  (macro-scheduler-exception-reason _e65364_)
                  (let ((__tmp66598
                         (let ((__tmp66599
                                (let ()
                                  (declare (not safe))
                                  (cons _e65364_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66599))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66598))))
            (if (macro-scheduler-exception? _exn65361_)
                (macro-scheduler-exception-reason _exn65361_)
                (let ((__tmp66596
                       (let ((__tmp66597
                              (let ()
                                (declare (not safe))
                                (cons _exn65361_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66597))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66596))))))
    (define sfun-conversion-exception?
      (lambda (_exn65357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65357_))
            (let ((_e65359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65357_ 'exception))))
              (macro-sfun-conversion-exception? _e65359_))
            (macro-sfun-conversion-exception? _exn65357_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65353_))
            (let ((_e65355_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65353_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65355_)
                  (macro-sfun-conversion-exception-arguments _e65355_)
                  (let ((__tmp66602
                         (let ((__tmp66603
                                (let ()
                                  (declare (not safe))
                                  (cons _e65355_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66603))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66602))))
            (if (macro-sfun-conversion-exception? _exn65353_)
                (macro-sfun-conversion-exception-arguments _exn65353_)
                (let ((__tmp66600
                       (let ((__tmp66601
                              (let ()
                                (declare (not safe))
                                (cons _exn65353_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66601))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66600))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65349_))
            (let ((_e65351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65349_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65351_)
                  (macro-sfun-conversion-exception-code _e65351_)
                  (let ((__tmp66606
                         (let ((__tmp66607
                                (let ()
                                  (declare (not safe))
                                  (cons _e65351_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66607))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66606))))
            (if (macro-sfun-conversion-exception? _exn65349_)
                (macro-sfun-conversion-exception-code _exn65349_)
                (let ((__tmp66604
                       (let ((__tmp66605
                              (let ()
                                (declare (not safe))
                                (cons _exn65349_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66605))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66604))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65345_))
            (let ((_e65347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65345_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65347_)
                  (macro-sfun-conversion-exception-message _e65347_)
                  (let ((__tmp66610
                         (let ((__tmp66611
                                (let ()
                                  (declare (not safe))
                                  (cons _e65347_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66611))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66610))))
            (if (macro-sfun-conversion-exception? _exn65345_)
                (macro-sfun-conversion-exception-message _exn65345_)
                (let ((__tmp66608
                       (let ((__tmp66609
                              (let ()
                                (declare (not safe))
                                (cons _exn65345_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66609))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66608))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65339_))
            (let ((_e65342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65339_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65342_)
                  (macro-sfun-conversion-exception-procedure _e65342_)
                  (let ((__tmp66614
                         (let ((__tmp66615
                                (let ()
                                  (declare (not safe))
                                  (cons _e65342_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66615))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66614))))
            (if (macro-sfun-conversion-exception? _exn65339_)
                (macro-sfun-conversion-exception-procedure _exn65339_)
                (let ((__tmp66612
                       (let ((__tmp66613
                              (let ()
                                (declare (not safe))
                                (cons _exn65339_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66613))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66612))))))
    (define stack-overflow-exception?
      (lambda (_exn65333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65333_))
            (let ((_e65336_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65333_ 'exception))))
              (macro-stack-overflow-exception? _e65336_))
            (macro-stack-overflow-exception? _exn65333_))))
    (define started-thread-exception?
      (lambda (_exn65329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65329_))
            (let ((_e65331_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65329_ 'exception))))
              (macro-started-thread-exception? _e65331_))
            (macro-started-thread-exception? _exn65329_))))
    (define started-thread-exception-arguments
      (lambda (_exn65325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65325_))
            (let ((_e65327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65325_ 'exception))))
              (if (macro-started-thread-exception? _e65327_)
                  (macro-started-thread-exception-arguments _e65327_)
                  (let ((__tmp66618
                         (let ((__tmp66619
                                (let ()
                                  (declare (not safe))
                                  (cons _e65327_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66619))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66618))))
            (if (macro-started-thread-exception? _exn65325_)
                (macro-started-thread-exception-arguments _exn65325_)
                (let ((__tmp66616
                       (let ((__tmp66617
                              (let ()
                                (declare (not safe))
                                (cons _exn65325_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66617))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66616))))))
    (define started-thread-exception-procedure
      (lambda (_exn65319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65319_))
            (let ((_e65322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65319_ 'exception))))
              (if (macro-started-thread-exception? _e65322_)
                  (macro-started-thread-exception-procedure _e65322_)
                  (let ((__tmp66622
                         (let ((__tmp66623
                                (let ()
                                  (declare (not safe))
                                  (cons _e65322_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66623))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66622))))
            (if (macro-started-thread-exception? _exn65319_)
                (macro-started-thread-exception-procedure _exn65319_)
                (let ((__tmp66620
                       (let ((__tmp66621
                              (let ()
                                (declare (not safe))
                                (cons _exn65319_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66621))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66620))))))
    (define terminated-thread-exception?
      (lambda (_exn65315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65315_))
            (let ((_e65317_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65315_ 'exception))))
              (macro-terminated-thread-exception? _e65317_))
            (macro-terminated-thread-exception? _exn65315_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65311_))
            (let ((_e65313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65311_ 'exception))))
              (if (macro-terminated-thread-exception? _e65313_)
                  (macro-terminated-thread-exception-arguments _e65313_)
                  (let ((__tmp66626
                         (let ((__tmp66627
                                (let ()
                                  (declare (not safe))
                                  (cons _e65313_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp66627))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66626))))
            (if (macro-terminated-thread-exception? _exn65311_)
                (macro-terminated-thread-exception-arguments _exn65311_)
                (let ((__tmp66624
                       (let ((__tmp66625
                              (let ()
                                (declare (not safe))
                                (cons _exn65311_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp66625))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66624))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65305_))
            (let ((_e65308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65305_ 'exception))))
              (if (macro-terminated-thread-exception? _e65308_)
                  (macro-terminated-thread-exception-procedure _e65308_)
                  (let ((__tmp66630
                         (let ((__tmp66631
                                (let ()
                                  (declare (not safe))
                                  (cons _e65308_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp66631))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66630))))
            (if (macro-terminated-thread-exception? _exn65305_)
                (macro-terminated-thread-exception-procedure _exn65305_)
                (let ((__tmp66628
                       (let ((__tmp66629
                              (let ()
                                (declare (not safe))
                                (cons _exn65305_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp66629))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66628))))))
    (define type-exception?
      (lambda (_exn65301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65301_))
            (let ((_e65303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65301_ 'exception))))
              (macro-type-exception? _e65303_))
            (macro-type-exception? _exn65301_))))
    (define type-exception-arg-id
      (lambda (_exn65297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65297_))
            (let ((_e65299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65297_ 'exception))))
              (if (macro-type-exception? _e65299_)
                  (macro-type-exception-arg-id _e65299_)
                  (let ((__tmp66634
                         (let ((__tmp66635
                                (let ()
                                  (declare (not safe))
                                  (cons _e65299_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp66635))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66634))))
            (if (macro-type-exception? _exn65297_)
                (macro-type-exception-arg-id _exn65297_)
                (let ((__tmp66632
                       (let ((__tmp66633
                              (let ()
                                (declare (not safe))
                                (cons _exn65297_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp66633))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66632))))))
    (define type-exception-arguments
      (lambda (_exn65293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65293_))
            (let ((_e65295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65293_ 'exception))))
              (if (macro-type-exception? _e65295_)
                  (macro-type-exception-arguments _e65295_)
                  (let ((__tmp66638
                         (let ((__tmp66639
                                (let ()
                                  (declare (not safe))
                                  (cons _e65295_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp66639))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66638))))
            (if (macro-type-exception? _exn65293_)
                (macro-type-exception-arguments _exn65293_)
                (let ((__tmp66636
                       (let ((__tmp66637
                              (let ()
                                (declare (not safe))
                                (cons _exn65293_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp66637))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66636))))))
    (define type-exception-procedure
      (lambda (_exn65289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65289_))
            (let ((_e65291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65289_ 'exception))))
              (if (macro-type-exception? _e65291_)
                  (macro-type-exception-procedure _e65291_)
                  (let ((__tmp66642
                         (let ((__tmp66643
                                (let ()
                                  (declare (not safe))
                                  (cons _e65291_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp66643))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66642))))
            (if (macro-type-exception? _exn65289_)
                (macro-type-exception-procedure _exn65289_)
                (let ((__tmp66640
                       (let ((__tmp66641
                              (let ()
                                (declare (not safe))
                                (cons _exn65289_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp66641))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66640))))))
    (define type-exception-type-id
      (lambda (_exn65283_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65283_))
            (let ((_e65286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65283_ 'exception))))
              (if (macro-type-exception? _e65286_)
                  (macro-type-exception-type-id _e65286_)
                  (let ((__tmp66646
                         (let ((__tmp66647
                                (let ()
                                  (declare (not safe))
                                  (cons _e65286_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp66647))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66646))))
            (if (macro-type-exception? _exn65283_)
                (macro-type-exception-type-id _exn65283_)
                (let ((__tmp66644
                       (let ((__tmp66645
                              (let ()
                                (declare (not safe))
                                (cons _exn65283_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp66645))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66644))))))
    (define unbound-global-exception?
      (lambda (_exn65279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65279_))
            (let ((_e65281_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65279_ 'exception))))
              (macro-unbound-global-exception? _e65281_))
            (macro-unbound-global-exception? _exn65279_))))
    (define unbound-global-exception-code
      (lambda (_exn65275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65275_))
            (let ((_e65277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65275_ 'exception))))
              (if (macro-unbound-global-exception? _e65277_)
                  (macro-unbound-global-exception-code _e65277_)
                  (let ((__tmp66650
                         (let ((__tmp66651
                                (let ()
                                  (declare (not safe))
                                  (cons _e65277_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp66651))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66650))))
            (if (macro-unbound-global-exception? _exn65275_)
                (macro-unbound-global-exception-code _exn65275_)
                (let ((__tmp66648
                       (let ((__tmp66649
                              (let ()
                                (declare (not safe))
                                (cons _exn65275_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp66649))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66648))))))
    (define unbound-global-exception-rte
      (lambda (_exn65271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65271_))
            (let ((_e65273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65271_ 'exception))))
              (if (macro-unbound-global-exception? _e65273_)
                  (macro-unbound-global-exception-rte _e65273_)
                  (let ((__tmp66654
                         (let ((__tmp66655
                                (let ()
                                  (declare (not safe))
                                  (cons _e65273_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp66655))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66654))))
            (if (macro-unbound-global-exception? _exn65271_)
                (macro-unbound-global-exception-rte _exn65271_)
                (let ((__tmp66652
                       (let ((__tmp66653
                              (let ()
                                (declare (not safe))
                                (cons _exn65271_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp66653))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66652))))))
    (define unbound-global-exception-variable
      (lambda (_exn65265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65265_))
            (let ((_e65268_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65265_ 'exception))))
              (if (macro-unbound-global-exception? _e65268_)
                  (macro-unbound-global-exception-variable _e65268_)
                  (let ((__tmp66658
                         (let ((__tmp66659
                                (let ()
                                  (declare (not safe))
                                  (cons _e65268_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp66659))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66658))))
            (if (macro-unbound-global-exception? _exn65265_)
                (macro-unbound-global-exception-variable _exn65265_)
                (let ((__tmp66656
                       (let ((__tmp66657
                              (let ()
                                (declare (not safe))
                                (cons _exn65265_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp66657))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66656))))))
    (define unbound-key-exception?
      (lambda (_exn65261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65261_))
            (let ((_e65263_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65261_ 'exception))))
              (macro-unbound-key-exception? _e65263_))
            (macro-unbound-key-exception? _exn65261_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65257_))
            (let ((_e65259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65257_ 'exception))))
              (if (macro-unbound-key-exception? _e65259_)
                  (macro-unbound-key-exception-arguments _e65259_)
                  (let ((__tmp66662
                         (let ((__tmp66663
                                (let ()
                                  (declare (not safe))
                                  (cons _e65259_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp66663))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66662))))
            (if (macro-unbound-key-exception? _exn65257_)
                (macro-unbound-key-exception-arguments _exn65257_)
                (let ((__tmp66660
                       (let ((__tmp66661
                              (let ()
                                (declare (not safe))
                                (cons _exn65257_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp66661))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66660))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65251_))
            (let ((_e65254_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65251_ 'exception))))
              (if (macro-unbound-key-exception? _e65254_)
                  (macro-unbound-key-exception-procedure _e65254_)
                  (let ((__tmp66666
                         (let ((__tmp66667
                                (let ()
                                  (declare (not safe))
                                  (cons _e65254_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp66667))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66666))))
            (if (macro-unbound-key-exception? _exn65251_)
                (macro-unbound-key-exception-procedure _exn65251_)
                (let ((__tmp66664
                       (let ((__tmp66665
                              (let ()
                                (declare (not safe))
                                (cons _exn65251_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp66665))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66664))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65247_))
            (let ((_e65249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65247_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65249_))
            (macro-unbound-os-environment-variable-exception? _exn65247_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65243_))
            (let ((_e65245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65243_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65245_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65245_)
                  (let ((__tmp66670
                         (let ((__tmp66671
                                (let ()
                                  (declare (not safe))
                                  (cons _e65245_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp66671))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66670))))
            (if (macro-unbound-os-environment-variable-exception? _exn65243_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65243_)
                (let ((__tmp66668
                       (let ((__tmp66669
                              (let ()
                                (declare (not safe))
                                (cons _exn65243_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp66669))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66668))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65237_))
            (let ((_e65240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65237_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65240_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65240_)
                  (let ((__tmp66674
                         (let ((__tmp66675
                                (let ()
                                  (declare (not safe))
                                  (cons _e65240_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp66675))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66674))))
            (if (macro-unbound-os-environment-variable-exception? _exn65237_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65237_)
                (let ((__tmp66672
                       (let ((__tmp66673
                              (let ()
                                (declare (not safe))
                                (cons _exn65237_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp66673))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66672))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65233_))
            (let ((_e65235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65233_ 'exception))))
              (macro-unbound-serial-number-exception? _e65235_))
            (macro-unbound-serial-number-exception? _exn65233_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65229_))
            (let ((_e65231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65229_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65231_)
                  (macro-unbound-serial-number-exception-arguments _e65231_)
                  (let ((__tmp66678
                         (let ((__tmp66679
                                (let ()
                                  (declare (not safe))
                                  (cons _e65231_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp66679))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66678))))
            (if (macro-unbound-serial-number-exception? _exn65229_)
                (macro-unbound-serial-number-exception-arguments _exn65229_)
                (let ((__tmp66676
                       (let ((__tmp66677
                              (let ()
                                (declare (not safe))
                                (cons _exn65229_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp66677))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66676))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65223_))
            (let ((_e65226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65223_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65226_)
                  (macro-unbound-serial-number-exception-procedure _e65226_)
                  (let ((__tmp66682
                         (let ((__tmp66683
                                (let ()
                                  (declare (not safe))
                                  (cons _e65226_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp66683))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66682))))
            (if (macro-unbound-serial-number-exception? _exn65223_)
                (macro-unbound-serial-number-exception-procedure _exn65223_)
                (let ((__tmp66680
                       (let ((__tmp66681
                              (let ()
                                (declare (not safe))
                                (cons _exn65223_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp66681))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66680))))))
    (define uncaught-exception?
      (lambda (_exn65219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65219_))
            (let ((_e65221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65219_ 'exception))))
              (macro-uncaught-exception? _e65221_))
            (macro-uncaught-exception? _exn65219_))))
    (define uncaught-exception-arguments
      (lambda (_exn65215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65215_))
            (let ((_e65217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65215_ 'exception))))
              (if (macro-uncaught-exception? _e65217_)
                  (macro-uncaught-exception-arguments _e65217_)
                  (let ((__tmp66686
                         (let ((__tmp66687
                                (let ()
                                  (declare (not safe))
                                  (cons _e65217_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp66687))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66686))))
            (if (macro-uncaught-exception? _exn65215_)
                (macro-uncaught-exception-arguments _exn65215_)
                (let ((__tmp66684
                       (let ((__tmp66685
                              (let ()
                                (declare (not safe))
                                (cons _exn65215_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp66685))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66684))))))
    (define uncaught-exception-procedure
      (lambda (_exn65211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65211_))
            (let ((_e65213_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65211_ 'exception))))
              (if (macro-uncaught-exception? _e65213_)
                  (macro-uncaught-exception-procedure _e65213_)
                  (let ((__tmp66690
                         (let ((__tmp66691
                                (let ()
                                  (declare (not safe))
                                  (cons _e65213_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp66691))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66690))))
            (if (macro-uncaught-exception? _exn65211_)
                (macro-uncaught-exception-procedure _exn65211_)
                (let ((__tmp66688
                       (let ((__tmp66689
                              (let ()
                                (declare (not safe))
                                (cons _exn65211_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp66689))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66688))))))
    (define uncaught-exception-reason
      (lambda (_exn65205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65205_))
            (let ((_e65208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65205_ 'exception))))
              (if (macro-uncaught-exception? _e65208_)
                  (macro-uncaught-exception-reason _e65208_)
                  (let ((__tmp66694
                         (let ((__tmp66695
                                (let ()
                                  (declare (not safe))
                                  (cons _e65208_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp66695))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66694))))
            (if (macro-uncaught-exception? _exn65205_)
                (macro-uncaught-exception-reason _exn65205_)
                (let ((__tmp66692
                       (let ((__tmp66693
                              (let ()
                                (declare (not safe))
                                (cons _exn65205_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp66693))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66692))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65201_))
            (let ((_e65203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65201_ 'exception))))
              (macro-uninitialized-thread-exception? _e65203_))
            (macro-uninitialized-thread-exception? _exn65201_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65197_))
            (let ((_e65199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65197_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65199_)
                  (macro-uninitialized-thread-exception-arguments _e65199_)
                  (let ((__tmp66698
                         (let ((__tmp66699
                                (let ()
                                  (declare (not safe))
                                  (cons _e65199_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp66699))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66698))))
            (if (macro-uninitialized-thread-exception? _exn65197_)
                (macro-uninitialized-thread-exception-arguments _exn65197_)
                (let ((__tmp66696
                       (let ((__tmp66697
                              (let ()
                                (declare (not safe))
                                (cons _exn65197_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp66697))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66696))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65191_))
            (let ((_e65194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65191_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65194_)
                  (macro-uninitialized-thread-exception-procedure _e65194_)
                  (let ((__tmp66702
                         (let ((__tmp66703
                                (let ()
                                  (declare (not safe))
                                  (cons _e65194_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp66703))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66702))))
            (if (macro-uninitialized-thread-exception? _exn65191_)
                (macro-uninitialized-thread-exception-procedure _exn65191_)
                (let ((__tmp66700
                       (let ((__tmp66701
                              (let ()
                                (declare (not safe))
                                (cons _exn65191_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp66701))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66700))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65187_))
            (let ((_e65189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65187_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65189_))
            (macro-unknown-keyword-argument-exception? _exn65187_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65183_))
            (let ((_e65185_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65183_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65185_)
                  (macro-unknown-keyword-argument-exception-arguments _e65185_)
                  (let ((__tmp66706
                         (let ((__tmp66707
                                (let ()
                                  (declare (not safe))
                                  (cons _e65185_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp66707))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66706))))
            (if (macro-unknown-keyword-argument-exception? _exn65183_)
                (macro-unknown-keyword-argument-exception-arguments _exn65183_)
                (let ((__tmp66704
                       (let ((__tmp66705
                              (let ()
                                (declare (not safe))
                                (cons _exn65183_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp66705))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66704))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65177_))
            (let ((_e65180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65177_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65180_)
                  (macro-unknown-keyword-argument-exception-procedure _e65180_)
                  (let ((__tmp66710
                         (let ((__tmp66711
                                (let ()
                                  (declare (not safe))
                                  (cons _e65180_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp66711))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66710))))
            (if (macro-unknown-keyword-argument-exception? _exn65177_)
                (macro-unknown-keyword-argument-exception-procedure _exn65177_)
                (let ((__tmp66708
                       (let ((__tmp66709
                              (let ()
                                (declare (not safe))
                                (cons _exn65177_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp66709))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66708))))))
    (define unterminated-process-exception?
      (lambda (_exn65173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65173_))
            (let ((_e65175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65173_ 'exception))))
              (macro-unterminated-process-exception? _e65175_))
            (macro-unterminated-process-exception? _exn65173_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65169_))
            (let ((_e65171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65169_ 'exception))))
              (if (macro-unterminated-process-exception? _e65171_)
                  (macro-unterminated-process-exception-arguments _e65171_)
                  (let ((__tmp66714
                         (let ((__tmp66715
                                (let ()
                                  (declare (not safe))
                                  (cons _e65171_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp66715))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66714))))
            (if (macro-unterminated-process-exception? _exn65169_)
                (macro-unterminated-process-exception-arguments _exn65169_)
                (let ((__tmp66712
                       (let ((__tmp66713
                              (let ()
                                (declare (not safe))
                                (cons _exn65169_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp66713))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66712))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65163_))
            (let ((_e65166_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65163_ 'exception))))
              (if (macro-unterminated-process-exception? _e65166_)
                  (macro-unterminated-process-exception-procedure _e65166_)
                  (let ((__tmp66718
                         (let ((__tmp66719
                                (let ()
                                  (declare (not safe))
                                  (cons _e65166_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp66719))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66718))))
            (if (macro-unterminated-process-exception? _exn65163_)
                (macro-unterminated-process-exception-procedure _exn65163_)
                (let ((__tmp66716
                       (let ((__tmp66717
                              (let ()
                                (declare (not safe))
                                (cons _exn65163_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp66717))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66716))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65159_))
            (let ((_e65161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65159_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65161_))
            (macro-wrong-number-of-arguments-exception? _exn65159_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65155_))
            (let ((_e65157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65155_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65157_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65157_)
                  (let ((__tmp66722
                         (let ((__tmp66723
                                (let ()
                                  (declare (not safe))
                                  (cons _e65157_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp66723))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66722))))
            (if (macro-wrong-number-of-arguments-exception? _exn65155_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65155_)
                (let ((__tmp66720
                       (let ((__tmp66721
                              (let ()
                                (declare (not safe))
                                (cons _exn65155_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp66721))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66720))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65149_))
            (let ((_e65152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65149_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65152_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65152_)
                  (let ((__tmp66726
                         (let ((__tmp66727
                                (let ()
                                  (declare (not safe))
                                  (cons _e65152_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp66727))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66726))))
            (if (macro-wrong-number-of-arguments-exception? _exn65149_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65149_)
                (let ((__tmp66724
                       (let ((__tmp66725
                              (let ()
                                (declare (not safe))
                                (cons _exn65149_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp66725))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66724))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65145_))
            (let ((_e65147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65145_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65147_))
            (macro-wrong-number-of-values-exception? _exn65145_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65141_))
            (let ((_e65143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65141_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65143_)
                  (macro-wrong-number-of-values-exception-code _e65143_)
                  (let ((__tmp66730
                         (let ((__tmp66731
                                (let ()
                                  (declare (not safe))
                                  (cons _e65143_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp66731))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66730))))
            (if (macro-wrong-number-of-values-exception? _exn65141_)
                (macro-wrong-number-of-values-exception-code _exn65141_)
                (let ((__tmp66728
                       (let ((__tmp66729
                              (let ()
                                (declare (not safe))
                                (cons _exn65141_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp66729))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66728))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65137_))
            (let ((_e65139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65137_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65139_)
                  (macro-wrong-number-of-values-exception-rte _e65139_)
                  (let ((__tmp66734
                         (let ((__tmp66735
                                (let ()
                                  (declare (not safe))
                                  (cons _e65139_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp66735))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66734))))
            (if (macro-wrong-number-of-values-exception? _exn65137_)
                (macro-wrong-number-of-values-exception-rte _exn65137_)
                (let ((__tmp66732
                       (let ((__tmp66733
                              (let ()
                                (declare (not safe))
                                (cons _exn65137_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp66733))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66732))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65131_))
            (let ((_e65134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65131_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65134_)
                  (macro-wrong-number-of-values-exception-vals _e65134_)
                  (let ((__tmp66738
                         (let ((__tmp66739
                                (let ()
                                  (declare (not safe))
                                  (cons _e65134_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp66739))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66738))))
            (if (macro-wrong-number-of-values-exception? _exn65131_)
                (macro-wrong-number-of-values-exception-vals _exn65131_)
                (let ((__tmp66736
                       (let ((__tmp66737
                              (let ()
                                (declare (not safe))
                                (cons _exn65131_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp66737))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66736))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65125_))
            (let ((_e65128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65125_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65128_))
            (macro-wrong-processor-c-return-exception? _exn65125_))))))
