(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708165428)
  (begin
    (define Exception::t
      (let ((__tmp103430 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp103430
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args98833_ (apply make-instance Exception::t _$args98833_)))
    (define StackTrace::t
      (let ((__tmp103431 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp103431
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args98830_ (apply make-instance StackTrace::t _$args98830_)))
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
      (let ((__tmp103432 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp103432
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args98827_ (apply make-instance Error::t _$args98827_)))
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
      (let ((__tmp103433 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp103433
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args98824_
        (apply make-instance RuntimeException::t _$args98824_)))
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
      (lambda (_exn98819_ _continue98820_)
        (let ((_exn98822_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn98819_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn98822_ _continue98820_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn98815_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn98815_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn98815_ 'continuation))
                '#!void
                (let ((__tmp103434
                       (lambda (_cont98817_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn98815_
                            'continuation
                            _cont98817_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp103434)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn98815_))))
    (define error
      (lambda (_message98812_ . _irritants98813_)
        (raise (let ((__obj103424
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj103424
                  _message98812_
                  'irritants:
                  _irritants98813_)
                 __obj103424))))
    (define with-exception-handler
      (lambda (_handler98805_ _thunk98806_)
        (if (let () (declare (not safe)) (procedure? _handler98805_))
            '#!void
            (raise (let ((__obj103425
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103425
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler98805_ '())))
                     __obj103425)))
        (if (let () (declare (not safe)) (procedure? _thunk98806_))
            '#!void
            (raise (let ((__obj103426
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103426
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk98806_ '())))
                     __obj103426)))
        (let ((__tmp103435
               (lambda (_exn98808_)
                 (let ((_exn98810_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn98808_))))
                   (_handler98805_ _exn98810_)))))
          (declare (not safe))
          (##with-exception-handler __tmp103435 _thunk98806_))))
    (define with-catch
      (lambda (_handler98798_ _thunk98799_)
        (if (let () (declare (not safe)) (procedure? _handler98798_))
            '#!void
            (raise (let ((__obj103427
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103427
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler98798_ '())))
                     __obj103427)))
        (if (let () (declare (not safe)) (procedure? _thunk98799_))
            '#!void
            (raise (let ((__obj103428
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103428
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk98799_ '())))
                     __obj103428)))
        (let ((__tmp103436
               (lambda (_cont98801_)
                 (with-exception-handler
                  (lambda (_exn98803_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont98801_
                       _handler98798_
                       _exn98803_)))
                  _thunk98799_))))
          (declare (not safe))
          (##continuation-capture __tmp103436))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn98789_)
        (if (or (heap-overflow-exception? _exn98789_)
                (stack-overflow-exception? _exn98789_))
            _exn98789_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn98789_))
                _exn98789_
                (if (macro-exception? _exn98789_)
                    (let ((_rte98794_
                           (let ((__obj103429
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj103429
                                _exn98789_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj103429)))
                      (let ((__tmp103437
                             (lambda (_cont98796_)
                               (let ((__tmp103438
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont98796_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte98794_
                                  'continuation
                                  __tmp103438)))))
                        (declare (not safe))
                        (##continuation-capture __tmp103437))
                      _rte98794_)
                    _exn98789_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj98784_)
        (let ((_$e98786_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj98784_))))
          (if _$e98786_ _$e98786_ (error-exception? _obj98784_)))))
    (define error-message
      (lambda (_obj98782_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj98782_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj98782_ 'message))
            (if (error-exception? _obj98782_)
                (error-exception-message _obj98782_)
                '#f))))
    (define error-irritants
      (lambda (_obj98780_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj98780_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj98780_ 'irritants))
            (if (error-exception? _obj98780_)
                (error-exception-parameters _obj98780_)
                '#f))))
    (define error-trace
      (lambda (_obj98778_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj98778_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj98778_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e98760_ _port98761_)
        (let ((_$e98763_
               (let ()
                 (declare (not safe))
                 (method-ref _e98760_ 'display-exception))))
          (if _$e98763_
              ((lambda (_f98766_) (_f98766_ _e98760_ _port98761_)) _$e98763_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e98760_ _port98761_))))))
    (define display-exception__0
      (lambda (_e98771_)
        (let ((_port98773_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e98771_ _port98773_))))
    (define display-exception
      (lambda _g103440_
        (let ((_g103439_ (let () (declare (not safe)) (##length _g103440_))))
          (cond ((let () (declare (not safe)) (##fx= _g103439_ 1))
                 (apply (lambda (_e98771_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e98771_)))
                        _g103440_))
                ((let () (declare (not safe)) (##fx= _g103439_ 2))
                 (apply (lambda (_e98775_ _port98776_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e98775_ _port98776_)))
                        _g103440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g103440_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self98749_ _message98750_ . _rest98751_)
        (let ((_message98757_
               (if (let () (declare (not safe)) (string? _message98750_))
                   _message98750_
                   (call-with-output-string
                    '""
                    (lambda (_g9875298754_)
                      (display _message98750_ _g9875298754_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self98749_ 'message _message98757_))
          (apply class-instance-init! _self98749_ _rest98751_))))
    (define Error:::init!::specialize
      (lambda (__t103403)
        (let ((__message103404
               (let ((__tmp103405
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103403 'message))))
                 (if __tmp103405
                     __tmp103405
                     (error '"Unknown slot" 'message)))))
          (lambda (_self98749_ _message98750_ . _rest98751_)
            (let ((_message98757_
                   (if (let () (declare (not safe)) (string? _message98750_))
                       _message98750_
                       (call-with-output-string
                        '""
                        (lambda (_g9875298754_)
                          (display _message98750_ _g9875298754_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98749_
                 _message98757_
                 __message103404
                 __t103403
                 '#f))
              (apply class-instance-init! _self98749_ _rest98751_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self98607_ _port98608_)
        (let ((_tmp-port98610_ (open-output-string))
              (_display-error-newline98611_
               (> (output-port-column _port98608_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port98610_))
          (let ((__tmp103441
                 (lambda ()
                   (if _display-error-newline98611_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e98614_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self98607_ 'where))))
                     (if _$e98614_ (display _$e98614_) (display '"?")))
                   (let ((__tmp103442
                          (let ((__tmp103443
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self98607_))))
                            (declare (not safe))
                            (##type-name __tmp103443))))
                     (declare (not safe))
                     (display* '" [" __tmp103442 '"]: "))
                   (let ((__tmp103444
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self98607_ 'message))))
                     (declare (not safe))
                     (displayln __tmp103444))
                   (let ((_irritants98617_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self98607_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants98617_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj98619_)
                              (write _obj98619_)
                              (write-char '#\space))
                            _irritants98617_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self98607_))
                            (dump-stack-trace?))
                       (let ((_cont9862098622_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self98607_
                                 'continuation))))
                         (if _cont9862098622_
                             (let ((_cont98625_ _cont9862098622_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont98625_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp103441
             current-output-port
             _tmp-port98610_))
          (let ((__tmp103445 (get-output-string _tmp-port98610_)))
            (declare (not safe))
            (##write-string __tmp103445 _port98608_)))))
    (define Error::display-exception::specialize
      (lambda (__t103406)
        (let ((__where103407
               (let ((__tmp103411
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103406 'where))))
                 (if __tmp103411 __tmp103411 (error '"Unknown slot" 'where))))
              (__message103408
               (let ((__tmp103412
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103406 'message))))
                 (if __tmp103412
                     __tmp103412
                     (error '"Unknown slot" 'message))))
              (__irritants103409
               (let ((__tmp103413
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103406 'irritants))))
                 (if __tmp103413
                     __tmp103413
                     (error '"Unknown slot" 'irritants))))
              (__continuation103410
               (let ((__tmp103414
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103406 'continuation))))
                 (if __tmp103414
                     __tmp103414
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self98607_ _port98608_)
            (let ((_tmp-port98610_ (open-output-string))
                  (_display-error-newline98611_
                   (> (output-port-column _port98608_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port98610_))
              (let ((__tmp103446
                     (lambda ()
                       (if _display-error-newline98611_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e98614_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self98607_
                                 __where103407
                                 __t103406
                                 '#f))))
                         (if _$e98614_ (display _$e98614_) (display '"?")))
                       (let ((__tmp103447
                              (let ((__tmp103448
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self98607_))))
                                (declare (not safe))
                                (##type-name __tmp103448))))
                         (declare (not safe))
                         (display* '" [" __tmp103447 '"]: "))
                       (let ((__tmp103449
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self98607_
                                 __message103408
                                 __t103406
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp103449))
                       (let ((_irritants98617_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self98607_
                                 __irritants103409
                                 __t103406
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants98617_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj98619_)
                                  (write _obj98619_)
                                  (write-char '#\space))
                                _irritants98617_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self98607_))
                                (dump-stack-trace?))
                           (let ((_cont9862098622_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self98607_
                                     __continuation103410
                                     __t103406
                                     '#f))))
                             (if _cont9862098622_
                                 (let ((_cont98625_ _cont9862098622_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont98625_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp103446
                 current-output-port
                 _tmp-port98610_))
              (let ((__tmp103450 (get-output-string _tmp-port98610_)))
                (declare (not safe))
                (##write-string __tmp103450 _port98608_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self98474_ _port98475_)
        (let ((_tmp-port98477_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port98477_))
          (let ((__tmp103451
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self98474_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp103451 _tmp-port98477_))
          (if (dump-stack-trace?)
              (let ((_cont9847898480_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self98474_ 'continuation))))
                (if _cont9847898480_
                    (let ((_cont98483_ _cont9847898480_))
                      (display '"--- continuation backtrace:" _tmp-port98477_)
                      (newline _tmp-port98477_)
                      (display-continuation-backtrace
                       _cont98483_
                       _tmp-port98477_))
                    '#f))
              '#!void)
          (let ((__tmp103452 (get-output-string _tmp-port98477_)))
            (declare (not safe))
            (##write-string __tmp103452 _port98475_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t103415)
        (let ((__exception103416
               (let ((__tmp103418
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103415 'exception))))
                 (if __tmp103418
                     __tmp103418
                     (error '"Unknown slot" 'exception))))
              (__continuation103417
               (let ((__tmp103419
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103415 'continuation))))
                 (if __tmp103419
                     __tmp103419
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self98474_ _port98475_)
            (let ((_tmp-port98477_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port98477_))
              (let ((__tmp103453
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self98474_
                        __exception103416
                        __t103415
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp103453 _tmp-port98477_))
              (if (dump-stack-trace?)
                  (let ((_cont9847898480_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self98474_
                            __continuation103417
                            __t103415
                            '#f))))
                    (if _cont9847898480_
                        (let ((_cont98483_ _cont9847898480_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port98477_)
                          (newline _tmp-port98477_)
                          (display-continuation-backtrace
                           _cont98483_
                           _tmp-port98477_))
                        '#f))
                  '#!void)
              (let ((__tmp103454 (get-output-string _tmp-port98477_)))
                (declare (not safe))
                (##write-string __tmp103454 _port98475_)))))))
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
      (lambda (_port98346_)
        (if (macro-character-port? _port98346_)
            (let ((_old-width98348_
                   (macro-character-port-output-width _port98346_)))
              (macro-character-port-output-width-set!
               _port98346_
               (lambda (_port98350_) '256))
              _old-width98348_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port98343_ _old-width98344_)
        (if (macro-character-port? _port98343_)
            (macro-character-port-output-width-set!
             _port98343_
             _old-width98344_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e98341_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e98341_))))
    (define abandoned-mutex-exception?
      (lambda (_exn98335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98335_))
            (let ((_e98338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98335_ 'exception))))
              (macro-abandoned-mutex-exception? _e98338_))
            (macro-abandoned-mutex-exception? _exn98335_))))
    (define cfun-conversion-exception?
      (lambda (_exn98331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98331_))
            (let ((_e98333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98331_ 'exception))))
              (macro-cfun-conversion-exception? _e98333_))
            (macro-cfun-conversion-exception? _exn98331_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn98327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98327_))
            (let ((_e98329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98327_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98329_)
                  (macro-cfun-conversion-exception-arguments _e98329_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103456
                                (let ()
                                  (declare (not safe))
                                  (cons _e98329_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp103456)))))
            (if (macro-cfun-conversion-exception? _exn98327_)
                (macro-cfun-conversion-exception-arguments _exn98327_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103455
                              (let ()
                                (declare (not safe))
                                (cons _exn98327_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp103455)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn98323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98323_))
            (let ((_e98325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98323_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98325_)
                  (macro-cfun-conversion-exception-code _e98325_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103458
                                (let ()
                                  (declare (not safe))
                                  (cons _e98325_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp103458)))))
            (if (macro-cfun-conversion-exception? _exn98323_)
                (macro-cfun-conversion-exception-code _exn98323_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103457
                              (let ()
                                (declare (not safe))
                                (cons _exn98323_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp103457)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn98319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98319_))
            (let ((_e98321_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98319_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98321_)
                  (macro-cfun-conversion-exception-message _e98321_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103460
                                (let ()
                                  (declare (not safe))
                                  (cons _e98321_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp103460)))))
            (if (macro-cfun-conversion-exception? _exn98319_)
                (macro-cfun-conversion-exception-message _exn98319_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103459
                              (let ()
                                (declare (not safe))
                                (cons _exn98319_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp103459)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn98313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98313_))
            (let ((_e98316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98313_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98316_)
                  (macro-cfun-conversion-exception-procedure _e98316_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103462
                                (let ()
                                  (declare (not safe))
                                  (cons _e98316_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp103462)))))
            (if (macro-cfun-conversion-exception? _exn98313_)
                (macro-cfun-conversion-exception-procedure _exn98313_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103461
                              (let ()
                                (declare (not safe))
                                (cons _exn98313_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp103461)))))))
    (define datum-parsing-exception?
      (lambda (_exn98309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98309_))
            (let ((_e98311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98309_ 'exception))))
              (macro-datum-parsing-exception? _e98311_))
            (macro-datum-parsing-exception? _exn98309_))))
    (define datum-parsing-exception-kind
      (lambda (_exn98305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98305_))
            (let ((_e98307_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98305_ 'exception))))
              (if (macro-datum-parsing-exception? _e98307_)
                  (macro-datum-parsing-exception-kind _e98307_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp103464
                                (let ()
                                  (declare (not safe))
                                  (cons _e98307_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp103464)))))
            (if (macro-datum-parsing-exception? _exn98305_)
                (macro-datum-parsing-exception-kind _exn98305_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp103463
                              (let ()
                                (declare (not safe))
                                (cons _exn98305_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp103463)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn98301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98301_))
            (let ((_e98303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98301_ 'exception))))
              (if (macro-datum-parsing-exception? _e98303_)
                  (macro-datum-parsing-exception-parameters _e98303_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp103466
                                (let ()
                                  (declare (not safe))
                                  (cons _e98303_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp103466)))))
            (if (macro-datum-parsing-exception? _exn98301_)
                (macro-datum-parsing-exception-parameters _exn98301_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp103465
                              (let ()
                                (declare (not safe))
                                (cons _exn98301_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp103465)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn98295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98295_))
            (let ((_e98298_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98295_ 'exception))))
              (if (macro-datum-parsing-exception? _e98298_)
                  (macro-datum-parsing-exception-readenv _e98298_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp103468
                                (let ()
                                  (declare (not safe))
                                  (cons _e98298_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp103468)))))
            (if (macro-datum-parsing-exception? _exn98295_)
                (macro-datum-parsing-exception-readenv _exn98295_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp103467
                              (let ()
                                (declare (not safe))
                                (cons _exn98295_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp103467)))))))
    (define deadlock-exception?
      (lambda (_exn98289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98289_))
            (let ((_e98292_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98289_ 'exception))))
              (macro-deadlock-exception? _e98292_))
            (macro-deadlock-exception? _exn98289_))))
    (define divide-by-zero-exception?
      (lambda (_exn98285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98285_))
            (let ((_e98287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98285_ 'exception))))
              (macro-divide-by-zero-exception? _e98287_))
            (macro-divide-by-zero-exception? _exn98285_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn98281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98281_))
            (let ((_e98283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98281_ 'exception))))
              (if (macro-divide-by-zero-exception? _e98283_)
                  (macro-divide-by-zero-exception-arguments _e98283_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp103470
                                (let ()
                                  (declare (not safe))
                                  (cons _e98283_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp103470)))))
            (if (macro-divide-by-zero-exception? _exn98281_)
                (macro-divide-by-zero-exception-arguments _exn98281_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp103469
                              (let ()
                                (declare (not safe))
                                (cons _exn98281_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp103469)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn98275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98275_))
            (let ((_e98278_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98275_ 'exception))))
              (if (macro-divide-by-zero-exception? _e98278_)
                  (macro-divide-by-zero-exception-procedure _e98278_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp103472
                                (let ()
                                  (declare (not safe))
                                  (cons _e98278_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp103472)))))
            (if (macro-divide-by-zero-exception? _exn98275_)
                (macro-divide-by-zero-exception-procedure _exn98275_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp103471
                              (let ()
                                (declare (not safe))
                                (cons _exn98275_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp103471)))))))
    (define error-exception?
      (lambda (_exn98271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98271_))
            (let ((_e98273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98271_ 'exception))))
              (macro-error-exception? _e98273_))
            (macro-error-exception? _exn98271_))))
    (define error-exception-message
      (lambda (_exn98267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98267_))
            (let ((_e98269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98267_ 'exception))))
              (if (macro-error-exception? _e98269_)
                  (macro-error-exception-message _e98269_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp103474
                                (let ()
                                  (declare (not safe))
                                  (cons _e98269_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp103474)))))
            (if (macro-error-exception? _exn98267_)
                (macro-error-exception-message _exn98267_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp103473
                              (let ()
                                (declare (not safe))
                                (cons _exn98267_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp103473)))))))
    (define error-exception-parameters
      (lambda (_exn98261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98261_))
            (let ((_e98264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98261_ 'exception))))
              (if (macro-error-exception? _e98264_)
                  (macro-error-exception-parameters _e98264_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp103476
                                (let ()
                                  (declare (not safe))
                                  (cons _e98264_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp103476)))))
            (if (macro-error-exception? _exn98261_)
                (macro-error-exception-parameters _exn98261_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp103475
                              (let ()
                                (declare (not safe))
                                (cons _exn98261_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp103475)))))))
    (define expression-parsing-exception?
      (lambda (_exn98257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98257_))
            (let ((_e98259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98257_ 'exception))))
              (macro-expression-parsing-exception? _e98259_))
            (macro-expression-parsing-exception? _exn98257_))))
    (define expression-parsing-exception-kind
      (lambda (_exn98253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98253_))
            (let ((_e98255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98253_ 'exception))))
              (if (macro-expression-parsing-exception? _e98255_)
                  (macro-expression-parsing-exception-kind _e98255_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp103478
                                (let ()
                                  (declare (not safe))
                                  (cons _e98255_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp103478)))))
            (if (macro-expression-parsing-exception? _exn98253_)
                (macro-expression-parsing-exception-kind _exn98253_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp103477
                              (let ()
                                (declare (not safe))
                                (cons _exn98253_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp103477)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn98249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98249_))
            (let ((_e98251_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98249_ 'exception))))
              (if (macro-expression-parsing-exception? _e98251_)
                  (macro-expression-parsing-exception-parameters _e98251_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp103480
                                (let ()
                                  (declare (not safe))
                                  (cons _e98251_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp103480)))))
            (if (macro-expression-parsing-exception? _exn98249_)
                (macro-expression-parsing-exception-parameters _exn98249_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp103479
                              (let ()
                                (declare (not safe))
                                (cons _exn98249_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp103479)))))))
    (define expression-parsing-exception-source
      (lambda (_exn98243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98243_))
            (let ((_e98246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98243_ 'exception))))
              (if (macro-expression-parsing-exception? _e98246_)
                  (macro-expression-parsing-exception-source _e98246_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp103482
                                (let ()
                                  (declare (not safe))
                                  (cons _e98246_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp103482)))))
            (if (macro-expression-parsing-exception? _exn98243_)
                (macro-expression-parsing-exception-source _exn98243_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp103481
                              (let ()
                                (declare (not safe))
                                (cons _exn98243_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp103481)))))))
    (define file-exists-exception?
      (lambda (_exn98239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98239_))
            (let ((_e98241_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98239_ 'exception))))
              (macro-file-exists-exception? _e98241_))
            (macro-file-exists-exception? _exn98239_))))
    (define file-exists-exception-arguments
      (lambda (_exn98235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98235_))
            (let ((_e98237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98235_ 'exception))))
              (if (macro-file-exists-exception? _e98237_)
                  (macro-file-exists-exception-arguments _e98237_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp103484
                                (let ()
                                  (declare (not safe))
                                  (cons _e98237_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp103484)))))
            (if (macro-file-exists-exception? _exn98235_)
                (macro-file-exists-exception-arguments _exn98235_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp103483
                              (let ()
                                (declare (not safe))
                                (cons _exn98235_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp103483)))))))
    (define file-exists-exception-procedure
      (lambda (_exn98229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98229_))
            (let ((_e98232_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98229_ 'exception))))
              (if (macro-file-exists-exception? _e98232_)
                  (macro-file-exists-exception-procedure _e98232_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp103486
                                (let ()
                                  (declare (not safe))
                                  (cons _e98232_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp103486)))))
            (if (macro-file-exists-exception? _exn98229_)
                (macro-file-exists-exception-procedure _exn98229_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp103485
                              (let ()
                                (declare (not safe))
                                (cons _exn98229_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp103485)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn98225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98225_))
            (let ((_e98227_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98225_ 'exception))))
              (macro-fixnum-overflow-exception? _e98227_))
            (macro-fixnum-overflow-exception? _exn98225_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn98221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98221_))
            (let ((_e98223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98221_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e98223_)
                  (macro-fixnum-overflow-exception-arguments _e98223_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp103488
                                (let ()
                                  (declare (not safe))
                                  (cons _e98223_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp103488)))))
            (if (macro-fixnum-overflow-exception? _exn98221_)
                (macro-fixnum-overflow-exception-arguments _exn98221_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp103487
                              (let ()
                                (declare (not safe))
                                (cons _exn98221_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp103487)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn98215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98215_))
            (let ((_e98218_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98215_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e98218_)
                  (macro-fixnum-overflow-exception-procedure _e98218_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp103490
                                (let ()
                                  (declare (not safe))
                                  (cons _e98218_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp103490)))))
            (if (macro-fixnum-overflow-exception? _exn98215_)
                (macro-fixnum-overflow-exception-procedure _exn98215_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp103489
                              (let ()
                                (declare (not safe))
                                (cons _exn98215_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp103489)))))))
    (define heap-overflow-exception?
      (lambda (_exn98209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98209_))
            (let ((_e98212_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98209_ 'exception))))
              (macro-heap-overflow-exception? _e98212_))
            (macro-heap-overflow-exception? _exn98209_))))
    (define inactive-thread-exception?
      (lambda (_exn98205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98205_))
            (let ((_e98207_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98205_ 'exception))))
              (macro-inactive-thread-exception? _e98207_))
            (macro-inactive-thread-exception? _exn98205_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn98201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98201_))
            (let ((_e98203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98201_ 'exception))))
              (if (macro-inactive-thread-exception? _e98203_)
                  (macro-inactive-thread-exception-arguments _e98203_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp103492
                                (let ()
                                  (declare (not safe))
                                  (cons _e98203_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp103492)))))
            (if (macro-inactive-thread-exception? _exn98201_)
                (macro-inactive-thread-exception-arguments _exn98201_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp103491
                              (let ()
                                (declare (not safe))
                                (cons _exn98201_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp103491)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn98195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98195_))
            (let ((_e98198_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98195_ 'exception))))
              (if (macro-inactive-thread-exception? _e98198_)
                  (macro-inactive-thread-exception-procedure _e98198_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp103494
                                (let ()
                                  (declare (not safe))
                                  (cons _e98198_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp103494)))))
            (if (macro-inactive-thread-exception? _exn98195_)
                (macro-inactive-thread-exception-procedure _exn98195_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp103493
                              (let ()
                                (declare (not safe))
                                (cons _exn98195_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp103493)))))))
    (define initialized-thread-exception?
      (lambda (_exn98191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98191_))
            (let ((_e98193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98191_ 'exception))))
              (macro-initialized-thread-exception? _e98193_))
            (macro-initialized-thread-exception? _exn98191_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn98187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98187_))
            (let ((_e98189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98187_ 'exception))))
              (if (macro-initialized-thread-exception? _e98189_)
                  (macro-initialized-thread-exception-arguments _e98189_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp103496
                                (let ()
                                  (declare (not safe))
                                  (cons _e98189_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp103496)))))
            (if (macro-initialized-thread-exception? _exn98187_)
                (macro-initialized-thread-exception-arguments _exn98187_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp103495
                              (let ()
                                (declare (not safe))
                                (cons _exn98187_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp103495)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn98181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98181_))
            (let ((_e98184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98181_ 'exception))))
              (if (macro-initialized-thread-exception? _e98184_)
                  (macro-initialized-thread-exception-procedure _e98184_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp103498
                                (let ()
                                  (declare (not safe))
                                  (cons _e98184_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp103498)))))
            (if (macro-initialized-thread-exception? _exn98181_)
                (macro-initialized-thread-exception-procedure _exn98181_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp103497
                              (let ()
                                (declare (not safe))
                                (cons _exn98181_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp103497)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn98177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98177_))
            (let ((_e98179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98177_ 'exception))))
              (macro-invalid-hash-number-exception? _e98179_))
            (macro-invalid-hash-number-exception? _exn98177_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn98173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98173_))
            (let ((_e98175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98173_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e98175_)
                  (macro-invalid-hash-number-exception-arguments _e98175_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp103500
                                (let ()
                                  (declare (not safe))
                                  (cons _e98175_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp103500)))))
            (if (macro-invalid-hash-number-exception? _exn98173_)
                (macro-invalid-hash-number-exception-arguments _exn98173_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp103499
                              (let ()
                                (declare (not safe))
                                (cons _exn98173_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp103499)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn98167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98167_))
            (let ((_e98170_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98167_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e98170_)
                  (macro-invalid-hash-number-exception-procedure _e98170_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp103502
                                (let ()
                                  (declare (not safe))
                                  (cons _e98170_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp103502)))))
            (if (macro-invalid-hash-number-exception? _exn98167_)
                (macro-invalid-hash-number-exception-procedure _exn98167_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp103501
                              (let ()
                                (declare (not safe))
                                (cons _exn98167_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp103501)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn98163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98163_))
            (let ((_e98165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98163_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e98165_))
            (macro-invalid-utf8-encoding-exception? _exn98163_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn98159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98159_))
            (let ((_e98161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98159_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e98161_)
                  (macro-invalid-utf8-encoding-exception-arguments _e98161_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp103504
                                (let ()
                                  (declare (not safe))
                                  (cons _e98161_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp103504)))))
            (if (macro-invalid-utf8-encoding-exception? _exn98159_)
                (macro-invalid-utf8-encoding-exception-arguments _exn98159_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp103503
                              (let ()
                                (declare (not safe))
                                (cons _exn98159_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp103503)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn98153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98153_))
            (let ((_e98156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98153_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e98156_)
                  (macro-invalid-utf8-encoding-exception-procedure _e98156_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp103506
                                (let ()
                                  (declare (not safe))
                                  (cons _e98156_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp103506)))))
            (if (macro-invalid-utf8-encoding-exception? _exn98153_)
                (macro-invalid-utf8-encoding-exception-procedure _exn98153_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp103505
                              (let ()
                                (declare (not safe))
                                (cons _exn98153_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp103505)))))))
    (define join-timeout-exception?
      (lambda (_exn98149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98149_))
            (let ((_e98151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98149_ 'exception))))
              (macro-join-timeout-exception? _e98151_))
            (macro-join-timeout-exception? _exn98149_))))
    (define join-timeout-exception-arguments
      (lambda (_exn98145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98145_))
            (let ((_e98147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98145_ 'exception))))
              (if (macro-join-timeout-exception? _e98147_)
                  (macro-join-timeout-exception-arguments _e98147_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp103508
                                (let ()
                                  (declare (not safe))
                                  (cons _e98147_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp103508)))))
            (if (macro-join-timeout-exception? _exn98145_)
                (macro-join-timeout-exception-arguments _exn98145_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp103507
                              (let ()
                                (declare (not safe))
                                (cons _exn98145_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp103507)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn98139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98139_))
            (let ((_e98142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98139_ 'exception))))
              (if (macro-join-timeout-exception? _e98142_)
                  (macro-join-timeout-exception-procedure _e98142_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp103510
                                (let ()
                                  (declare (not safe))
                                  (cons _e98142_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp103510)))))
            (if (macro-join-timeout-exception? _exn98139_)
                (macro-join-timeout-exception-procedure _exn98139_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp103509
                              (let ()
                                (declare (not safe))
                                (cons _exn98139_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp103509)))))))
    (define keyword-expected-exception?
      (lambda (_exn98135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98135_))
            (let ((_e98137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98135_ 'exception))))
              (macro-keyword-expected-exception? _e98137_))
            (macro-keyword-expected-exception? _exn98135_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn98131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98131_))
            (let ((_e98133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98131_ 'exception))))
              (if (macro-keyword-expected-exception? _e98133_)
                  (macro-keyword-expected-exception-arguments _e98133_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp103512
                                (let ()
                                  (declare (not safe))
                                  (cons _e98133_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp103512)))))
            (if (macro-keyword-expected-exception? _exn98131_)
                (macro-keyword-expected-exception-arguments _exn98131_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp103511
                              (let ()
                                (declare (not safe))
                                (cons _exn98131_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp103511)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn98125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98125_))
            (let ((_e98128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98125_ 'exception))))
              (if (macro-keyword-expected-exception? _e98128_)
                  (macro-keyword-expected-exception-procedure _e98128_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp103514
                                (let ()
                                  (declare (not safe))
                                  (cons _e98128_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp103514)))))
            (if (macro-keyword-expected-exception? _exn98125_)
                (macro-keyword-expected-exception-procedure _exn98125_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp103513
                              (let ()
                                (declare (not safe))
                                (cons _exn98125_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp103513)))))))
    (define length-mismatch-exception?
      (lambda (_exn98121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98121_))
            (let ((_e98123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98121_ 'exception))))
              (macro-length-mismatch-exception? _e98123_))
            (macro-length-mismatch-exception? _exn98121_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn98117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98117_))
            (let ((_e98119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98117_ 'exception))))
              (if (macro-length-mismatch-exception? _e98119_)
                  (macro-length-mismatch-exception-arg-id _e98119_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp103516
                                (let ()
                                  (declare (not safe))
                                  (cons _e98119_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp103516)))))
            (if (macro-length-mismatch-exception? _exn98117_)
                (macro-length-mismatch-exception-arg-id _exn98117_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp103515
                              (let ()
                                (declare (not safe))
                                (cons _exn98117_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp103515)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn98113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98113_))
            (let ((_e98115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98113_ 'exception))))
              (if (macro-length-mismatch-exception? _e98115_)
                  (macro-length-mismatch-exception-arguments _e98115_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp103518
                                (let ()
                                  (declare (not safe))
                                  (cons _e98115_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp103518)))))
            (if (macro-length-mismatch-exception? _exn98113_)
                (macro-length-mismatch-exception-arguments _exn98113_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp103517
                              (let ()
                                (declare (not safe))
                                (cons _exn98113_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp103517)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn98107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98107_))
            (let ((_e98110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98107_ 'exception))))
              (if (macro-length-mismatch-exception? _e98110_)
                  (macro-length-mismatch-exception-procedure _e98110_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp103520
                                (let ()
                                  (declare (not safe))
                                  (cons _e98110_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp103520)))))
            (if (macro-length-mismatch-exception? _exn98107_)
                (macro-length-mismatch-exception-procedure _exn98107_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp103519
                              (let ()
                                (declare (not safe))
                                (cons _exn98107_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp103519)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn98103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98103_))
            (let ((_e98105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98103_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e98105_))
            (macro-mailbox-receive-timeout-exception? _exn98103_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn98099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98099_))
            (let ((_e98101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98099_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e98101_)
                  (macro-mailbox-receive-timeout-exception-arguments _e98101_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp103522
                                (let ()
                                  (declare (not safe))
                                  (cons _e98101_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp103522)))))
            (if (macro-mailbox-receive-timeout-exception? _exn98099_)
                (macro-mailbox-receive-timeout-exception-arguments _exn98099_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp103521
                              (let ()
                                (declare (not safe))
                                (cons _exn98099_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp103521)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn98093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98093_))
            (let ((_e98096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98093_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e98096_)
                  (macro-mailbox-receive-timeout-exception-procedure _e98096_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp103524
                                (let ()
                                  (declare (not safe))
                                  (cons _e98096_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp103524)))))
            (if (macro-mailbox-receive-timeout-exception? _exn98093_)
                (macro-mailbox-receive-timeout-exception-procedure _exn98093_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp103523
                              (let ()
                                (declare (not safe))
                                (cons _exn98093_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp103523)))))))
    (define module-not-found-exception?
      (lambda (_exn98089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98089_))
            (let ((_e98091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98089_ 'exception))))
              (macro-module-not-found-exception? _e98091_))
            (macro-module-not-found-exception? _exn98089_))))
    (define module-not-found-exception-arguments
      (lambda (_exn98085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98085_))
            (let ((_e98087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98085_ 'exception))))
              (if (macro-module-not-found-exception? _e98087_)
                  (macro-module-not-found-exception-arguments _e98087_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp103526
                                (let ()
                                  (declare (not safe))
                                  (cons _e98087_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp103526)))))
            (if (macro-module-not-found-exception? _exn98085_)
                (macro-module-not-found-exception-arguments _exn98085_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp103525
                              (let ()
                                (declare (not safe))
                                (cons _exn98085_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp103525)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn98079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98079_))
            (let ((_e98082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98079_ 'exception))))
              (if (macro-module-not-found-exception? _e98082_)
                  (macro-module-not-found-exception-procedure _e98082_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp103528
                                (let ()
                                  (declare (not safe))
                                  (cons _e98082_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp103528)))))
            (if (macro-module-not-found-exception? _exn98079_)
                (macro-module-not-found-exception-procedure _exn98079_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp103527
                              (let ()
                                (declare (not safe))
                                (cons _exn98079_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp103527)))))))
    (define multiple-c-return-exception?
      (lambda (_exn98073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98073_))
            (let ((_e98076_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98073_ 'exception))))
              (macro-multiple-c-return-exception? _e98076_))
            (macro-multiple-c-return-exception? _exn98073_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn98069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98069_))
            (let ((_e98071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98069_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e98071_))
            (macro-no-such-file-or-directory-exception? _exn98069_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn98065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98065_))
            (let ((_e98067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98065_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e98067_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e98067_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp103530
                                (let ()
                                  (declare (not safe))
                                  (cons _e98067_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp103530)))))
            (if (macro-no-such-file-or-directory-exception? _exn98065_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn98065_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp103529
                              (let ()
                                (declare (not safe))
                                (cons _exn98065_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp103529)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn98059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98059_))
            (let ((_e98062_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98059_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e98062_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e98062_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp103532
                                (let ()
                                  (declare (not safe))
                                  (cons _e98062_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp103532)))))
            (if (macro-no-such-file-or-directory-exception? _exn98059_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn98059_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp103531
                              (let ()
                                (declare (not safe))
                                (cons _exn98059_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp103531)))))))
    (define noncontinuable-exception?
      (lambda (_exn98055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98055_))
            (let ((_e98057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98055_ 'exception))))
              (macro-noncontinuable-exception? _e98057_))
            (macro-noncontinuable-exception? _exn98055_))))
    (define noncontinuable-exception-reason
      (lambda (_exn98049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98049_))
            (let ((_e98052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98049_ 'exception))))
              (if (macro-noncontinuable-exception? _e98052_)
                  (macro-noncontinuable-exception-reason _e98052_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp103534
                                (let ()
                                  (declare (not safe))
                                  (cons _e98052_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp103534)))))
            (if (macro-noncontinuable-exception? _exn98049_)
                (macro-noncontinuable-exception-reason _exn98049_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp103533
                              (let ()
                                (declare (not safe))
                                (cons _exn98049_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp103533)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn98045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98045_))
            (let ((_e98047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98045_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e98047_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn98045_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn98041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98041_))
            (let ((_e98043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98041_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e98043_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e98043_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp103536
                                (let ()
                                  (declare (not safe))
                                  (cons _e98043_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp103536)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn98041_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn98041_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp103535
                              (let ()
                                (declare (not safe))
                                (cons _exn98041_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp103535)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn98035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98035_))
            (let ((_e98038_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98035_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e98038_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e98038_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp103538
                                (let ()
                                  (declare (not safe))
                                  (cons _e98038_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp103538)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn98035_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn98035_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp103537
                              (let ()
                                (declare (not safe))
                                (cons _exn98035_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp103537)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn98031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98031_))
            (let ((_e98033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98031_ 'exception))))
              (macro-nonprocedure-operator-exception? _e98033_))
            (macro-nonprocedure-operator-exception? _exn98031_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn98027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98027_))
            (let ((_e98029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98027_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98029_)
                  (macro-nonprocedure-operator-exception-arguments _e98029_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103540
                                (let ()
                                  (declare (not safe))
                                  (cons _e98029_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp103540)))))
            (if (macro-nonprocedure-operator-exception? _exn98027_)
                (macro-nonprocedure-operator-exception-arguments _exn98027_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103539
                              (let ()
                                (declare (not safe))
                                (cons _exn98027_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp103539)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn98023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98023_))
            (let ((_e98025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98023_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98025_)
                  (macro-nonprocedure-operator-exception-code _e98025_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103542
                                (let ()
                                  (declare (not safe))
                                  (cons _e98025_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp103542)))))
            (if (macro-nonprocedure-operator-exception? _exn98023_)
                (macro-nonprocedure-operator-exception-code _exn98023_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103541
                              (let ()
                                (declare (not safe))
                                (cons _exn98023_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp103541)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn98019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98019_))
            (let ((_e98021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98019_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98021_)
                  (macro-nonprocedure-operator-exception-operator _e98021_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103544
                                (let ()
                                  (declare (not safe))
                                  (cons _e98021_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp103544)))))
            (if (macro-nonprocedure-operator-exception? _exn98019_)
                (macro-nonprocedure-operator-exception-operator _exn98019_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103543
                              (let ()
                                (declare (not safe))
                                (cons _exn98019_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp103543)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn98013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98013_))
            (let ((_e98016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98013_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98016_)
                  (macro-nonprocedure-operator-exception-rte _e98016_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103546
                                (let ()
                                  (declare (not safe))
                                  (cons _e98016_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp103546)))))
            (if (macro-nonprocedure-operator-exception? _exn98013_)
                (macro-nonprocedure-operator-exception-rte _exn98013_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103545
                              (let ()
                                (declare (not safe))
                                (cons _exn98013_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp103545)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn98009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98009_))
            (let ((_e98011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98009_ 'exception))))
              (macro-not-in-compilation-context-exception? _e98011_))
            (macro-not-in-compilation-context-exception? _exn98009_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn98005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98005_))
            (let ((_e98007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98005_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e98007_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e98007_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp103548
                                (let ()
                                  (declare (not safe))
                                  (cons _e98007_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp103548)))))
            (if (macro-not-in-compilation-context-exception? _exn98005_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn98005_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp103547
                              (let ()
                                (declare (not safe))
                                (cons _exn98005_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp103547)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn97999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97999_))
            (let ((_e98002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97999_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e98002_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e98002_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp103550
                                (let ()
                                  (declare (not safe))
                                  (cons _e98002_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp103550)))))
            (if (macro-not-in-compilation-context-exception? _exn97999_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn97999_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp103549
                              (let ()
                                (declare (not safe))
                                (cons _exn97999_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp103549)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn97995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97995_))
            (let ((_e97997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97995_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e97997_))
            (macro-number-of-arguments-limit-exception? _exn97995_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn97991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97991_))
            (let ((_e97993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97991_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e97993_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e97993_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp103552
                                (let ()
                                  (declare (not safe))
                                  (cons _e97993_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp103552)))))
            (if (macro-number-of-arguments-limit-exception? _exn97991_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn97991_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp103551
                              (let ()
                                (declare (not safe))
                                (cons _exn97991_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp103551)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn97985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97985_))
            (let ((_e97988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97985_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e97988_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e97988_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp103554
                                (let ()
                                  (declare (not safe))
                                  (cons _e97988_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp103554)))))
            (if (macro-number-of-arguments-limit-exception? _exn97985_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn97985_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp103553
                              (let ()
                                (declare (not safe))
                                (cons _exn97985_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp103553)))))))
    (define os-exception?
      (lambda (_exn97981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97981_))
            (let ((_e97983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97981_ 'exception))))
              (macro-os-exception? _e97983_))
            (macro-os-exception? _exn97981_))))
    (define os-exception-arguments
      (lambda (_exn97977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97977_))
            (let ((_e97979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97977_ 'exception))))
              (if (macro-os-exception? _e97979_)
                  (macro-os-exception-arguments _e97979_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp103556
                                (let ()
                                  (declare (not safe))
                                  (cons _e97979_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp103556)))))
            (if (macro-os-exception? _exn97977_)
                (macro-os-exception-arguments _exn97977_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp103555
                              (let ()
                                (declare (not safe))
                                (cons _exn97977_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp103555)))))))
    (define os-exception-code
      (lambda (_exn97973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97973_))
            (let ((_e97975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97973_ 'exception))))
              (if (macro-os-exception? _e97975_)
                  (macro-os-exception-code _e97975_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp103558
                                (let ()
                                  (declare (not safe))
                                  (cons _e97975_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp103558)))))
            (if (macro-os-exception? _exn97973_)
                (macro-os-exception-code _exn97973_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp103557
                              (let ()
                                (declare (not safe))
                                (cons _exn97973_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp103557)))))))
    (define os-exception-message
      (lambda (_exn97969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97969_))
            (let ((_e97971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97969_ 'exception))))
              (if (macro-os-exception? _e97971_)
                  (macro-os-exception-message _e97971_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp103560
                                (let ()
                                  (declare (not safe))
                                  (cons _e97971_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp103560)))))
            (if (macro-os-exception? _exn97969_)
                (macro-os-exception-message _exn97969_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp103559
                              (let ()
                                (declare (not safe))
                                (cons _exn97969_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp103559)))))))
    (define os-exception-procedure
      (lambda (_exn97963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97963_))
            (let ((_e97966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97963_ 'exception))))
              (if (macro-os-exception? _e97966_)
                  (macro-os-exception-procedure _e97966_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp103562
                                (let ()
                                  (declare (not safe))
                                  (cons _e97966_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp103562)))))
            (if (macro-os-exception? _exn97963_)
                (macro-os-exception-procedure _exn97963_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp103561
                              (let ()
                                (declare (not safe))
                                (cons _exn97963_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp103561)))))))
    (define permission-denied-exception?
      (lambda (_exn97959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97959_))
            (let ((_e97961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97959_ 'exception))))
              (macro-permission-denied-exception? _e97961_))
            (macro-permission-denied-exception? _exn97959_))))
    (define permission-denied-exception-arguments
      (lambda (_exn97955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97955_))
            (let ((_e97957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97955_ 'exception))))
              (if (macro-permission-denied-exception? _e97957_)
                  (macro-permission-denied-exception-arguments _e97957_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp103564
                                (let ()
                                  (declare (not safe))
                                  (cons _e97957_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp103564)))))
            (if (macro-permission-denied-exception? _exn97955_)
                (macro-permission-denied-exception-arguments _exn97955_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp103563
                              (let ()
                                (declare (not safe))
                                (cons _exn97955_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp103563)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn97949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97949_))
            (let ((_e97952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97949_ 'exception))))
              (if (macro-permission-denied-exception? _e97952_)
                  (macro-permission-denied-exception-procedure _e97952_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp103566
                                (let ()
                                  (declare (not safe))
                                  (cons _e97952_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp103566)))))
            (if (macro-permission-denied-exception? _exn97949_)
                (macro-permission-denied-exception-procedure _exn97949_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp103565
                              (let ()
                                (declare (not safe))
                                (cons _exn97949_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp103565)))))))
    (define range-exception?
      (lambda (_exn97945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97945_))
            (let ((_e97947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97945_ 'exception))))
              (macro-range-exception? _e97947_))
            (macro-range-exception? _exn97945_))))
    (define range-exception-arg-id
      (lambda (_exn97941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97941_))
            (let ((_e97943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97941_ 'exception))))
              (if (macro-range-exception? _e97943_)
                  (macro-range-exception-arg-id _e97943_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp103568
                                (let ()
                                  (declare (not safe))
                                  (cons _e97943_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp103568)))))
            (if (macro-range-exception? _exn97941_)
                (macro-range-exception-arg-id _exn97941_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp103567
                              (let ()
                                (declare (not safe))
                                (cons _exn97941_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp103567)))))))
    (define range-exception-arguments
      (lambda (_exn97937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97937_))
            (let ((_e97939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97937_ 'exception))))
              (if (macro-range-exception? _e97939_)
                  (macro-range-exception-arguments _e97939_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp103570
                                (let ()
                                  (declare (not safe))
                                  (cons _e97939_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp103570)))))
            (if (macro-range-exception? _exn97937_)
                (macro-range-exception-arguments _exn97937_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp103569
                              (let ()
                                (declare (not safe))
                                (cons _exn97937_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp103569)))))))
    (define range-exception-procedure
      (lambda (_exn97931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97931_))
            (let ((_e97934_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97931_ 'exception))))
              (if (macro-range-exception? _e97934_)
                  (macro-range-exception-procedure _e97934_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp103572
                                (let ()
                                  (declare (not safe))
                                  (cons _e97934_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp103572)))))
            (if (macro-range-exception? _exn97931_)
                (macro-range-exception-procedure _exn97931_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp103571
                              (let ()
                                (declare (not safe))
                                (cons _exn97931_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp103571)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn97927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97927_))
            (let ((_e97929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97927_ 'exception))))
              (macro-rpc-remote-error-exception? _e97929_))
            (macro-rpc-remote-error-exception? _exn97927_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn97923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97923_))
            (let ((_e97925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97923_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e97925_)
                  (macro-rpc-remote-error-exception-arguments _e97925_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp103574
                                (let ()
                                  (declare (not safe))
                                  (cons _e97925_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp103574)))))
            (if (macro-rpc-remote-error-exception? _exn97923_)
                (macro-rpc-remote-error-exception-arguments _exn97923_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp103573
                              (let ()
                                (declare (not safe))
                                (cons _exn97923_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp103573)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn97919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97919_))
            (let ((_e97921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97919_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e97921_)
                  (macro-rpc-remote-error-exception-message _e97921_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp103576
                                (let ()
                                  (declare (not safe))
                                  (cons _e97921_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp103576)))))
            (if (macro-rpc-remote-error-exception? _exn97919_)
                (macro-rpc-remote-error-exception-message _exn97919_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp103575
                              (let ()
                                (declare (not safe))
                                (cons _exn97919_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp103575)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn97913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97913_))
            (let ((_e97916_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97913_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e97916_)
                  (macro-rpc-remote-error-exception-procedure _e97916_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp103578
                                (let ()
                                  (declare (not safe))
                                  (cons _e97916_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp103578)))))
            (if (macro-rpc-remote-error-exception? _exn97913_)
                (macro-rpc-remote-error-exception-procedure _exn97913_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp103577
                              (let ()
                                (declare (not safe))
                                (cons _exn97913_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp103577)))))))
    (define scheduler-exception?
      (lambda (_exn97909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97909_))
            (let ((_e97911_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97909_ 'exception))))
              (macro-scheduler-exception? _e97911_))
            (macro-scheduler-exception? _exn97909_))))
    (define scheduler-exception-reason
      (lambda (_exn97903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97903_))
            (let ((_e97906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97903_ 'exception))))
              (if (macro-scheduler-exception? _e97906_)
                  (macro-scheduler-exception-reason _e97906_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp103580
                                (let ()
                                  (declare (not safe))
                                  (cons _e97906_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp103580)))))
            (if (macro-scheduler-exception? _exn97903_)
                (macro-scheduler-exception-reason _exn97903_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp103579
                              (let ()
                                (declare (not safe))
                                (cons _exn97903_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp103579)))))))
    (define sfun-conversion-exception?
      (lambda (_exn97899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97899_))
            (let ((_e97901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97899_ 'exception))))
              (macro-sfun-conversion-exception? _e97901_))
            (macro-sfun-conversion-exception? _exn97899_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn97895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97895_))
            (let ((_e97897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97895_ 'exception))))
              (if (macro-sfun-conversion-exception? _e97897_)
                  (macro-sfun-conversion-exception-arguments _e97897_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp103582
                                (let ()
                                  (declare (not safe))
                                  (cons _e97897_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp103582)))))
            (if (macro-sfun-conversion-exception? _exn97895_)
                (macro-sfun-conversion-exception-arguments _exn97895_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp103581
                              (let ()
                                (declare (not safe))
                                (cons _exn97895_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp103581)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn97891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97891_))
            (let ((_e97893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97891_ 'exception))))
              (if (macro-sfun-conversion-exception? _e97893_)
                  (macro-sfun-conversion-exception-code _e97893_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp103584
                                (let ()
                                  (declare (not safe))
                                  (cons _e97893_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp103584)))))
            (if (macro-sfun-conversion-exception? _exn97891_)
                (macro-sfun-conversion-exception-code _exn97891_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp103583
                              (let ()
                                (declare (not safe))
                                (cons _exn97891_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp103583)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn97887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97887_))
            (let ((_e97889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97887_ 'exception))))
              (if (macro-sfun-conversion-exception? _e97889_)
                  (macro-sfun-conversion-exception-message _e97889_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp103586
                                (let ()
                                  (declare (not safe))
                                  (cons _e97889_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp103586)))))
            (if (macro-sfun-conversion-exception? _exn97887_)
                (macro-sfun-conversion-exception-message _exn97887_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp103585
                              (let ()
                                (declare (not safe))
                                (cons _exn97887_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp103585)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn97881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97881_))
            (let ((_e97884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97881_ 'exception))))
              (if (macro-sfun-conversion-exception? _e97884_)
                  (macro-sfun-conversion-exception-procedure _e97884_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp103588
                                (let ()
                                  (declare (not safe))
                                  (cons _e97884_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp103588)))))
            (if (macro-sfun-conversion-exception? _exn97881_)
                (macro-sfun-conversion-exception-procedure _exn97881_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp103587
                              (let ()
                                (declare (not safe))
                                (cons _exn97881_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp103587)))))))
    (define stack-overflow-exception?
      (lambda (_exn97875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97875_))
            (let ((_e97878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97875_ 'exception))))
              (macro-stack-overflow-exception? _e97878_))
            (macro-stack-overflow-exception? _exn97875_))))
    (define started-thread-exception?
      (lambda (_exn97871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97871_))
            (let ((_e97873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97871_ 'exception))))
              (macro-started-thread-exception? _e97873_))
            (macro-started-thread-exception? _exn97871_))))
    (define started-thread-exception-arguments
      (lambda (_exn97867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97867_))
            (let ((_e97869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97867_ 'exception))))
              (if (macro-started-thread-exception? _e97869_)
                  (macro-started-thread-exception-arguments _e97869_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp103590
                                (let ()
                                  (declare (not safe))
                                  (cons _e97869_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp103590)))))
            (if (macro-started-thread-exception? _exn97867_)
                (macro-started-thread-exception-arguments _exn97867_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp103589
                              (let ()
                                (declare (not safe))
                                (cons _exn97867_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp103589)))))))
    (define started-thread-exception-procedure
      (lambda (_exn97861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97861_))
            (let ((_e97864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97861_ 'exception))))
              (if (macro-started-thread-exception? _e97864_)
                  (macro-started-thread-exception-procedure _e97864_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp103592
                                (let ()
                                  (declare (not safe))
                                  (cons _e97864_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp103592)))))
            (if (macro-started-thread-exception? _exn97861_)
                (macro-started-thread-exception-procedure _exn97861_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp103591
                              (let ()
                                (declare (not safe))
                                (cons _exn97861_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp103591)))))))
    (define terminated-thread-exception?
      (lambda (_exn97857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97857_))
            (let ((_e97859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97857_ 'exception))))
              (macro-terminated-thread-exception? _e97859_))
            (macro-terminated-thread-exception? _exn97857_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn97853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97853_))
            (let ((_e97855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97853_ 'exception))))
              (if (macro-terminated-thread-exception? _e97855_)
                  (macro-terminated-thread-exception-arguments _e97855_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp103594
                                (let ()
                                  (declare (not safe))
                                  (cons _e97855_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp103594)))))
            (if (macro-terminated-thread-exception? _exn97853_)
                (macro-terminated-thread-exception-arguments _exn97853_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp103593
                              (let ()
                                (declare (not safe))
                                (cons _exn97853_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp103593)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn97847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97847_))
            (let ((_e97850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97847_ 'exception))))
              (if (macro-terminated-thread-exception? _e97850_)
                  (macro-terminated-thread-exception-procedure _e97850_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp103596
                                (let ()
                                  (declare (not safe))
                                  (cons _e97850_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp103596)))))
            (if (macro-terminated-thread-exception? _exn97847_)
                (macro-terminated-thread-exception-procedure _exn97847_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp103595
                              (let ()
                                (declare (not safe))
                                (cons _exn97847_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp103595)))))))
    (define type-exception?
      (lambda (_exn97843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97843_))
            (let ((_e97845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97843_ 'exception))))
              (macro-type-exception? _e97845_))
            (macro-type-exception? _exn97843_))))
    (define type-exception-arg-id
      (lambda (_exn97839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97839_))
            (let ((_e97841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97839_ 'exception))))
              (if (macro-type-exception? _e97841_)
                  (macro-type-exception-arg-id _e97841_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp103598
                                (let ()
                                  (declare (not safe))
                                  (cons _e97841_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp103598)))))
            (if (macro-type-exception? _exn97839_)
                (macro-type-exception-arg-id _exn97839_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp103597
                              (let ()
                                (declare (not safe))
                                (cons _exn97839_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp103597)))))))
    (define type-exception-arguments
      (lambda (_exn97835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97835_))
            (let ((_e97837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97835_ 'exception))))
              (if (macro-type-exception? _e97837_)
                  (macro-type-exception-arguments _e97837_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp103600
                                (let ()
                                  (declare (not safe))
                                  (cons _e97837_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp103600)))))
            (if (macro-type-exception? _exn97835_)
                (macro-type-exception-arguments _exn97835_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp103599
                              (let ()
                                (declare (not safe))
                                (cons _exn97835_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp103599)))))))
    (define type-exception-procedure
      (lambda (_exn97831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97831_))
            (let ((_e97833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97831_ 'exception))))
              (if (macro-type-exception? _e97833_)
                  (macro-type-exception-procedure _e97833_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp103602
                                (let ()
                                  (declare (not safe))
                                  (cons _e97833_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp103602)))))
            (if (macro-type-exception? _exn97831_)
                (macro-type-exception-procedure _exn97831_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp103601
                              (let ()
                                (declare (not safe))
                                (cons _exn97831_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp103601)))))))
    (define type-exception-type-id
      (lambda (_exn97825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97825_))
            (let ((_e97828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97825_ 'exception))))
              (if (macro-type-exception? _e97828_)
                  (macro-type-exception-type-id _e97828_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp103604
                                (let ()
                                  (declare (not safe))
                                  (cons _e97828_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp103604)))))
            (if (macro-type-exception? _exn97825_)
                (macro-type-exception-type-id _exn97825_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp103603
                              (let ()
                                (declare (not safe))
                                (cons _exn97825_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp103603)))))))
    (define unbound-global-exception?
      (lambda (_exn97821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97821_))
            (let ((_e97823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97821_ 'exception))))
              (macro-unbound-global-exception? _e97823_))
            (macro-unbound-global-exception? _exn97821_))))
    (define unbound-global-exception-code
      (lambda (_exn97817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97817_))
            (let ((_e97819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97817_ 'exception))))
              (if (macro-unbound-global-exception? _e97819_)
                  (macro-unbound-global-exception-code _e97819_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp103606
                                (let ()
                                  (declare (not safe))
                                  (cons _e97819_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code
                                 __tmp103606)))))
            (if (macro-unbound-global-exception? _exn97817_)
                (macro-unbound-global-exception-code _exn97817_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp103605
                              (let ()
                                (declare (not safe))
                                (cons _exn97817_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code
                               __tmp103605)))))))
    (define unbound-global-exception-rte
      (lambda (_exn97813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97813_))
            (let ((_e97815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97813_ 'exception))))
              (if (macro-unbound-global-exception? _e97815_)
                  (macro-unbound-global-exception-rte _e97815_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp103608
                                (let ()
                                  (declare (not safe))
                                  (cons _e97815_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp103608)))))
            (if (macro-unbound-global-exception? _exn97813_)
                (macro-unbound-global-exception-rte _exn97813_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp103607
                              (let ()
                                (declare (not safe))
                                (cons _exn97813_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp103607)))))))
    (define unbound-global-exception-variable
      (lambda (_exn97807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97807_))
            (let ((_e97810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97807_ 'exception))))
              (if (macro-unbound-global-exception? _e97810_)
                  (macro-unbound-global-exception-variable _e97810_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp103610
                                (let ()
                                  (declare (not safe))
                                  (cons _e97810_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp103610)))))
            (if (macro-unbound-global-exception? _exn97807_)
                (macro-unbound-global-exception-variable _exn97807_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp103609
                              (let ()
                                (declare (not safe))
                                (cons _exn97807_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp103609)))))))
    (define unbound-key-exception?
      (lambda (_exn97803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97803_))
            (let ((_e97805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97803_ 'exception))))
              (macro-unbound-key-exception? _e97805_))
            (macro-unbound-key-exception? _exn97803_))))
    (define unbound-key-exception-arguments
      (lambda (_exn97799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97799_))
            (let ((_e97801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97799_ 'exception))))
              (if (macro-unbound-key-exception? _e97801_)
                  (macro-unbound-key-exception-arguments _e97801_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp103612
                                (let ()
                                  (declare (not safe))
                                  (cons _e97801_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp103612)))))
            (if (macro-unbound-key-exception? _exn97799_)
                (macro-unbound-key-exception-arguments _exn97799_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp103611
                              (let ()
                                (declare (not safe))
                                (cons _exn97799_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp103611)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn97793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97793_))
            (let ((_e97796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97793_ 'exception))))
              (if (macro-unbound-key-exception? _e97796_)
                  (macro-unbound-key-exception-procedure _e97796_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp103614
                                (let ()
                                  (declare (not safe))
                                  (cons _e97796_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp103614)))))
            (if (macro-unbound-key-exception? _exn97793_)
                (macro-unbound-key-exception-procedure _exn97793_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp103613
                              (let ()
                                (declare (not safe))
                                (cons _exn97793_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp103613)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn97789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97789_))
            (let ((_e97791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97789_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e97791_))
            (macro-unbound-os-environment-variable-exception? _exn97789_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn97785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97785_))
            (let ((_e97787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97785_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e97787_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e97787_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp103616
                                (let ()
                                  (declare (not safe))
                                  (cons _e97787_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp103616)))))
            (if (macro-unbound-os-environment-variable-exception? _exn97785_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn97785_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp103615
                              (let ()
                                (declare (not safe))
                                (cons _exn97785_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp103615)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn97779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97779_))
            (let ((_e97782_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97779_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e97782_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e97782_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp103618
                                (let ()
                                  (declare (not safe))
                                  (cons _e97782_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp103618)))))
            (if (macro-unbound-os-environment-variable-exception? _exn97779_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn97779_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp103617
                              (let ()
                                (declare (not safe))
                                (cons _exn97779_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp103617)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn97775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97775_))
            (let ((_e97777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97775_ 'exception))))
              (macro-unbound-serial-number-exception? _e97777_))
            (macro-unbound-serial-number-exception? _exn97775_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn97771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97771_))
            (let ((_e97773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97771_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e97773_)
                  (macro-unbound-serial-number-exception-arguments _e97773_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp103620
                                (let ()
                                  (declare (not safe))
                                  (cons _e97773_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp103620)))))
            (if (macro-unbound-serial-number-exception? _exn97771_)
                (macro-unbound-serial-number-exception-arguments _exn97771_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp103619
                              (let ()
                                (declare (not safe))
                                (cons _exn97771_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp103619)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn97765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97765_))
            (let ((_e97768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97765_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e97768_)
                  (macro-unbound-serial-number-exception-procedure _e97768_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp103622
                                (let ()
                                  (declare (not safe))
                                  (cons _e97768_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp103622)))))
            (if (macro-unbound-serial-number-exception? _exn97765_)
                (macro-unbound-serial-number-exception-procedure _exn97765_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp103621
                              (let ()
                                (declare (not safe))
                                (cons _exn97765_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp103621)))))))
    (define uncaught-exception?
      (lambda (_exn97761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97761_))
            (let ((_e97763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97761_ 'exception))))
              (macro-uncaught-exception? _e97763_))
            (macro-uncaught-exception? _exn97761_))))
    (define uncaught-exception-arguments
      (lambda (_exn97757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97757_))
            (let ((_e97759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97757_ 'exception))))
              (if (macro-uncaught-exception? _e97759_)
                  (macro-uncaught-exception-arguments _e97759_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp103624
                                (let ()
                                  (declare (not safe))
                                  (cons _e97759_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp103624)))))
            (if (macro-uncaught-exception? _exn97757_)
                (macro-uncaught-exception-arguments _exn97757_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp103623
                              (let ()
                                (declare (not safe))
                                (cons _exn97757_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp103623)))))))
    (define uncaught-exception-procedure
      (lambda (_exn97753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97753_))
            (let ((_e97755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97753_ 'exception))))
              (if (macro-uncaught-exception? _e97755_)
                  (macro-uncaught-exception-procedure _e97755_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp103626
                                (let ()
                                  (declare (not safe))
                                  (cons _e97755_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp103626)))))
            (if (macro-uncaught-exception? _exn97753_)
                (macro-uncaught-exception-procedure _exn97753_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp103625
                              (let ()
                                (declare (not safe))
                                (cons _exn97753_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp103625)))))))
    (define uncaught-exception-reason
      (lambda (_exn97747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97747_))
            (let ((_e97750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97747_ 'exception))))
              (if (macro-uncaught-exception? _e97750_)
                  (macro-uncaught-exception-reason _e97750_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp103628
                                (let ()
                                  (declare (not safe))
                                  (cons _e97750_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp103628)))))
            (if (macro-uncaught-exception? _exn97747_)
                (macro-uncaught-exception-reason _exn97747_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp103627
                              (let ()
                                (declare (not safe))
                                (cons _exn97747_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp103627)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn97743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97743_))
            (let ((_e97745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97743_ 'exception))))
              (macro-uninitialized-thread-exception? _e97745_))
            (macro-uninitialized-thread-exception? _exn97743_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn97739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97739_))
            (let ((_e97741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97739_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e97741_)
                  (macro-uninitialized-thread-exception-arguments _e97741_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp103630
                                (let ()
                                  (declare (not safe))
                                  (cons _e97741_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp103630)))))
            (if (macro-uninitialized-thread-exception? _exn97739_)
                (macro-uninitialized-thread-exception-arguments _exn97739_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp103629
                              (let ()
                                (declare (not safe))
                                (cons _exn97739_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp103629)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn97733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97733_))
            (let ((_e97736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97733_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e97736_)
                  (macro-uninitialized-thread-exception-procedure _e97736_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp103632
                                (let ()
                                  (declare (not safe))
                                  (cons _e97736_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp103632)))))
            (if (macro-uninitialized-thread-exception? _exn97733_)
                (macro-uninitialized-thread-exception-procedure _exn97733_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp103631
                              (let ()
                                (declare (not safe))
                                (cons _exn97733_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp103631)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn97729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97729_))
            (let ((_e97731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97729_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e97731_))
            (macro-unknown-keyword-argument-exception? _exn97729_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn97725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97725_))
            (let ((_e97727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97725_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e97727_)
                  (macro-unknown-keyword-argument-exception-arguments _e97727_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp103634
                                (let ()
                                  (declare (not safe))
                                  (cons _e97727_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp103634)))))
            (if (macro-unknown-keyword-argument-exception? _exn97725_)
                (macro-unknown-keyword-argument-exception-arguments _exn97725_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp103633
                              (let ()
                                (declare (not safe))
                                (cons _exn97725_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp103633)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn97719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97719_))
            (let ((_e97722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97719_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e97722_)
                  (macro-unknown-keyword-argument-exception-procedure _e97722_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp103636
                                (let ()
                                  (declare (not safe))
                                  (cons _e97722_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp103636)))))
            (if (macro-unknown-keyword-argument-exception? _exn97719_)
                (macro-unknown-keyword-argument-exception-procedure _exn97719_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp103635
                              (let ()
                                (declare (not safe))
                                (cons _exn97719_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp103635)))))))
    (define unterminated-process-exception?
      (lambda (_exn97715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97715_))
            (let ((_e97717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97715_ 'exception))))
              (macro-unterminated-process-exception? _e97717_))
            (macro-unterminated-process-exception? _exn97715_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn97711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97711_))
            (let ((_e97713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97711_ 'exception))))
              (if (macro-unterminated-process-exception? _e97713_)
                  (macro-unterminated-process-exception-arguments _e97713_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp103638
                                (let ()
                                  (declare (not safe))
                                  (cons _e97713_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp103638)))))
            (if (macro-unterminated-process-exception? _exn97711_)
                (macro-unterminated-process-exception-arguments _exn97711_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp103637
                              (let ()
                                (declare (not safe))
                                (cons _exn97711_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp103637)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn97705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97705_))
            (let ((_e97708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97705_ 'exception))))
              (if (macro-unterminated-process-exception? _e97708_)
                  (macro-unterminated-process-exception-procedure _e97708_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp103640
                                (let ()
                                  (declare (not safe))
                                  (cons _e97708_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp103640)))))
            (if (macro-unterminated-process-exception? _exn97705_)
                (macro-unterminated-process-exception-procedure _exn97705_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp103639
                              (let ()
                                (declare (not safe))
                                (cons _exn97705_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp103639)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn97701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97701_))
            (let ((_e97703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97701_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e97703_))
            (macro-wrong-number-of-arguments-exception? _exn97701_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn97697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97697_))
            (let ((_e97699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97697_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e97699_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e97699_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp103642
                                (let ()
                                  (declare (not safe))
                                  (cons _e97699_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp103642)))))
            (if (macro-wrong-number-of-arguments-exception? _exn97697_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn97697_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp103641
                              (let ()
                                (declare (not safe))
                                (cons _exn97697_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp103641)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn97691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97691_))
            (let ((_e97694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97691_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e97694_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e97694_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp103644
                                (let ()
                                  (declare (not safe))
                                  (cons _e97694_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp103644)))))
            (if (macro-wrong-number-of-arguments-exception? _exn97691_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn97691_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp103643
                              (let ()
                                (declare (not safe))
                                (cons _exn97691_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp103643)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn97687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97687_))
            (let ((_e97689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97687_ 'exception))))
              (macro-wrong-number-of-values-exception? _e97689_))
            (macro-wrong-number-of-values-exception? _exn97687_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn97683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97683_))
            (let ((_e97685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97683_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e97685_)
                  (macro-wrong-number-of-values-exception-code _e97685_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp103646
                                (let ()
                                  (declare (not safe))
                                  (cons _e97685_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp103646)))))
            (if (macro-wrong-number-of-values-exception? _exn97683_)
                (macro-wrong-number-of-values-exception-code _exn97683_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp103645
                              (let ()
                                (declare (not safe))
                                (cons _exn97683_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp103645)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn97679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97679_))
            (let ((_e97681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97679_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e97681_)
                  (macro-wrong-number-of-values-exception-rte _e97681_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp103648
                                (let ()
                                  (declare (not safe))
                                  (cons _e97681_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp103648)))))
            (if (macro-wrong-number-of-values-exception? _exn97679_)
                (macro-wrong-number-of-values-exception-rte _exn97679_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp103647
                              (let ()
                                (declare (not safe))
                                (cons _exn97679_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp103647)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn97673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97673_))
            (let ((_e97676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97673_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e97676_)
                  (macro-wrong-number-of-values-exception-vals _e97676_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp103650
                                (let ()
                                  (declare (not safe))
                                  (cons _e97676_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp103650)))))
            (if (macro-wrong-number-of-values-exception? _exn97673_)
                (macro-wrong-number-of-values-exception-vals _exn97673_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp103649
                              (let ()
                                (declare (not safe))
                                (cons _exn97673_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp103649)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn97667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn97667_))
            (let ((_e97670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn97667_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e97670_))
            (macro-wrong-processor-c-return-exception? _exn97667_))))))
