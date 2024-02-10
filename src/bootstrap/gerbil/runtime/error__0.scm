(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707601715)
  (begin
    (define Exception::t
      (let ((__tmp95326 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95326
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90829_
        (apply make-class-instance Exception::t _$args90829_)))
    (define StackTrace::t
      (let ((__tmp95327 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95327
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90826_
        (apply make-class-instance StackTrace::t _$args90826_)))
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
      (let ((__tmp95328 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95328
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90823_ (apply make-class-instance Error::t _$args90823_)))
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
      (let ((__tmp95329 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95329
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90820_
        (apply make-class-instance RuntimeException::t _$args90820_)))
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
      (lambda (_exn90815_ _continue90816_)
        (let ((_exn90818_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90815_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90818_ _continue90816_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90811_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90811_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90811_ 'continuation))
                '#!void
                (let ((__tmp95330
                       (lambda (_cont90813_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90811_
                            'continuation
                            _cont90813_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95330)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90811_))))
    (define error
      (lambda (_message90808_ . _irritants90809_)
        (raise (let ((__obj95320
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95320
                  _message90808_
                  'irritants:
                  _irritants90809_)
                 __obj95320))))
    (define with-exception-handler
      (lambda (_handler90801_ _thunk90802_)
        (if (let () (declare (not safe)) (procedure? _handler90801_))
            '#!void
            (raise (let ((__obj95321
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95321
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90801_ '())))
                     __obj95321)))
        (if (let () (declare (not safe)) (procedure? _thunk90802_))
            '#!void
            (raise (let ((__obj95322
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95322
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90802_ '())))
                     __obj95322)))
        (let ((__tmp95331
               (lambda (_exn90804_)
                 (let ((_exn90806_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90804_))))
                   (_handler90801_ _exn90806_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95331 _thunk90802_))))
    (define with-catch
      (lambda (_handler90794_ _thunk90795_)
        (if (let () (declare (not safe)) (procedure? _handler90794_))
            '#!void
            (raise (let ((__obj95323
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95323
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90794_ '())))
                     __obj95323)))
        (if (let () (declare (not safe)) (procedure? _thunk90795_))
            '#!void
            (raise (let ((__obj95324
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95324
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90795_ '())))
                     __obj95324)))
        (let ((__tmp95332
               (lambda (_cont90797_)
                 (with-exception-handler
                  (lambda (_exn90799_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90797_
                       _handler90794_
                       _exn90799_)))
                  _thunk90795_))))
          (declare (not safe))
          (##continuation-capture __tmp95332))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90785_)
        (if (or (heap-overflow-exception? _exn90785_)
                (stack-overflow-exception? _exn90785_))
            _exn90785_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90785_))
                _exn90785_
                (if (macro-exception? _exn90785_)
                    (let ((_rte90790_
                           (let ((__obj95325
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95325
                                _exn90785_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95325)))
                      (let ((__tmp95333
                             (lambda (_cont90792_)
                               (let ((__tmp95334
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90792_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90790_
                                  'continuation
                                  __tmp95334)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95333))
                      _rte90790_)
                    _exn90785_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90780_)
        (let ((_$e90782_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90780_))))
          (if _$e90782_ _$e90782_ (error-exception? _obj90780_)))))
    (define error-message
      (lambda (_obj90778_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90778_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90778_ 'message))
            (if (error-exception? _obj90778_)
                (error-exception-message _obj90778_)
                '#f))))
    (define error-irritants
      (lambda (_obj90776_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90776_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90776_ 'irritants))
            (if (error-exception? _obj90776_)
                (error-exception-parameters _obj90776_)
                '#f))))
    (define error-trace
      (lambda (_obj90774_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90774_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90774_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90756_ _port90757_)
        (let ((_$e90759_
               (let ()
                 (declare (not safe))
                 (method-ref _e90756_ 'display-exception))))
          (if _$e90759_
              ((lambda (_f90762_) (_f90762_ _e90756_ _port90757_)) _$e90759_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90756_ _port90757_))))))
    (define display-exception__0
      (lambda (_e90767_)
        (let ((_port90769_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90767_ _port90769_))))
    (define display-exception
      (lambda _g95336_
        (let ((_g95335_ (let () (declare (not safe)) (##length _g95336_))))
          (cond ((let () (declare (not safe)) (##fx= _g95335_ 1))
                 (apply (lambda (_e90767_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90767_)))
                        _g95336_))
                ((let () (declare (not safe)) (##fx= _g95335_ 2))
                 (apply (lambda (_e90771_ _port90772_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90771_ _port90772_)))
                        _g95336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95336_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90745_ _message90746_ . _rest90747_)
        (let ((_message90753_
               (if (let () (declare (not safe)) (string? _message90746_))
                   _message90746_
                   (call-with-output-string
                    '""
                    (lambda (_g9074890750_)
                      (display _message90746_ _g9074890750_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90745_ 'message _message90753_))
          (apply class-instance-init! _self90745_ _rest90747_))))
    (define Error:::init!::specialize
      (lambda (__t95299)
        (let ((__message95300
               (let ((__tmp95301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95299 'message))))
                 (if __tmp95301 __tmp95301 (error '"Unknown slot" 'message)))))
          (lambda (_self90745_ _message90746_ . _rest90747_)
            (let ((_message90753_
                   (if (let () (declare (not safe)) (string? _message90746_))
                       _message90746_
                       (call-with-output-string
                        '""
                        (lambda (_g9074890750_)
                          (display _message90746_ _g9074890750_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90745_
                 _message90753_
                 __message95300
                 __t95299
                 '#f))
              (apply class-instance-init! _self90745_ _rest90747_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90603_ _port90604_)
        (let ((_tmp-port90606_ (open-output-string))
              (_display-error-newline90607_
               (> (output-port-column _port90604_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90606_))
          (let ((__tmp95337
                 (lambda ()
                   (if _display-error-newline90607_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90610_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90603_ 'where))))
                     (if _$e90610_ (display _$e90610_) (display '"?")))
                   (let ((__tmp95338
                          (let ((__tmp95339
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90603_))))
                            (declare (not safe))
                            (##type-name __tmp95339))))
                     (declare (not safe))
                     (display* '" [" __tmp95338 '"]: "))
                   (let ((__tmp95340
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90603_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95340))
                   (let ((_irritants90613_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90603_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90613_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90615_)
                              (write _obj90615_)
                              (write-char '#\space))
                            _irritants90613_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90603_))
                            (dump-stack-trace?))
                       (let ((_cont9061690618_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90603_
                                 'continuation))))
                         (if _cont9061690618_
                             (let ((_cont90621_ _cont9061690618_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90621_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95337
             current-output-port
             _tmp-port90606_))
          (let ((__tmp95341 (get-output-string _tmp-port90606_)))
            (declare (not safe))
            (##write-string __tmp95341 _port90604_)))))
    (define Error::display-exception::specialize
      (lambda (__t95302)
        (let ((__message95303
               (let ((__tmp95307
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95302 'message))))
                 (if __tmp95307 __tmp95307 (error '"Unknown slot" 'message))))
              (__where95304
               (let ((__tmp95308
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95302 'where))))
                 (if __tmp95308 __tmp95308 (error '"Unknown slot" 'where))))
              (__irritants95305
               (let ((__tmp95309
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95302 'irritants))))
                 (if __tmp95309
                     __tmp95309
                     (error '"Unknown slot" 'irritants))))
              (__continuation95306
               (let ((__tmp95310
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95302 'continuation))))
                 (if __tmp95310
                     __tmp95310
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90603_ _port90604_)
            (let ((_tmp-port90606_ (open-output-string))
                  (_display-error-newline90607_
                   (> (output-port-column _port90604_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90606_))
              (let ((__tmp95342
                     (lambda ()
                       (if _display-error-newline90607_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90610_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90603_
                                 __where95304
                                 __t95302
                                 '#f))))
                         (if _$e90610_ (display _$e90610_) (display '"?")))
                       (let ((__tmp95343
                              (let ((__tmp95344
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90603_))))
                                (declare (not safe))
                                (##type-name __tmp95344))))
                         (declare (not safe))
                         (display* '" [" __tmp95343 '"]: "))
                       (let ((__tmp95345
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90603_
                                 __message95303
                                 __t95302
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95345))
                       (let ((_irritants90613_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90603_
                                 __irritants95305
                                 __t95302
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90613_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90615_)
                                  (write _obj90615_)
                                  (write-char '#\space))
                                _irritants90613_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90603_))
                                (dump-stack-trace?))
                           (let ((_cont9061690618_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90603_
                                     __continuation95306
                                     __t95302
                                     '#f))))
                             (if _cont9061690618_
                                 (let ((_cont90621_ _cont9061690618_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90621_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95342
                 current-output-port
                 _tmp-port90606_))
              (let ((__tmp95346 (get-output-string _tmp-port90606_)))
                (declare (not safe))
                (##write-string __tmp95346 _port90604_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90470_ _port90471_)
        (let ((_tmp-port90473_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90473_))
          (let ((__tmp95347
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90470_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95347 _tmp-port90473_))
          (if (dump-stack-trace?)
              (let ((_cont9047490476_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90470_ 'continuation))))
                (if _cont9047490476_
                    (let ((_cont90479_ _cont9047490476_))
                      (display '"--- continuation backtrace:" _tmp-port90473_)
                      (newline _tmp-port90473_)
                      (display-continuation-backtrace
                       _cont90479_
                       _tmp-port90473_))
                    '#f))
              '#!void)
          (let ((__tmp95348 (get-output-string _tmp-port90473_)))
            (declare (not safe))
            (##write-string __tmp95348 _port90471_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95311)
        (let ((__continuation95312
               (let ((__tmp95314
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95311 'continuation))))
                 (if __tmp95314
                     __tmp95314
                     (error '"Unknown slot" 'continuation))))
              (__exception95313
               (let ((__tmp95315
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95311 'exception))))
                 (if __tmp95315
                     __tmp95315
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self90470_ _port90471_)
            (let ((_tmp-port90473_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90473_))
              (let ((__tmp95349
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90470_
                        __exception95313
                        __t95311
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95349 _tmp-port90473_))
              (if (dump-stack-trace?)
                  (let ((_cont9047490476_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90470_
                            __continuation95312
                            __t95311
                            '#f))))
                    (if _cont9047490476_
                        (let ((_cont90479_ _cont9047490476_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90473_)
                          (newline _tmp-port90473_)
                          (display-continuation-backtrace
                           _cont90479_
                           _tmp-port90473_))
                        '#f))
                  '#!void)
              (let ((__tmp95350 (get-output-string _tmp-port90473_)))
                (declare (not safe))
                (##write-string __tmp95350 _port90471_)))))))
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
      (lambda (_port90342_)
        (if (macro-character-port? _port90342_)
            (let ((_old-width90344_
                   (macro-character-port-output-width _port90342_)))
              (macro-character-port-output-width-set!
               _port90342_
               (lambda (_port90346_) '256))
              _old-width90344_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90339_ _old-width90340_)
        (if (macro-character-port? _port90339_)
            (macro-character-port-output-width-set!
             _port90339_
             _old-width90340_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90337_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90337_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90331_))
            (let ((_e90334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90331_ 'exception))))
              (macro-abandoned-mutex-exception? _e90334_))
            (macro-abandoned-mutex-exception? _exn90331_))))
    (define cfun-conversion-exception?
      (lambda (_exn90327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90327_))
            (let ((_e90329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90327_ 'exception))))
              (macro-cfun-conversion-exception? _e90329_))
            (macro-cfun-conversion-exception? _exn90327_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90323_))
            (let ((_e90325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90323_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90325_)
                  (macro-cfun-conversion-exception-arguments _e90325_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95352
                                (let ()
                                  (declare (not safe))
                                  (cons _e90325_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95352)))))
            (if (macro-cfun-conversion-exception? _exn90323_)
                (macro-cfun-conversion-exception-arguments _exn90323_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95351
                              (let ()
                                (declare (not safe))
                                (cons _exn90323_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95351)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90319_))
            (let ((_e90321_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90319_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90321_)
                  (macro-cfun-conversion-exception-code _e90321_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95354
                                (let ()
                                  (declare (not safe))
                                  (cons _e90321_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95354)))))
            (if (macro-cfun-conversion-exception? _exn90319_)
                (macro-cfun-conversion-exception-code _exn90319_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95353
                              (let ()
                                (declare (not safe))
                                (cons _exn90319_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95353)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90315_))
            (let ((_e90317_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90315_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90317_)
                  (macro-cfun-conversion-exception-message _e90317_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95356
                                (let ()
                                  (declare (not safe))
                                  (cons _e90317_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95356)))))
            (if (macro-cfun-conversion-exception? _exn90315_)
                (macro-cfun-conversion-exception-message _exn90315_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95355
                              (let ()
                                (declare (not safe))
                                (cons _exn90315_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95355)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90309_))
            (let ((_e90312_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90309_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90312_)
                  (macro-cfun-conversion-exception-procedure _e90312_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95358
                                (let ()
                                  (declare (not safe))
                                  (cons _e90312_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95358)))))
            (if (macro-cfun-conversion-exception? _exn90309_)
                (macro-cfun-conversion-exception-procedure _exn90309_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95357
                              (let ()
                                (declare (not safe))
                                (cons _exn90309_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95357)))))))
    (define datum-parsing-exception?
      (lambda (_exn90305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90305_))
            (let ((_e90307_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90305_ 'exception))))
              (macro-datum-parsing-exception? _e90307_))
            (macro-datum-parsing-exception? _exn90305_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90301_))
            (let ((_e90303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90301_ 'exception))))
              (if (macro-datum-parsing-exception? _e90303_)
                  (macro-datum-parsing-exception-kind _e90303_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95360
                                (let ()
                                  (declare (not safe))
                                  (cons _e90303_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95360)))))
            (if (macro-datum-parsing-exception? _exn90301_)
                (macro-datum-parsing-exception-kind _exn90301_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95359
                              (let ()
                                (declare (not safe))
                                (cons _exn90301_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95359)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90297_))
            (let ((_e90299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90297_ 'exception))))
              (if (macro-datum-parsing-exception? _e90299_)
                  (macro-datum-parsing-exception-parameters _e90299_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95362
                                (let ()
                                  (declare (not safe))
                                  (cons _e90299_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95362)))))
            (if (macro-datum-parsing-exception? _exn90297_)
                (macro-datum-parsing-exception-parameters _exn90297_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95361
                              (let ()
                                (declare (not safe))
                                (cons _exn90297_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95361)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90291_))
            (let ((_e90294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90291_ 'exception))))
              (if (macro-datum-parsing-exception? _e90294_)
                  (macro-datum-parsing-exception-readenv _e90294_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95364
                                (let ()
                                  (declare (not safe))
                                  (cons _e90294_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95364)))))
            (if (macro-datum-parsing-exception? _exn90291_)
                (macro-datum-parsing-exception-readenv _exn90291_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95363
                              (let ()
                                (declare (not safe))
                                (cons _exn90291_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95363)))))))
    (define deadlock-exception?
      (lambda (_exn90285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90285_))
            (let ((_e90288_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90285_ 'exception))))
              (macro-deadlock-exception? _e90288_))
            (macro-deadlock-exception? _exn90285_))))
    (define divide-by-zero-exception?
      (lambda (_exn90281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90281_))
            (let ((_e90283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90281_ 'exception))))
              (macro-divide-by-zero-exception? _e90283_))
            (macro-divide-by-zero-exception? _exn90281_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90277_))
            (let ((_e90279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90277_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90279_)
                  (macro-divide-by-zero-exception-arguments _e90279_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95366
                                (let ()
                                  (declare (not safe))
                                  (cons _e90279_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95366)))))
            (if (macro-divide-by-zero-exception? _exn90277_)
                (macro-divide-by-zero-exception-arguments _exn90277_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95365
                              (let ()
                                (declare (not safe))
                                (cons _exn90277_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95365)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90271_))
            (let ((_e90274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90271_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90274_)
                  (macro-divide-by-zero-exception-procedure _e90274_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95368
                                (let ()
                                  (declare (not safe))
                                  (cons _e90274_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95368)))))
            (if (macro-divide-by-zero-exception? _exn90271_)
                (macro-divide-by-zero-exception-procedure _exn90271_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95367
                              (let ()
                                (declare (not safe))
                                (cons _exn90271_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95367)))))))
    (define error-exception?
      (lambda (_exn90267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90267_))
            (let ((_e90269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90267_ 'exception))))
              (macro-error-exception? _e90269_))
            (macro-error-exception? _exn90267_))))
    (define error-exception-message
      (lambda (_exn90263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90263_))
            (let ((_e90265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90263_ 'exception))))
              (if (macro-error-exception? _e90265_)
                  (macro-error-exception-message _e90265_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95370
                                (let ()
                                  (declare (not safe))
                                  (cons _e90265_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95370)))))
            (if (macro-error-exception? _exn90263_)
                (macro-error-exception-message _exn90263_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95369
                              (let ()
                                (declare (not safe))
                                (cons _exn90263_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95369)))))))
    (define error-exception-parameters
      (lambda (_exn90257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90257_))
            (let ((_e90260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90257_ 'exception))))
              (if (macro-error-exception? _e90260_)
                  (macro-error-exception-parameters _e90260_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95372
                                (let ()
                                  (declare (not safe))
                                  (cons _e90260_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95372)))))
            (if (macro-error-exception? _exn90257_)
                (macro-error-exception-parameters _exn90257_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95371
                              (let ()
                                (declare (not safe))
                                (cons _exn90257_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95371)))))))
    (define expression-parsing-exception?
      (lambda (_exn90253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90253_))
            (let ((_e90255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90253_ 'exception))))
              (macro-expression-parsing-exception? _e90255_))
            (macro-expression-parsing-exception? _exn90253_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90249_))
            (let ((_e90251_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90249_ 'exception))))
              (if (macro-expression-parsing-exception? _e90251_)
                  (macro-expression-parsing-exception-kind _e90251_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95374
                                (let ()
                                  (declare (not safe))
                                  (cons _e90251_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95374)))))
            (if (macro-expression-parsing-exception? _exn90249_)
                (macro-expression-parsing-exception-kind _exn90249_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95373
                              (let ()
                                (declare (not safe))
                                (cons _exn90249_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95373)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90245_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90245_))
            (let ((_e90247_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90245_ 'exception))))
              (if (macro-expression-parsing-exception? _e90247_)
                  (macro-expression-parsing-exception-parameters _e90247_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95376
                                (let ()
                                  (declare (not safe))
                                  (cons _e90247_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95376)))))
            (if (macro-expression-parsing-exception? _exn90245_)
                (macro-expression-parsing-exception-parameters _exn90245_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95375
                              (let ()
                                (declare (not safe))
                                (cons _exn90245_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95375)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90239_))
            (let ((_e90242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90239_ 'exception))))
              (if (macro-expression-parsing-exception? _e90242_)
                  (macro-expression-parsing-exception-source _e90242_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95378
                                (let ()
                                  (declare (not safe))
                                  (cons _e90242_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95378)))))
            (if (macro-expression-parsing-exception? _exn90239_)
                (macro-expression-parsing-exception-source _exn90239_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95377
                              (let ()
                                (declare (not safe))
                                (cons _exn90239_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95377)))))))
    (define file-exists-exception?
      (lambda (_exn90235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90235_))
            (let ((_e90237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90235_ 'exception))))
              (macro-file-exists-exception? _e90237_))
            (macro-file-exists-exception? _exn90235_))))
    (define file-exists-exception-arguments
      (lambda (_exn90231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90231_))
            (let ((_e90233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90231_ 'exception))))
              (if (macro-file-exists-exception? _e90233_)
                  (macro-file-exists-exception-arguments _e90233_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95380
                                (let ()
                                  (declare (not safe))
                                  (cons _e90233_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95380)))))
            (if (macro-file-exists-exception? _exn90231_)
                (macro-file-exists-exception-arguments _exn90231_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95379
                              (let ()
                                (declare (not safe))
                                (cons _exn90231_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95379)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90225_))
            (let ((_e90228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90225_ 'exception))))
              (if (macro-file-exists-exception? _e90228_)
                  (macro-file-exists-exception-procedure _e90228_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95382
                                (let ()
                                  (declare (not safe))
                                  (cons _e90228_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95382)))))
            (if (macro-file-exists-exception? _exn90225_)
                (macro-file-exists-exception-procedure _exn90225_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95381
                              (let ()
                                (declare (not safe))
                                (cons _exn90225_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95381)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90221_))
            (let ((_e90223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90221_ 'exception))))
              (macro-fixnum-overflow-exception? _e90223_))
            (macro-fixnum-overflow-exception? _exn90221_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90217_))
            (let ((_e90219_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90217_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90219_)
                  (macro-fixnum-overflow-exception-arguments _e90219_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95384
                                (let ()
                                  (declare (not safe))
                                  (cons _e90219_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95384)))))
            (if (macro-fixnum-overflow-exception? _exn90217_)
                (macro-fixnum-overflow-exception-arguments _exn90217_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95383
                              (let ()
                                (declare (not safe))
                                (cons _exn90217_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95383)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90211_))
            (let ((_e90214_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90211_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90214_)
                  (macro-fixnum-overflow-exception-procedure _e90214_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95386
                                (let ()
                                  (declare (not safe))
                                  (cons _e90214_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95386)))))
            (if (macro-fixnum-overflow-exception? _exn90211_)
                (macro-fixnum-overflow-exception-procedure _exn90211_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95385
                              (let ()
                                (declare (not safe))
                                (cons _exn90211_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95385)))))))
    (define heap-overflow-exception?
      (lambda (_exn90205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90205_))
            (let ((_e90208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90205_ 'exception))))
              (macro-heap-overflow-exception? _e90208_))
            (macro-heap-overflow-exception? _exn90205_))))
    (define inactive-thread-exception?
      (lambda (_exn90201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90201_))
            (let ((_e90203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90201_ 'exception))))
              (macro-inactive-thread-exception? _e90203_))
            (macro-inactive-thread-exception? _exn90201_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90197_))
            (let ((_e90199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90197_ 'exception))))
              (if (macro-inactive-thread-exception? _e90199_)
                  (macro-inactive-thread-exception-arguments _e90199_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95388
                                (let ()
                                  (declare (not safe))
                                  (cons _e90199_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95388)))))
            (if (macro-inactive-thread-exception? _exn90197_)
                (macro-inactive-thread-exception-arguments _exn90197_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95387
                              (let ()
                                (declare (not safe))
                                (cons _exn90197_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95387)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90191_))
            (let ((_e90194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90191_ 'exception))))
              (if (macro-inactive-thread-exception? _e90194_)
                  (macro-inactive-thread-exception-procedure _e90194_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95390
                                (let ()
                                  (declare (not safe))
                                  (cons _e90194_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95390)))))
            (if (macro-inactive-thread-exception? _exn90191_)
                (macro-inactive-thread-exception-procedure _exn90191_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95389
                              (let ()
                                (declare (not safe))
                                (cons _exn90191_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95389)))))))
    (define initialized-thread-exception?
      (lambda (_exn90187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90187_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90187_ 'exception))))
              (macro-initialized-thread-exception? _e90189_))
            (macro-initialized-thread-exception? _exn90187_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90183_))
            (let ((_e90185_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90183_ 'exception))))
              (if (macro-initialized-thread-exception? _e90185_)
                  (macro-initialized-thread-exception-arguments _e90185_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95392
                                (let ()
                                  (declare (not safe))
                                  (cons _e90185_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95392)))))
            (if (macro-initialized-thread-exception? _exn90183_)
                (macro-initialized-thread-exception-arguments _exn90183_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95391
                              (let ()
                                (declare (not safe))
                                (cons _exn90183_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95391)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (if (macro-initialized-thread-exception? _e90180_)
                  (macro-initialized-thread-exception-procedure _e90180_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95394
                                (let ()
                                  (declare (not safe))
                                  (cons _e90180_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95394)))))
            (if (macro-initialized-thread-exception? _exn90177_)
                (macro-initialized-thread-exception-procedure _exn90177_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95393
                              (let ()
                                (declare (not safe))
                                (cons _exn90177_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95393)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90173_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90173_ 'exception))))
              (macro-invalid-hash-number-exception? _e90175_))
            (macro-invalid-hash-number-exception? _exn90173_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90169_))
            (let ((_e90171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90169_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90171_)
                  (macro-invalid-hash-number-exception-arguments _e90171_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95396
                                (let ()
                                  (declare (not safe))
                                  (cons _e90171_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95396)))))
            (if (macro-invalid-hash-number-exception? _exn90169_)
                (macro-invalid-hash-number-exception-arguments _exn90169_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95395
                              (let ()
                                (declare (not safe))
                                (cons _exn90169_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95395)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90163_))
            (let ((_e90166_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90163_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90166_)
                  (macro-invalid-hash-number-exception-procedure _e90166_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95398
                                (let ()
                                  (declare (not safe))
                                  (cons _e90166_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95398)))))
            (if (macro-invalid-hash-number-exception? _exn90163_)
                (macro-invalid-hash-number-exception-procedure _exn90163_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95397
                              (let ()
                                (declare (not safe))
                                (cons _exn90163_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95397)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90159_))
            (let ((_e90161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90159_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90161_))
            (macro-invalid-utf8-encoding-exception? _exn90159_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90155_))
            (let ((_e90157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90155_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90157_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90157_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95400
                                (let ()
                                  (declare (not safe))
                                  (cons _e90157_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95400)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90155_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90155_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95399
                              (let ()
                                (declare (not safe))
                                (cons _exn90155_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95399)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90152_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90152_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95402
                                (let ()
                                  (declare (not safe))
                                  (cons _e90152_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95402)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90149_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90149_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95401
                              (let ()
                                (declare (not safe))
                                (cons _exn90149_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95401)))))))
    (define join-timeout-exception?
      (lambda (_exn90145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90145_))
            (let ((_e90147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90145_ 'exception))))
              (macro-join-timeout-exception? _e90147_))
            (macro-join-timeout-exception? _exn90145_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90141_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90141_ 'exception))))
              (if (macro-join-timeout-exception? _e90143_)
                  (macro-join-timeout-exception-arguments _e90143_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95404
                                (let ()
                                  (declare (not safe))
                                  (cons _e90143_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95404)))))
            (if (macro-join-timeout-exception? _exn90141_)
                (macro-join-timeout-exception-arguments _exn90141_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95403
                              (let ()
                                (declare (not safe))
                                (cons _exn90141_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95403)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (if (macro-join-timeout-exception? _e90138_)
                  (macro-join-timeout-exception-procedure _e90138_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95406
                                (let ()
                                  (declare (not safe))
                                  (cons _e90138_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95406)))))
            (if (macro-join-timeout-exception? _exn90135_)
                (macro-join-timeout-exception-procedure _exn90135_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95405
                              (let ()
                                (declare (not safe))
                                (cons _exn90135_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95405)))))))
    (define keyword-expected-exception?
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (macro-keyword-expected-exception? _e90133_))
            (macro-keyword-expected-exception? _exn90131_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90127_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90127_ 'exception))))
              (if (macro-keyword-expected-exception? _e90129_)
                  (macro-keyword-expected-exception-arguments _e90129_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95408
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95408)))))
            (if (macro-keyword-expected-exception? _exn90127_)
                (macro-keyword-expected-exception-arguments _exn90127_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95407
                              (let ()
                                (declare (not safe))
                                (cons _exn90127_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95407)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (if (macro-keyword-expected-exception? _e90124_)
                  (macro-keyword-expected-exception-procedure _e90124_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95410
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95410)))))
            (if (macro-keyword-expected-exception? _exn90121_)
                (macro-keyword-expected-exception-procedure _exn90121_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95409
                              (let ()
                                (declare (not safe))
                                (cons _exn90121_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95409)))))))
    (define length-mismatch-exception?
      (lambda (_exn90117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90117_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90117_ 'exception))))
              (macro-length-mismatch-exception? _e90119_))
            (macro-length-mismatch-exception? _exn90117_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90113_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90113_ 'exception))))
              (if (macro-length-mismatch-exception? _e90115_)
                  (macro-length-mismatch-exception-arg-id _e90115_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95412
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95412)))))
            (if (macro-length-mismatch-exception? _exn90113_)
                (macro-length-mismatch-exception-arg-id _exn90113_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95411
                              (let ()
                                (declare (not safe))
                                (cons _exn90113_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95411)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90109_))
            (let ((_e90111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90109_ 'exception))))
              (if (macro-length-mismatch-exception? _e90111_)
                  (macro-length-mismatch-exception-arguments _e90111_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95414
                                (let ()
                                  (declare (not safe))
                                  (cons _e90111_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95414)))))
            (if (macro-length-mismatch-exception? _exn90109_)
                (macro-length-mismatch-exception-arguments _exn90109_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95413
                              (let ()
                                (declare (not safe))
                                (cons _exn90109_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95413)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90103_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90103_ 'exception))))
              (if (macro-length-mismatch-exception? _e90106_)
                  (macro-length-mismatch-exception-procedure _e90106_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95416
                                (let ()
                                  (declare (not safe))
                                  (cons _e90106_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95416)))))
            (if (macro-length-mismatch-exception? _exn90103_)
                (macro-length-mismatch-exception-procedure _exn90103_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95415
                              (let ()
                                (declare (not safe))
                                (cons _exn90103_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95415)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90099_))
            (let ((_e90101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90099_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90101_))
            (macro-mailbox-receive-timeout-exception? _exn90099_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90095_))
            (let ((_e90097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90095_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90097_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90097_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95418
                                (let ()
                                  (declare (not safe))
                                  (cons _e90097_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95418)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90095_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90095_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95417
                              (let ()
                                (declare (not safe))
                                (cons _exn90095_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95417)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90089_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90089_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90092_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90092_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95420
                                (let ()
                                  (declare (not safe))
                                  (cons _e90092_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95420)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90089_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90089_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95419
                              (let ()
                                (declare (not safe))
                                (cons _exn90089_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95419)))))))
    (define module-not-found-exception?
      (lambda (_exn90085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90085_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90085_ 'exception))))
              (macro-module-not-found-exception? _e90087_))
            (macro-module-not-found-exception? _exn90085_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90081_))
            (let ((_e90083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90081_ 'exception))))
              (if (macro-module-not-found-exception? _e90083_)
                  (macro-module-not-found-exception-arguments _e90083_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95422
                                (let ()
                                  (declare (not safe))
                                  (cons _e90083_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95422)))))
            (if (macro-module-not-found-exception? _exn90081_)
                (macro-module-not-found-exception-arguments _exn90081_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95421
                              (let ()
                                (declare (not safe))
                                (cons _exn90081_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95421)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90075_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90075_ 'exception))))
              (if (macro-module-not-found-exception? _e90078_)
                  (macro-module-not-found-exception-procedure _e90078_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95424
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95424)))))
            (if (macro-module-not-found-exception? _exn90075_)
                (macro-module-not-found-exception-procedure _exn90075_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95423
                              (let ()
                                (declare (not safe))
                                (cons _exn90075_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95423)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90069_))
            (let ((_e90072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90069_ 'exception))))
              (macro-multiple-c-return-exception? _e90072_))
            (macro-multiple-c-return-exception? _exn90069_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90065_))
            (let ((_e90067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90065_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90067_))
            (macro-no-such-file-or-directory-exception? _exn90065_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90061_))
            (let ((_e90063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90061_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90063_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90063_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95426
                                (let ()
                                  (declare (not safe))
                                  (cons _e90063_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95426)))))
            (if (macro-no-such-file-or-directory-exception? _exn90061_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90061_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95425
                              (let ()
                                (declare (not safe))
                                (cons _exn90061_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95425)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90055_))
            (let ((_e90058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90055_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90058_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90058_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95428
                                (let ()
                                  (declare (not safe))
                                  (cons _e90058_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95428)))))
            (if (macro-no-such-file-or-directory-exception? _exn90055_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90055_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95427
                              (let ()
                                (declare (not safe))
                                (cons _exn90055_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95427)))))))
    (define noncontinuable-exception?
      (lambda (_exn90051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90051_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90051_ 'exception))))
              (macro-noncontinuable-exception? _e90053_))
            (macro-noncontinuable-exception? _exn90051_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90045_))
            (let ((_e90048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90045_ 'exception))))
              (if (macro-noncontinuable-exception? _e90048_)
                  (macro-noncontinuable-exception-reason _e90048_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95430
                                (let ()
                                  (declare (not safe))
                                  (cons _e90048_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95430)))))
            (if (macro-noncontinuable-exception? _exn90045_)
                (macro-noncontinuable-exception-reason _exn90045_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95429
                              (let ()
                                (declare (not safe))
                                (cons _exn90045_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95429)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90041_))
            (let ((_e90043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90041_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90043_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90041_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90037_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90037_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90039_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90039_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95432
                                (let ()
                                  (declare (not safe))
                                  (cons _e90039_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95432)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90037_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90037_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95431
                              (let ()
                                (declare (not safe))
                                (cons _exn90037_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95431)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90031_))
            (let ((_e90034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90031_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90034_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90034_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95434
                                (let ()
                                  (declare (not safe))
                                  (cons _e90034_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95434)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90031_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90031_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95433
                              (let ()
                                (declare (not safe))
                                (cons _exn90031_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95433)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90027_))
            (let ((_e90029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90027_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90029_))
            (macro-nonprocedure-operator-exception? _exn90027_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90023_))
            (let ((_e90025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90023_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90025_)
                  (macro-nonprocedure-operator-exception-arguments _e90025_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95436
                                (let ()
                                  (declare (not safe))
                                  (cons _e90025_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95436)))))
            (if (macro-nonprocedure-operator-exception? _exn90023_)
                (macro-nonprocedure-operator-exception-arguments _exn90023_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95435
                              (let ()
                                (declare (not safe))
                                (cons _exn90023_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95435)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90019_))
            (let ((_e90021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90019_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90021_)
                  (macro-nonprocedure-operator-exception-code _e90021_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95438
                                (let ()
                                  (declare (not safe))
                                  (cons _e90021_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95438)))))
            (if (macro-nonprocedure-operator-exception? _exn90019_)
                (macro-nonprocedure-operator-exception-code _exn90019_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95437
                              (let ()
                                (declare (not safe))
                                (cons _exn90019_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95437)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90015_))
            (let ((_e90017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90015_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90017_)
                  (macro-nonprocedure-operator-exception-operator _e90017_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95440
                                (let ()
                                  (declare (not safe))
                                  (cons _e90017_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95440)))))
            (if (macro-nonprocedure-operator-exception? _exn90015_)
                (macro-nonprocedure-operator-exception-operator _exn90015_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95439
                              (let ()
                                (declare (not safe))
                                (cons _exn90015_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95439)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90009_))
            (let ((_e90012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90009_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90012_)
                  (macro-nonprocedure-operator-exception-rte _e90012_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95442
                                (let ()
                                  (declare (not safe))
                                  (cons _e90012_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95442)))))
            (if (macro-nonprocedure-operator-exception? _exn90009_)
                (macro-nonprocedure-operator-exception-rte _exn90009_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95441
                              (let ()
                                (declare (not safe))
                                (cons _exn90009_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95441)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90005_))
            (let ((_e90007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90005_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90007_))
            (macro-not-in-compilation-context-exception? _exn90005_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90001_))
            (let ((_e90003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90001_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90003_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90003_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95444
                                (let ()
                                  (declare (not safe))
                                  (cons _e90003_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95444)))))
            (if (macro-not-in-compilation-context-exception? _exn90001_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90001_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95443
                              (let ()
                                (declare (not safe))
                                (cons _exn90001_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95443)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89995_))
            (let ((_e89998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89995_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89998_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89998_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95446
                                (let ()
                                  (declare (not safe))
                                  (cons _e89998_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95446)))))
            (if (macro-not-in-compilation-context-exception? _exn89995_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89995_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95445
                              (let ()
                                (declare (not safe))
                                (cons _exn89995_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95445)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89991_))
            (let ((_e89993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89991_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89993_))
            (macro-number-of-arguments-limit-exception? _exn89991_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89987_))
            (let ((_e89989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89987_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89989_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89989_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95448
                                (let ()
                                  (declare (not safe))
                                  (cons _e89989_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95448)))))
            (if (macro-number-of-arguments-limit-exception? _exn89987_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89987_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95447
                              (let ()
                                (declare (not safe))
                                (cons _exn89987_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95447)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89981_))
            (let ((_e89984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89981_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89984_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89984_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95450
                                (let ()
                                  (declare (not safe))
                                  (cons _e89984_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95450)))))
            (if (macro-number-of-arguments-limit-exception? _exn89981_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89981_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95449
                              (let ()
                                (declare (not safe))
                                (cons _exn89981_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95449)))))))
    (define os-exception?
      (lambda (_exn89977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89977_))
            (let ((_e89979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89977_ 'exception))))
              (macro-os-exception? _e89979_))
            (macro-os-exception? _exn89977_))))
    (define os-exception-arguments
      (lambda (_exn89973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89973_))
            (let ((_e89975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89973_ 'exception))))
              (if (macro-os-exception? _e89975_)
                  (macro-os-exception-arguments _e89975_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95452
                                (let ()
                                  (declare (not safe))
                                  (cons _e89975_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95452)))))
            (if (macro-os-exception? _exn89973_)
                (macro-os-exception-arguments _exn89973_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95451
                              (let ()
                                (declare (not safe))
                                (cons _exn89973_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95451)))))))
    (define os-exception-code
      (lambda (_exn89969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89969_))
            (let ((_e89971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89969_ 'exception))))
              (if (macro-os-exception? _e89971_)
                  (macro-os-exception-code _e89971_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95454
                                (let ()
                                  (declare (not safe))
                                  (cons _e89971_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95454)))))
            (if (macro-os-exception? _exn89969_)
                (macro-os-exception-code _exn89969_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95453
                              (let ()
                                (declare (not safe))
                                (cons _exn89969_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95453)))))))
    (define os-exception-message
      (lambda (_exn89965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89965_))
            (let ((_e89967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89965_ 'exception))))
              (if (macro-os-exception? _e89967_)
                  (macro-os-exception-message _e89967_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95456
                                (let ()
                                  (declare (not safe))
                                  (cons _e89967_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95456)))))
            (if (macro-os-exception? _exn89965_)
                (macro-os-exception-message _exn89965_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95455
                              (let ()
                                (declare (not safe))
                                (cons _exn89965_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95455)))))))
    (define os-exception-procedure
      (lambda (_exn89959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89959_))
            (let ((_e89962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89959_ 'exception))))
              (if (macro-os-exception? _e89962_)
                  (macro-os-exception-procedure _e89962_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95458
                                (let ()
                                  (declare (not safe))
                                  (cons _e89962_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95458)))))
            (if (macro-os-exception? _exn89959_)
                (macro-os-exception-procedure _exn89959_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95457
                              (let ()
                                (declare (not safe))
                                (cons _exn89959_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95457)))))))
    (define permission-denied-exception?
      (lambda (_exn89955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89955_))
            (let ((_e89957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89955_ 'exception))))
              (macro-permission-denied-exception? _e89957_))
            (macro-permission-denied-exception? _exn89955_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (if (macro-permission-denied-exception? _e89953_)
                  (macro-permission-denied-exception-arguments _e89953_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95460
                                (let ()
                                  (declare (not safe))
                                  (cons _e89953_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95460)))))
            (if (macro-permission-denied-exception? _exn89951_)
                (macro-permission-denied-exception-arguments _exn89951_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95459
                              (let ()
                                (declare (not safe))
                                (cons _exn89951_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95459)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89945_))
            (let ((_e89948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89945_ 'exception))))
              (if (macro-permission-denied-exception? _e89948_)
                  (macro-permission-denied-exception-procedure _e89948_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95462
                                (let ()
                                  (declare (not safe))
                                  (cons _e89948_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95462)))))
            (if (macro-permission-denied-exception? _exn89945_)
                (macro-permission-denied-exception-procedure _exn89945_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95461
                              (let ()
                                (declare (not safe))
                                (cons _exn89945_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95461)))))))
    (define range-exception?
      (lambda (_exn89941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89941_))
            (let ((_e89943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89941_ 'exception))))
              (macro-range-exception? _e89943_))
            (macro-range-exception? _exn89941_))))
    (define range-exception-arg-id
      (lambda (_exn89937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89937_))
            (let ((_e89939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89937_ 'exception))))
              (if (macro-range-exception? _e89939_)
                  (macro-range-exception-arg-id _e89939_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95464
                                (let ()
                                  (declare (not safe))
                                  (cons _e89939_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95464)))))
            (if (macro-range-exception? _exn89937_)
                (macro-range-exception-arg-id _exn89937_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95463
                              (let ()
                                (declare (not safe))
                                (cons _exn89937_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95463)))))))
    (define range-exception-arguments
      (lambda (_exn89933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89933_))
            (let ((_e89935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89933_ 'exception))))
              (if (macro-range-exception? _e89935_)
                  (macro-range-exception-arguments _e89935_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95466
                                (let ()
                                  (declare (not safe))
                                  (cons _e89935_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95466)))))
            (if (macro-range-exception? _exn89933_)
                (macro-range-exception-arguments _exn89933_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95465
                              (let ()
                                (declare (not safe))
                                (cons _exn89933_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95465)))))))
    (define range-exception-procedure
      (lambda (_exn89927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89927_))
            (let ((_e89930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89927_ 'exception))))
              (if (macro-range-exception? _e89930_)
                  (macro-range-exception-procedure _e89930_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95468
                                (let ()
                                  (declare (not safe))
                                  (cons _e89930_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95468)))))
            (if (macro-range-exception? _exn89927_)
                (macro-range-exception-procedure _exn89927_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95467
                              (let ()
                                (declare (not safe))
                                (cons _exn89927_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95467)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89923_))
            (let ((_e89925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89923_ 'exception))))
              (macro-rpc-remote-error-exception? _e89925_))
            (macro-rpc-remote-error-exception? _exn89923_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89919_))
            (let ((_e89921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89919_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89921_)
                  (macro-rpc-remote-error-exception-arguments _e89921_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95470
                                (let ()
                                  (declare (not safe))
                                  (cons _e89921_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95470)))))
            (if (macro-rpc-remote-error-exception? _exn89919_)
                (macro-rpc-remote-error-exception-arguments _exn89919_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95469
                              (let ()
                                (declare (not safe))
                                (cons _exn89919_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95469)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89915_))
            (let ((_e89917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89915_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89917_)
                  (macro-rpc-remote-error-exception-message _e89917_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95472
                                (let ()
                                  (declare (not safe))
                                  (cons _e89917_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95472)))))
            (if (macro-rpc-remote-error-exception? _exn89915_)
                (macro-rpc-remote-error-exception-message _exn89915_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95471
                              (let ()
                                (declare (not safe))
                                (cons _exn89915_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95471)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89909_))
            (let ((_e89912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89909_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89912_)
                  (macro-rpc-remote-error-exception-procedure _e89912_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95474
                                (let ()
                                  (declare (not safe))
                                  (cons _e89912_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95474)))))
            (if (macro-rpc-remote-error-exception? _exn89909_)
                (macro-rpc-remote-error-exception-procedure _exn89909_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95473
                              (let ()
                                (declare (not safe))
                                (cons _exn89909_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95473)))))))
    (define scheduler-exception?
      (lambda (_exn89905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89905_))
            (let ((_e89907_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89905_ 'exception))))
              (macro-scheduler-exception? _e89907_))
            (macro-scheduler-exception? _exn89905_))))
    (define scheduler-exception-reason
      (lambda (_exn89899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89899_))
            (let ((_e89902_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89899_ 'exception))))
              (if (macro-scheduler-exception? _e89902_)
                  (macro-scheduler-exception-reason _e89902_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95476
                                (let ()
                                  (declare (not safe))
                                  (cons _e89902_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95476)))))
            (if (macro-scheduler-exception? _exn89899_)
                (macro-scheduler-exception-reason _exn89899_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95475
                              (let ()
                                (declare (not safe))
                                (cons _exn89899_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95475)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89895_))
            (let ((_e89897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89895_ 'exception))))
              (macro-sfun-conversion-exception? _e89897_))
            (macro-sfun-conversion-exception? _exn89895_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89891_))
            (let ((_e89893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89891_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89893_)
                  (macro-sfun-conversion-exception-arguments _e89893_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95478
                                (let ()
                                  (declare (not safe))
                                  (cons _e89893_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95478)))))
            (if (macro-sfun-conversion-exception? _exn89891_)
                (macro-sfun-conversion-exception-arguments _exn89891_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95477
                              (let ()
                                (declare (not safe))
                                (cons _exn89891_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95477)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89887_))
            (let ((_e89889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89887_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89889_)
                  (macro-sfun-conversion-exception-code _e89889_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95480
                                (let ()
                                  (declare (not safe))
                                  (cons _e89889_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95480)))))
            (if (macro-sfun-conversion-exception? _exn89887_)
                (macro-sfun-conversion-exception-code _exn89887_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95479
                              (let ()
                                (declare (not safe))
                                (cons _exn89887_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95479)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89883_))
            (let ((_e89885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89883_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89885_)
                  (macro-sfun-conversion-exception-message _e89885_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95482
                                (let ()
                                  (declare (not safe))
                                  (cons _e89885_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95482)))))
            (if (macro-sfun-conversion-exception? _exn89883_)
                (macro-sfun-conversion-exception-message _exn89883_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95481
                              (let ()
                                (declare (not safe))
                                (cons _exn89883_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95481)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89877_))
            (let ((_e89880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89877_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89880_)
                  (macro-sfun-conversion-exception-procedure _e89880_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95484
                                (let ()
                                  (declare (not safe))
                                  (cons _e89880_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95484)))))
            (if (macro-sfun-conversion-exception? _exn89877_)
                (macro-sfun-conversion-exception-procedure _exn89877_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95483
                              (let ()
                                (declare (not safe))
                                (cons _exn89877_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95483)))))))
    (define stack-overflow-exception?
      (lambda (_exn89871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89871_))
            (let ((_e89874_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89871_ 'exception))))
              (macro-stack-overflow-exception? _e89874_))
            (macro-stack-overflow-exception? _exn89871_))))
    (define started-thread-exception?
      (lambda (_exn89867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89867_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89867_ 'exception))))
              (macro-started-thread-exception? _e89869_))
            (macro-started-thread-exception? _exn89867_))))
    (define started-thread-exception-arguments
      (lambda (_exn89863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89863_))
            (let ((_e89865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89863_ 'exception))))
              (if (macro-started-thread-exception? _e89865_)
                  (macro-started-thread-exception-arguments _e89865_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95486
                                (let ()
                                  (declare (not safe))
                                  (cons _e89865_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95486)))))
            (if (macro-started-thread-exception? _exn89863_)
                (macro-started-thread-exception-arguments _exn89863_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95485
                              (let ()
                                (declare (not safe))
                                (cons _exn89863_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95485)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89857_))
            (let ((_e89860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89857_ 'exception))))
              (if (macro-started-thread-exception? _e89860_)
                  (macro-started-thread-exception-procedure _e89860_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95488
                                (let ()
                                  (declare (not safe))
                                  (cons _e89860_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95488)))))
            (if (macro-started-thread-exception? _exn89857_)
                (macro-started-thread-exception-procedure _exn89857_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95487
                              (let ()
                                (declare (not safe))
                                (cons _exn89857_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95487)))))))
    (define terminated-thread-exception?
      (lambda (_exn89853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89853_))
            (let ((_e89855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89853_ 'exception))))
              (macro-terminated-thread-exception? _e89855_))
            (macro-terminated-thread-exception? _exn89853_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89849_))
            (let ((_e89851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89849_ 'exception))))
              (if (macro-terminated-thread-exception? _e89851_)
                  (macro-terminated-thread-exception-arguments _e89851_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95490
                                (let ()
                                  (declare (not safe))
                                  (cons _e89851_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95490)))))
            (if (macro-terminated-thread-exception? _exn89849_)
                (macro-terminated-thread-exception-arguments _exn89849_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95489
                              (let ()
                                (declare (not safe))
                                (cons _exn89849_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95489)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89843_))
            (let ((_e89846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89843_ 'exception))))
              (if (macro-terminated-thread-exception? _e89846_)
                  (macro-terminated-thread-exception-procedure _e89846_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95492
                                (let ()
                                  (declare (not safe))
                                  (cons _e89846_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95492)))))
            (if (macro-terminated-thread-exception? _exn89843_)
                (macro-terminated-thread-exception-procedure _exn89843_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95491
                              (let ()
                                (declare (not safe))
                                (cons _exn89843_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95491)))))))
    (define type-exception?
      (lambda (_exn89839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89839_))
            (let ((_e89841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89839_ 'exception))))
              (macro-type-exception? _e89841_))
            (macro-type-exception? _exn89839_))))
    (define type-exception-arg-id
      (lambda (_exn89835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89835_))
            (let ((_e89837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89835_ 'exception))))
              (if (macro-type-exception? _e89837_)
                  (macro-type-exception-arg-id _e89837_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95494
                                (let ()
                                  (declare (not safe))
                                  (cons _e89837_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95494)))))
            (if (macro-type-exception? _exn89835_)
                (macro-type-exception-arg-id _exn89835_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95493
                              (let ()
                                (declare (not safe))
                                (cons _exn89835_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95493)))))))
    (define type-exception-arguments
      (lambda (_exn89831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89831_))
            (let ((_e89833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89831_ 'exception))))
              (if (macro-type-exception? _e89833_)
                  (macro-type-exception-arguments _e89833_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95496
                                (let ()
                                  (declare (not safe))
                                  (cons _e89833_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95496)))))
            (if (macro-type-exception? _exn89831_)
                (macro-type-exception-arguments _exn89831_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95495
                              (let ()
                                (declare (not safe))
                                (cons _exn89831_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95495)))))))
    (define type-exception-procedure
      (lambda (_exn89827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89827_))
            (let ((_e89829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89827_ 'exception))))
              (if (macro-type-exception? _e89829_)
                  (macro-type-exception-procedure _e89829_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95498
                                (let ()
                                  (declare (not safe))
                                  (cons _e89829_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95498)))))
            (if (macro-type-exception? _exn89827_)
                (macro-type-exception-procedure _exn89827_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95497
                              (let ()
                                (declare (not safe))
                                (cons _exn89827_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95497)))))))
    (define type-exception-type-id
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (if (macro-type-exception? _e89824_)
                  (macro-type-exception-type-id _e89824_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95500
                                (let ()
                                  (declare (not safe))
                                  (cons _e89824_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95500)))))
            (if (macro-type-exception? _exn89821_)
                (macro-type-exception-type-id _exn89821_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95499
                              (let ()
                                (declare (not safe))
                                (cons _exn89821_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95499)))))))
    (define unbound-global-exception?
      (lambda (_exn89817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89817_))
            (let ((_e89819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89817_ 'exception))))
              (macro-unbound-global-exception? _e89819_))
            (macro-unbound-global-exception? _exn89817_))))
    (define unbound-global-exception-code
      (lambda (_exn89813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89813_))
            (let ((_e89815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89813_ 'exception))))
              (if (macro-unbound-global-exception? _e89815_)
                  (macro-unbound-global-exception-code _e89815_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95502
                                (let ()
                                  (declare (not safe))
                                  (cons _e89815_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95502)))))
            (if (macro-unbound-global-exception? _exn89813_)
                (macro-unbound-global-exception-code _exn89813_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95501
                              (let ()
                                (declare (not safe))
                                (cons _exn89813_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95501)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89809_))
            (let ((_e89811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89809_ 'exception))))
              (if (macro-unbound-global-exception? _e89811_)
                  (macro-unbound-global-exception-rte _e89811_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95504
                                (let ()
                                  (declare (not safe))
                                  (cons _e89811_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95504)))))
            (if (macro-unbound-global-exception? _exn89809_)
                (macro-unbound-global-exception-rte _exn89809_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95503
                              (let ()
                                (declare (not safe))
                                (cons _exn89809_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95503)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89803_))
            (let ((_e89806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89803_ 'exception))))
              (if (macro-unbound-global-exception? _e89806_)
                  (macro-unbound-global-exception-variable _e89806_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95506
                                (let ()
                                  (declare (not safe))
                                  (cons _e89806_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95506)))))
            (if (macro-unbound-global-exception? _exn89803_)
                (macro-unbound-global-exception-variable _exn89803_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95505
                              (let ()
                                (declare (not safe))
                                (cons _exn89803_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95505)))))))
    (define unbound-key-exception?
      (lambda (_exn89799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89799_))
            (let ((_e89801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89799_ 'exception))))
              (macro-unbound-key-exception? _e89801_))
            (macro-unbound-key-exception? _exn89799_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89795_))
            (let ((_e89797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89795_ 'exception))))
              (if (macro-unbound-key-exception? _e89797_)
                  (macro-unbound-key-exception-arguments _e89797_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95508
                                (let ()
                                  (declare (not safe))
                                  (cons _e89797_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95508)))))
            (if (macro-unbound-key-exception? _exn89795_)
                (macro-unbound-key-exception-arguments _exn89795_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95507
                              (let ()
                                (declare (not safe))
                                (cons _exn89795_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95507)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89789_))
            (let ((_e89792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89789_ 'exception))))
              (if (macro-unbound-key-exception? _e89792_)
                  (macro-unbound-key-exception-procedure _e89792_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95510
                                (let ()
                                  (declare (not safe))
                                  (cons _e89792_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95510)))))
            (if (macro-unbound-key-exception? _exn89789_)
                (macro-unbound-key-exception-procedure _exn89789_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95509
                              (let ()
                                (declare (not safe))
                                (cons _exn89789_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95509)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89785_))
            (let ((_e89787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89785_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89787_))
            (macro-unbound-os-environment-variable-exception? _exn89785_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89781_))
            (let ((_e89783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89781_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89783_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89783_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95512
                                (let ()
                                  (declare (not safe))
                                  (cons _e89783_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95512)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89781_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89781_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95511
                              (let ()
                                (declare (not safe))
                                (cons _exn89781_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95511)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89775_))
            (let ((_e89778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89775_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89778_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89778_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95514
                                (let ()
                                  (declare (not safe))
                                  (cons _e89778_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95514)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89775_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89775_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95513
                              (let ()
                                (declare (not safe))
                                (cons _exn89775_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95513)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89771_))
            (let ((_e89773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89771_ 'exception))))
              (macro-unbound-serial-number-exception? _e89773_))
            (macro-unbound-serial-number-exception? _exn89771_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89767_))
            (let ((_e89769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89767_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89769_)
                  (macro-unbound-serial-number-exception-arguments _e89769_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95516
                                (let ()
                                  (declare (not safe))
                                  (cons _e89769_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95516)))))
            (if (macro-unbound-serial-number-exception? _exn89767_)
                (macro-unbound-serial-number-exception-arguments _exn89767_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95515
                              (let ()
                                (declare (not safe))
                                (cons _exn89767_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95515)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89761_))
            (let ((_e89764_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89761_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89764_)
                  (macro-unbound-serial-number-exception-procedure _e89764_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95518
                                (let ()
                                  (declare (not safe))
                                  (cons _e89764_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95518)))))
            (if (macro-unbound-serial-number-exception? _exn89761_)
                (macro-unbound-serial-number-exception-procedure _exn89761_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95517
                              (let ()
                                (declare (not safe))
                                (cons _exn89761_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95517)))))))
    (define uncaught-exception?
      (lambda (_exn89757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89757_))
            (let ((_e89759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89757_ 'exception))))
              (macro-uncaught-exception? _e89759_))
            (macro-uncaught-exception? _exn89757_))))
    (define uncaught-exception-arguments
      (lambda (_exn89753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89753_))
            (let ((_e89755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89753_ 'exception))))
              (if (macro-uncaught-exception? _e89755_)
                  (macro-uncaught-exception-arguments _e89755_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95520
                                (let ()
                                  (declare (not safe))
                                  (cons _e89755_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95520)))))
            (if (macro-uncaught-exception? _exn89753_)
                (macro-uncaught-exception-arguments _exn89753_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95519
                              (let ()
                                (declare (not safe))
                                (cons _exn89753_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95519)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89749_))
            (let ((_e89751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89749_ 'exception))))
              (if (macro-uncaught-exception? _e89751_)
                  (macro-uncaught-exception-procedure _e89751_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95522
                                (let ()
                                  (declare (not safe))
                                  (cons _e89751_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95522)))))
            (if (macro-uncaught-exception? _exn89749_)
                (macro-uncaught-exception-procedure _exn89749_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95521
                              (let ()
                                (declare (not safe))
                                (cons _exn89749_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95521)))))))
    (define uncaught-exception-reason
      (lambda (_exn89743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89743_))
            (let ((_e89746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89743_ 'exception))))
              (if (macro-uncaught-exception? _e89746_)
                  (macro-uncaught-exception-reason _e89746_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95524
                                (let ()
                                  (declare (not safe))
                                  (cons _e89746_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95524)))))
            (if (macro-uncaught-exception? _exn89743_)
                (macro-uncaught-exception-reason _exn89743_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95523
                              (let ()
                                (declare (not safe))
                                (cons _exn89743_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95523)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89739_))
            (let ((_e89741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89739_ 'exception))))
              (macro-uninitialized-thread-exception? _e89741_))
            (macro-uninitialized-thread-exception? _exn89739_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89735_))
            (let ((_e89737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89735_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89737_)
                  (macro-uninitialized-thread-exception-arguments _e89737_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95526
                                (let ()
                                  (declare (not safe))
                                  (cons _e89737_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95526)))))
            (if (macro-uninitialized-thread-exception? _exn89735_)
                (macro-uninitialized-thread-exception-arguments _exn89735_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95525
                              (let ()
                                (declare (not safe))
                                (cons _exn89735_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95525)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89729_))
            (let ((_e89732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89729_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89732_)
                  (macro-uninitialized-thread-exception-procedure _e89732_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95528
                                (let ()
                                  (declare (not safe))
                                  (cons _e89732_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95528)))))
            (if (macro-uninitialized-thread-exception? _exn89729_)
                (macro-uninitialized-thread-exception-procedure _exn89729_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95527
                              (let ()
                                (declare (not safe))
                                (cons _exn89729_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95527)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89725_))
            (let ((_e89727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89725_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89727_))
            (macro-unknown-keyword-argument-exception? _exn89725_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89721_))
            (let ((_e89723_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89721_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89723_)
                  (macro-unknown-keyword-argument-exception-arguments _e89723_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95530
                                (let ()
                                  (declare (not safe))
                                  (cons _e89723_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95530)))))
            (if (macro-unknown-keyword-argument-exception? _exn89721_)
                (macro-unknown-keyword-argument-exception-arguments _exn89721_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95529
                              (let ()
                                (declare (not safe))
                                (cons _exn89721_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95529)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89715_))
            (let ((_e89718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89715_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89718_)
                  (macro-unknown-keyword-argument-exception-procedure _e89718_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95532
                                (let ()
                                  (declare (not safe))
                                  (cons _e89718_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95532)))))
            (if (macro-unknown-keyword-argument-exception? _exn89715_)
                (macro-unknown-keyword-argument-exception-procedure _exn89715_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95531
                              (let ()
                                (declare (not safe))
                                (cons _exn89715_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95531)))))))
    (define unterminated-process-exception?
      (lambda (_exn89711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89711_))
            (let ((_e89713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89711_ 'exception))))
              (macro-unterminated-process-exception? _e89713_))
            (macro-unterminated-process-exception? _exn89711_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89707_))
            (let ((_e89709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89707_ 'exception))))
              (if (macro-unterminated-process-exception? _e89709_)
                  (macro-unterminated-process-exception-arguments _e89709_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95534
                                (let ()
                                  (declare (not safe))
                                  (cons _e89709_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95534)))))
            (if (macro-unterminated-process-exception? _exn89707_)
                (macro-unterminated-process-exception-arguments _exn89707_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95533
                              (let ()
                                (declare (not safe))
                                (cons _exn89707_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95533)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89701_))
            (let ((_e89704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89701_ 'exception))))
              (if (macro-unterminated-process-exception? _e89704_)
                  (macro-unterminated-process-exception-procedure _e89704_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95536
                                (let ()
                                  (declare (not safe))
                                  (cons _e89704_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95536)))))
            (if (macro-unterminated-process-exception? _exn89701_)
                (macro-unterminated-process-exception-procedure _exn89701_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95535
                              (let ()
                                (declare (not safe))
                                (cons _exn89701_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95535)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89697_))
            (let ((_e89699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89697_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89699_))
            (macro-wrong-number-of-arguments-exception? _exn89697_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89693_))
            (let ((_e89695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89693_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89695_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89695_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95538
                                (let ()
                                  (declare (not safe))
                                  (cons _e89695_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95538)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89693_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89693_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95537
                              (let ()
                                (declare (not safe))
                                (cons _exn89693_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95537)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89687_))
            (let ((_e89690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89687_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89690_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89690_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95540
                                (let ()
                                  (declare (not safe))
                                  (cons _e89690_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95540)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89687_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89687_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95539
                              (let ()
                                (declare (not safe))
                                (cons _exn89687_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95539)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89683_))
            (let ((_e89685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89683_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89685_))
            (macro-wrong-number-of-values-exception? _exn89683_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89679_))
            (let ((_e89681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89679_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89681_)
                  (macro-wrong-number-of-values-exception-code _e89681_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95542
                                (let ()
                                  (declare (not safe))
                                  (cons _e89681_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95542)))))
            (if (macro-wrong-number-of-values-exception? _exn89679_)
                (macro-wrong-number-of-values-exception-code _exn89679_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95541
                              (let ()
                                (declare (not safe))
                                (cons _exn89679_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95541)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89675_))
            (let ((_e89677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89675_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89677_)
                  (macro-wrong-number-of-values-exception-rte _e89677_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95544
                                (let ()
                                  (declare (not safe))
                                  (cons _e89677_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95544)))))
            (if (macro-wrong-number-of-values-exception? _exn89675_)
                (macro-wrong-number-of-values-exception-rte _exn89675_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95543
                              (let ()
                                (declare (not safe))
                                (cons _exn89675_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95543)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89669_))
            (let ((_e89672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89669_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89672_)
                  (macro-wrong-number-of-values-exception-vals _e89672_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95546
                                (let ()
                                  (declare (not safe))
                                  (cons _e89672_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95546)))))
            (if (macro-wrong-number-of-values-exception? _exn89669_)
                (macro-wrong-number-of-values-exception-vals _exn89669_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95545
                              (let ()
                                (declare (not safe))
                                (cons _exn89669_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95545)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89663_))
            (let ((_e89666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89663_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89666_))
            (macro-wrong-processor-c-return-exception? _exn89663_))))))
