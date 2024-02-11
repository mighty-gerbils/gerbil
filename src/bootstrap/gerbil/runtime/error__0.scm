(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707616236)
  (begin
    (define Exception::t
      (let ((__tmp95362 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95362
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90865_
        (apply make-class-instance Exception::t _$args90865_)))
    (define StackTrace::t
      (let ((__tmp95363 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95363
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90862_
        (apply make-class-instance StackTrace::t _$args90862_)))
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
      (let ((__tmp95364 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95364
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90859_ (apply make-class-instance Error::t _$args90859_)))
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
      (let ((__tmp95365 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95365
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90856_
        (apply make-class-instance RuntimeException::t _$args90856_)))
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
      (lambda (_exn90851_ _continue90852_)
        (let ((_exn90854_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90851_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90854_ _continue90852_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90847_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90847_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90847_ 'continuation))
                '#!void
                (let ((__tmp95366
                       (lambda (_cont90849_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90847_
                            'continuation
                            _cont90849_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95366)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90847_))))
    (define error
      (lambda (_message90844_ . _irritants90845_)
        (raise (let ((__obj95356
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95356
                  _message90844_
                  'irritants:
                  _irritants90845_)
                 __obj95356))))
    (define with-exception-handler
      (lambda (_handler90837_ _thunk90838_)
        (if (let () (declare (not safe)) (procedure? _handler90837_))
            '#!void
            (raise (let ((__obj95357
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95357
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90837_ '())))
                     __obj95357)))
        (if (let () (declare (not safe)) (procedure? _thunk90838_))
            '#!void
            (raise (let ((__obj95358
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95358
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90838_ '())))
                     __obj95358)))
        (let ((__tmp95367
               (lambda (_exn90840_)
                 (let ((_exn90842_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90840_))))
                   (_handler90837_ _exn90842_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95367 _thunk90838_))))
    (define with-catch
      (lambda (_handler90830_ _thunk90831_)
        (if (let () (declare (not safe)) (procedure? _handler90830_))
            '#!void
            (raise (let ((__obj95359
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95359
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90830_ '())))
                     __obj95359)))
        (if (let () (declare (not safe)) (procedure? _thunk90831_))
            '#!void
            (raise (let ((__obj95360
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95360
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90831_ '())))
                     __obj95360)))
        (let ((__tmp95368
               (lambda (_cont90833_)
                 (with-exception-handler
                  (lambda (_exn90835_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90833_
                       _handler90830_
                       _exn90835_)))
                  _thunk90831_))))
          (declare (not safe))
          (##continuation-capture __tmp95368))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90821_)
        (if (or (heap-overflow-exception? _exn90821_)
                (stack-overflow-exception? _exn90821_))
            _exn90821_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90821_))
                _exn90821_
                (if (macro-exception? _exn90821_)
                    (let ((_rte90826_
                           (let ((__obj95361
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95361
                                _exn90821_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95361)))
                      (let ((__tmp95369
                             (lambda (_cont90828_)
                               (let ((__tmp95370
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90828_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90826_
                                  'continuation
                                  __tmp95370)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95369))
                      _rte90826_)
                    _exn90821_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90816_)
        (let ((_$e90818_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90816_))))
          (if _$e90818_ _$e90818_ (error-exception? _obj90816_)))))
    (define error-message
      (lambda (_obj90814_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90814_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90814_ 'message))
            (if (error-exception? _obj90814_)
                (error-exception-message _obj90814_)
                '#f))))
    (define error-irritants
      (lambda (_obj90812_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90812_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90812_ 'irritants))
            (if (error-exception? _obj90812_)
                (error-exception-parameters _obj90812_)
                '#f))))
    (define error-trace
      (lambda (_obj90810_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90810_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90810_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90792_ _port90793_)
        (let ((_$e90795_
               (let ()
                 (declare (not safe))
                 (method-ref _e90792_ 'display-exception))))
          (if _$e90795_
              ((lambda (_f90798_) (_f90798_ _e90792_ _port90793_)) _$e90795_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90792_ _port90793_))))))
    (define display-exception__0
      (lambda (_e90803_)
        (let ((_port90805_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90803_ _port90805_))))
    (define display-exception
      (lambda _g95372_
        (let ((_g95371_ (let () (declare (not safe)) (##length _g95372_))))
          (cond ((let () (declare (not safe)) (##fx= _g95371_ 1))
                 (apply (lambda (_e90803_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90803_)))
                        _g95372_))
                ((let () (declare (not safe)) (##fx= _g95371_ 2))
                 (apply (lambda (_e90807_ _port90808_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90807_ _port90808_)))
                        _g95372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95372_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90781_ _message90782_ . _rest90783_)
        (let ((_message90789_
               (if (let () (declare (not safe)) (string? _message90782_))
                   _message90782_
                   (call-with-output-string
                    '""
                    (lambda (_g9078490786_)
                      (display _message90782_ _g9078490786_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90781_ 'message _message90789_))
          (apply class-instance-init! _self90781_ _rest90783_))))
    (define Error:::init!::specialize
      (lambda (__t95335)
        (let ((__message95336
               (let ((__tmp95337
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95335 'message))))
                 (if __tmp95337 __tmp95337 (error '"Unknown slot" 'message)))))
          (lambda (_self90781_ _message90782_ . _rest90783_)
            (let ((_message90789_
                   (if (let () (declare (not safe)) (string? _message90782_))
                       _message90782_
                       (call-with-output-string
                        '""
                        (lambda (_g9078490786_)
                          (display _message90782_ _g9078490786_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90781_
                 _message90789_
                 __message95336
                 __t95335
                 '#f))
              (apply class-instance-init! _self90781_ _rest90783_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90639_ _port90640_)
        (let ((_tmp-port90642_ (open-output-string))
              (_display-error-newline90643_
               (> (output-port-column _port90640_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90642_))
          (let ((__tmp95373
                 (lambda ()
                   (if _display-error-newline90643_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90646_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90639_ 'where))))
                     (if _$e90646_ (display _$e90646_) (display '"?")))
                   (let ((__tmp95374
                          (let ((__tmp95375
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90639_))))
                            (declare (not safe))
                            (##type-name __tmp95375))))
                     (declare (not safe))
                     (display* '" [" __tmp95374 '"]: "))
                   (let ((__tmp95376
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90639_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95376))
                   (let ((_irritants90649_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90639_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90649_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90651_)
                              (write _obj90651_)
                              (write-char '#\space))
                            _irritants90649_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90639_))
                            (dump-stack-trace?))
                       (let ((_cont9065290654_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90639_
                                 'continuation))))
                         (if _cont9065290654_
                             (let ((_cont90657_ _cont9065290654_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90657_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95373
             current-output-port
             _tmp-port90642_))
          (let ((__tmp95377 (get-output-string _tmp-port90642_)))
            (declare (not safe))
            (##write-string __tmp95377 _port90640_)))))
    (define Error::display-exception::specialize
      (lambda (__t95338)
        (let ((__irritants95339
               (let ((__tmp95343
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95338 'irritants))))
                 (if __tmp95343
                     __tmp95343
                     (error '"Unknown slot" 'irritants))))
              (__where95340
               (let ((__tmp95344
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95338 'where))))
                 (if __tmp95344 __tmp95344 (error '"Unknown slot" 'where))))
              (__continuation95341
               (let ((__tmp95345
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95338 'continuation))))
                 (if __tmp95345
                     __tmp95345
                     (error '"Unknown slot" 'continuation))))
              (__message95342
               (let ((__tmp95346
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95338 'message))))
                 (if __tmp95346 __tmp95346 (error '"Unknown slot" 'message)))))
          (lambda (_self90639_ _port90640_)
            (let ((_tmp-port90642_ (open-output-string))
                  (_display-error-newline90643_
                   (> (output-port-column _port90640_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90642_))
              (let ((__tmp95378
                     (lambda ()
                       (if _display-error-newline90643_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90646_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90639_
                                 __where95340
                                 __t95338
                                 '#f))))
                         (if _$e90646_ (display _$e90646_) (display '"?")))
                       (let ((__tmp95379
                              (let ((__tmp95380
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90639_))))
                                (declare (not safe))
                                (##type-name __tmp95380))))
                         (declare (not safe))
                         (display* '" [" __tmp95379 '"]: "))
                       (let ((__tmp95381
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90639_
                                 __message95342
                                 __t95338
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95381))
                       (let ((_irritants90649_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90639_
                                 __irritants95339
                                 __t95338
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90649_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90651_)
                                  (write _obj90651_)
                                  (write-char '#\space))
                                _irritants90649_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90639_))
                                (dump-stack-trace?))
                           (let ((_cont9065290654_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90639_
                                     __continuation95341
                                     __t95338
                                     '#f))))
                             (if _cont9065290654_
                                 (let ((_cont90657_ _cont9065290654_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90657_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95378
                 current-output-port
                 _tmp-port90642_))
              (let ((__tmp95382 (get-output-string _tmp-port90642_)))
                (declare (not safe))
                (##write-string __tmp95382 _port90640_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90506_ _port90507_)
        (let ((_tmp-port90509_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90509_))
          (let ((__tmp95383
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90506_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95383 _tmp-port90509_))
          (if (dump-stack-trace?)
              (let ((_cont9051090512_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90506_ 'continuation))))
                (if _cont9051090512_
                    (let ((_cont90515_ _cont9051090512_))
                      (display '"--- continuation backtrace:" _tmp-port90509_)
                      (newline _tmp-port90509_)
                      (display-continuation-backtrace
                       _cont90515_
                       _tmp-port90509_))
                    '#f))
              '#!void)
          (let ((__tmp95384 (get-output-string _tmp-port90509_)))
            (declare (not safe))
            (##write-string __tmp95384 _port90507_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95347)
        (let ((__exception95348
               (let ((__tmp95350
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95347 'exception))))
                 (if __tmp95350
                     __tmp95350
                     (error '"Unknown slot" 'exception))))
              (__continuation95349
               (let ((__tmp95351
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95347 'continuation))))
                 (if __tmp95351
                     __tmp95351
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90506_ _port90507_)
            (let ((_tmp-port90509_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90509_))
              (let ((__tmp95385
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90506_
                        __exception95348
                        __t95347
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95385 _tmp-port90509_))
              (if (dump-stack-trace?)
                  (let ((_cont9051090512_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90506_
                            __continuation95349
                            __t95347
                            '#f))))
                    (if _cont9051090512_
                        (let ((_cont90515_ _cont9051090512_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90509_)
                          (newline _tmp-port90509_)
                          (display-continuation-backtrace
                           _cont90515_
                           _tmp-port90509_))
                        '#f))
                  '#!void)
              (let ((__tmp95386 (get-output-string _tmp-port90509_)))
                (declare (not safe))
                (##write-string __tmp95386 _port90507_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_port90378_)
        (if (macro-character-port? _port90378_)
            (let ((_old-width90380_
                   (macro-character-port-output-width _port90378_)))
              (macro-character-port-output-width-set!
               _port90378_
               (lambda (_port90382_) '256))
              _old-width90380_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90375_ _old-width90376_)
        (if (macro-character-port? _port90375_)
            (macro-character-port-output-width-set!
             _port90375_
             _old-width90376_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90373_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90373_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90367_))
            (let ((_e90370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90367_ 'exception))))
              (macro-abandoned-mutex-exception? _e90370_))
            (macro-abandoned-mutex-exception? _exn90367_))))
    (define cfun-conversion-exception?
      (lambda (_exn90363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90363_))
            (let ((_e90365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90363_ 'exception))))
              (macro-cfun-conversion-exception? _e90365_))
            (macro-cfun-conversion-exception? _exn90363_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90359_))
            (let ((_e90361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90359_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90361_)
                  (macro-cfun-conversion-exception-arguments _e90361_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95388
                                (let ()
                                  (declare (not safe))
                                  (cons _e90361_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95388)))))
            (if (macro-cfun-conversion-exception? _exn90359_)
                (macro-cfun-conversion-exception-arguments _exn90359_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95387
                              (let ()
                                (declare (not safe))
                                (cons _exn90359_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95387)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90355_))
            (let ((_e90357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90355_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90357_)
                  (macro-cfun-conversion-exception-code _e90357_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95390
                                (let ()
                                  (declare (not safe))
                                  (cons _e90357_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95390)))))
            (if (macro-cfun-conversion-exception? _exn90355_)
                (macro-cfun-conversion-exception-code _exn90355_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95389
                              (let ()
                                (declare (not safe))
                                (cons _exn90355_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95389)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90351_))
            (let ((_e90353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90351_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90353_)
                  (macro-cfun-conversion-exception-message _e90353_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95392
                                (let ()
                                  (declare (not safe))
                                  (cons _e90353_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95392)))))
            (if (macro-cfun-conversion-exception? _exn90351_)
                (macro-cfun-conversion-exception-message _exn90351_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95391
                              (let ()
                                (declare (not safe))
                                (cons _exn90351_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95391)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90345_))
            (let ((_e90348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90345_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90348_)
                  (macro-cfun-conversion-exception-procedure _e90348_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95394
                                (let ()
                                  (declare (not safe))
                                  (cons _e90348_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95394)))))
            (if (macro-cfun-conversion-exception? _exn90345_)
                (macro-cfun-conversion-exception-procedure _exn90345_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95393
                              (let ()
                                (declare (not safe))
                                (cons _exn90345_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95393)))))))
    (define datum-parsing-exception?
      (lambda (_exn90341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90341_))
            (let ((_e90343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90341_ 'exception))))
              (macro-datum-parsing-exception? _e90343_))
            (macro-datum-parsing-exception? _exn90341_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90337_))
            (let ((_e90339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90337_ 'exception))))
              (if (macro-datum-parsing-exception? _e90339_)
                  (macro-datum-parsing-exception-kind _e90339_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95396
                                (let ()
                                  (declare (not safe))
                                  (cons _e90339_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95396)))))
            (if (macro-datum-parsing-exception? _exn90337_)
                (macro-datum-parsing-exception-kind _exn90337_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95395
                              (let ()
                                (declare (not safe))
                                (cons _exn90337_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95395)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90333_))
            (let ((_e90335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90333_ 'exception))))
              (if (macro-datum-parsing-exception? _e90335_)
                  (macro-datum-parsing-exception-parameters _e90335_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95398
                                (let ()
                                  (declare (not safe))
                                  (cons _e90335_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95398)))))
            (if (macro-datum-parsing-exception? _exn90333_)
                (macro-datum-parsing-exception-parameters _exn90333_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95397
                              (let ()
                                (declare (not safe))
                                (cons _exn90333_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95397)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90327_))
            (let ((_e90330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90327_ 'exception))))
              (if (macro-datum-parsing-exception? _e90330_)
                  (macro-datum-parsing-exception-readenv _e90330_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95400
                                (let ()
                                  (declare (not safe))
                                  (cons _e90330_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95400)))))
            (if (macro-datum-parsing-exception? _exn90327_)
                (macro-datum-parsing-exception-readenv _exn90327_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95399
                              (let ()
                                (declare (not safe))
                                (cons _exn90327_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95399)))))))
    (define deadlock-exception?
      (lambda (_exn90321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90321_))
            (let ((_e90324_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90321_ 'exception))))
              (macro-deadlock-exception? _e90324_))
            (macro-deadlock-exception? _exn90321_))))
    (define divide-by-zero-exception?
      (lambda (_exn90317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90317_))
            (let ((_e90319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90317_ 'exception))))
              (macro-divide-by-zero-exception? _e90319_))
            (macro-divide-by-zero-exception? _exn90317_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90313_))
            (let ((_e90315_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90313_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90315_)
                  (macro-divide-by-zero-exception-arguments _e90315_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95402
                                (let ()
                                  (declare (not safe))
                                  (cons _e90315_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95402)))))
            (if (macro-divide-by-zero-exception? _exn90313_)
                (macro-divide-by-zero-exception-arguments _exn90313_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95401
                              (let ()
                                (declare (not safe))
                                (cons _exn90313_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95401)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90307_))
            (let ((_e90310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90307_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90310_)
                  (macro-divide-by-zero-exception-procedure _e90310_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95404
                                (let ()
                                  (declare (not safe))
                                  (cons _e90310_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95404)))))
            (if (macro-divide-by-zero-exception? _exn90307_)
                (macro-divide-by-zero-exception-procedure _exn90307_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95403
                              (let ()
                                (declare (not safe))
                                (cons _exn90307_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95403)))))))
    (define error-exception?
      (lambda (_exn90303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90303_))
            (let ((_e90305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90303_ 'exception))))
              (macro-error-exception? _e90305_))
            (macro-error-exception? _exn90303_))))
    (define error-exception-message
      (lambda (_exn90299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90299_))
            (let ((_e90301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90299_ 'exception))))
              (if (macro-error-exception? _e90301_)
                  (macro-error-exception-message _e90301_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95406
                                (let ()
                                  (declare (not safe))
                                  (cons _e90301_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95406)))))
            (if (macro-error-exception? _exn90299_)
                (macro-error-exception-message _exn90299_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95405
                              (let ()
                                (declare (not safe))
                                (cons _exn90299_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95405)))))))
    (define error-exception-parameters
      (lambda (_exn90293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90293_))
            (let ((_e90296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90293_ 'exception))))
              (if (macro-error-exception? _e90296_)
                  (macro-error-exception-parameters _e90296_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95408
                                (let ()
                                  (declare (not safe))
                                  (cons _e90296_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95408)))))
            (if (macro-error-exception? _exn90293_)
                (macro-error-exception-parameters _exn90293_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95407
                              (let ()
                                (declare (not safe))
                                (cons _exn90293_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95407)))))))
    (define expression-parsing-exception?
      (lambda (_exn90289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90289_))
            (let ((_e90291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90289_ 'exception))))
              (macro-expression-parsing-exception? _e90291_))
            (macro-expression-parsing-exception? _exn90289_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90285_))
            (let ((_e90287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90285_ 'exception))))
              (if (macro-expression-parsing-exception? _e90287_)
                  (macro-expression-parsing-exception-kind _e90287_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95410
                                (let ()
                                  (declare (not safe))
                                  (cons _e90287_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95410)))))
            (if (macro-expression-parsing-exception? _exn90285_)
                (macro-expression-parsing-exception-kind _exn90285_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95409
                              (let ()
                                (declare (not safe))
                                (cons _exn90285_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95409)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90281_))
            (let ((_e90283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90281_ 'exception))))
              (if (macro-expression-parsing-exception? _e90283_)
                  (macro-expression-parsing-exception-parameters _e90283_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95412
                                (let ()
                                  (declare (not safe))
                                  (cons _e90283_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95412)))))
            (if (macro-expression-parsing-exception? _exn90281_)
                (macro-expression-parsing-exception-parameters _exn90281_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95411
                              (let ()
                                (declare (not safe))
                                (cons _exn90281_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95411)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90275_))
            (let ((_e90278_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90275_ 'exception))))
              (if (macro-expression-parsing-exception? _e90278_)
                  (macro-expression-parsing-exception-source _e90278_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95414
                                (let ()
                                  (declare (not safe))
                                  (cons _e90278_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95414)))))
            (if (macro-expression-parsing-exception? _exn90275_)
                (macro-expression-parsing-exception-source _exn90275_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95413
                              (let ()
                                (declare (not safe))
                                (cons _exn90275_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95413)))))))
    (define file-exists-exception?
      (lambda (_exn90271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90271_))
            (let ((_e90273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90271_ 'exception))))
              (macro-file-exists-exception? _e90273_))
            (macro-file-exists-exception? _exn90271_))))
    (define file-exists-exception-arguments
      (lambda (_exn90267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90267_))
            (let ((_e90269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90267_ 'exception))))
              (if (macro-file-exists-exception? _e90269_)
                  (macro-file-exists-exception-arguments _e90269_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95416
                                (let ()
                                  (declare (not safe))
                                  (cons _e90269_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95416)))))
            (if (macro-file-exists-exception? _exn90267_)
                (macro-file-exists-exception-arguments _exn90267_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95415
                              (let ()
                                (declare (not safe))
                                (cons _exn90267_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95415)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90261_))
            (let ((_e90264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90261_ 'exception))))
              (if (macro-file-exists-exception? _e90264_)
                  (macro-file-exists-exception-procedure _e90264_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95418
                                (let ()
                                  (declare (not safe))
                                  (cons _e90264_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95418)))))
            (if (macro-file-exists-exception? _exn90261_)
                (macro-file-exists-exception-procedure _exn90261_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95417
                              (let ()
                                (declare (not safe))
                                (cons _exn90261_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95417)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90257_))
            (let ((_e90259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90257_ 'exception))))
              (macro-fixnum-overflow-exception? _e90259_))
            (macro-fixnum-overflow-exception? _exn90257_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90253_))
            (let ((_e90255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90253_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90255_)
                  (macro-fixnum-overflow-exception-arguments _e90255_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95420
                                (let ()
                                  (declare (not safe))
                                  (cons _e90255_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95420)))))
            (if (macro-fixnum-overflow-exception? _exn90253_)
                (macro-fixnum-overflow-exception-arguments _exn90253_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95419
                              (let ()
                                (declare (not safe))
                                (cons _exn90253_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95419)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90247_))
            (let ((_e90250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90247_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90250_)
                  (macro-fixnum-overflow-exception-procedure _e90250_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95422
                                (let ()
                                  (declare (not safe))
                                  (cons _e90250_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95422)))))
            (if (macro-fixnum-overflow-exception? _exn90247_)
                (macro-fixnum-overflow-exception-procedure _exn90247_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95421
                              (let ()
                                (declare (not safe))
                                (cons _exn90247_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95421)))))))
    (define heap-overflow-exception?
      (lambda (_exn90241_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90241_))
            (let ((_e90244_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90241_ 'exception))))
              (macro-heap-overflow-exception? _e90244_))
            (macro-heap-overflow-exception? _exn90241_))))
    (define inactive-thread-exception?
      (lambda (_exn90237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90237_))
            (let ((_e90239_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90237_ 'exception))))
              (macro-inactive-thread-exception? _e90239_))
            (macro-inactive-thread-exception? _exn90237_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90233_))
            (let ((_e90235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90233_ 'exception))))
              (if (macro-inactive-thread-exception? _e90235_)
                  (macro-inactive-thread-exception-arguments _e90235_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95424
                                (let ()
                                  (declare (not safe))
                                  (cons _e90235_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95424)))))
            (if (macro-inactive-thread-exception? _exn90233_)
                (macro-inactive-thread-exception-arguments _exn90233_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95423
                              (let ()
                                (declare (not safe))
                                (cons _exn90233_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95423)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90227_))
            (let ((_e90230_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90227_ 'exception))))
              (if (macro-inactive-thread-exception? _e90230_)
                  (macro-inactive-thread-exception-procedure _e90230_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95426
                                (let ()
                                  (declare (not safe))
                                  (cons _e90230_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95426)))))
            (if (macro-inactive-thread-exception? _exn90227_)
                (macro-inactive-thread-exception-procedure _exn90227_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95425
                              (let ()
                                (declare (not safe))
                                (cons _exn90227_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95425)))))))
    (define initialized-thread-exception?
      (lambda (_exn90223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90223_))
            (let ((_e90225_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90223_ 'exception))))
              (macro-initialized-thread-exception? _e90225_))
            (macro-initialized-thread-exception? _exn90223_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90219_))
            (let ((_e90221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90219_ 'exception))))
              (if (macro-initialized-thread-exception? _e90221_)
                  (macro-initialized-thread-exception-arguments _e90221_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95428
                                (let ()
                                  (declare (not safe))
                                  (cons _e90221_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95428)))))
            (if (macro-initialized-thread-exception? _exn90219_)
                (macro-initialized-thread-exception-arguments _exn90219_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95427
                              (let ()
                                (declare (not safe))
                                (cons _exn90219_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95427)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90213_))
            (let ((_e90216_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90213_ 'exception))))
              (if (macro-initialized-thread-exception? _e90216_)
                  (macro-initialized-thread-exception-procedure _e90216_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95430
                                (let ()
                                  (declare (not safe))
                                  (cons _e90216_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95430)))))
            (if (macro-initialized-thread-exception? _exn90213_)
                (macro-initialized-thread-exception-procedure _exn90213_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95429
                              (let ()
                                (declare (not safe))
                                (cons _exn90213_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95429)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90209_))
            (let ((_e90211_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90209_ 'exception))))
              (macro-invalid-hash-number-exception? _e90211_))
            (macro-invalid-hash-number-exception? _exn90209_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90205_))
            (let ((_e90207_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90205_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90207_)
                  (macro-invalid-hash-number-exception-arguments _e90207_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95432
                                (let ()
                                  (declare (not safe))
                                  (cons _e90207_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95432)))))
            (if (macro-invalid-hash-number-exception? _exn90205_)
                (macro-invalid-hash-number-exception-arguments _exn90205_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95431
                              (let ()
                                (declare (not safe))
                                (cons _exn90205_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95431)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90199_))
            (let ((_e90202_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90199_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90202_)
                  (macro-invalid-hash-number-exception-procedure _e90202_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95434
                                (let ()
                                  (declare (not safe))
                                  (cons _e90202_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95434)))))
            (if (macro-invalid-hash-number-exception? _exn90199_)
                (macro-invalid-hash-number-exception-procedure _exn90199_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95433
                              (let ()
                                (declare (not safe))
                                (cons _exn90199_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95433)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90195_))
            (let ((_e90197_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90195_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90197_))
            (macro-invalid-utf8-encoding-exception? _exn90195_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90191_))
            (let ((_e90193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90191_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90193_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90193_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95436
                                (let ()
                                  (declare (not safe))
                                  (cons _e90193_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95436)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90191_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90191_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95435
                              (let ()
                                (declare (not safe))
                                (cons _exn90191_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95435)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90185_))
            (let ((_e90188_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90185_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90188_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90188_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95438
                                (let ()
                                  (declare (not safe))
                                  (cons _e90188_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95438)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90185_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90185_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95437
                              (let ()
                                (declare (not safe))
                                (cons _exn90185_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95437)))))))
    (define join-timeout-exception?
      (lambda (_exn90181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90181_))
            (let ((_e90183_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90181_ 'exception))))
              (macro-join-timeout-exception? _e90183_))
            (macro-join-timeout-exception? _exn90181_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (if (macro-join-timeout-exception? _e90179_)
                  (macro-join-timeout-exception-arguments _e90179_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95440
                                (let ()
                                  (declare (not safe))
                                  (cons _e90179_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95440)))))
            (if (macro-join-timeout-exception? _exn90177_)
                (macro-join-timeout-exception-arguments _exn90177_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95439
                              (let ()
                                (declare (not safe))
                                (cons _exn90177_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95439)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90171_))
            (let ((_e90174_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90171_ 'exception))))
              (if (macro-join-timeout-exception? _e90174_)
                  (macro-join-timeout-exception-procedure _e90174_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95442
                                (let ()
                                  (declare (not safe))
                                  (cons _e90174_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95442)))))
            (if (macro-join-timeout-exception? _exn90171_)
                (macro-join-timeout-exception-procedure _exn90171_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95441
                              (let ()
                                (declare (not safe))
                                (cons _exn90171_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95441)))))))
    (define keyword-expected-exception?
      (lambda (_exn90167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90167_))
            (let ((_e90169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90167_ 'exception))))
              (macro-keyword-expected-exception? _e90169_))
            (macro-keyword-expected-exception? _exn90167_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90163_))
            (let ((_e90165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90163_ 'exception))))
              (if (macro-keyword-expected-exception? _e90165_)
                  (macro-keyword-expected-exception-arguments _e90165_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95444
                                (let ()
                                  (declare (not safe))
                                  (cons _e90165_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95444)))))
            (if (macro-keyword-expected-exception? _exn90163_)
                (macro-keyword-expected-exception-arguments _exn90163_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95443
                              (let ()
                                (declare (not safe))
                                (cons _exn90163_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95443)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90157_))
            (let ((_e90160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90157_ 'exception))))
              (if (macro-keyword-expected-exception? _e90160_)
                  (macro-keyword-expected-exception-procedure _e90160_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95446
                                (let ()
                                  (declare (not safe))
                                  (cons _e90160_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95446)))))
            (if (macro-keyword-expected-exception? _exn90157_)
                (macro-keyword-expected-exception-procedure _exn90157_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95445
                              (let ()
                                (declare (not safe))
                                (cons _exn90157_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95445)))))))
    (define length-mismatch-exception?
      (lambda (_exn90153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90153_))
            (let ((_e90155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90153_ 'exception))))
              (macro-length-mismatch-exception? _e90155_))
            (macro-length-mismatch-exception? _exn90153_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (if (macro-length-mismatch-exception? _e90151_)
                  (macro-length-mismatch-exception-arg-id _e90151_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95448
                                (let ()
                                  (declare (not safe))
                                  (cons _e90151_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95448)))))
            (if (macro-length-mismatch-exception? _exn90149_)
                (macro-length-mismatch-exception-arg-id _exn90149_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95447
                              (let ()
                                (declare (not safe))
                                (cons _exn90149_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95447)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90145_))
            (let ((_e90147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90145_ 'exception))))
              (if (macro-length-mismatch-exception? _e90147_)
                  (macro-length-mismatch-exception-arguments _e90147_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95450
                                (let ()
                                  (declare (not safe))
                                  (cons _e90147_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95450)))))
            (if (macro-length-mismatch-exception? _exn90145_)
                (macro-length-mismatch-exception-arguments _exn90145_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95449
                              (let ()
                                (declare (not safe))
                                (cons _exn90145_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95449)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90139_))
            (let ((_e90142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90139_ 'exception))))
              (if (macro-length-mismatch-exception? _e90142_)
                  (macro-length-mismatch-exception-procedure _e90142_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95452
                                (let ()
                                  (declare (not safe))
                                  (cons _e90142_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95452)))))
            (if (macro-length-mismatch-exception? _exn90139_)
                (macro-length-mismatch-exception-procedure _exn90139_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95451
                              (let ()
                                (declare (not safe))
                                (cons _exn90139_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95451)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90137_))
            (macro-mailbox-receive-timeout-exception? _exn90135_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90133_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90133_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95454
                                (let ()
                                  (declare (not safe))
                                  (cons _e90133_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95454)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90131_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90131_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95453
                              (let ()
                                (declare (not safe))
                                (cons _exn90131_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95453)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90125_))
            (let ((_e90128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90125_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90128_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90128_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95456
                                (let ()
                                  (declare (not safe))
                                  (cons _e90128_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95456)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90125_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90125_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95455
                              (let ()
                                (declare (not safe))
                                (cons _exn90125_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95455)))))))
    (define module-not-found-exception?
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (macro-module-not-found-exception? _e90123_))
            (macro-module-not-found-exception? _exn90121_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90117_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90117_ 'exception))))
              (if (macro-module-not-found-exception? _e90119_)
                  (macro-module-not-found-exception-arguments _e90119_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95458
                                (let ()
                                  (declare (not safe))
                                  (cons _e90119_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95458)))))
            (if (macro-module-not-found-exception? _exn90117_)
                (macro-module-not-found-exception-arguments _exn90117_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95457
                              (let ()
                                (declare (not safe))
                                (cons _exn90117_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95457)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90111_))
            (let ((_e90114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90111_ 'exception))))
              (if (macro-module-not-found-exception? _e90114_)
                  (macro-module-not-found-exception-procedure _e90114_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95460
                                (let ()
                                  (declare (not safe))
                                  (cons _e90114_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95460)))))
            (if (macro-module-not-found-exception? _exn90111_)
                (macro-module-not-found-exception-procedure _exn90111_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95459
                              (let ()
                                (declare (not safe))
                                (cons _exn90111_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95459)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90105_))
            (let ((_e90108_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90105_ 'exception))))
              (macro-multiple-c-return-exception? _e90108_))
            (macro-multiple-c-return-exception? _exn90105_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90101_))
            (let ((_e90103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90101_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90103_))
            (macro-no-such-file-or-directory-exception? _exn90101_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90097_))
            (let ((_e90099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90097_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90099_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90099_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95462
                                (let ()
                                  (declare (not safe))
                                  (cons _e90099_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95462)))))
            (if (macro-no-such-file-or-directory-exception? _exn90097_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90097_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95461
                              (let ()
                                (declare (not safe))
                                (cons _exn90097_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95461)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90091_))
            (let ((_e90094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90091_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90094_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90094_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95464
                                (let ()
                                  (declare (not safe))
                                  (cons _e90094_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95464)))))
            (if (macro-no-such-file-or-directory-exception? _exn90091_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90091_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95463
                              (let ()
                                (declare (not safe))
                                (cons _exn90091_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95463)))))))
    (define noncontinuable-exception?
      (lambda (_exn90087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90087_))
            (let ((_e90089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90087_ 'exception))))
              (macro-noncontinuable-exception? _e90089_))
            (macro-noncontinuable-exception? _exn90087_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90081_))
            (let ((_e90084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90081_ 'exception))))
              (if (macro-noncontinuable-exception? _e90084_)
                  (macro-noncontinuable-exception-reason _e90084_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95466
                                (let ()
                                  (declare (not safe))
                                  (cons _e90084_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95466)))))
            (if (macro-noncontinuable-exception? _exn90081_)
                (macro-noncontinuable-exception-reason _exn90081_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95465
                              (let ()
                                (declare (not safe))
                                (cons _exn90081_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95465)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90077_))
            (let ((_e90079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90077_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90079_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90077_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90073_))
            (let ((_e90075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90073_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90075_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90075_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95468
                                (let ()
                                  (declare (not safe))
                                  (cons _e90075_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95468)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90073_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90073_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95467
                              (let ()
                                (declare (not safe))
                                (cons _exn90073_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95467)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90067_))
            (let ((_e90070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90067_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90070_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90070_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95470
                                (let ()
                                  (declare (not safe))
                                  (cons _e90070_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95470)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90067_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90067_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95469
                              (let ()
                                (declare (not safe))
                                (cons _exn90067_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95469)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90063_))
            (let ((_e90065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90063_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90065_))
            (macro-nonprocedure-operator-exception? _exn90063_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90059_))
            (let ((_e90061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90059_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90061_)
                  (macro-nonprocedure-operator-exception-arguments _e90061_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95472
                                (let ()
                                  (declare (not safe))
                                  (cons _e90061_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95472)))))
            (if (macro-nonprocedure-operator-exception? _exn90059_)
                (macro-nonprocedure-operator-exception-arguments _exn90059_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95471
                              (let ()
                                (declare (not safe))
                                (cons _exn90059_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95471)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90055_))
            (let ((_e90057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90055_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90057_)
                  (macro-nonprocedure-operator-exception-code _e90057_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95474
                                (let ()
                                  (declare (not safe))
                                  (cons _e90057_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95474)))))
            (if (macro-nonprocedure-operator-exception? _exn90055_)
                (macro-nonprocedure-operator-exception-code _exn90055_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95473
                              (let ()
                                (declare (not safe))
                                (cons _exn90055_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95473)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90051_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90051_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90053_)
                  (macro-nonprocedure-operator-exception-operator _e90053_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95476
                                (let ()
                                  (declare (not safe))
                                  (cons _e90053_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95476)))))
            (if (macro-nonprocedure-operator-exception? _exn90051_)
                (macro-nonprocedure-operator-exception-operator _exn90051_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95475
                              (let ()
                                (declare (not safe))
                                (cons _exn90051_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95475)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90045_))
            (let ((_e90048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90045_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90048_)
                  (macro-nonprocedure-operator-exception-rte _e90048_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95478
                                (let ()
                                  (declare (not safe))
                                  (cons _e90048_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95478)))))
            (if (macro-nonprocedure-operator-exception? _exn90045_)
                (macro-nonprocedure-operator-exception-rte _exn90045_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95477
                              (let ()
                                (declare (not safe))
                                (cons _exn90045_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95477)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90041_))
            (let ((_e90043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90041_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90043_))
            (macro-not-in-compilation-context-exception? _exn90041_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90037_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90037_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90039_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90039_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95480
                                (let ()
                                  (declare (not safe))
                                  (cons _e90039_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95480)))))
            (if (macro-not-in-compilation-context-exception? _exn90037_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90037_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95479
                              (let ()
                                (declare (not safe))
                                (cons _exn90037_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95479)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90031_))
            (let ((_e90034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90031_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90034_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90034_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95482
                                (let ()
                                  (declare (not safe))
                                  (cons _e90034_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95482)))))
            (if (macro-not-in-compilation-context-exception? _exn90031_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90031_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95481
                              (let ()
                                (declare (not safe))
                                (cons _exn90031_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95481)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90027_))
            (let ((_e90029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90027_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90029_))
            (macro-number-of-arguments-limit-exception? _exn90027_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90023_))
            (let ((_e90025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90023_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90025_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90025_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95484
                                (let ()
                                  (declare (not safe))
                                  (cons _e90025_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95484)))))
            (if (macro-number-of-arguments-limit-exception? _exn90023_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90023_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95483
                              (let ()
                                (declare (not safe))
                                (cons _exn90023_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95483)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90017_))
            (let ((_e90020_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90017_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90020_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90020_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95486
                                (let ()
                                  (declare (not safe))
                                  (cons _e90020_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95486)))))
            (if (macro-number-of-arguments-limit-exception? _exn90017_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90017_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95485
                              (let ()
                                (declare (not safe))
                                (cons _exn90017_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95485)))))))
    (define os-exception?
      (lambda (_exn90013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90013_))
            (let ((_e90015_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90013_ 'exception))))
              (macro-os-exception? _e90015_))
            (macro-os-exception? _exn90013_))))
    (define os-exception-arguments
      (lambda (_exn90009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90009_))
            (let ((_e90011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90009_ 'exception))))
              (if (macro-os-exception? _e90011_)
                  (macro-os-exception-arguments _e90011_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95488
                                (let ()
                                  (declare (not safe))
                                  (cons _e90011_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95488)))))
            (if (macro-os-exception? _exn90009_)
                (macro-os-exception-arguments _exn90009_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95487
                              (let ()
                                (declare (not safe))
                                (cons _exn90009_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95487)))))))
    (define os-exception-code
      (lambda (_exn90005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90005_))
            (let ((_e90007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90005_ 'exception))))
              (if (macro-os-exception? _e90007_)
                  (macro-os-exception-code _e90007_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95490
                                (let ()
                                  (declare (not safe))
                                  (cons _e90007_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95490)))))
            (if (macro-os-exception? _exn90005_)
                (macro-os-exception-code _exn90005_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95489
                              (let ()
                                (declare (not safe))
                                (cons _exn90005_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95489)))))))
    (define os-exception-message
      (lambda (_exn90001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90001_))
            (let ((_e90003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90001_ 'exception))))
              (if (macro-os-exception? _e90003_)
                  (macro-os-exception-message _e90003_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95492
                                (let ()
                                  (declare (not safe))
                                  (cons _e90003_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95492)))))
            (if (macro-os-exception? _exn90001_)
                (macro-os-exception-message _exn90001_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95491
                              (let ()
                                (declare (not safe))
                                (cons _exn90001_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95491)))))))
    (define os-exception-procedure
      (lambda (_exn89995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89995_))
            (let ((_e89998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89995_ 'exception))))
              (if (macro-os-exception? _e89998_)
                  (macro-os-exception-procedure _e89998_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95494
                                (let ()
                                  (declare (not safe))
                                  (cons _e89998_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95494)))))
            (if (macro-os-exception? _exn89995_)
                (macro-os-exception-procedure _exn89995_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95493
                              (let ()
                                (declare (not safe))
                                (cons _exn89995_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95493)))))))
    (define permission-denied-exception?
      (lambda (_exn89991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89991_))
            (let ((_e89993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89991_ 'exception))))
              (macro-permission-denied-exception? _e89993_))
            (macro-permission-denied-exception? _exn89991_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89987_))
            (let ((_e89989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89987_ 'exception))))
              (if (macro-permission-denied-exception? _e89989_)
                  (macro-permission-denied-exception-arguments _e89989_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95496
                                (let ()
                                  (declare (not safe))
                                  (cons _e89989_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95496)))))
            (if (macro-permission-denied-exception? _exn89987_)
                (macro-permission-denied-exception-arguments _exn89987_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95495
                              (let ()
                                (declare (not safe))
                                (cons _exn89987_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95495)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89981_))
            (let ((_e89984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89981_ 'exception))))
              (if (macro-permission-denied-exception? _e89984_)
                  (macro-permission-denied-exception-procedure _e89984_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95498
                                (let ()
                                  (declare (not safe))
                                  (cons _e89984_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95498)))))
            (if (macro-permission-denied-exception? _exn89981_)
                (macro-permission-denied-exception-procedure _exn89981_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95497
                              (let ()
                                (declare (not safe))
                                (cons _exn89981_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95497)))))))
    (define range-exception?
      (lambda (_exn89977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89977_))
            (let ((_e89979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89977_ 'exception))))
              (macro-range-exception? _e89979_))
            (macro-range-exception? _exn89977_))))
    (define range-exception-arg-id
      (lambda (_exn89973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89973_))
            (let ((_e89975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89973_ 'exception))))
              (if (macro-range-exception? _e89975_)
                  (macro-range-exception-arg-id _e89975_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95500
                                (let ()
                                  (declare (not safe))
                                  (cons _e89975_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95500)))))
            (if (macro-range-exception? _exn89973_)
                (macro-range-exception-arg-id _exn89973_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95499
                              (let ()
                                (declare (not safe))
                                (cons _exn89973_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95499)))))))
    (define range-exception-arguments
      (lambda (_exn89969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89969_))
            (let ((_e89971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89969_ 'exception))))
              (if (macro-range-exception? _e89971_)
                  (macro-range-exception-arguments _e89971_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95502
                                (let ()
                                  (declare (not safe))
                                  (cons _e89971_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95502)))))
            (if (macro-range-exception? _exn89969_)
                (macro-range-exception-arguments _exn89969_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95501
                              (let ()
                                (declare (not safe))
                                (cons _exn89969_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95501)))))))
    (define range-exception-procedure
      (lambda (_exn89963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89963_))
            (let ((_e89966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89963_ 'exception))))
              (if (macro-range-exception? _e89966_)
                  (macro-range-exception-procedure _e89966_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95504
                                (let ()
                                  (declare (not safe))
                                  (cons _e89966_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95504)))))
            (if (macro-range-exception? _exn89963_)
                (macro-range-exception-procedure _exn89963_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95503
                              (let ()
                                (declare (not safe))
                                (cons _exn89963_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95503)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89959_))
            (let ((_e89961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89959_ 'exception))))
              (macro-rpc-remote-error-exception? _e89961_))
            (macro-rpc-remote-error-exception? _exn89959_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89955_))
            (let ((_e89957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89955_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89957_)
                  (macro-rpc-remote-error-exception-arguments _e89957_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95506
                                (let ()
                                  (declare (not safe))
                                  (cons _e89957_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95506)))))
            (if (macro-rpc-remote-error-exception? _exn89955_)
                (macro-rpc-remote-error-exception-arguments _exn89955_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95505
                              (let ()
                                (declare (not safe))
                                (cons _exn89955_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95505)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89953_)
                  (macro-rpc-remote-error-exception-message _e89953_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95508
                                (let ()
                                  (declare (not safe))
                                  (cons _e89953_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95508)))))
            (if (macro-rpc-remote-error-exception? _exn89951_)
                (macro-rpc-remote-error-exception-message _exn89951_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95507
                              (let ()
                                (declare (not safe))
                                (cons _exn89951_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95507)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89945_))
            (let ((_e89948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89945_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89948_)
                  (macro-rpc-remote-error-exception-procedure _e89948_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95510
                                (let ()
                                  (declare (not safe))
                                  (cons _e89948_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95510)))))
            (if (macro-rpc-remote-error-exception? _exn89945_)
                (macro-rpc-remote-error-exception-procedure _exn89945_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95509
                              (let ()
                                (declare (not safe))
                                (cons _exn89945_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95509)))))))
    (define scheduler-exception?
      (lambda (_exn89941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89941_))
            (let ((_e89943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89941_ 'exception))))
              (macro-scheduler-exception? _e89943_))
            (macro-scheduler-exception? _exn89941_))))
    (define scheduler-exception-reason
      (lambda (_exn89935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89935_))
            (let ((_e89938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89935_ 'exception))))
              (if (macro-scheduler-exception? _e89938_)
                  (macro-scheduler-exception-reason _e89938_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95512
                                (let ()
                                  (declare (not safe))
                                  (cons _e89938_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95512)))))
            (if (macro-scheduler-exception? _exn89935_)
                (macro-scheduler-exception-reason _exn89935_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95511
                              (let ()
                                (declare (not safe))
                                (cons _exn89935_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95511)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89931_))
            (let ((_e89933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89931_ 'exception))))
              (macro-sfun-conversion-exception? _e89933_))
            (macro-sfun-conversion-exception? _exn89931_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89927_))
            (let ((_e89929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89927_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89929_)
                  (macro-sfun-conversion-exception-arguments _e89929_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95514
                                (let ()
                                  (declare (not safe))
                                  (cons _e89929_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95514)))))
            (if (macro-sfun-conversion-exception? _exn89927_)
                (macro-sfun-conversion-exception-arguments _exn89927_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95513
                              (let ()
                                (declare (not safe))
                                (cons _exn89927_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95513)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89923_))
            (let ((_e89925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89923_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89925_)
                  (macro-sfun-conversion-exception-code _e89925_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95516
                                (let ()
                                  (declare (not safe))
                                  (cons _e89925_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95516)))))
            (if (macro-sfun-conversion-exception? _exn89923_)
                (macro-sfun-conversion-exception-code _exn89923_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95515
                              (let ()
                                (declare (not safe))
                                (cons _exn89923_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95515)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89919_))
            (let ((_e89921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89919_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89921_)
                  (macro-sfun-conversion-exception-message _e89921_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95518
                                (let ()
                                  (declare (not safe))
                                  (cons _e89921_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95518)))))
            (if (macro-sfun-conversion-exception? _exn89919_)
                (macro-sfun-conversion-exception-message _exn89919_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95517
                              (let ()
                                (declare (not safe))
                                (cons _exn89919_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95517)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89913_))
            (let ((_e89916_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89913_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89916_)
                  (macro-sfun-conversion-exception-procedure _e89916_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95520
                                (let ()
                                  (declare (not safe))
                                  (cons _e89916_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95520)))))
            (if (macro-sfun-conversion-exception? _exn89913_)
                (macro-sfun-conversion-exception-procedure _exn89913_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95519
                              (let ()
                                (declare (not safe))
                                (cons _exn89913_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95519)))))))
    (define stack-overflow-exception?
      (lambda (_exn89907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89907_))
            (let ((_e89910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89907_ 'exception))))
              (macro-stack-overflow-exception? _e89910_))
            (macro-stack-overflow-exception? _exn89907_))))
    (define started-thread-exception?
      (lambda (_exn89903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89903_))
            (let ((_e89905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89903_ 'exception))))
              (macro-started-thread-exception? _e89905_))
            (macro-started-thread-exception? _exn89903_))))
    (define started-thread-exception-arguments
      (lambda (_exn89899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89899_))
            (let ((_e89901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89899_ 'exception))))
              (if (macro-started-thread-exception? _e89901_)
                  (macro-started-thread-exception-arguments _e89901_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95522
                                (let ()
                                  (declare (not safe))
                                  (cons _e89901_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95522)))))
            (if (macro-started-thread-exception? _exn89899_)
                (macro-started-thread-exception-arguments _exn89899_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95521
                              (let ()
                                (declare (not safe))
                                (cons _exn89899_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95521)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89893_))
            (let ((_e89896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89893_ 'exception))))
              (if (macro-started-thread-exception? _e89896_)
                  (macro-started-thread-exception-procedure _e89896_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95524
                                (let ()
                                  (declare (not safe))
                                  (cons _e89896_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95524)))))
            (if (macro-started-thread-exception? _exn89893_)
                (macro-started-thread-exception-procedure _exn89893_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95523
                              (let ()
                                (declare (not safe))
                                (cons _exn89893_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95523)))))))
    (define terminated-thread-exception?
      (lambda (_exn89889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89889_))
            (let ((_e89891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89889_ 'exception))))
              (macro-terminated-thread-exception? _e89891_))
            (macro-terminated-thread-exception? _exn89889_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89885_))
            (let ((_e89887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89885_ 'exception))))
              (if (macro-terminated-thread-exception? _e89887_)
                  (macro-terminated-thread-exception-arguments _e89887_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95526
                                (let ()
                                  (declare (not safe))
                                  (cons _e89887_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95526)))))
            (if (macro-terminated-thread-exception? _exn89885_)
                (macro-terminated-thread-exception-arguments _exn89885_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95525
                              (let ()
                                (declare (not safe))
                                (cons _exn89885_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95525)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89879_))
            (let ((_e89882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89879_ 'exception))))
              (if (macro-terminated-thread-exception? _e89882_)
                  (macro-terminated-thread-exception-procedure _e89882_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95528
                                (let ()
                                  (declare (not safe))
                                  (cons _e89882_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95528)))))
            (if (macro-terminated-thread-exception? _exn89879_)
                (macro-terminated-thread-exception-procedure _exn89879_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95527
                              (let ()
                                (declare (not safe))
                                (cons _exn89879_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95527)))))))
    (define type-exception?
      (lambda (_exn89875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89875_))
            (let ((_e89877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89875_ 'exception))))
              (macro-type-exception? _e89877_))
            (macro-type-exception? _exn89875_))))
    (define type-exception-arg-id
      (lambda (_exn89871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89871_))
            (let ((_e89873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89871_ 'exception))))
              (if (macro-type-exception? _e89873_)
                  (macro-type-exception-arg-id _e89873_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95530
                                (let ()
                                  (declare (not safe))
                                  (cons _e89873_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95530)))))
            (if (macro-type-exception? _exn89871_)
                (macro-type-exception-arg-id _exn89871_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95529
                              (let ()
                                (declare (not safe))
                                (cons _exn89871_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95529)))))))
    (define type-exception-arguments
      (lambda (_exn89867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89867_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89867_ 'exception))))
              (if (macro-type-exception? _e89869_)
                  (macro-type-exception-arguments _e89869_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95532
                                (let ()
                                  (declare (not safe))
                                  (cons _e89869_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95532)))))
            (if (macro-type-exception? _exn89867_)
                (macro-type-exception-arguments _exn89867_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95531
                              (let ()
                                (declare (not safe))
                                (cons _exn89867_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95531)))))))
    (define type-exception-procedure
      (lambda (_exn89863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89863_))
            (let ((_e89865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89863_ 'exception))))
              (if (macro-type-exception? _e89865_)
                  (macro-type-exception-procedure _e89865_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95534
                                (let ()
                                  (declare (not safe))
                                  (cons _e89865_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95534)))))
            (if (macro-type-exception? _exn89863_)
                (macro-type-exception-procedure _exn89863_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95533
                              (let ()
                                (declare (not safe))
                                (cons _exn89863_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95533)))))))
    (define type-exception-type-id
      (lambda (_exn89857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89857_))
            (let ((_e89860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89857_ 'exception))))
              (if (macro-type-exception? _e89860_)
                  (macro-type-exception-type-id _e89860_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95536
                                (let ()
                                  (declare (not safe))
                                  (cons _e89860_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95536)))))
            (if (macro-type-exception? _exn89857_)
                (macro-type-exception-type-id _exn89857_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95535
                              (let ()
                                (declare (not safe))
                                (cons _exn89857_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95535)))))))
    (define unbound-global-exception?
      (lambda (_exn89853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89853_))
            (let ((_e89855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89853_ 'exception))))
              (macro-unbound-global-exception? _e89855_))
            (macro-unbound-global-exception? _exn89853_))))
    (define unbound-global-exception-code
      (lambda (_exn89849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89849_))
            (let ((_e89851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89849_ 'exception))))
              (if (macro-unbound-global-exception? _e89851_)
                  (macro-unbound-global-exception-code _e89851_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95538
                                (let ()
                                  (declare (not safe))
                                  (cons _e89851_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95538)))))
            (if (macro-unbound-global-exception? _exn89849_)
                (macro-unbound-global-exception-code _exn89849_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95537
                              (let ()
                                (declare (not safe))
                                (cons _exn89849_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95537)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89845_))
            (let ((_e89847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89845_ 'exception))))
              (if (macro-unbound-global-exception? _e89847_)
                  (macro-unbound-global-exception-rte _e89847_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95540
                                (let ()
                                  (declare (not safe))
                                  (cons _e89847_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95540)))))
            (if (macro-unbound-global-exception? _exn89845_)
                (macro-unbound-global-exception-rte _exn89845_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95539
                              (let ()
                                (declare (not safe))
                                (cons _exn89845_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95539)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89839_))
            (let ((_e89842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89839_ 'exception))))
              (if (macro-unbound-global-exception? _e89842_)
                  (macro-unbound-global-exception-variable _e89842_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95542
                                (let ()
                                  (declare (not safe))
                                  (cons _e89842_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95542)))))
            (if (macro-unbound-global-exception? _exn89839_)
                (macro-unbound-global-exception-variable _exn89839_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95541
                              (let ()
                                (declare (not safe))
                                (cons _exn89839_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95541)))))))
    (define unbound-key-exception?
      (lambda (_exn89835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89835_))
            (let ((_e89837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89835_ 'exception))))
              (macro-unbound-key-exception? _e89837_))
            (macro-unbound-key-exception? _exn89835_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89831_))
            (let ((_e89833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89831_ 'exception))))
              (if (macro-unbound-key-exception? _e89833_)
                  (macro-unbound-key-exception-arguments _e89833_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95544
                                (let ()
                                  (declare (not safe))
                                  (cons _e89833_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95544)))))
            (if (macro-unbound-key-exception? _exn89831_)
                (macro-unbound-key-exception-arguments _exn89831_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95543
                              (let ()
                                (declare (not safe))
                                (cons _exn89831_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95543)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89825_))
            (let ((_e89828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89825_ 'exception))))
              (if (macro-unbound-key-exception? _e89828_)
                  (macro-unbound-key-exception-procedure _e89828_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95546
                                (let ()
                                  (declare (not safe))
                                  (cons _e89828_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95546)))))
            (if (macro-unbound-key-exception? _exn89825_)
                (macro-unbound-key-exception-procedure _exn89825_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95545
                              (let ()
                                (declare (not safe))
                                (cons _exn89825_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95545)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89823_))
            (macro-unbound-os-environment-variable-exception? _exn89821_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89817_))
            (let ((_e89819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89817_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89819_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89819_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95548
                                (let ()
                                  (declare (not safe))
                                  (cons _e89819_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95548)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89817_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89817_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95547
                              (let ()
                                (declare (not safe))
                                (cons _exn89817_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95547)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89811_))
            (let ((_e89814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89811_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89814_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89814_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95550
                                (let ()
                                  (declare (not safe))
                                  (cons _e89814_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95550)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89811_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89811_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95549
                              (let ()
                                (declare (not safe))
                                (cons _exn89811_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95549)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89807_))
            (let ((_e89809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89807_ 'exception))))
              (macro-unbound-serial-number-exception? _e89809_))
            (macro-unbound-serial-number-exception? _exn89807_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89803_))
            (let ((_e89805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89803_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89805_)
                  (macro-unbound-serial-number-exception-arguments _e89805_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95552
                                (let ()
                                  (declare (not safe))
                                  (cons _e89805_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95552)))))
            (if (macro-unbound-serial-number-exception? _exn89803_)
                (macro-unbound-serial-number-exception-arguments _exn89803_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95551
                              (let ()
                                (declare (not safe))
                                (cons _exn89803_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95551)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89797_))
            (let ((_e89800_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89797_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89800_)
                  (macro-unbound-serial-number-exception-procedure _e89800_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95554
                                (let ()
                                  (declare (not safe))
                                  (cons _e89800_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95554)))))
            (if (macro-unbound-serial-number-exception? _exn89797_)
                (macro-unbound-serial-number-exception-procedure _exn89797_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95553
                              (let ()
                                (declare (not safe))
                                (cons _exn89797_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95553)))))))
    (define uncaught-exception?
      (lambda (_exn89793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89793_))
            (let ((_e89795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89793_ 'exception))))
              (macro-uncaught-exception? _e89795_))
            (macro-uncaught-exception? _exn89793_))))
    (define uncaught-exception-arguments
      (lambda (_exn89789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89789_))
            (let ((_e89791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89789_ 'exception))))
              (if (macro-uncaught-exception? _e89791_)
                  (macro-uncaught-exception-arguments _e89791_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95556
                                (let ()
                                  (declare (not safe))
                                  (cons _e89791_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95556)))))
            (if (macro-uncaught-exception? _exn89789_)
                (macro-uncaught-exception-arguments _exn89789_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95555
                              (let ()
                                (declare (not safe))
                                (cons _exn89789_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95555)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89785_))
            (let ((_e89787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89785_ 'exception))))
              (if (macro-uncaught-exception? _e89787_)
                  (macro-uncaught-exception-procedure _e89787_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95558
                                (let ()
                                  (declare (not safe))
                                  (cons _e89787_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95558)))))
            (if (macro-uncaught-exception? _exn89785_)
                (macro-uncaught-exception-procedure _exn89785_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95557
                              (let ()
                                (declare (not safe))
                                (cons _exn89785_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95557)))))))
    (define uncaught-exception-reason
      (lambda (_exn89779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89779_))
            (let ((_e89782_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89779_ 'exception))))
              (if (macro-uncaught-exception? _e89782_)
                  (macro-uncaught-exception-reason _e89782_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95560
                                (let ()
                                  (declare (not safe))
                                  (cons _e89782_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95560)))))
            (if (macro-uncaught-exception? _exn89779_)
                (macro-uncaught-exception-reason _exn89779_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95559
                              (let ()
                                (declare (not safe))
                                (cons _exn89779_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95559)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89775_))
            (let ((_e89777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89775_ 'exception))))
              (macro-uninitialized-thread-exception? _e89777_))
            (macro-uninitialized-thread-exception? _exn89775_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89771_))
            (let ((_e89773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89771_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89773_)
                  (macro-uninitialized-thread-exception-arguments _e89773_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95562
                                (let ()
                                  (declare (not safe))
                                  (cons _e89773_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95562)))))
            (if (macro-uninitialized-thread-exception? _exn89771_)
                (macro-uninitialized-thread-exception-arguments _exn89771_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95561
                              (let ()
                                (declare (not safe))
                                (cons _exn89771_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95561)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89765_))
            (let ((_e89768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89765_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89768_)
                  (macro-uninitialized-thread-exception-procedure _e89768_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95564
                                (let ()
                                  (declare (not safe))
                                  (cons _e89768_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95564)))))
            (if (macro-uninitialized-thread-exception? _exn89765_)
                (macro-uninitialized-thread-exception-procedure _exn89765_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95563
                              (let ()
                                (declare (not safe))
                                (cons _exn89765_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95563)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89761_))
            (let ((_e89763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89761_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89763_))
            (macro-unknown-keyword-argument-exception? _exn89761_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89757_))
            (let ((_e89759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89757_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89759_)
                  (macro-unknown-keyword-argument-exception-arguments _e89759_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95566
                                (let ()
                                  (declare (not safe))
                                  (cons _e89759_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95566)))))
            (if (macro-unknown-keyword-argument-exception? _exn89757_)
                (macro-unknown-keyword-argument-exception-arguments _exn89757_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95565
                              (let ()
                                (declare (not safe))
                                (cons _exn89757_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95565)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89751_))
            (let ((_e89754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89751_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89754_)
                  (macro-unknown-keyword-argument-exception-procedure _e89754_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95568
                                (let ()
                                  (declare (not safe))
                                  (cons _e89754_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95568)))))
            (if (macro-unknown-keyword-argument-exception? _exn89751_)
                (macro-unknown-keyword-argument-exception-procedure _exn89751_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95567
                              (let ()
                                (declare (not safe))
                                (cons _exn89751_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95567)))))))
    (define unterminated-process-exception?
      (lambda (_exn89747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89747_))
            (let ((_e89749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89747_ 'exception))))
              (macro-unterminated-process-exception? _e89749_))
            (macro-unterminated-process-exception? _exn89747_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89743_))
            (let ((_e89745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89743_ 'exception))))
              (if (macro-unterminated-process-exception? _e89745_)
                  (macro-unterminated-process-exception-arguments _e89745_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95570
                                (let ()
                                  (declare (not safe))
                                  (cons _e89745_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95570)))))
            (if (macro-unterminated-process-exception? _exn89743_)
                (macro-unterminated-process-exception-arguments _exn89743_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95569
                              (let ()
                                (declare (not safe))
                                (cons _exn89743_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95569)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89737_))
            (let ((_e89740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89737_ 'exception))))
              (if (macro-unterminated-process-exception? _e89740_)
                  (macro-unterminated-process-exception-procedure _e89740_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95572
                                (let ()
                                  (declare (not safe))
                                  (cons _e89740_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95572)))))
            (if (macro-unterminated-process-exception? _exn89737_)
                (macro-unterminated-process-exception-procedure _exn89737_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95571
                              (let ()
                                (declare (not safe))
                                (cons _exn89737_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95571)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89733_))
            (let ((_e89735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89733_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89735_))
            (macro-wrong-number-of-arguments-exception? _exn89733_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89729_))
            (let ((_e89731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89729_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89731_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89731_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95574
                                (let ()
                                  (declare (not safe))
                                  (cons _e89731_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95574)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89729_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89729_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95573
                              (let ()
                                (declare (not safe))
                                (cons _exn89729_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95573)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89723_))
            (let ((_e89726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89723_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89726_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89726_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95576
                                (let ()
                                  (declare (not safe))
                                  (cons _e89726_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95576)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89723_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89723_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95575
                              (let ()
                                (declare (not safe))
                                (cons _exn89723_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95575)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89719_))
            (let ((_e89721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89719_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89721_))
            (macro-wrong-number-of-values-exception? _exn89719_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89715_))
            (let ((_e89717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89715_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89717_)
                  (macro-wrong-number-of-values-exception-code _e89717_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95578
                                (let ()
                                  (declare (not safe))
                                  (cons _e89717_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95578)))))
            (if (macro-wrong-number-of-values-exception? _exn89715_)
                (macro-wrong-number-of-values-exception-code _exn89715_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95577
                              (let ()
                                (declare (not safe))
                                (cons _exn89715_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95577)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89711_))
            (let ((_e89713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89711_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89713_)
                  (macro-wrong-number-of-values-exception-rte _e89713_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95580
                                (let ()
                                  (declare (not safe))
                                  (cons _e89713_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95580)))))
            (if (macro-wrong-number-of-values-exception? _exn89711_)
                (macro-wrong-number-of-values-exception-rte _exn89711_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95579
                              (let ()
                                (declare (not safe))
                                (cons _exn89711_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95579)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89705_))
            (let ((_e89708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89705_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89708_)
                  (macro-wrong-number-of-values-exception-vals _e89708_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95582
                                (let ()
                                  (declare (not safe))
                                  (cons _e89708_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95582)))))
            (if (macro-wrong-number-of-values-exception? _exn89705_)
                (macro-wrong-number-of-values-exception-vals _exn89705_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95581
                              (let ()
                                (declare (not safe))
                                (cons _exn89705_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95581)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89699_))
            (let ((_e89702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89699_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89702_))
            (macro-wrong-processor-c-return-exception? _exn89699_))))))
