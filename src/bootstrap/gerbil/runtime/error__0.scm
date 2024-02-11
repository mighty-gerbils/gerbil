(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707620169)
  (begin
    (define Exception::t
      (let ((__tmp95372 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95372
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90875_
        (apply make-class-instance Exception::t _$args90875_)))
    (define StackTrace::t
      (let ((__tmp95373 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95373
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90872_
        (apply make-class-instance StackTrace::t _$args90872_)))
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
      (let ((__tmp95374 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95374
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90869_ (apply make-class-instance Error::t _$args90869_)))
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
      (let ((__tmp95375 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95375
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90866_
        (apply make-class-instance RuntimeException::t _$args90866_)))
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
      (lambda (_exn90861_ _continue90862_)
        (let ((_exn90864_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90861_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90864_ _continue90862_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90857_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90857_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90857_ 'continuation))
                '#!void
                (let ((__tmp95376
                       (lambda (_cont90859_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90857_
                            'continuation
                            _cont90859_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95376)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90857_))))
    (define error
      (lambda (_message90854_ . _irritants90855_)
        (raise (let ((__obj95366
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95366
                  _message90854_
                  'irritants:
                  _irritants90855_)
                 __obj95366))))
    (define with-exception-handler
      (lambda (_handler90847_ _thunk90848_)
        (if (let () (declare (not safe)) (procedure? _handler90847_))
            '#!void
            (raise (let ((__obj95367
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95367
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90847_ '())))
                     __obj95367)))
        (if (let () (declare (not safe)) (procedure? _thunk90848_))
            '#!void
            (raise (let ((__obj95368
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95368
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90848_ '())))
                     __obj95368)))
        (let ((__tmp95377
               (lambda (_exn90850_)
                 (let ((_exn90852_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90850_))))
                   (_handler90847_ _exn90852_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95377 _thunk90848_))))
    (define with-catch
      (lambda (_handler90840_ _thunk90841_)
        (if (let () (declare (not safe)) (procedure? _handler90840_))
            '#!void
            (raise (let ((__obj95369
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95369
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90840_ '())))
                     __obj95369)))
        (if (let () (declare (not safe)) (procedure? _thunk90841_))
            '#!void
            (raise (let ((__obj95370
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95370
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90841_ '())))
                     __obj95370)))
        (let ((__tmp95378
               (lambda (_cont90843_)
                 (with-exception-handler
                  (lambda (_exn90845_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90843_
                       _handler90840_
                       _exn90845_)))
                  _thunk90841_))))
          (declare (not safe))
          (##continuation-capture __tmp95378))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90831_)
        (if (or (heap-overflow-exception? _exn90831_)
                (stack-overflow-exception? _exn90831_))
            _exn90831_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90831_))
                _exn90831_
                (if (macro-exception? _exn90831_)
                    (let ((_rte90836_
                           (let ((__obj95371
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95371
                                _exn90831_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95371)))
                      (let ((__tmp95379
                             (lambda (_cont90838_)
                               (let ((__tmp95380
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90838_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90836_
                                  'continuation
                                  __tmp95380)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95379))
                      _rte90836_)
                    _exn90831_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90826_)
        (let ((_$e90828_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90826_))))
          (if _$e90828_ _$e90828_ (error-exception? _obj90826_)))))
    (define error-message
      (lambda (_obj90824_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90824_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90824_ 'message))
            (if (error-exception? _obj90824_)
                (error-exception-message _obj90824_)
                '#f))))
    (define error-irritants
      (lambda (_obj90822_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90822_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90822_ 'irritants))
            (if (error-exception? _obj90822_)
                (error-exception-parameters _obj90822_)
                '#f))))
    (define error-trace
      (lambda (_obj90820_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90820_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90820_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90802_ _port90803_)
        (let ((_$e90805_
               (let ()
                 (declare (not safe))
                 (method-ref _e90802_ 'display-exception))))
          (if _$e90805_
              ((lambda (_f90808_) (_f90808_ _e90802_ _port90803_)) _$e90805_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90802_ _port90803_))))))
    (define display-exception__0
      (lambda (_e90813_)
        (let ((_port90815_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90813_ _port90815_))))
    (define display-exception
      (lambda _g95382_
        (let ((_g95381_ (let () (declare (not safe)) (##length _g95382_))))
          (cond ((let () (declare (not safe)) (##fx= _g95381_ 1))
                 (apply (lambda (_e90813_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90813_)))
                        _g95382_))
                ((let () (declare (not safe)) (##fx= _g95381_ 2))
                 (apply (lambda (_e90817_ _port90818_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90817_ _port90818_)))
                        _g95382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95382_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90791_ _message90792_ . _rest90793_)
        (let ((_message90799_
               (if (let () (declare (not safe)) (string? _message90792_))
                   _message90792_
                   (call-with-output-string
                    '""
                    (lambda (_g9079490796_)
                      (display _message90792_ _g9079490796_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90791_ 'message _message90799_))
          (apply class-instance-init! _self90791_ _rest90793_))))
    (define Error:::init!::specialize
      (lambda (__t95345)
        (let ((__message95346
               (let ((__tmp95347
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95345 'message))))
                 (if __tmp95347 __tmp95347 (error '"Unknown slot" 'message)))))
          (lambda (_self90791_ _message90792_ . _rest90793_)
            (let ((_message90799_
                   (if (let () (declare (not safe)) (string? _message90792_))
                       _message90792_
                       (call-with-output-string
                        '""
                        (lambda (_g9079490796_)
                          (display _message90792_ _g9079490796_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90791_
                 _message90799_
                 __message95346
                 __t95345
                 '#f))
              (apply class-instance-init! _self90791_ _rest90793_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90649_ _port90650_)
        (let ((_tmp-port90652_ (open-output-string))
              (_display-error-newline90653_
               (> (output-port-column _port90650_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90652_))
          (let ((__tmp95383
                 (lambda ()
                   (if _display-error-newline90653_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90656_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90649_ 'where))))
                     (if _$e90656_ (display _$e90656_) (display '"?")))
                   (let ((__tmp95384
                          (let ((__tmp95385
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90649_))))
                            (declare (not safe))
                            (##type-name __tmp95385))))
                     (declare (not safe))
                     (display* '" [" __tmp95384 '"]: "))
                   (let ((__tmp95386
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90649_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95386))
                   (let ((_irritants90659_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90649_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90659_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90661_)
                              (write _obj90661_)
                              (write-char '#\space))
                            _irritants90659_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90649_))
                            (dump-stack-trace?))
                       (let ((_cont9066290664_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90649_
                                 'continuation))))
                         (if _cont9066290664_
                             (let ((_cont90667_ _cont9066290664_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90667_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95383
             current-output-port
             _tmp-port90652_))
          (let ((__tmp95387 (get-output-string _tmp-port90652_)))
            (declare (not safe))
            (##write-string __tmp95387 _port90650_)))))
    (define Error::display-exception::specialize
      (lambda (__t95348)
        (let ((__where95349
               (let ((__tmp95353
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95348 'where))))
                 (if __tmp95353 __tmp95353 (error '"Unknown slot" 'where))))
              (__message95350
               (let ((__tmp95354
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95348 'message))))
                 (if __tmp95354 __tmp95354 (error '"Unknown slot" 'message))))
              (__irritants95351
               (let ((__tmp95355
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95348 'irritants))))
                 (if __tmp95355
                     __tmp95355
                     (error '"Unknown slot" 'irritants))))
              (__continuation95352
               (let ((__tmp95356
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95348 'continuation))))
                 (if __tmp95356
                     __tmp95356
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90649_ _port90650_)
            (let ((_tmp-port90652_ (open-output-string))
                  (_display-error-newline90653_
                   (> (output-port-column _port90650_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90652_))
              (let ((__tmp95388
                     (lambda ()
                       (if _display-error-newline90653_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90656_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90649_
                                 __where95349
                                 __t95348
                                 '#f))))
                         (if _$e90656_ (display _$e90656_) (display '"?")))
                       (let ((__tmp95389
                              (let ((__tmp95390
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90649_))))
                                (declare (not safe))
                                (##type-name __tmp95390))))
                         (declare (not safe))
                         (display* '" [" __tmp95389 '"]: "))
                       (let ((__tmp95391
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90649_
                                 __message95350
                                 __t95348
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95391))
                       (let ((_irritants90659_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90649_
                                 __irritants95351
                                 __t95348
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90659_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90661_)
                                  (write _obj90661_)
                                  (write-char '#\space))
                                _irritants90659_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90649_))
                                (dump-stack-trace?))
                           (let ((_cont9066290664_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90649_
                                     __continuation95352
                                     __t95348
                                     '#f))))
                             (if _cont9066290664_
                                 (let ((_cont90667_ _cont9066290664_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90667_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95388
                 current-output-port
                 _tmp-port90652_))
              (let ((__tmp95392 (get-output-string _tmp-port90652_)))
                (declare (not safe))
                (##write-string __tmp95392 _port90650_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90516_ _port90517_)
        (let ((_tmp-port90519_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90519_))
          (let ((__tmp95393
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90516_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95393 _tmp-port90519_))
          (if (dump-stack-trace?)
              (let ((_cont9052090522_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90516_ 'continuation))))
                (if _cont9052090522_
                    (let ((_cont90525_ _cont9052090522_))
                      (display '"--- continuation backtrace:" _tmp-port90519_)
                      (newline _tmp-port90519_)
                      (display-continuation-backtrace
                       _cont90525_
                       _tmp-port90519_))
                    '#f))
              '#!void)
          (let ((__tmp95394 (get-output-string _tmp-port90519_)))
            (declare (not safe))
            (##write-string __tmp95394 _port90517_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95357)
        (let ((__continuation95358
               (let ((__tmp95360
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95357 'continuation))))
                 (if __tmp95360
                     __tmp95360
                     (error '"Unknown slot" 'continuation))))
              (__exception95359
               (let ((__tmp95361
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95357 'exception))))
                 (if __tmp95361
                     __tmp95361
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self90516_ _port90517_)
            (let ((_tmp-port90519_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90519_))
              (let ((__tmp95395
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90516_
                        __exception95359
                        __t95357
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95395 _tmp-port90519_))
              (if (dump-stack-trace?)
                  (let ((_cont9052090522_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90516_
                            __continuation95358
                            __t95357
                            '#f))))
                    (if _cont9052090522_
                        (let ((_cont90525_ _cont9052090522_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90519_)
                          (newline _tmp-port90519_)
                          (display-continuation-backtrace
                           _cont90525_
                           _tmp-port90519_))
                        '#f))
                  '#!void)
              (let ((__tmp95396 (get-output-string _tmp-port90519_)))
                (declare (not safe))
                (##write-string __tmp95396 _port90517_)))))))
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
      (lambda (_port90388_)
        (if (macro-character-port? _port90388_)
            (let ((_old-width90390_
                   (macro-character-port-output-width _port90388_)))
              (macro-character-port-output-width-set!
               _port90388_
               (lambda (_port90392_) '256))
              _old-width90390_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90385_ _old-width90386_)
        (if (macro-character-port? _port90385_)
            (macro-character-port-output-width-set!
             _port90385_
             _old-width90386_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90383_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90383_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90377_))
            (let ((_e90380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90377_ 'exception))))
              (macro-abandoned-mutex-exception? _e90380_))
            (macro-abandoned-mutex-exception? _exn90377_))))
    (define cfun-conversion-exception?
      (lambda (_exn90373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90373_))
            (let ((_e90375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90373_ 'exception))))
              (macro-cfun-conversion-exception? _e90375_))
            (macro-cfun-conversion-exception? _exn90373_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90369_))
            (let ((_e90371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90369_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90371_)
                  (macro-cfun-conversion-exception-arguments _e90371_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95398
                                (let ()
                                  (declare (not safe))
                                  (cons _e90371_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95398)))))
            (if (macro-cfun-conversion-exception? _exn90369_)
                (macro-cfun-conversion-exception-arguments _exn90369_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95397
                              (let ()
                                (declare (not safe))
                                (cons _exn90369_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95397)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90365_))
            (let ((_e90367_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90365_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90367_)
                  (macro-cfun-conversion-exception-code _e90367_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95400
                                (let ()
                                  (declare (not safe))
                                  (cons _e90367_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95400)))))
            (if (macro-cfun-conversion-exception? _exn90365_)
                (macro-cfun-conversion-exception-code _exn90365_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95399
                              (let ()
                                (declare (not safe))
                                (cons _exn90365_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95399)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90361_))
            (let ((_e90363_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90361_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90363_)
                  (macro-cfun-conversion-exception-message _e90363_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95402
                                (let ()
                                  (declare (not safe))
                                  (cons _e90363_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95402)))))
            (if (macro-cfun-conversion-exception? _exn90361_)
                (macro-cfun-conversion-exception-message _exn90361_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95401
                              (let ()
                                (declare (not safe))
                                (cons _exn90361_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95401)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90355_))
            (let ((_e90358_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90355_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90358_)
                  (macro-cfun-conversion-exception-procedure _e90358_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95404
                                (let ()
                                  (declare (not safe))
                                  (cons _e90358_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95404)))))
            (if (macro-cfun-conversion-exception? _exn90355_)
                (macro-cfun-conversion-exception-procedure _exn90355_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95403
                              (let ()
                                (declare (not safe))
                                (cons _exn90355_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95403)))))))
    (define datum-parsing-exception?
      (lambda (_exn90351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90351_))
            (let ((_e90353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90351_ 'exception))))
              (macro-datum-parsing-exception? _e90353_))
            (macro-datum-parsing-exception? _exn90351_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90347_))
            (let ((_e90349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90347_ 'exception))))
              (if (macro-datum-parsing-exception? _e90349_)
                  (macro-datum-parsing-exception-kind _e90349_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95406
                                (let ()
                                  (declare (not safe))
                                  (cons _e90349_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95406)))))
            (if (macro-datum-parsing-exception? _exn90347_)
                (macro-datum-parsing-exception-kind _exn90347_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95405
                              (let ()
                                (declare (not safe))
                                (cons _exn90347_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95405)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90343_))
            (let ((_e90345_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90343_ 'exception))))
              (if (macro-datum-parsing-exception? _e90345_)
                  (macro-datum-parsing-exception-parameters _e90345_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95408
                                (let ()
                                  (declare (not safe))
                                  (cons _e90345_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95408)))))
            (if (macro-datum-parsing-exception? _exn90343_)
                (macro-datum-parsing-exception-parameters _exn90343_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95407
                              (let ()
                                (declare (not safe))
                                (cons _exn90343_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95407)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90337_))
            (let ((_e90340_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90337_ 'exception))))
              (if (macro-datum-parsing-exception? _e90340_)
                  (macro-datum-parsing-exception-readenv _e90340_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95410
                                (let ()
                                  (declare (not safe))
                                  (cons _e90340_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95410)))))
            (if (macro-datum-parsing-exception? _exn90337_)
                (macro-datum-parsing-exception-readenv _exn90337_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95409
                              (let ()
                                (declare (not safe))
                                (cons _exn90337_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95409)))))))
    (define deadlock-exception?
      (lambda (_exn90331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90331_))
            (let ((_e90334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90331_ 'exception))))
              (macro-deadlock-exception? _e90334_))
            (macro-deadlock-exception? _exn90331_))))
    (define divide-by-zero-exception?
      (lambda (_exn90327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90327_))
            (let ((_e90329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90327_ 'exception))))
              (macro-divide-by-zero-exception? _e90329_))
            (macro-divide-by-zero-exception? _exn90327_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90323_))
            (let ((_e90325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90323_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90325_)
                  (macro-divide-by-zero-exception-arguments _e90325_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95412
                                (let ()
                                  (declare (not safe))
                                  (cons _e90325_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95412)))))
            (if (macro-divide-by-zero-exception? _exn90323_)
                (macro-divide-by-zero-exception-arguments _exn90323_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95411
                              (let ()
                                (declare (not safe))
                                (cons _exn90323_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95411)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90317_))
            (let ((_e90320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90317_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90320_)
                  (macro-divide-by-zero-exception-procedure _e90320_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95414
                                (let ()
                                  (declare (not safe))
                                  (cons _e90320_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95414)))))
            (if (macro-divide-by-zero-exception? _exn90317_)
                (macro-divide-by-zero-exception-procedure _exn90317_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95413
                              (let ()
                                (declare (not safe))
                                (cons _exn90317_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95413)))))))
    (define error-exception?
      (lambda (_exn90313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90313_))
            (let ((_e90315_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90313_ 'exception))))
              (macro-error-exception? _e90315_))
            (macro-error-exception? _exn90313_))))
    (define error-exception-message
      (lambda (_exn90309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90309_))
            (let ((_e90311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90309_ 'exception))))
              (if (macro-error-exception? _e90311_)
                  (macro-error-exception-message _e90311_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95416
                                (let ()
                                  (declare (not safe))
                                  (cons _e90311_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95416)))))
            (if (macro-error-exception? _exn90309_)
                (macro-error-exception-message _exn90309_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95415
                              (let ()
                                (declare (not safe))
                                (cons _exn90309_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95415)))))))
    (define error-exception-parameters
      (lambda (_exn90303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90303_))
            (let ((_e90306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90303_ 'exception))))
              (if (macro-error-exception? _e90306_)
                  (macro-error-exception-parameters _e90306_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95418
                                (let ()
                                  (declare (not safe))
                                  (cons _e90306_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95418)))))
            (if (macro-error-exception? _exn90303_)
                (macro-error-exception-parameters _exn90303_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95417
                              (let ()
                                (declare (not safe))
                                (cons _exn90303_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95417)))))))
    (define expression-parsing-exception?
      (lambda (_exn90299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90299_))
            (let ((_e90301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90299_ 'exception))))
              (macro-expression-parsing-exception? _e90301_))
            (macro-expression-parsing-exception? _exn90299_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90295_))
            (let ((_e90297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90295_ 'exception))))
              (if (macro-expression-parsing-exception? _e90297_)
                  (macro-expression-parsing-exception-kind _e90297_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95420
                                (let ()
                                  (declare (not safe))
                                  (cons _e90297_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95420)))))
            (if (macro-expression-parsing-exception? _exn90295_)
                (macro-expression-parsing-exception-kind _exn90295_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95419
                              (let ()
                                (declare (not safe))
                                (cons _exn90295_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95419)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90291_))
            (let ((_e90293_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90291_ 'exception))))
              (if (macro-expression-parsing-exception? _e90293_)
                  (macro-expression-parsing-exception-parameters _e90293_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95422
                                (let ()
                                  (declare (not safe))
                                  (cons _e90293_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95422)))))
            (if (macro-expression-parsing-exception? _exn90291_)
                (macro-expression-parsing-exception-parameters _exn90291_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95421
                              (let ()
                                (declare (not safe))
                                (cons _exn90291_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95421)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90285_))
            (let ((_e90288_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90285_ 'exception))))
              (if (macro-expression-parsing-exception? _e90288_)
                  (macro-expression-parsing-exception-source _e90288_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95424
                                (let ()
                                  (declare (not safe))
                                  (cons _e90288_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95424)))))
            (if (macro-expression-parsing-exception? _exn90285_)
                (macro-expression-parsing-exception-source _exn90285_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95423
                              (let ()
                                (declare (not safe))
                                (cons _exn90285_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95423)))))))
    (define file-exists-exception?
      (lambda (_exn90281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90281_))
            (let ((_e90283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90281_ 'exception))))
              (macro-file-exists-exception? _e90283_))
            (macro-file-exists-exception? _exn90281_))))
    (define file-exists-exception-arguments
      (lambda (_exn90277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90277_))
            (let ((_e90279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90277_ 'exception))))
              (if (macro-file-exists-exception? _e90279_)
                  (macro-file-exists-exception-arguments _e90279_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95426
                                (let ()
                                  (declare (not safe))
                                  (cons _e90279_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95426)))))
            (if (macro-file-exists-exception? _exn90277_)
                (macro-file-exists-exception-arguments _exn90277_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95425
                              (let ()
                                (declare (not safe))
                                (cons _exn90277_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95425)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90271_))
            (let ((_e90274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90271_ 'exception))))
              (if (macro-file-exists-exception? _e90274_)
                  (macro-file-exists-exception-procedure _e90274_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95428
                                (let ()
                                  (declare (not safe))
                                  (cons _e90274_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95428)))))
            (if (macro-file-exists-exception? _exn90271_)
                (macro-file-exists-exception-procedure _exn90271_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95427
                              (let ()
                                (declare (not safe))
                                (cons _exn90271_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95427)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90267_))
            (let ((_e90269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90267_ 'exception))))
              (macro-fixnum-overflow-exception? _e90269_))
            (macro-fixnum-overflow-exception? _exn90267_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90263_))
            (let ((_e90265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90263_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90265_)
                  (macro-fixnum-overflow-exception-arguments _e90265_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95430
                                (let ()
                                  (declare (not safe))
                                  (cons _e90265_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95430)))))
            (if (macro-fixnum-overflow-exception? _exn90263_)
                (macro-fixnum-overflow-exception-arguments _exn90263_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95429
                              (let ()
                                (declare (not safe))
                                (cons _exn90263_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95429)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90257_))
            (let ((_e90260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90257_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90260_)
                  (macro-fixnum-overflow-exception-procedure _e90260_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95432
                                (let ()
                                  (declare (not safe))
                                  (cons _e90260_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95432)))))
            (if (macro-fixnum-overflow-exception? _exn90257_)
                (macro-fixnum-overflow-exception-procedure _exn90257_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95431
                              (let ()
                                (declare (not safe))
                                (cons _exn90257_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95431)))))))
    (define heap-overflow-exception?
      (lambda (_exn90251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90251_))
            (let ((_e90254_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90251_ 'exception))))
              (macro-heap-overflow-exception? _e90254_))
            (macro-heap-overflow-exception? _exn90251_))))
    (define inactive-thread-exception?
      (lambda (_exn90247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90247_))
            (let ((_e90249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90247_ 'exception))))
              (macro-inactive-thread-exception? _e90249_))
            (macro-inactive-thread-exception? _exn90247_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90243_))
            (let ((_e90245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90243_ 'exception))))
              (if (macro-inactive-thread-exception? _e90245_)
                  (macro-inactive-thread-exception-arguments _e90245_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95434
                                (let ()
                                  (declare (not safe))
                                  (cons _e90245_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95434)))))
            (if (macro-inactive-thread-exception? _exn90243_)
                (macro-inactive-thread-exception-arguments _exn90243_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95433
                              (let ()
                                (declare (not safe))
                                (cons _exn90243_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95433)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90237_))
            (let ((_e90240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90237_ 'exception))))
              (if (macro-inactive-thread-exception? _e90240_)
                  (macro-inactive-thread-exception-procedure _e90240_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95436
                                (let ()
                                  (declare (not safe))
                                  (cons _e90240_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95436)))))
            (if (macro-inactive-thread-exception? _exn90237_)
                (macro-inactive-thread-exception-procedure _exn90237_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95435
                              (let ()
                                (declare (not safe))
                                (cons _exn90237_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95435)))))))
    (define initialized-thread-exception?
      (lambda (_exn90233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90233_))
            (let ((_e90235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90233_ 'exception))))
              (macro-initialized-thread-exception? _e90235_))
            (macro-initialized-thread-exception? _exn90233_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90229_))
            (let ((_e90231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90229_ 'exception))))
              (if (macro-initialized-thread-exception? _e90231_)
                  (macro-initialized-thread-exception-arguments _e90231_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95438
                                (let ()
                                  (declare (not safe))
                                  (cons _e90231_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95438)))))
            (if (macro-initialized-thread-exception? _exn90229_)
                (macro-initialized-thread-exception-arguments _exn90229_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95437
                              (let ()
                                (declare (not safe))
                                (cons _exn90229_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95437)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90223_))
            (let ((_e90226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90223_ 'exception))))
              (if (macro-initialized-thread-exception? _e90226_)
                  (macro-initialized-thread-exception-procedure _e90226_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95440
                                (let ()
                                  (declare (not safe))
                                  (cons _e90226_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95440)))))
            (if (macro-initialized-thread-exception? _exn90223_)
                (macro-initialized-thread-exception-procedure _exn90223_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95439
                              (let ()
                                (declare (not safe))
                                (cons _exn90223_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95439)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90219_))
            (let ((_e90221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90219_ 'exception))))
              (macro-invalid-hash-number-exception? _e90221_))
            (macro-invalid-hash-number-exception? _exn90219_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90215_))
            (let ((_e90217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90215_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90217_)
                  (macro-invalid-hash-number-exception-arguments _e90217_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95442
                                (let ()
                                  (declare (not safe))
                                  (cons _e90217_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95442)))))
            (if (macro-invalid-hash-number-exception? _exn90215_)
                (macro-invalid-hash-number-exception-arguments _exn90215_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95441
                              (let ()
                                (declare (not safe))
                                (cons _exn90215_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95441)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90209_))
            (let ((_e90212_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90209_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90212_)
                  (macro-invalid-hash-number-exception-procedure _e90212_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95444
                                (let ()
                                  (declare (not safe))
                                  (cons _e90212_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95444)))))
            (if (macro-invalid-hash-number-exception? _exn90209_)
                (macro-invalid-hash-number-exception-procedure _exn90209_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95443
                              (let ()
                                (declare (not safe))
                                (cons _exn90209_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95443)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90205_))
            (let ((_e90207_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90205_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90207_))
            (macro-invalid-utf8-encoding-exception? _exn90205_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90201_))
            (let ((_e90203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90201_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90203_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90203_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95446
                                (let ()
                                  (declare (not safe))
                                  (cons _e90203_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95446)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90201_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90201_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95445
                              (let ()
                                (declare (not safe))
                                (cons _exn90201_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95445)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90195_))
            (let ((_e90198_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90195_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90198_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90198_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95448
                                (let ()
                                  (declare (not safe))
                                  (cons _e90198_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95448)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90195_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90195_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95447
                              (let ()
                                (declare (not safe))
                                (cons _exn90195_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95447)))))))
    (define join-timeout-exception?
      (lambda (_exn90191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90191_))
            (let ((_e90193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90191_ 'exception))))
              (macro-join-timeout-exception? _e90193_))
            (macro-join-timeout-exception? _exn90191_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90187_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90187_ 'exception))))
              (if (macro-join-timeout-exception? _e90189_)
                  (macro-join-timeout-exception-arguments _e90189_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95450
                                (let ()
                                  (declare (not safe))
                                  (cons _e90189_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95450)))))
            (if (macro-join-timeout-exception? _exn90187_)
                (macro-join-timeout-exception-arguments _exn90187_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95449
                              (let ()
                                (declare (not safe))
                                (cons _exn90187_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95449)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90181_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90181_ 'exception))))
              (if (macro-join-timeout-exception? _e90184_)
                  (macro-join-timeout-exception-procedure _e90184_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95452
                                (let ()
                                  (declare (not safe))
                                  (cons _e90184_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95452)))))
            (if (macro-join-timeout-exception? _exn90181_)
                (macro-join-timeout-exception-procedure _exn90181_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95451
                              (let ()
                                (declare (not safe))
                                (cons _exn90181_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95451)))))))
    (define keyword-expected-exception?
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (macro-keyword-expected-exception? _e90179_))
            (macro-keyword-expected-exception? _exn90177_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90173_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90173_ 'exception))))
              (if (macro-keyword-expected-exception? _e90175_)
                  (macro-keyword-expected-exception-arguments _e90175_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95454
                                (let ()
                                  (declare (not safe))
                                  (cons _e90175_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95454)))))
            (if (macro-keyword-expected-exception? _exn90173_)
                (macro-keyword-expected-exception-arguments _exn90173_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95453
                              (let ()
                                (declare (not safe))
                                (cons _exn90173_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95453)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90167_))
            (let ((_e90170_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90167_ 'exception))))
              (if (macro-keyword-expected-exception? _e90170_)
                  (macro-keyword-expected-exception-procedure _e90170_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95456
                                (let ()
                                  (declare (not safe))
                                  (cons _e90170_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95456)))))
            (if (macro-keyword-expected-exception? _exn90167_)
                (macro-keyword-expected-exception-procedure _exn90167_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95455
                              (let ()
                                (declare (not safe))
                                (cons _exn90167_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95455)))))))
    (define length-mismatch-exception?
      (lambda (_exn90163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90163_))
            (let ((_e90165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90163_ 'exception))))
              (macro-length-mismatch-exception? _e90165_))
            (macro-length-mismatch-exception? _exn90163_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90159_))
            (let ((_e90161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90159_ 'exception))))
              (if (macro-length-mismatch-exception? _e90161_)
                  (macro-length-mismatch-exception-arg-id _e90161_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95458
                                (let ()
                                  (declare (not safe))
                                  (cons _e90161_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95458)))))
            (if (macro-length-mismatch-exception? _exn90159_)
                (macro-length-mismatch-exception-arg-id _exn90159_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95457
                              (let ()
                                (declare (not safe))
                                (cons _exn90159_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95457)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90155_))
            (let ((_e90157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90155_ 'exception))))
              (if (macro-length-mismatch-exception? _e90157_)
                  (macro-length-mismatch-exception-arguments _e90157_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95460
                                (let ()
                                  (declare (not safe))
                                  (cons _e90157_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95460)))))
            (if (macro-length-mismatch-exception? _exn90155_)
                (macro-length-mismatch-exception-arguments _exn90155_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95459
                              (let ()
                                (declare (not safe))
                                (cons _exn90155_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95459)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (if (macro-length-mismatch-exception? _e90152_)
                  (macro-length-mismatch-exception-procedure _e90152_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95462
                                (let ()
                                  (declare (not safe))
                                  (cons _e90152_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95462)))))
            (if (macro-length-mismatch-exception? _exn90149_)
                (macro-length-mismatch-exception-procedure _exn90149_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95461
                              (let ()
                                (declare (not safe))
                                (cons _exn90149_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95461)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90145_))
            (let ((_e90147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90145_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90147_))
            (macro-mailbox-receive-timeout-exception? _exn90145_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90141_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90141_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90143_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90143_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95464
                                (let ()
                                  (declare (not safe))
                                  (cons _e90143_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95464)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90141_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90141_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95463
                              (let ()
                                (declare (not safe))
                                (cons _exn90141_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95463)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90138_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90138_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95466
                                (let ()
                                  (declare (not safe))
                                  (cons _e90138_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95466)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90135_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90135_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95465
                              (let ()
                                (declare (not safe))
                                (cons _exn90135_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95465)))))))
    (define module-not-found-exception?
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (macro-module-not-found-exception? _e90133_))
            (macro-module-not-found-exception? _exn90131_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90127_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90127_ 'exception))))
              (if (macro-module-not-found-exception? _e90129_)
                  (macro-module-not-found-exception-arguments _e90129_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95468
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95468)))))
            (if (macro-module-not-found-exception? _exn90127_)
                (macro-module-not-found-exception-arguments _exn90127_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95467
                              (let ()
                                (declare (not safe))
                                (cons _exn90127_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95467)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (if (macro-module-not-found-exception? _e90124_)
                  (macro-module-not-found-exception-procedure _e90124_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95470
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95470)))))
            (if (macro-module-not-found-exception? _exn90121_)
                (macro-module-not-found-exception-procedure _exn90121_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95469
                              (let ()
                                (declare (not safe))
                                (cons _exn90121_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95469)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90115_))
            (let ((_e90118_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90115_ 'exception))))
              (macro-multiple-c-return-exception? _e90118_))
            (macro-multiple-c-return-exception? _exn90115_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90111_))
            (let ((_e90113_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90111_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90113_))
            (macro-no-such-file-or-directory-exception? _exn90111_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90107_))
            (let ((_e90109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90107_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90109_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90109_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95472
                                (let ()
                                  (declare (not safe))
                                  (cons _e90109_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95472)))))
            (if (macro-no-such-file-or-directory-exception? _exn90107_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90107_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95471
                              (let ()
                                (declare (not safe))
                                (cons _exn90107_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95471)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90101_))
            (let ((_e90104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90101_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90104_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90104_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95474
                                (let ()
                                  (declare (not safe))
                                  (cons _e90104_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95474)))))
            (if (macro-no-such-file-or-directory-exception? _exn90101_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90101_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95473
                              (let ()
                                (declare (not safe))
                                (cons _exn90101_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95473)))))))
    (define noncontinuable-exception?
      (lambda (_exn90097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90097_))
            (let ((_e90099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90097_ 'exception))))
              (macro-noncontinuable-exception? _e90099_))
            (macro-noncontinuable-exception? _exn90097_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90091_))
            (let ((_e90094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90091_ 'exception))))
              (if (macro-noncontinuable-exception? _e90094_)
                  (macro-noncontinuable-exception-reason _e90094_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95476
                                (let ()
                                  (declare (not safe))
                                  (cons _e90094_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95476)))))
            (if (macro-noncontinuable-exception? _exn90091_)
                (macro-noncontinuable-exception-reason _exn90091_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95475
                              (let ()
                                (declare (not safe))
                                (cons _exn90091_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95475)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90087_))
            (let ((_e90089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90087_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90089_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90087_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90083_))
            (let ((_e90085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90083_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90085_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90085_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95478
                                (let ()
                                  (declare (not safe))
                                  (cons _e90085_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95478)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90083_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90083_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95477
                              (let ()
                                (declare (not safe))
                                (cons _exn90083_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95477)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90077_))
            (let ((_e90080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90077_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90080_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90080_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95480
                                (let ()
                                  (declare (not safe))
                                  (cons _e90080_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95480)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90077_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90077_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95479
                              (let ()
                                (declare (not safe))
                                (cons _exn90077_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95479)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90073_))
            (let ((_e90075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90073_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90075_))
            (macro-nonprocedure-operator-exception? _exn90073_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90069_))
            (let ((_e90071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90069_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90071_)
                  (macro-nonprocedure-operator-exception-arguments _e90071_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95482
                                (let ()
                                  (declare (not safe))
                                  (cons _e90071_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95482)))))
            (if (macro-nonprocedure-operator-exception? _exn90069_)
                (macro-nonprocedure-operator-exception-arguments _exn90069_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95481
                              (let ()
                                (declare (not safe))
                                (cons _exn90069_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95481)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90065_))
            (let ((_e90067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90065_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90067_)
                  (macro-nonprocedure-operator-exception-code _e90067_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95484
                                (let ()
                                  (declare (not safe))
                                  (cons _e90067_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95484)))))
            (if (macro-nonprocedure-operator-exception? _exn90065_)
                (macro-nonprocedure-operator-exception-code _exn90065_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95483
                              (let ()
                                (declare (not safe))
                                (cons _exn90065_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95483)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90061_))
            (let ((_e90063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90061_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90063_)
                  (macro-nonprocedure-operator-exception-operator _e90063_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95486
                                (let ()
                                  (declare (not safe))
                                  (cons _e90063_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95486)))))
            (if (macro-nonprocedure-operator-exception? _exn90061_)
                (macro-nonprocedure-operator-exception-operator _exn90061_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95485
                              (let ()
                                (declare (not safe))
                                (cons _exn90061_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95485)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90055_))
            (let ((_e90058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90055_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90058_)
                  (macro-nonprocedure-operator-exception-rte _e90058_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95488
                                (let ()
                                  (declare (not safe))
                                  (cons _e90058_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95488)))))
            (if (macro-nonprocedure-operator-exception? _exn90055_)
                (macro-nonprocedure-operator-exception-rte _exn90055_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95487
                              (let ()
                                (declare (not safe))
                                (cons _exn90055_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95487)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90051_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90051_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90053_))
            (macro-not-in-compilation-context-exception? _exn90051_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90047_))
            (let ((_e90049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90047_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90049_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90049_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95490
                                (let ()
                                  (declare (not safe))
                                  (cons _e90049_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95490)))))
            (if (macro-not-in-compilation-context-exception? _exn90047_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90047_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95489
                              (let ()
                                (declare (not safe))
                                (cons _exn90047_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95489)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90041_))
            (let ((_e90044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90041_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90044_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90044_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95492
                                (let ()
                                  (declare (not safe))
                                  (cons _e90044_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95492)))))
            (if (macro-not-in-compilation-context-exception? _exn90041_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90041_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95491
                              (let ()
                                (declare (not safe))
                                (cons _exn90041_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95491)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90037_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90037_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90039_))
            (macro-number-of-arguments-limit-exception? _exn90037_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90033_))
            (let ((_e90035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90033_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90035_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90035_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95494
                                (let ()
                                  (declare (not safe))
                                  (cons _e90035_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95494)))))
            (if (macro-number-of-arguments-limit-exception? _exn90033_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90033_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95493
                              (let ()
                                (declare (not safe))
                                (cons _exn90033_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95493)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90027_))
            (let ((_e90030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90027_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90030_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90030_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95496
                                (let ()
                                  (declare (not safe))
                                  (cons _e90030_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95496)))))
            (if (macro-number-of-arguments-limit-exception? _exn90027_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90027_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95495
                              (let ()
                                (declare (not safe))
                                (cons _exn90027_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95495)))))))
    (define os-exception?
      (lambda (_exn90023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90023_))
            (let ((_e90025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90023_ 'exception))))
              (macro-os-exception? _e90025_))
            (macro-os-exception? _exn90023_))))
    (define os-exception-arguments
      (lambda (_exn90019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90019_))
            (let ((_e90021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90019_ 'exception))))
              (if (macro-os-exception? _e90021_)
                  (macro-os-exception-arguments _e90021_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95498
                                (let ()
                                  (declare (not safe))
                                  (cons _e90021_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95498)))))
            (if (macro-os-exception? _exn90019_)
                (macro-os-exception-arguments _exn90019_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95497
                              (let ()
                                (declare (not safe))
                                (cons _exn90019_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95497)))))))
    (define os-exception-code
      (lambda (_exn90015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90015_))
            (let ((_e90017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90015_ 'exception))))
              (if (macro-os-exception? _e90017_)
                  (macro-os-exception-code _e90017_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95500
                                (let ()
                                  (declare (not safe))
                                  (cons _e90017_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95500)))))
            (if (macro-os-exception? _exn90015_)
                (macro-os-exception-code _exn90015_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95499
                              (let ()
                                (declare (not safe))
                                (cons _exn90015_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95499)))))))
    (define os-exception-message
      (lambda (_exn90011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90011_))
            (let ((_e90013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90011_ 'exception))))
              (if (macro-os-exception? _e90013_)
                  (macro-os-exception-message _e90013_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95502
                                (let ()
                                  (declare (not safe))
                                  (cons _e90013_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95502)))))
            (if (macro-os-exception? _exn90011_)
                (macro-os-exception-message _exn90011_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95501
                              (let ()
                                (declare (not safe))
                                (cons _exn90011_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95501)))))))
    (define os-exception-procedure
      (lambda (_exn90005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90005_))
            (let ((_e90008_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90005_ 'exception))))
              (if (macro-os-exception? _e90008_)
                  (macro-os-exception-procedure _e90008_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95504
                                (let ()
                                  (declare (not safe))
                                  (cons _e90008_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95504)))))
            (if (macro-os-exception? _exn90005_)
                (macro-os-exception-procedure _exn90005_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95503
                              (let ()
                                (declare (not safe))
                                (cons _exn90005_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95503)))))))
    (define permission-denied-exception?
      (lambda (_exn90001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90001_))
            (let ((_e90003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90001_ 'exception))))
              (macro-permission-denied-exception? _e90003_))
            (macro-permission-denied-exception? _exn90001_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89997_))
            (let ((_e89999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89997_ 'exception))))
              (if (macro-permission-denied-exception? _e89999_)
                  (macro-permission-denied-exception-arguments _e89999_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95506
                                (let ()
                                  (declare (not safe))
                                  (cons _e89999_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95506)))))
            (if (macro-permission-denied-exception? _exn89997_)
                (macro-permission-denied-exception-arguments _exn89997_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95505
                              (let ()
                                (declare (not safe))
                                (cons _exn89997_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95505)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89991_))
            (let ((_e89994_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89991_ 'exception))))
              (if (macro-permission-denied-exception? _e89994_)
                  (macro-permission-denied-exception-procedure _e89994_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95508
                                (let ()
                                  (declare (not safe))
                                  (cons _e89994_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95508)))))
            (if (macro-permission-denied-exception? _exn89991_)
                (macro-permission-denied-exception-procedure _exn89991_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95507
                              (let ()
                                (declare (not safe))
                                (cons _exn89991_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95507)))))))
    (define range-exception?
      (lambda (_exn89987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89987_))
            (let ((_e89989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89987_ 'exception))))
              (macro-range-exception? _e89989_))
            (macro-range-exception? _exn89987_))))
    (define range-exception-arg-id
      (lambda (_exn89983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89983_))
            (let ((_e89985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89983_ 'exception))))
              (if (macro-range-exception? _e89985_)
                  (macro-range-exception-arg-id _e89985_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95510
                                (let ()
                                  (declare (not safe))
                                  (cons _e89985_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95510)))))
            (if (macro-range-exception? _exn89983_)
                (macro-range-exception-arg-id _exn89983_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95509
                              (let ()
                                (declare (not safe))
                                (cons _exn89983_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95509)))))))
    (define range-exception-arguments
      (lambda (_exn89979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89979_))
            (let ((_e89981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89979_ 'exception))))
              (if (macro-range-exception? _e89981_)
                  (macro-range-exception-arguments _e89981_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95512
                                (let ()
                                  (declare (not safe))
                                  (cons _e89981_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95512)))))
            (if (macro-range-exception? _exn89979_)
                (macro-range-exception-arguments _exn89979_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95511
                              (let ()
                                (declare (not safe))
                                (cons _exn89979_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95511)))))))
    (define range-exception-procedure
      (lambda (_exn89973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89973_))
            (let ((_e89976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89973_ 'exception))))
              (if (macro-range-exception? _e89976_)
                  (macro-range-exception-procedure _e89976_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95514
                                (let ()
                                  (declare (not safe))
                                  (cons _e89976_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95514)))))
            (if (macro-range-exception? _exn89973_)
                (macro-range-exception-procedure _exn89973_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95513
                              (let ()
                                (declare (not safe))
                                (cons _exn89973_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95513)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89969_))
            (let ((_e89971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89969_ 'exception))))
              (macro-rpc-remote-error-exception? _e89971_))
            (macro-rpc-remote-error-exception? _exn89969_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89965_))
            (let ((_e89967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89965_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89967_)
                  (macro-rpc-remote-error-exception-arguments _e89967_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95516
                                (let ()
                                  (declare (not safe))
                                  (cons _e89967_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95516)))))
            (if (macro-rpc-remote-error-exception? _exn89965_)
                (macro-rpc-remote-error-exception-arguments _exn89965_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95515
                              (let ()
                                (declare (not safe))
                                (cons _exn89965_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95515)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89961_))
            (let ((_e89963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89961_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89963_)
                  (macro-rpc-remote-error-exception-message _e89963_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95518
                                (let ()
                                  (declare (not safe))
                                  (cons _e89963_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95518)))))
            (if (macro-rpc-remote-error-exception? _exn89961_)
                (macro-rpc-remote-error-exception-message _exn89961_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95517
                              (let ()
                                (declare (not safe))
                                (cons _exn89961_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95517)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89955_))
            (let ((_e89958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89955_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89958_)
                  (macro-rpc-remote-error-exception-procedure _e89958_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95520
                                (let ()
                                  (declare (not safe))
                                  (cons _e89958_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95520)))))
            (if (macro-rpc-remote-error-exception? _exn89955_)
                (macro-rpc-remote-error-exception-procedure _exn89955_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95519
                              (let ()
                                (declare (not safe))
                                (cons _exn89955_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95519)))))))
    (define scheduler-exception?
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (macro-scheduler-exception? _e89953_))
            (macro-scheduler-exception? _exn89951_))))
    (define scheduler-exception-reason
      (lambda (_exn89945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89945_))
            (let ((_e89948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89945_ 'exception))))
              (if (macro-scheduler-exception? _e89948_)
                  (macro-scheduler-exception-reason _e89948_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95522
                                (let ()
                                  (declare (not safe))
                                  (cons _e89948_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95522)))))
            (if (macro-scheduler-exception? _exn89945_)
                (macro-scheduler-exception-reason _exn89945_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95521
                              (let ()
                                (declare (not safe))
                                (cons _exn89945_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95521)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89941_))
            (let ((_e89943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89941_ 'exception))))
              (macro-sfun-conversion-exception? _e89943_))
            (macro-sfun-conversion-exception? _exn89941_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89937_))
            (let ((_e89939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89937_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89939_)
                  (macro-sfun-conversion-exception-arguments _e89939_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95524
                                (let ()
                                  (declare (not safe))
                                  (cons _e89939_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95524)))))
            (if (macro-sfun-conversion-exception? _exn89937_)
                (macro-sfun-conversion-exception-arguments _exn89937_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95523
                              (let ()
                                (declare (not safe))
                                (cons _exn89937_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95523)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89933_))
            (let ((_e89935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89933_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89935_)
                  (macro-sfun-conversion-exception-code _e89935_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95526
                                (let ()
                                  (declare (not safe))
                                  (cons _e89935_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95526)))))
            (if (macro-sfun-conversion-exception? _exn89933_)
                (macro-sfun-conversion-exception-code _exn89933_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95525
                              (let ()
                                (declare (not safe))
                                (cons _exn89933_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95525)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89929_))
            (let ((_e89931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89929_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89931_)
                  (macro-sfun-conversion-exception-message _e89931_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95528
                                (let ()
                                  (declare (not safe))
                                  (cons _e89931_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95528)))))
            (if (macro-sfun-conversion-exception? _exn89929_)
                (macro-sfun-conversion-exception-message _exn89929_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95527
                              (let ()
                                (declare (not safe))
                                (cons _exn89929_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95527)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89923_))
            (let ((_e89926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89923_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89926_)
                  (macro-sfun-conversion-exception-procedure _e89926_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95530
                                (let ()
                                  (declare (not safe))
                                  (cons _e89926_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95530)))))
            (if (macro-sfun-conversion-exception? _exn89923_)
                (macro-sfun-conversion-exception-procedure _exn89923_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95529
                              (let ()
                                (declare (not safe))
                                (cons _exn89923_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95529)))))))
    (define stack-overflow-exception?
      (lambda (_exn89917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89917_))
            (let ((_e89920_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89917_ 'exception))))
              (macro-stack-overflow-exception? _e89920_))
            (macro-stack-overflow-exception? _exn89917_))))
    (define started-thread-exception?
      (lambda (_exn89913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89913_))
            (let ((_e89915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89913_ 'exception))))
              (macro-started-thread-exception? _e89915_))
            (macro-started-thread-exception? _exn89913_))))
    (define started-thread-exception-arguments
      (lambda (_exn89909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89909_))
            (let ((_e89911_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89909_ 'exception))))
              (if (macro-started-thread-exception? _e89911_)
                  (macro-started-thread-exception-arguments _e89911_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95532
                                (let ()
                                  (declare (not safe))
                                  (cons _e89911_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95532)))))
            (if (macro-started-thread-exception? _exn89909_)
                (macro-started-thread-exception-arguments _exn89909_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95531
                              (let ()
                                (declare (not safe))
                                (cons _exn89909_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95531)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89903_))
            (let ((_e89906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89903_ 'exception))))
              (if (macro-started-thread-exception? _e89906_)
                  (macro-started-thread-exception-procedure _e89906_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95534
                                (let ()
                                  (declare (not safe))
                                  (cons _e89906_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95534)))))
            (if (macro-started-thread-exception? _exn89903_)
                (macro-started-thread-exception-procedure _exn89903_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95533
                              (let ()
                                (declare (not safe))
                                (cons _exn89903_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95533)))))))
    (define terminated-thread-exception?
      (lambda (_exn89899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89899_))
            (let ((_e89901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89899_ 'exception))))
              (macro-terminated-thread-exception? _e89901_))
            (macro-terminated-thread-exception? _exn89899_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89895_))
            (let ((_e89897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89895_ 'exception))))
              (if (macro-terminated-thread-exception? _e89897_)
                  (macro-terminated-thread-exception-arguments _e89897_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95536
                                (let ()
                                  (declare (not safe))
                                  (cons _e89897_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95536)))))
            (if (macro-terminated-thread-exception? _exn89895_)
                (macro-terminated-thread-exception-arguments _exn89895_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95535
                              (let ()
                                (declare (not safe))
                                (cons _exn89895_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95535)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89889_))
            (let ((_e89892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89889_ 'exception))))
              (if (macro-terminated-thread-exception? _e89892_)
                  (macro-terminated-thread-exception-procedure _e89892_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95538
                                (let ()
                                  (declare (not safe))
                                  (cons _e89892_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95538)))))
            (if (macro-terminated-thread-exception? _exn89889_)
                (macro-terminated-thread-exception-procedure _exn89889_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95537
                              (let ()
                                (declare (not safe))
                                (cons _exn89889_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95537)))))))
    (define type-exception?
      (lambda (_exn89885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89885_))
            (let ((_e89887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89885_ 'exception))))
              (macro-type-exception? _e89887_))
            (macro-type-exception? _exn89885_))))
    (define type-exception-arg-id
      (lambda (_exn89881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89881_))
            (let ((_e89883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89881_ 'exception))))
              (if (macro-type-exception? _e89883_)
                  (macro-type-exception-arg-id _e89883_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95540
                                (let ()
                                  (declare (not safe))
                                  (cons _e89883_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95540)))))
            (if (macro-type-exception? _exn89881_)
                (macro-type-exception-arg-id _exn89881_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95539
                              (let ()
                                (declare (not safe))
                                (cons _exn89881_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95539)))))))
    (define type-exception-arguments
      (lambda (_exn89877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89877_))
            (let ((_e89879_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89877_ 'exception))))
              (if (macro-type-exception? _e89879_)
                  (macro-type-exception-arguments _e89879_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95542
                                (let ()
                                  (declare (not safe))
                                  (cons _e89879_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95542)))))
            (if (macro-type-exception? _exn89877_)
                (macro-type-exception-arguments _exn89877_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95541
                              (let ()
                                (declare (not safe))
                                (cons _exn89877_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95541)))))))
    (define type-exception-procedure
      (lambda (_exn89873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89873_))
            (let ((_e89875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89873_ 'exception))))
              (if (macro-type-exception? _e89875_)
                  (macro-type-exception-procedure _e89875_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95544
                                (let ()
                                  (declare (not safe))
                                  (cons _e89875_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95544)))))
            (if (macro-type-exception? _exn89873_)
                (macro-type-exception-procedure _exn89873_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95543
                              (let ()
                                (declare (not safe))
                                (cons _exn89873_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95543)))))))
    (define type-exception-type-id
      (lambda (_exn89867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89867_))
            (let ((_e89870_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89867_ 'exception))))
              (if (macro-type-exception? _e89870_)
                  (macro-type-exception-type-id _e89870_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95546
                                (let ()
                                  (declare (not safe))
                                  (cons _e89870_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95546)))))
            (if (macro-type-exception? _exn89867_)
                (macro-type-exception-type-id _exn89867_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95545
                              (let ()
                                (declare (not safe))
                                (cons _exn89867_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95545)))))))
    (define unbound-global-exception?
      (lambda (_exn89863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89863_))
            (let ((_e89865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89863_ 'exception))))
              (macro-unbound-global-exception? _e89865_))
            (macro-unbound-global-exception? _exn89863_))))
    (define unbound-global-exception-code
      (lambda (_exn89859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89859_))
            (let ((_e89861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89859_ 'exception))))
              (if (macro-unbound-global-exception? _e89861_)
                  (macro-unbound-global-exception-code _e89861_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95548
                                (let ()
                                  (declare (not safe))
                                  (cons _e89861_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95548)))))
            (if (macro-unbound-global-exception? _exn89859_)
                (macro-unbound-global-exception-code _exn89859_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95547
                              (let ()
                                (declare (not safe))
                                (cons _exn89859_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95547)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89855_))
            (let ((_e89857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89855_ 'exception))))
              (if (macro-unbound-global-exception? _e89857_)
                  (macro-unbound-global-exception-rte _e89857_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95550
                                (let ()
                                  (declare (not safe))
                                  (cons _e89857_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95550)))))
            (if (macro-unbound-global-exception? _exn89855_)
                (macro-unbound-global-exception-rte _exn89855_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95549
                              (let ()
                                (declare (not safe))
                                (cons _exn89855_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95549)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89849_))
            (let ((_e89852_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89849_ 'exception))))
              (if (macro-unbound-global-exception? _e89852_)
                  (macro-unbound-global-exception-variable _e89852_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95552
                                (let ()
                                  (declare (not safe))
                                  (cons _e89852_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95552)))))
            (if (macro-unbound-global-exception? _exn89849_)
                (macro-unbound-global-exception-variable _exn89849_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95551
                              (let ()
                                (declare (not safe))
                                (cons _exn89849_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95551)))))))
    (define unbound-key-exception?
      (lambda (_exn89845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89845_))
            (let ((_e89847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89845_ 'exception))))
              (macro-unbound-key-exception? _e89847_))
            (macro-unbound-key-exception? _exn89845_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89841_))
            (let ((_e89843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89841_ 'exception))))
              (if (macro-unbound-key-exception? _e89843_)
                  (macro-unbound-key-exception-arguments _e89843_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95554
                                (let ()
                                  (declare (not safe))
                                  (cons _e89843_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95554)))))
            (if (macro-unbound-key-exception? _exn89841_)
                (macro-unbound-key-exception-arguments _exn89841_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95553
                              (let ()
                                (declare (not safe))
                                (cons _exn89841_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95553)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89835_))
            (let ((_e89838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89835_ 'exception))))
              (if (macro-unbound-key-exception? _e89838_)
                  (macro-unbound-key-exception-procedure _e89838_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95556
                                (let ()
                                  (declare (not safe))
                                  (cons _e89838_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95556)))))
            (if (macro-unbound-key-exception? _exn89835_)
                (macro-unbound-key-exception-procedure _exn89835_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95555
                              (let ()
                                (declare (not safe))
                                (cons _exn89835_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95555)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89831_))
            (let ((_e89833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89831_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89833_))
            (macro-unbound-os-environment-variable-exception? _exn89831_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89827_))
            (let ((_e89829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89827_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89829_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89829_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95558
                                (let ()
                                  (declare (not safe))
                                  (cons _e89829_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95558)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89827_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89827_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95557
                              (let ()
                                (declare (not safe))
                                (cons _exn89827_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95557)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89824_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89824_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95560
                                (let ()
                                  (declare (not safe))
                                  (cons _e89824_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95560)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89821_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89821_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95559
                              (let ()
                                (declare (not safe))
                                (cons _exn89821_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95559)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89817_))
            (let ((_e89819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89817_ 'exception))))
              (macro-unbound-serial-number-exception? _e89819_))
            (macro-unbound-serial-number-exception? _exn89817_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89813_))
            (let ((_e89815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89813_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89815_)
                  (macro-unbound-serial-number-exception-arguments _e89815_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95562
                                (let ()
                                  (declare (not safe))
                                  (cons _e89815_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95562)))))
            (if (macro-unbound-serial-number-exception? _exn89813_)
                (macro-unbound-serial-number-exception-arguments _exn89813_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95561
                              (let ()
                                (declare (not safe))
                                (cons _exn89813_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95561)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89807_))
            (let ((_e89810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89807_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89810_)
                  (macro-unbound-serial-number-exception-procedure _e89810_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95564
                                (let ()
                                  (declare (not safe))
                                  (cons _e89810_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95564)))))
            (if (macro-unbound-serial-number-exception? _exn89807_)
                (macro-unbound-serial-number-exception-procedure _exn89807_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95563
                              (let ()
                                (declare (not safe))
                                (cons _exn89807_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95563)))))))
    (define uncaught-exception?
      (lambda (_exn89803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89803_))
            (let ((_e89805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89803_ 'exception))))
              (macro-uncaught-exception? _e89805_))
            (macro-uncaught-exception? _exn89803_))))
    (define uncaught-exception-arguments
      (lambda (_exn89799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89799_))
            (let ((_e89801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89799_ 'exception))))
              (if (macro-uncaught-exception? _e89801_)
                  (macro-uncaught-exception-arguments _e89801_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95566
                                (let ()
                                  (declare (not safe))
                                  (cons _e89801_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95566)))))
            (if (macro-uncaught-exception? _exn89799_)
                (macro-uncaught-exception-arguments _exn89799_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95565
                              (let ()
                                (declare (not safe))
                                (cons _exn89799_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95565)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89795_))
            (let ((_e89797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89795_ 'exception))))
              (if (macro-uncaught-exception? _e89797_)
                  (macro-uncaught-exception-procedure _e89797_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95568
                                (let ()
                                  (declare (not safe))
                                  (cons _e89797_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95568)))))
            (if (macro-uncaught-exception? _exn89795_)
                (macro-uncaught-exception-procedure _exn89795_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95567
                              (let ()
                                (declare (not safe))
                                (cons _exn89795_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95567)))))))
    (define uncaught-exception-reason
      (lambda (_exn89789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89789_))
            (let ((_e89792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89789_ 'exception))))
              (if (macro-uncaught-exception? _e89792_)
                  (macro-uncaught-exception-reason _e89792_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95570
                                (let ()
                                  (declare (not safe))
                                  (cons _e89792_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95570)))))
            (if (macro-uncaught-exception? _exn89789_)
                (macro-uncaught-exception-reason _exn89789_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95569
                              (let ()
                                (declare (not safe))
                                (cons _exn89789_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95569)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89785_))
            (let ((_e89787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89785_ 'exception))))
              (macro-uninitialized-thread-exception? _e89787_))
            (macro-uninitialized-thread-exception? _exn89785_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89781_))
            (let ((_e89783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89781_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89783_)
                  (macro-uninitialized-thread-exception-arguments _e89783_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95572
                                (let ()
                                  (declare (not safe))
                                  (cons _e89783_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95572)))))
            (if (macro-uninitialized-thread-exception? _exn89781_)
                (macro-uninitialized-thread-exception-arguments _exn89781_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95571
                              (let ()
                                (declare (not safe))
                                (cons _exn89781_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95571)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89775_))
            (let ((_e89778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89775_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89778_)
                  (macro-uninitialized-thread-exception-procedure _e89778_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95574
                                (let ()
                                  (declare (not safe))
                                  (cons _e89778_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95574)))))
            (if (macro-uninitialized-thread-exception? _exn89775_)
                (macro-uninitialized-thread-exception-procedure _exn89775_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95573
                              (let ()
                                (declare (not safe))
                                (cons _exn89775_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95573)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89771_))
            (let ((_e89773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89771_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89773_))
            (macro-unknown-keyword-argument-exception? _exn89771_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89767_))
            (let ((_e89769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89767_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89769_)
                  (macro-unknown-keyword-argument-exception-arguments _e89769_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95576
                                (let ()
                                  (declare (not safe))
                                  (cons _e89769_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95576)))))
            (if (macro-unknown-keyword-argument-exception? _exn89767_)
                (macro-unknown-keyword-argument-exception-arguments _exn89767_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95575
                              (let ()
                                (declare (not safe))
                                (cons _exn89767_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95575)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89761_))
            (let ((_e89764_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89761_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89764_)
                  (macro-unknown-keyword-argument-exception-procedure _e89764_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95578
                                (let ()
                                  (declare (not safe))
                                  (cons _e89764_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95578)))))
            (if (macro-unknown-keyword-argument-exception? _exn89761_)
                (macro-unknown-keyword-argument-exception-procedure _exn89761_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95577
                              (let ()
                                (declare (not safe))
                                (cons _exn89761_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95577)))))))
    (define unterminated-process-exception?
      (lambda (_exn89757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89757_))
            (let ((_e89759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89757_ 'exception))))
              (macro-unterminated-process-exception? _e89759_))
            (macro-unterminated-process-exception? _exn89757_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89753_))
            (let ((_e89755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89753_ 'exception))))
              (if (macro-unterminated-process-exception? _e89755_)
                  (macro-unterminated-process-exception-arguments _e89755_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95580
                                (let ()
                                  (declare (not safe))
                                  (cons _e89755_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95580)))))
            (if (macro-unterminated-process-exception? _exn89753_)
                (macro-unterminated-process-exception-arguments _exn89753_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95579
                              (let ()
                                (declare (not safe))
                                (cons _exn89753_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95579)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89747_))
            (let ((_e89750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89747_ 'exception))))
              (if (macro-unterminated-process-exception? _e89750_)
                  (macro-unterminated-process-exception-procedure _e89750_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95582
                                (let ()
                                  (declare (not safe))
                                  (cons _e89750_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95582)))))
            (if (macro-unterminated-process-exception? _exn89747_)
                (macro-unterminated-process-exception-procedure _exn89747_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95581
                              (let ()
                                (declare (not safe))
                                (cons _exn89747_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95581)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89743_))
            (let ((_e89745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89743_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89745_))
            (macro-wrong-number-of-arguments-exception? _exn89743_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89739_))
            (let ((_e89741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89739_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89741_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89741_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95584
                                (let ()
                                  (declare (not safe))
                                  (cons _e89741_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95584)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89739_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89739_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95583
                              (let ()
                                (declare (not safe))
                                (cons _exn89739_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95583)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89733_))
            (let ((_e89736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89733_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89736_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89736_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95586
                                (let ()
                                  (declare (not safe))
                                  (cons _e89736_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95586)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89733_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89733_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95585
                              (let ()
                                (declare (not safe))
                                (cons _exn89733_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95585)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89729_))
            (let ((_e89731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89729_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89731_))
            (macro-wrong-number-of-values-exception? _exn89729_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89725_))
            (let ((_e89727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89725_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89727_)
                  (macro-wrong-number-of-values-exception-code _e89727_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95588
                                (let ()
                                  (declare (not safe))
                                  (cons _e89727_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95588)))))
            (if (macro-wrong-number-of-values-exception? _exn89725_)
                (macro-wrong-number-of-values-exception-code _exn89725_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95587
                              (let ()
                                (declare (not safe))
                                (cons _exn89725_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95587)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89721_))
            (let ((_e89723_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89721_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89723_)
                  (macro-wrong-number-of-values-exception-rte _e89723_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95590
                                (let ()
                                  (declare (not safe))
                                  (cons _e89723_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95590)))))
            (if (macro-wrong-number-of-values-exception? _exn89721_)
                (macro-wrong-number-of-values-exception-rte _exn89721_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95589
                              (let ()
                                (declare (not safe))
                                (cons _exn89721_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95589)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89715_))
            (let ((_e89718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89715_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89718_)
                  (macro-wrong-number-of-values-exception-vals _e89718_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95592
                                (let ()
                                  (declare (not safe))
                                  (cons _e89718_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95592)))))
            (if (macro-wrong-number-of-values-exception? _exn89715_)
                (macro-wrong-number-of-values-exception-vals _exn89715_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95591
                              (let ()
                                (declare (not safe))
                                (cons _exn89715_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95591)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89709_))
            (let ((_e89712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89709_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89712_))
            (macro-wrong-processor-c-return-exception? _exn89709_))))))
