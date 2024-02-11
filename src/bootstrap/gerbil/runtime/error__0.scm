(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707618263)
  (begin
    (define Exception::t
      (let ((__tmp95365 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95365
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90868_
        (apply make-class-instance Exception::t _$args90868_)))
    (define StackTrace::t
      (let ((__tmp95366 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95366
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90865_
        (apply make-class-instance StackTrace::t _$args90865_)))
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
      (let ((__tmp95367 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95367
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90862_ (apply make-class-instance Error::t _$args90862_)))
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
      (let ((__tmp95368 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95368
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90859_
        (apply make-class-instance RuntimeException::t _$args90859_)))
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
      (lambda (_exn90854_ _continue90855_)
        (let ((_exn90857_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90854_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90857_ _continue90855_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90850_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90850_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90850_ 'continuation))
                '#!void
                (let ((__tmp95369
                       (lambda (_cont90852_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90850_
                            'continuation
                            _cont90852_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95369)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90850_))))
    (define error
      (lambda (_message90847_ . _irritants90848_)
        (raise (let ((__obj95359
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95359
                  _message90847_
                  'irritants:
                  _irritants90848_)
                 __obj95359))))
    (define with-exception-handler
      (lambda (_handler90840_ _thunk90841_)
        (if (let () (declare (not safe)) (procedure? _handler90840_))
            '#!void
            (raise (let ((__obj95360
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95360
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90840_ '())))
                     __obj95360)))
        (if (let () (declare (not safe)) (procedure? _thunk90841_))
            '#!void
            (raise (let ((__obj95361
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95361
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90841_ '())))
                     __obj95361)))
        (let ((__tmp95370
               (lambda (_exn90843_)
                 (let ((_exn90845_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90843_))))
                   (_handler90840_ _exn90845_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95370 _thunk90841_))))
    (define with-catch
      (lambda (_handler90833_ _thunk90834_)
        (if (let () (declare (not safe)) (procedure? _handler90833_))
            '#!void
            (raise (let ((__obj95362
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95362
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90833_ '())))
                     __obj95362)))
        (if (let () (declare (not safe)) (procedure? _thunk90834_))
            '#!void
            (raise (let ((__obj95363
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95363
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90834_ '())))
                     __obj95363)))
        (let ((__tmp95371
               (lambda (_cont90836_)
                 (with-exception-handler
                  (lambda (_exn90838_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90836_
                       _handler90833_
                       _exn90838_)))
                  _thunk90834_))))
          (declare (not safe))
          (##continuation-capture __tmp95371))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90824_)
        (if (or (heap-overflow-exception? _exn90824_)
                (stack-overflow-exception? _exn90824_))
            _exn90824_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90824_))
                _exn90824_
                (if (macro-exception? _exn90824_)
                    (let ((_rte90829_
                           (let ((__obj95364
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95364
                                _exn90824_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95364)))
                      (let ((__tmp95372
                             (lambda (_cont90831_)
                               (let ((__tmp95373
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90831_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90829_
                                  'continuation
                                  __tmp95373)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95372))
                      _rte90829_)
                    _exn90824_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90819_)
        (let ((_$e90821_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90819_))))
          (if _$e90821_ _$e90821_ (error-exception? _obj90819_)))))
    (define error-message
      (lambda (_obj90817_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90817_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90817_ 'message))
            (if (error-exception? _obj90817_)
                (error-exception-message _obj90817_)
                '#f))))
    (define error-irritants
      (lambda (_obj90815_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90815_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90815_ 'irritants))
            (if (error-exception? _obj90815_)
                (error-exception-parameters _obj90815_)
                '#f))))
    (define error-trace
      (lambda (_obj90813_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90813_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90813_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90795_ _port90796_)
        (let ((_$e90798_
               (let ()
                 (declare (not safe))
                 (method-ref _e90795_ 'display-exception))))
          (if _$e90798_
              ((lambda (_f90801_) (_f90801_ _e90795_ _port90796_)) _$e90798_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90795_ _port90796_))))))
    (define display-exception__0
      (lambda (_e90806_)
        (let ((_port90808_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90806_ _port90808_))))
    (define display-exception
      (lambda _g95375_
        (let ((_g95374_ (let () (declare (not safe)) (##length _g95375_))))
          (cond ((let () (declare (not safe)) (##fx= _g95374_ 1))
                 (apply (lambda (_e90806_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90806_)))
                        _g95375_))
                ((let () (declare (not safe)) (##fx= _g95374_ 2))
                 (apply (lambda (_e90810_ _port90811_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90810_ _port90811_)))
                        _g95375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95375_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90784_ _message90785_ . _rest90786_)
        (let ((_message90792_
               (if (let () (declare (not safe)) (string? _message90785_))
                   _message90785_
                   (call-with-output-string
                    '""
                    (lambda (_g9078790789_)
                      (display _message90785_ _g9078790789_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90784_ 'message _message90792_))
          (apply class-instance-init! _self90784_ _rest90786_))))
    (define Error:::init!::specialize
      (lambda (__t95338)
        (let ((__message95339
               (let ((__tmp95340
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95338 'message))))
                 (if __tmp95340 __tmp95340 (error '"Unknown slot" 'message)))))
          (lambda (_self90784_ _message90785_ . _rest90786_)
            (let ((_message90792_
                   (if (let () (declare (not safe)) (string? _message90785_))
                       _message90785_
                       (call-with-output-string
                        '""
                        (lambda (_g9078790789_)
                          (display _message90785_ _g9078790789_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90784_
                 _message90792_
                 __message95339
                 __t95338
                 '#f))
              (apply class-instance-init! _self90784_ _rest90786_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90642_ _port90643_)
        (let ((_tmp-port90645_ (open-output-string))
              (_display-error-newline90646_
               (> (output-port-column _port90643_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90645_))
          (let ((__tmp95376
                 (lambda ()
                   (if _display-error-newline90646_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90649_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90642_ 'where))))
                     (if _$e90649_ (display _$e90649_) (display '"?")))
                   (let ((__tmp95377
                          (let ((__tmp95378
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90642_))))
                            (declare (not safe))
                            (##type-name __tmp95378))))
                     (declare (not safe))
                     (display* '" [" __tmp95377 '"]: "))
                   (let ((__tmp95379
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90642_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95379))
                   (let ((_irritants90652_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90642_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90652_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90654_)
                              (write _obj90654_)
                              (write-char '#\space))
                            _irritants90652_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90642_))
                            (dump-stack-trace?))
                       (let ((_cont9065590657_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90642_
                                 'continuation))))
                         (if _cont9065590657_
                             (let ((_cont90660_ _cont9065590657_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90660_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95376
             current-output-port
             _tmp-port90645_))
          (let ((__tmp95380 (get-output-string _tmp-port90645_)))
            (declare (not safe))
            (##write-string __tmp95380 _port90643_)))))
    (define Error::display-exception::specialize
      (lambda (__t95341)
        (let ((__where95342
               (let ((__tmp95346
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95341 'where))))
                 (if __tmp95346 __tmp95346 (error '"Unknown slot" 'where))))
              (__message95343
               (let ((__tmp95347
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95341 'message))))
                 (if __tmp95347 __tmp95347 (error '"Unknown slot" 'message))))
              (__continuation95344
               (let ((__tmp95348
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95341 'continuation))))
                 (if __tmp95348
                     __tmp95348
                     (error '"Unknown slot" 'continuation))))
              (__irritants95345
               (let ((__tmp95349
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95341 'irritants))))
                 (if __tmp95349
                     __tmp95349
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self90642_ _port90643_)
            (let ((_tmp-port90645_ (open-output-string))
                  (_display-error-newline90646_
                   (> (output-port-column _port90643_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90645_))
              (let ((__tmp95381
                     (lambda ()
                       (if _display-error-newline90646_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90649_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90642_
                                 __where95342
                                 __t95341
                                 '#f))))
                         (if _$e90649_ (display _$e90649_) (display '"?")))
                       (let ((__tmp95382
                              (let ((__tmp95383
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90642_))))
                                (declare (not safe))
                                (##type-name __tmp95383))))
                         (declare (not safe))
                         (display* '" [" __tmp95382 '"]: "))
                       (let ((__tmp95384
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90642_
                                 __message95343
                                 __t95341
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95384))
                       (let ((_irritants90652_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90642_
                                 __irritants95345
                                 __t95341
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90652_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90654_)
                                  (write _obj90654_)
                                  (write-char '#\space))
                                _irritants90652_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90642_))
                                (dump-stack-trace?))
                           (let ((_cont9065590657_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90642_
                                     __continuation95344
                                     __t95341
                                     '#f))))
                             (if _cont9065590657_
                                 (let ((_cont90660_ _cont9065590657_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90660_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95381
                 current-output-port
                 _tmp-port90645_))
              (let ((__tmp95385 (get-output-string _tmp-port90645_)))
                (declare (not safe))
                (##write-string __tmp95385 _port90643_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90509_ _port90510_)
        (let ((_tmp-port90512_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90512_))
          (let ((__tmp95386
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90509_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95386 _tmp-port90512_))
          (if (dump-stack-trace?)
              (let ((_cont9051390515_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90509_ 'continuation))))
                (if _cont9051390515_
                    (let ((_cont90518_ _cont9051390515_))
                      (display '"--- continuation backtrace:" _tmp-port90512_)
                      (newline _tmp-port90512_)
                      (display-continuation-backtrace
                       _cont90518_
                       _tmp-port90512_))
                    '#f))
              '#!void)
          (let ((__tmp95387 (get-output-string _tmp-port90512_)))
            (declare (not safe))
            (##write-string __tmp95387 _port90510_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95350)
        (let ((__exception95351
               (let ((__tmp95353
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95350 'exception))))
                 (if __tmp95353
                     __tmp95353
                     (error '"Unknown slot" 'exception))))
              (__continuation95352
               (let ((__tmp95354
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95350 'continuation))))
                 (if __tmp95354
                     __tmp95354
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90509_ _port90510_)
            (let ((_tmp-port90512_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90512_))
              (let ((__tmp95388
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90509_
                        __exception95351
                        __t95350
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95388 _tmp-port90512_))
              (if (dump-stack-trace?)
                  (let ((_cont9051390515_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90509_
                            __continuation95352
                            __t95350
                            '#f))))
                    (if _cont9051390515_
                        (let ((_cont90518_ _cont9051390515_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90512_)
                          (newline _tmp-port90512_)
                          (display-continuation-backtrace
                           _cont90518_
                           _tmp-port90512_))
                        '#f))
                  '#!void)
              (let ((__tmp95389 (get-output-string _tmp-port90512_)))
                (declare (not safe))
                (##write-string __tmp95389 _port90510_)))))))
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
      (lambda (_port90381_)
        (if (macro-character-port? _port90381_)
            (let ((_old-width90383_
                   (macro-character-port-output-width _port90381_)))
              (macro-character-port-output-width-set!
               _port90381_
               (lambda (_port90385_) '256))
              _old-width90383_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90378_ _old-width90379_)
        (if (macro-character-port? _port90378_)
            (macro-character-port-output-width-set!
             _port90378_
             _old-width90379_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90376_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90376_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90370_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90370_))
            (let ((_e90373_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90370_ 'exception))))
              (macro-abandoned-mutex-exception? _e90373_))
            (macro-abandoned-mutex-exception? _exn90370_))))
    (define cfun-conversion-exception?
      (lambda (_exn90366_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90366_))
            (let ((_e90368_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90366_ 'exception))))
              (macro-cfun-conversion-exception? _e90368_))
            (macro-cfun-conversion-exception? _exn90366_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90362_))
            (let ((_e90364_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90362_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90364_)
                  (macro-cfun-conversion-exception-arguments _e90364_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95391
                                (let ()
                                  (declare (not safe))
                                  (cons _e90364_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95391)))))
            (if (macro-cfun-conversion-exception? _exn90362_)
                (macro-cfun-conversion-exception-arguments _exn90362_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95390
                              (let ()
                                (declare (not safe))
                                (cons _exn90362_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95390)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90358_))
            (let ((_e90360_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90358_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90360_)
                  (macro-cfun-conversion-exception-code _e90360_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95393
                                (let ()
                                  (declare (not safe))
                                  (cons _e90360_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95393)))))
            (if (macro-cfun-conversion-exception? _exn90358_)
                (macro-cfun-conversion-exception-code _exn90358_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95392
                              (let ()
                                (declare (not safe))
                                (cons _exn90358_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95392)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90354_))
            (let ((_e90356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90354_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90356_)
                  (macro-cfun-conversion-exception-message _e90356_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95395
                                (let ()
                                  (declare (not safe))
                                  (cons _e90356_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95395)))))
            (if (macro-cfun-conversion-exception? _exn90354_)
                (macro-cfun-conversion-exception-message _exn90354_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95394
                              (let ()
                                (declare (not safe))
                                (cons _exn90354_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95394)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90348_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90348_))
            (let ((_e90351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90348_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90351_)
                  (macro-cfun-conversion-exception-procedure _e90351_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95397
                                (let ()
                                  (declare (not safe))
                                  (cons _e90351_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95397)))))
            (if (macro-cfun-conversion-exception? _exn90348_)
                (macro-cfun-conversion-exception-procedure _exn90348_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95396
                              (let ()
                                (declare (not safe))
                                (cons _exn90348_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95396)))))))
    (define datum-parsing-exception?
      (lambda (_exn90344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90344_))
            (let ((_e90346_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90344_ 'exception))))
              (macro-datum-parsing-exception? _e90346_))
            (macro-datum-parsing-exception? _exn90344_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90340_))
            (let ((_e90342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90340_ 'exception))))
              (if (macro-datum-parsing-exception? _e90342_)
                  (macro-datum-parsing-exception-kind _e90342_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95399
                                (let ()
                                  (declare (not safe))
                                  (cons _e90342_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95399)))))
            (if (macro-datum-parsing-exception? _exn90340_)
                (macro-datum-parsing-exception-kind _exn90340_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95398
                              (let ()
                                (declare (not safe))
                                (cons _exn90340_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95398)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90336_))
            (let ((_e90338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90336_ 'exception))))
              (if (macro-datum-parsing-exception? _e90338_)
                  (macro-datum-parsing-exception-parameters _e90338_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95401
                                (let ()
                                  (declare (not safe))
                                  (cons _e90338_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95401)))))
            (if (macro-datum-parsing-exception? _exn90336_)
                (macro-datum-parsing-exception-parameters _exn90336_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95400
                              (let ()
                                (declare (not safe))
                                (cons _exn90336_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95400)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90330_))
            (let ((_e90333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90330_ 'exception))))
              (if (macro-datum-parsing-exception? _e90333_)
                  (macro-datum-parsing-exception-readenv _e90333_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95403
                                (let ()
                                  (declare (not safe))
                                  (cons _e90333_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95403)))))
            (if (macro-datum-parsing-exception? _exn90330_)
                (macro-datum-parsing-exception-readenv _exn90330_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95402
                              (let ()
                                (declare (not safe))
                                (cons _exn90330_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95402)))))))
    (define deadlock-exception?
      (lambda (_exn90324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90324_))
            (let ((_e90327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90324_ 'exception))))
              (macro-deadlock-exception? _e90327_))
            (macro-deadlock-exception? _exn90324_))))
    (define divide-by-zero-exception?
      (lambda (_exn90320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90320_))
            (let ((_e90322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90320_ 'exception))))
              (macro-divide-by-zero-exception? _e90322_))
            (macro-divide-by-zero-exception? _exn90320_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90316_))
            (let ((_e90318_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90316_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90318_)
                  (macro-divide-by-zero-exception-arguments _e90318_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95405
                                (let ()
                                  (declare (not safe))
                                  (cons _e90318_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95405)))))
            (if (macro-divide-by-zero-exception? _exn90316_)
                (macro-divide-by-zero-exception-arguments _exn90316_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95404
                              (let ()
                                (declare (not safe))
                                (cons _exn90316_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95404)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90310_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90310_))
            (let ((_e90313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90310_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90313_)
                  (macro-divide-by-zero-exception-procedure _e90313_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95407
                                (let ()
                                  (declare (not safe))
                                  (cons _e90313_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95407)))))
            (if (macro-divide-by-zero-exception? _exn90310_)
                (macro-divide-by-zero-exception-procedure _exn90310_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95406
                              (let ()
                                (declare (not safe))
                                (cons _exn90310_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95406)))))))
    (define error-exception?
      (lambda (_exn90306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90306_))
            (let ((_e90308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90306_ 'exception))))
              (macro-error-exception? _e90308_))
            (macro-error-exception? _exn90306_))))
    (define error-exception-message
      (lambda (_exn90302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90302_))
            (let ((_e90304_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90302_ 'exception))))
              (if (macro-error-exception? _e90304_)
                  (macro-error-exception-message _e90304_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95409
                                (let ()
                                  (declare (not safe))
                                  (cons _e90304_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95409)))))
            (if (macro-error-exception? _exn90302_)
                (macro-error-exception-message _exn90302_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95408
                              (let ()
                                (declare (not safe))
                                (cons _exn90302_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95408)))))))
    (define error-exception-parameters
      (lambda (_exn90296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90296_))
            (let ((_e90299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90296_ 'exception))))
              (if (macro-error-exception? _e90299_)
                  (macro-error-exception-parameters _e90299_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95411
                                (let ()
                                  (declare (not safe))
                                  (cons _e90299_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95411)))))
            (if (macro-error-exception? _exn90296_)
                (macro-error-exception-parameters _exn90296_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95410
                              (let ()
                                (declare (not safe))
                                (cons _exn90296_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95410)))))))
    (define expression-parsing-exception?
      (lambda (_exn90292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90292_))
            (let ((_e90294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90292_ 'exception))))
              (macro-expression-parsing-exception? _e90294_))
            (macro-expression-parsing-exception? _exn90292_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90288_))
            (let ((_e90290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90288_ 'exception))))
              (if (macro-expression-parsing-exception? _e90290_)
                  (macro-expression-parsing-exception-kind _e90290_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95413
                                (let ()
                                  (declare (not safe))
                                  (cons _e90290_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95413)))))
            (if (macro-expression-parsing-exception? _exn90288_)
                (macro-expression-parsing-exception-kind _exn90288_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95412
                              (let ()
                                (declare (not safe))
                                (cons _exn90288_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95412)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90284_))
            (let ((_e90286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90284_ 'exception))))
              (if (macro-expression-parsing-exception? _e90286_)
                  (macro-expression-parsing-exception-parameters _e90286_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95415
                                (let ()
                                  (declare (not safe))
                                  (cons _e90286_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95415)))))
            (if (macro-expression-parsing-exception? _exn90284_)
                (macro-expression-parsing-exception-parameters _exn90284_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95414
                              (let ()
                                (declare (not safe))
                                (cons _exn90284_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95414)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90278_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90278_))
            (let ((_e90281_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90278_ 'exception))))
              (if (macro-expression-parsing-exception? _e90281_)
                  (macro-expression-parsing-exception-source _e90281_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95417
                                (let ()
                                  (declare (not safe))
                                  (cons _e90281_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95417)))))
            (if (macro-expression-parsing-exception? _exn90278_)
                (macro-expression-parsing-exception-source _exn90278_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95416
                              (let ()
                                (declare (not safe))
                                (cons _exn90278_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95416)))))))
    (define file-exists-exception?
      (lambda (_exn90274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90274_))
            (let ((_e90276_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90274_ 'exception))))
              (macro-file-exists-exception? _e90276_))
            (macro-file-exists-exception? _exn90274_))))
    (define file-exists-exception-arguments
      (lambda (_exn90270_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90270_))
            (let ((_e90272_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90270_ 'exception))))
              (if (macro-file-exists-exception? _e90272_)
                  (macro-file-exists-exception-arguments _e90272_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95419
                                (let ()
                                  (declare (not safe))
                                  (cons _e90272_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95419)))))
            (if (macro-file-exists-exception? _exn90270_)
                (macro-file-exists-exception-arguments _exn90270_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95418
                              (let ()
                                (declare (not safe))
                                (cons _exn90270_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95418)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90264_))
            (let ((_e90267_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90264_ 'exception))))
              (if (macro-file-exists-exception? _e90267_)
                  (macro-file-exists-exception-procedure _e90267_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95421
                                (let ()
                                  (declare (not safe))
                                  (cons _e90267_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95421)))))
            (if (macro-file-exists-exception? _exn90264_)
                (macro-file-exists-exception-procedure _exn90264_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95420
                              (let ()
                                (declare (not safe))
                                (cons _exn90264_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95420)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90260_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90260_))
            (let ((_e90262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90260_ 'exception))))
              (macro-fixnum-overflow-exception? _e90262_))
            (macro-fixnum-overflow-exception? _exn90260_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90256_))
            (let ((_e90258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90256_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90258_)
                  (macro-fixnum-overflow-exception-arguments _e90258_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95423
                                (let ()
                                  (declare (not safe))
                                  (cons _e90258_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95423)))))
            (if (macro-fixnum-overflow-exception? _exn90256_)
                (macro-fixnum-overflow-exception-arguments _exn90256_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95422
                              (let ()
                                (declare (not safe))
                                (cons _exn90256_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95422)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90250_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90250_))
            (let ((_e90253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90250_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90253_)
                  (macro-fixnum-overflow-exception-procedure _e90253_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95425
                                (let ()
                                  (declare (not safe))
                                  (cons _e90253_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95425)))))
            (if (macro-fixnum-overflow-exception? _exn90250_)
                (macro-fixnum-overflow-exception-procedure _exn90250_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95424
                              (let ()
                                (declare (not safe))
                                (cons _exn90250_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95424)))))))
    (define heap-overflow-exception?
      (lambda (_exn90244_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90244_))
            (let ((_e90247_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90244_ 'exception))))
              (macro-heap-overflow-exception? _e90247_))
            (macro-heap-overflow-exception? _exn90244_))))
    (define inactive-thread-exception?
      (lambda (_exn90240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90240_))
            (let ((_e90242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90240_ 'exception))))
              (macro-inactive-thread-exception? _e90242_))
            (macro-inactive-thread-exception? _exn90240_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90236_))
            (let ((_e90238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90236_ 'exception))))
              (if (macro-inactive-thread-exception? _e90238_)
                  (macro-inactive-thread-exception-arguments _e90238_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95427
                                (let ()
                                  (declare (not safe))
                                  (cons _e90238_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95427)))))
            (if (macro-inactive-thread-exception? _exn90236_)
                (macro-inactive-thread-exception-arguments _exn90236_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95426
                              (let ()
                                (declare (not safe))
                                (cons _exn90236_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95426)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90230_))
            (let ((_e90233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90230_ 'exception))))
              (if (macro-inactive-thread-exception? _e90233_)
                  (macro-inactive-thread-exception-procedure _e90233_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95429
                                (let ()
                                  (declare (not safe))
                                  (cons _e90233_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95429)))))
            (if (macro-inactive-thread-exception? _exn90230_)
                (macro-inactive-thread-exception-procedure _exn90230_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95428
                              (let ()
                                (declare (not safe))
                                (cons _exn90230_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95428)))))))
    (define initialized-thread-exception?
      (lambda (_exn90226_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90226_))
            (let ((_e90228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90226_ 'exception))))
              (macro-initialized-thread-exception? _e90228_))
            (macro-initialized-thread-exception? _exn90226_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90222_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90222_))
            (let ((_e90224_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90222_ 'exception))))
              (if (macro-initialized-thread-exception? _e90224_)
                  (macro-initialized-thread-exception-arguments _e90224_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95431
                                (let ()
                                  (declare (not safe))
                                  (cons _e90224_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95431)))))
            (if (macro-initialized-thread-exception? _exn90222_)
                (macro-initialized-thread-exception-arguments _exn90222_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95430
                              (let ()
                                (declare (not safe))
                                (cons _exn90222_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95430)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90216_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90216_))
            (let ((_e90219_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90216_ 'exception))))
              (if (macro-initialized-thread-exception? _e90219_)
                  (macro-initialized-thread-exception-procedure _e90219_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95433
                                (let ()
                                  (declare (not safe))
                                  (cons _e90219_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95433)))))
            (if (macro-initialized-thread-exception? _exn90216_)
                (macro-initialized-thread-exception-procedure _exn90216_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95432
                              (let ()
                                (declare (not safe))
                                (cons _exn90216_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95432)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90212_))
            (let ((_e90214_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90212_ 'exception))))
              (macro-invalid-hash-number-exception? _e90214_))
            (macro-invalid-hash-number-exception? _exn90212_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90208_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90208_))
            (let ((_e90210_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90208_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90210_)
                  (macro-invalid-hash-number-exception-arguments _e90210_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95435
                                (let ()
                                  (declare (not safe))
                                  (cons _e90210_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95435)))))
            (if (macro-invalid-hash-number-exception? _exn90208_)
                (macro-invalid-hash-number-exception-arguments _exn90208_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95434
                              (let ()
                                (declare (not safe))
                                (cons _exn90208_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95434)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90202_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90202_))
            (let ((_e90205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90202_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90205_)
                  (macro-invalid-hash-number-exception-procedure _e90205_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95437
                                (let ()
                                  (declare (not safe))
                                  (cons _e90205_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95437)))))
            (if (macro-invalid-hash-number-exception? _exn90202_)
                (macro-invalid-hash-number-exception-procedure _exn90202_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95436
                              (let ()
                                (declare (not safe))
                                (cons _exn90202_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95436)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90198_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90198_))
            (let ((_e90200_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90198_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90200_))
            (macro-invalid-utf8-encoding-exception? _exn90198_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90194_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90194_))
            (let ((_e90196_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90194_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90196_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90196_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95439
                                (let ()
                                  (declare (not safe))
                                  (cons _e90196_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95439)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90194_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90194_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95438
                              (let ()
                                (declare (not safe))
                                (cons _exn90194_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95438)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90188_))
            (let ((_e90191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90188_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90191_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90191_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95441
                                (let ()
                                  (declare (not safe))
                                  (cons _e90191_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95441)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90188_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90188_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95440
                              (let ()
                                (declare (not safe))
                                (cons _exn90188_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95440)))))))
    (define join-timeout-exception?
      (lambda (_exn90184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90184_))
            (let ((_e90186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90184_ 'exception))))
              (macro-join-timeout-exception? _e90186_))
            (macro-join-timeout-exception? _exn90184_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90180_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90180_))
            (let ((_e90182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90180_ 'exception))))
              (if (macro-join-timeout-exception? _e90182_)
                  (macro-join-timeout-exception-arguments _e90182_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95443
                                (let ()
                                  (declare (not safe))
                                  (cons _e90182_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95443)))))
            (if (macro-join-timeout-exception? _exn90180_)
                (macro-join-timeout-exception-arguments _exn90180_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95442
                              (let ()
                                (declare (not safe))
                                (cons _exn90180_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95442)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90174_))
            (let ((_e90177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90174_ 'exception))))
              (if (macro-join-timeout-exception? _e90177_)
                  (macro-join-timeout-exception-procedure _e90177_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95445
                                (let ()
                                  (declare (not safe))
                                  (cons _e90177_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95445)))))
            (if (macro-join-timeout-exception? _exn90174_)
                (macro-join-timeout-exception-procedure _exn90174_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95444
                              (let ()
                                (declare (not safe))
                                (cons _exn90174_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95444)))))))
    (define keyword-expected-exception?
      (lambda (_exn90170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90170_))
            (let ((_e90172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90170_ 'exception))))
              (macro-keyword-expected-exception? _e90172_))
            (macro-keyword-expected-exception? _exn90170_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90166_))
            (let ((_e90168_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90166_ 'exception))))
              (if (macro-keyword-expected-exception? _e90168_)
                  (macro-keyword-expected-exception-arguments _e90168_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95447
                                (let ()
                                  (declare (not safe))
                                  (cons _e90168_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95447)))))
            (if (macro-keyword-expected-exception? _exn90166_)
                (macro-keyword-expected-exception-arguments _exn90166_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95446
                              (let ()
                                (declare (not safe))
                                (cons _exn90166_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95446)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90160_))
            (let ((_e90163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90160_ 'exception))))
              (if (macro-keyword-expected-exception? _e90163_)
                  (macro-keyword-expected-exception-procedure _e90163_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95449
                                (let ()
                                  (declare (not safe))
                                  (cons _e90163_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95449)))))
            (if (macro-keyword-expected-exception? _exn90160_)
                (macro-keyword-expected-exception-procedure _exn90160_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95448
                              (let ()
                                (declare (not safe))
                                (cons _exn90160_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95448)))))))
    (define length-mismatch-exception?
      (lambda (_exn90156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90156_))
            (let ((_e90158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90156_ 'exception))))
              (macro-length-mismatch-exception? _e90158_))
            (macro-length-mismatch-exception? _exn90156_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90152_))
            (let ((_e90154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90152_ 'exception))))
              (if (macro-length-mismatch-exception? _e90154_)
                  (macro-length-mismatch-exception-arg-id _e90154_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95451
                                (let ()
                                  (declare (not safe))
                                  (cons _e90154_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95451)))))
            (if (macro-length-mismatch-exception? _exn90152_)
                (macro-length-mismatch-exception-arg-id _exn90152_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95450
                              (let ()
                                (declare (not safe))
                                (cons _exn90152_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95450)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90148_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90148_))
            (let ((_e90150_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90148_ 'exception))))
              (if (macro-length-mismatch-exception? _e90150_)
                  (macro-length-mismatch-exception-arguments _e90150_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95453
                                (let ()
                                  (declare (not safe))
                                  (cons _e90150_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95453)))))
            (if (macro-length-mismatch-exception? _exn90148_)
                (macro-length-mismatch-exception-arguments _exn90148_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95452
                              (let ()
                                (declare (not safe))
                                (cons _exn90148_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95452)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90142_))
            (let ((_e90145_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90142_ 'exception))))
              (if (macro-length-mismatch-exception? _e90145_)
                  (macro-length-mismatch-exception-procedure _e90145_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95455
                                (let ()
                                  (declare (not safe))
                                  (cons _e90145_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95455)))))
            (if (macro-length-mismatch-exception? _exn90142_)
                (macro-length-mismatch-exception-procedure _exn90142_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95454
                              (let ()
                                (declare (not safe))
                                (cons _exn90142_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95454)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90138_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90138_))
            (let ((_e90140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90138_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90140_))
            (macro-mailbox-receive-timeout-exception? _exn90138_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90134_))
            (let ((_e90136_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90134_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90136_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90136_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95457
                                (let ()
                                  (declare (not safe))
                                  (cons _e90136_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95457)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90134_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90134_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95456
                              (let ()
                                (declare (not safe))
                                (cons _exn90134_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95456)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90128_))
            (let ((_e90131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90128_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90131_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90131_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95459
                                (let ()
                                  (declare (not safe))
                                  (cons _e90131_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95459)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90128_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90128_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95458
                              (let ()
                                (declare (not safe))
                                (cons _exn90128_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95458)))))))
    (define module-not-found-exception?
      (lambda (_exn90124_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90124_))
            (let ((_e90126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90124_ 'exception))))
              (macro-module-not-found-exception? _e90126_))
            (macro-module-not-found-exception? _exn90124_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90120_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90120_))
            (let ((_e90122_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90120_ 'exception))))
              (if (macro-module-not-found-exception? _e90122_)
                  (macro-module-not-found-exception-arguments _e90122_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95461
                                (let ()
                                  (declare (not safe))
                                  (cons _e90122_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95461)))))
            (if (macro-module-not-found-exception? _exn90120_)
                (macro-module-not-found-exception-arguments _exn90120_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95460
                              (let ()
                                (declare (not safe))
                                (cons _exn90120_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95460)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90114_))
            (let ((_e90117_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90114_ 'exception))))
              (if (macro-module-not-found-exception? _e90117_)
                  (macro-module-not-found-exception-procedure _e90117_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95463
                                (let ()
                                  (declare (not safe))
                                  (cons _e90117_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95463)))))
            (if (macro-module-not-found-exception? _exn90114_)
                (macro-module-not-found-exception-procedure _exn90114_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95462
                              (let ()
                                (declare (not safe))
                                (cons _exn90114_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95462)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90108_))
            (let ((_e90111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90108_ 'exception))))
              (macro-multiple-c-return-exception? _e90111_))
            (macro-multiple-c-return-exception? _exn90108_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90104_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90104_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90106_))
            (macro-no-such-file-or-directory-exception? _exn90104_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90100_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90100_))
            (let ((_e90102_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90100_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90102_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90102_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95465
                                (let ()
                                  (declare (not safe))
                                  (cons _e90102_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95465)))))
            (if (macro-no-such-file-or-directory-exception? _exn90100_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90100_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95464
                              (let ()
                                (declare (not safe))
                                (cons _exn90100_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95464)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90094_))
            (let ((_e90097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90094_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90097_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90097_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95467
                                (let ()
                                  (declare (not safe))
                                  (cons _e90097_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95467)))))
            (if (macro-no-such-file-or-directory-exception? _exn90094_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90094_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95466
                              (let ()
                                (declare (not safe))
                                (cons _exn90094_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95466)))))))
    (define noncontinuable-exception?
      (lambda (_exn90090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90090_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90090_ 'exception))))
              (macro-noncontinuable-exception? _e90092_))
            (macro-noncontinuable-exception? _exn90090_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90084_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90084_ 'exception))))
              (if (macro-noncontinuable-exception? _e90087_)
                  (macro-noncontinuable-exception-reason _e90087_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95469
                                (let ()
                                  (declare (not safe))
                                  (cons _e90087_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95469)))))
            (if (macro-noncontinuable-exception? _exn90084_)
                (macro-noncontinuable-exception-reason _exn90084_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95468
                              (let ()
                                (declare (not safe))
                                (cons _exn90084_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95468)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90080_))
            (let ((_e90082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90080_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90082_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90080_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90076_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90076_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90078_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90078_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95471
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95471)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90076_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90076_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95470
                              (let ()
                                (declare (not safe))
                                (cons _exn90076_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95470)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90070_))
            (let ((_e90073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90070_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90073_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90073_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95473
                                (let ()
                                  (declare (not safe))
                                  (cons _e90073_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95473)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90070_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90070_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95472
                              (let ()
                                (declare (not safe))
                                (cons _exn90070_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95472)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90066_))
            (let ((_e90068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90066_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90068_))
            (macro-nonprocedure-operator-exception? _exn90066_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90062_))
            (let ((_e90064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90062_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90064_)
                  (macro-nonprocedure-operator-exception-arguments _e90064_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95475
                                (let ()
                                  (declare (not safe))
                                  (cons _e90064_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95475)))))
            (if (macro-nonprocedure-operator-exception? _exn90062_)
                (macro-nonprocedure-operator-exception-arguments _exn90062_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95474
                              (let ()
                                (declare (not safe))
                                (cons _exn90062_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95474)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90058_))
            (let ((_e90060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90058_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90060_)
                  (macro-nonprocedure-operator-exception-code _e90060_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95477
                                (let ()
                                  (declare (not safe))
                                  (cons _e90060_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95477)))))
            (if (macro-nonprocedure-operator-exception? _exn90058_)
                (macro-nonprocedure-operator-exception-code _exn90058_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95476
                              (let ()
                                (declare (not safe))
                                (cons _exn90058_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95476)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90054_))
            (let ((_e90056_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90054_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90056_)
                  (macro-nonprocedure-operator-exception-operator _e90056_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95479
                                (let ()
                                  (declare (not safe))
                                  (cons _e90056_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95479)))))
            (if (macro-nonprocedure-operator-exception? _exn90054_)
                (macro-nonprocedure-operator-exception-operator _exn90054_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95478
                              (let ()
                                (declare (not safe))
                                (cons _exn90054_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95478)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90048_))
            (let ((_e90051_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90048_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90051_)
                  (macro-nonprocedure-operator-exception-rte _e90051_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95481
                                (let ()
                                  (declare (not safe))
                                  (cons _e90051_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95481)))))
            (if (macro-nonprocedure-operator-exception? _exn90048_)
                (macro-nonprocedure-operator-exception-rte _exn90048_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95480
                              (let ()
                                (declare (not safe))
                                (cons _exn90048_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95480)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90044_))
            (let ((_e90046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90044_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90046_))
            (macro-not-in-compilation-context-exception? _exn90044_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90040_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90040_))
            (let ((_e90042_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90040_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90042_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90042_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95483
                                (let ()
                                  (declare (not safe))
                                  (cons _e90042_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95483)))))
            (if (macro-not-in-compilation-context-exception? _exn90040_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90040_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95482
                              (let ()
                                (declare (not safe))
                                (cons _exn90040_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95482)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90034_))
            (let ((_e90037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90034_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90037_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90037_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95485
                                (let ()
                                  (declare (not safe))
                                  (cons _e90037_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95485)))))
            (if (macro-not-in-compilation-context-exception? _exn90034_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90034_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95484
                              (let ()
                                (declare (not safe))
                                (cons _exn90034_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95484)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90030_))
            (let ((_e90032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90030_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90032_))
            (macro-number-of-arguments-limit-exception? _exn90030_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90026_))
            (let ((_e90028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90026_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90028_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90028_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95487
                                (let ()
                                  (declare (not safe))
                                  (cons _e90028_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95487)))))
            (if (macro-number-of-arguments-limit-exception? _exn90026_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90026_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95486
                              (let ()
                                (declare (not safe))
                                (cons _exn90026_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95486)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90020_))
            (let ((_e90023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90020_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90023_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90023_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95489
                                (let ()
                                  (declare (not safe))
                                  (cons _e90023_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95489)))))
            (if (macro-number-of-arguments-limit-exception? _exn90020_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90020_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95488
                              (let ()
                                (declare (not safe))
                                (cons _exn90020_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95488)))))))
    (define os-exception?
      (lambda (_exn90016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90016_))
            (let ((_e90018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90016_ 'exception))))
              (macro-os-exception? _e90018_))
            (macro-os-exception? _exn90016_))))
    (define os-exception-arguments
      (lambda (_exn90012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90012_))
            (let ((_e90014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90012_ 'exception))))
              (if (macro-os-exception? _e90014_)
                  (macro-os-exception-arguments _e90014_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95491
                                (let ()
                                  (declare (not safe))
                                  (cons _e90014_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95491)))))
            (if (macro-os-exception? _exn90012_)
                (macro-os-exception-arguments _exn90012_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95490
                              (let ()
                                (declare (not safe))
                                (cons _exn90012_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95490)))))))
    (define os-exception-code
      (lambda (_exn90008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90008_))
            (let ((_e90010_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90008_ 'exception))))
              (if (macro-os-exception? _e90010_)
                  (macro-os-exception-code _e90010_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95493
                                (let ()
                                  (declare (not safe))
                                  (cons _e90010_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95493)))))
            (if (macro-os-exception? _exn90008_)
                (macro-os-exception-code _exn90008_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95492
                              (let ()
                                (declare (not safe))
                                (cons _exn90008_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95492)))))))
    (define os-exception-message
      (lambda (_exn90004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90004_))
            (let ((_e90006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90004_ 'exception))))
              (if (macro-os-exception? _e90006_)
                  (macro-os-exception-message _e90006_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95495
                                (let ()
                                  (declare (not safe))
                                  (cons _e90006_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95495)))))
            (if (macro-os-exception? _exn90004_)
                (macro-os-exception-message _exn90004_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95494
                              (let ()
                                (declare (not safe))
                                (cons _exn90004_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95494)))))))
    (define os-exception-procedure
      (lambda (_exn89998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89998_))
            (let ((_e90001_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89998_ 'exception))))
              (if (macro-os-exception? _e90001_)
                  (macro-os-exception-procedure _e90001_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95497
                                (let ()
                                  (declare (not safe))
                                  (cons _e90001_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95497)))))
            (if (macro-os-exception? _exn89998_)
                (macro-os-exception-procedure _exn89998_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95496
                              (let ()
                                (declare (not safe))
                                (cons _exn89998_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95496)))))))
    (define permission-denied-exception?
      (lambda (_exn89994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89994_))
            (let ((_e89996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89994_ 'exception))))
              (macro-permission-denied-exception? _e89996_))
            (macro-permission-denied-exception? _exn89994_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89990_))
            (let ((_e89992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89990_ 'exception))))
              (if (macro-permission-denied-exception? _e89992_)
                  (macro-permission-denied-exception-arguments _e89992_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95499
                                (let ()
                                  (declare (not safe))
                                  (cons _e89992_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95499)))))
            (if (macro-permission-denied-exception? _exn89990_)
                (macro-permission-denied-exception-arguments _exn89990_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95498
                              (let ()
                                (declare (not safe))
                                (cons _exn89990_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95498)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89984_))
            (let ((_e89987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89984_ 'exception))))
              (if (macro-permission-denied-exception? _e89987_)
                  (macro-permission-denied-exception-procedure _e89987_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95501
                                (let ()
                                  (declare (not safe))
                                  (cons _e89987_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95501)))))
            (if (macro-permission-denied-exception? _exn89984_)
                (macro-permission-denied-exception-procedure _exn89984_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95500
                              (let ()
                                (declare (not safe))
                                (cons _exn89984_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95500)))))))
    (define range-exception?
      (lambda (_exn89980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89980_))
            (let ((_e89982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89980_ 'exception))))
              (macro-range-exception? _e89982_))
            (macro-range-exception? _exn89980_))))
    (define range-exception-arg-id
      (lambda (_exn89976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89976_))
            (let ((_e89978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89976_ 'exception))))
              (if (macro-range-exception? _e89978_)
                  (macro-range-exception-arg-id _e89978_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95503
                                (let ()
                                  (declare (not safe))
                                  (cons _e89978_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95503)))))
            (if (macro-range-exception? _exn89976_)
                (macro-range-exception-arg-id _exn89976_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95502
                              (let ()
                                (declare (not safe))
                                (cons _exn89976_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95502)))))))
    (define range-exception-arguments
      (lambda (_exn89972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89972_))
            (let ((_e89974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89972_ 'exception))))
              (if (macro-range-exception? _e89974_)
                  (macro-range-exception-arguments _e89974_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95505
                                (let ()
                                  (declare (not safe))
                                  (cons _e89974_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95505)))))
            (if (macro-range-exception? _exn89972_)
                (macro-range-exception-arguments _exn89972_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95504
                              (let ()
                                (declare (not safe))
                                (cons _exn89972_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95504)))))))
    (define range-exception-procedure
      (lambda (_exn89966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89966_))
            (let ((_e89969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89966_ 'exception))))
              (if (macro-range-exception? _e89969_)
                  (macro-range-exception-procedure _e89969_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95507
                                (let ()
                                  (declare (not safe))
                                  (cons _e89969_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95507)))))
            (if (macro-range-exception? _exn89966_)
                (macro-range-exception-procedure _exn89966_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95506
                              (let ()
                                (declare (not safe))
                                (cons _exn89966_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95506)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89962_))
            (let ((_e89964_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89962_ 'exception))))
              (macro-rpc-remote-error-exception? _e89964_))
            (macro-rpc-remote-error-exception? _exn89962_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89958_))
            (let ((_e89960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89958_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89960_)
                  (macro-rpc-remote-error-exception-arguments _e89960_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95509
                                (let ()
                                  (declare (not safe))
                                  (cons _e89960_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95509)))))
            (if (macro-rpc-remote-error-exception? _exn89958_)
                (macro-rpc-remote-error-exception-arguments _exn89958_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95508
                              (let ()
                                (declare (not safe))
                                (cons _exn89958_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95508)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89954_))
            (let ((_e89956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89954_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89956_)
                  (macro-rpc-remote-error-exception-message _e89956_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95511
                                (let ()
                                  (declare (not safe))
                                  (cons _e89956_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95511)))))
            (if (macro-rpc-remote-error-exception? _exn89954_)
                (macro-rpc-remote-error-exception-message _exn89954_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95510
                              (let ()
                                (declare (not safe))
                                (cons _exn89954_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95510)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89948_))
            (let ((_e89951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89948_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89951_)
                  (macro-rpc-remote-error-exception-procedure _e89951_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95513
                                (let ()
                                  (declare (not safe))
                                  (cons _e89951_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95513)))))
            (if (macro-rpc-remote-error-exception? _exn89948_)
                (macro-rpc-remote-error-exception-procedure _exn89948_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95512
                              (let ()
                                (declare (not safe))
                                (cons _exn89948_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95512)))))))
    (define scheduler-exception?
      (lambda (_exn89944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89944_))
            (let ((_e89946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89944_ 'exception))))
              (macro-scheduler-exception? _e89946_))
            (macro-scheduler-exception? _exn89944_))))
    (define scheduler-exception-reason
      (lambda (_exn89938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89938_))
            (let ((_e89941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89938_ 'exception))))
              (if (macro-scheduler-exception? _e89941_)
                  (macro-scheduler-exception-reason _e89941_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95515
                                (let ()
                                  (declare (not safe))
                                  (cons _e89941_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95515)))))
            (if (macro-scheduler-exception? _exn89938_)
                (macro-scheduler-exception-reason _exn89938_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95514
                              (let ()
                                (declare (not safe))
                                (cons _exn89938_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95514)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89934_))
            (let ((_e89936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89934_ 'exception))))
              (macro-sfun-conversion-exception? _e89936_))
            (macro-sfun-conversion-exception? _exn89934_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89930_))
            (let ((_e89932_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89930_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89932_)
                  (macro-sfun-conversion-exception-arguments _e89932_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95517
                                (let ()
                                  (declare (not safe))
                                  (cons _e89932_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95517)))))
            (if (macro-sfun-conversion-exception? _exn89930_)
                (macro-sfun-conversion-exception-arguments _exn89930_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95516
                              (let ()
                                (declare (not safe))
                                (cons _exn89930_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95516)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89926_))
            (let ((_e89928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89926_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89928_)
                  (macro-sfun-conversion-exception-code _e89928_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95519
                                (let ()
                                  (declare (not safe))
                                  (cons _e89928_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95519)))))
            (if (macro-sfun-conversion-exception? _exn89926_)
                (macro-sfun-conversion-exception-code _exn89926_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95518
                              (let ()
                                (declare (not safe))
                                (cons _exn89926_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95518)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89922_))
            (let ((_e89924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89922_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89924_)
                  (macro-sfun-conversion-exception-message _e89924_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95521
                                (let ()
                                  (declare (not safe))
                                  (cons _e89924_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95521)))))
            (if (macro-sfun-conversion-exception? _exn89922_)
                (macro-sfun-conversion-exception-message _exn89922_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95520
                              (let ()
                                (declare (not safe))
                                (cons _exn89922_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95520)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89916_))
            (let ((_e89919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89916_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89919_)
                  (macro-sfun-conversion-exception-procedure _e89919_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95523
                                (let ()
                                  (declare (not safe))
                                  (cons _e89919_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95523)))))
            (if (macro-sfun-conversion-exception? _exn89916_)
                (macro-sfun-conversion-exception-procedure _exn89916_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95522
                              (let ()
                                (declare (not safe))
                                (cons _exn89916_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95522)))))))
    (define stack-overflow-exception?
      (lambda (_exn89910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89910_))
            (let ((_e89913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89910_ 'exception))))
              (macro-stack-overflow-exception? _e89913_))
            (macro-stack-overflow-exception? _exn89910_))))
    (define started-thread-exception?
      (lambda (_exn89906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89906_))
            (let ((_e89908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89906_ 'exception))))
              (macro-started-thread-exception? _e89908_))
            (macro-started-thread-exception? _exn89906_))))
    (define started-thread-exception-arguments
      (lambda (_exn89902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89902_))
            (let ((_e89904_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89902_ 'exception))))
              (if (macro-started-thread-exception? _e89904_)
                  (macro-started-thread-exception-arguments _e89904_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95525
                                (let ()
                                  (declare (not safe))
                                  (cons _e89904_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95525)))))
            (if (macro-started-thread-exception? _exn89902_)
                (macro-started-thread-exception-arguments _exn89902_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95524
                              (let ()
                                (declare (not safe))
                                (cons _exn89902_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95524)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89896_))
            (let ((_e89899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89896_ 'exception))))
              (if (macro-started-thread-exception? _e89899_)
                  (macro-started-thread-exception-procedure _e89899_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95527
                                (let ()
                                  (declare (not safe))
                                  (cons _e89899_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95527)))))
            (if (macro-started-thread-exception? _exn89896_)
                (macro-started-thread-exception-procedure _exn89896_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95526
                              (let ()
                                (declare (not safe))
                                (cons _exn89896_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95526)))))))
    (define terminated-thread-exception?
      (lambda (_exn89892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89892_))
            (let ((_e89894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89892_ 'exception))))
              (macro-terminated-thread-exception? _e89894_))
            (macro-terminated-thread-exception? _exn89892_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89888_))
            (let ((_e89890_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89888_ 'exception))))
              (if (macro-terminated-thread-exception? _e89890_)
                  (macro-terminated-thread-exception-arguments _e89890_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95529
                                (let ()
                                  (declare (not safe))
                                  (cons _e89890_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95529)))))
            (if (macro-terminated-thread-exception? _exn89888_)
                (macro-terminated-thread-exception-arguments _exn89888_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95528
                              (let ()
                                (declare (not safe))
                                (cons _exn89888_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95528)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89882_))
            (let ((_e89885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89882_ 'exception))))
              (if (macro-terminated-thread-exception? _e89885_)
                  (macro-terminated-thread-exception-procedure _e89885_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95531
                                (let ()
                                  (declare (not safe))
                                  (cons _e89885_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95531)))))
            (if (macro-terminated-thread-exception? _exn89882_)
                (macro-terminated-thread-exception-procedure _exn89882_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95530
                              (let ()
                                (declare (not safe))
                                (cons _exn89882_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95530)))))))
    (define type-exception?
      (lambda (_exn89878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89878_))
            (let ((_e89880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89878_ 'exception))))
              (macro-type-exception? _e89880_))
            (macro-type-exception? _exn89878_))))
    (define type-exception-arg-id
      (lambda (_exn89874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89874_))
            (let ((_e89876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89874_ 'exception))))
              (if (macro-type-exception? _e89876_)
                  (macro-type-exception-arg-id _e89876_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95533
                                (let ()
                                  (declare (not safe))
                                  (cons _e89876_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95533)))))
            (if (macro-type-exception? _exn89874_)
                (macro-type-exception-arg-id _exn89874_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95532
                              (let ()
                                (declare (not safe))
                                (cons _exn89874_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95532)))))))
    (define type-exception-arguments
      (lambda (_exn89870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89870_))
            (let ((_e89872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89870_ 'exception))))
              (if (macro-type-exception? _e89872_)
                  (macro-type-exception-arguments _e89872_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95535
                                (let ()
                                  (declare (not safe))
                                  (cons _e89872_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95535)))))
            (if (macro-type-exception? _exn89870_)
                (macro-type-exception-arguments _exn89870_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95534
                              (let ()
                                (declare (not safe))
                                (cons _exn89870_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95534)))))))
    (define type-exception-procedure
      (lambda (_exn89866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89866_))
            (let ((_e89868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89866_ 'exception))))
              (if (macro-type-exception? _e89868_)
                  (macro-type-exception-procedure _e89868_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95537
                                (let ()
                                  (declare (not safe))
                                  (cons _e89868_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95537)))))
            (if (macro-type-exception? _exn89866_)
                (macro-type-exception-procedure _exn89866_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95536
                              (let ()
                                (declare (not safe))
                                (cons _exn89866_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95536)))))))
    (define type-exception-type-id
      (lambda (_exn89860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89860_))
            (let ((_e89863_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89860_ 'exception))))
              (if (macro-type-exception? _e89863_)
                  (macro-type-exception-type-id _e89863_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95539
                                (let ()
                                  (declare (not safe))
                                  (cons _e89863_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95539)))))
            (if (macro-type-exception? _exn89860_)
                (macro-type-exception-type-id _exn89860_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95538
                              (let ()
                                (declare (not safe))
                                (cons _exn89860_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95538)))))))
    (define unbound-global-exception?
      (lambda (_exn89856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89856_))
            (let ((_e89858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89856_ 'exception))))
              (macro-unbound-global-exception? _e89858_))
            (macro-unbound-global-exception? _exn89856_))))
    (define unbound-global-exception-code
      (lambda (_exn89852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89852_))
            (let ((_e89854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89852_ 'exception))))
              (if (macro-unbound-global-exception? _e89854_)
                  (macro-unbound-global-exception-code _e89854_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95541
                                (let ()
                                  (declare (not safe))
                                  (cons _e89854_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95541)))))
            (if (macro-unbound-global-exception? _exn89852_)
                (macro-unbound-global-exception-code _exn89852_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95540
                              (let ()
                                (declare (not safe))
                                (cons _exn89852_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95540)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89848_))
            (let ((_e89850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89848_ 'exception))))
              (if (macro-unbound-global-exception? _e89850_)
                  (macro-unbound-global-exception-rte _e89850_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95543
                                (let ()
                                  (declare (not safe))
                                  (cons _e89850_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95543)))))
            (if (macro-unbound-global-exception? _exn89848_)
                (macro-unbound-global-exception-rte _exn89848_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95542
                              (let ()
                                (declare (not safe))
                                (cons _exn89848_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95542)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89842_))
            (let ((_e89845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89842_ 'exception))))
              (if (macro-unbound-global-exception? _e89845_)
                  (macro-unbound-global-exception-variable _e89845_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95545
                                (let ()
                                  (declare (not safe))
                                  (cons _e89845_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95545)))))
            (if (macro-unbound-global-exception? _exn89842_)
                (macro-unbound-global-exception-variable _exn89842_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95544
                              (let ()
                                (declare (not safe))
                                (cons _exn89842_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95544)))))))
    (define unbound-key-exception?
      (lambda (_exn89838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89838_))
            (let ((_e89840_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89838_ 'exception))))
              (macro-unbound-key-exception? _e89840_))
            (macro-unbound-key-exception? _exn89838_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89834_))
            (let ((_e89836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89834_ 'exception))))
              (if (macro-unbound-key-exception? _e89836_)
                  (macro-unbound-key-exception-arguments _e89836_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95547
                                (let ()
                                  (declare (not safe))
                                  (cons _e89836_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95547)))))
            (if (macro-unbound-key-exception? _exn89834_)
                (macro-unbound-key-exception-arguments _exn89834_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95546
                              (let ()
                                (declare (not safe))
                                (cons _exn89834_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95546)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89828_))
            (let ((_e89831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89828_ 'exception))))
              (if (macro-unbound-key-exception? _e89831_)
                  (macro-unbound-key-exception-procedure _e89831_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95549
                                (let ()
                                  (declare (not safe))
                                  (cons _e89831_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95549)))))
            (if (macro-unbound-key-exception? _exn89828_)
                (macro-unbound-key-exception-procedure _exn89828_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95548
                              (let ()
                                (declare (not safe))
                                (cons _exn89828_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95548)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89824_))
            (let ((_e89826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89824_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89826_))
            (macro-unbound-os-environment-variable-exception? _exn89824_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89820_))
            (let ((_e89822_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89820_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89822_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89822_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95551
                                (let ()
                                  (declare (not safe))
                                  (cons _e89822_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95551)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89820_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89820_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95550
                              (let ()
                                (declare (not safe))
                                (cons _exn89820_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95550)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89814_))
            (let ((_e89817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89814_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89817_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89817_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95553
                                (let ()
                                  (declare (not safe))
                                  (cons _e89817_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95553)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89814_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89814_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95552
                              (let ()
                                (declare (not safe))
                                (cons _exn89814_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95552)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89810_))
            (let ((_e89812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89810_ 'exception))))
              (macro-unbound-serial-number-exception? _e89812_))
            (macro-unbound-serial-number-exception? _exn89810_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89806_))
            (let ((_e89808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89806_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89808_)
                  (macro-unbound-serial-number-exception-arguments _e89808_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95555
                                (let ()
                                  (declare (not safe))
                                  (cons _e89808_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95555)))))
            (if (macro-unbound-serial-number-exception? _exn89806_)
                (macro-unbound-serial-number-exception-arguments _exn89806_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95554
                              (let ()
                                (declare (not safe))
                                (cons _exn89806_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95554)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89800_))
            (let ((_e89803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89800_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89803_)
                  (macro-unbound-serial-number-exception-procedure _e89803_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95557
                                (let ()
                                  (declare (not safe))
                                  (cons _e89803_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95557)))))
            (if (macro-unbound-serial-number-exception? _exn89800_)
                (macro-unbound-serial-number-exception-procedure _exn89800_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95556
                              (let ()
                                (declare (not safe))
                                (cons _exn89800_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95556)))))))
    (define uncaught-exception?
      (lambda (_exn89796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89796_))
            (let ((_e89798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89796_ 'exception))))
              (macro-uncaught-exception? _e89798_))
            (macro-uncaught-exception? _exn89796_))))
    (define uncaught-exception-arguments
      (lambda (_exn89792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89792_))
            (let ((_e89794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89792_ 'exception))))
              (if (macro-uncaught-exception? _e89794_)
                  (macro-uncaught-exception-arguments _e89794_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95559
                                (let ()
                                  (declare (not safe))
                                  (cons _e89794_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95559)))))
            (if (macro-uncaught-exception? _exn89792_)
                (macro-uncaught-exception-arguments _exn89792_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95558
                              (let ()
                                (declare (not safe))
                                (cons _exn89792_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95558)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89788_))
            (let ((_e89790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89788_ 'exception))))
              (if (macro-uncaught-exception? _e89790_)
                  (macro-uncaught-exception-procedure _e89790_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95561
                                (let ()
                                  (declare (not safe))
                                  (cons _e89790_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95561)))))
            (if (macro-uncaught-exception? _exn89788_)
                (macro-uncaught-exception-procedure _exn89788_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95560
                              (let ()
                                (declare (not safe))
                                (cons _exn89788_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95560)))))))
    (define uncaught-exception-reason
      (lambda (_exn89782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89782_))
            (let ((_e89785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89782_ 'exception))))
              (if (macro-uncaught-exception? _e89785_)
                  (macro-uncaught-exception-reason _e89785_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95563
                                (let ()
                                  (declare (not safe))
                                  (cons _e89785_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95563)))))
            (if (macro-uncaught-exception? _exn89782_)
                (macro-uncaught-exception-reason _exn89782_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95562
                              (let ()
                                (declare (not safe))
                                (cons _exn89782_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95562)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89778_))
            (let ((_e89780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89778_ 'exception))))
              (macro-uninitialized-thread-exception? _e89780_))
            (macro-uninitialized-thread-exception? _exn89778_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89774_))
            (let ((_e89776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89774_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89776_)
                  (macro-uninitialized-thread-exception-arguments _e89776_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95565
                                (let ()
                                  (declare (not safe))
                                  (cons _e89776_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95565)))))
            (if (macro-uninitialized-thread-exception? _exn89774_)
                (macro-uninitialized-thread-exception-arguments _exn89774_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95564
                              (let ()
                                (declare (not safe))
                                (cons _exn89774_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95564)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89768_))
            (let ((_e89771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89768_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89771_)
                  (macro-uninitialized-thread-exception-procedure _e89771_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95567
                                (let ()
                                  (declare (not safe))
                                  (cons _e89771_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95567)))))
            (if (macro-uninitialized-thread-exception? _exn89768_)
                (macro-uninitialized-thread-exception-procedure _exn89768_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95566
                              (let ()
                                (declare (not safe))
                                (cons _exn89768_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95566)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89764_))
            (let ((_e89766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89764_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89766_))
            (macro-unknown-keyword-argument-exception? _exn89764_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89760_))
            (let ((_e89762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89760_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89762_)
                  (macro-unknown-keyword-argument-exception-arguments _e89762_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95569
                                (let ()
                                  (declare (not safe))
                                  (cons _e89762_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95569)))))
            (if (macro-unknown-keyword-argument-exception? _exn89760_)
                (macro-unknown-keyword-argument-exception-arguments _exn89760_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95568
                              (let ()
                                (declare (not safe))
                                (cons _exn89760_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95568)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89754_))
            (let ((_e89757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89754_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89757_)
                  (macro-unknown-keyword-argument-exception-procedure _e89757_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95571
                                (let ()
                                  (declare (not safe))
                                  (cons _e89757_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95571)))))
            (if (macro-unknown-keyword-argument-exception? _exn89754_)
                (macro-unknown-keyword-argument-exception-procedure _exn89754_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95570
                              (let ()
                                (declare (not safe))
                                (cons _exn89754_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95570)))))))
    (define unterminated-process-exception?
      (lambda (_exn89750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89750_))
            (let ((_e89752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89750_ 'exception))))
              (macro-unterminated-process-exception? _e89752_))
            (macro-unterminated-process-exception? _exn89750_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89746_))
            (let ((_e89748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89746_ 'exception))))
              (if (macro-unterminated-process-exception? _e89748_)
                  (macro-unterminated-process-exception-arguments _e89748_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95573
                                (let ()
                                  (declare (not safe))
                                  (cons _e89748_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95573)))))
            (if (macro-unterminated-process-exception? _exn89746_)
                (macro-unterminated-process-exception-arguments _exn89746_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95572
                              (let ()
                                (declare (not safe))
                                (cons _exn89746_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95572)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89740_))
            (let ((_e89743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89740_ 'exception))))
              (if (macro-unterminated-process-exception? _e89743_)
                  (macro-unterminated-process-exception-procedure _e89743_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95575
                                (let ()
                                  (declare (not safe))
                                  (cons _e89743_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95575)))))
            (if (macro-unterminated-process-exception? _exn89740_)
                (macro-unterminated-process-exception-procedure _exn89740_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95574
                              (let ()
                                (declare (not safe))
                                (cons _exn89740_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95574)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89736_))
            (let ((_e89738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89736_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89738_))
            (macro-wrong-number-of-arguments-exception? _exn89736_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89732_))
            (let ((_e89734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89732_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89734_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89734_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95577
                                (let ()
                                  (declare (not safe))
                                  (cons _e89734_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95577)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89732_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89732_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95576
                              (let ()
                                (declare (not safe))
                                (cons _exn89732_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95576)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89726_))
            (let ((_e89729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89726_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89729_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89729_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95579
                                (let ()
                                  (declare (not safe))
                                  (cons _e89729_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95579)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89726_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89726_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95578
                              (let ()
                                (declare (not safe))
                                (cons _exn89726_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95578)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89722_))
            (let ((_e89724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89722_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89724_))
            (macro-wrong-number-of-values-exception? _exn89722_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89718_))
            (let ((_e89720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89718_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89720_)
                  (macro-wrong-number-of-values-exception-code _e89720_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95581
                                (let ()
                                  (declare (not safe))
                                  (cons _e89720_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95581)))))
            (if (macro-wrong-number-of-values-exception? _exn89718_)
                (macro-wrong-number-of-values-exception-code _exn89718_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95580
                              (let ()
                                (declare (not safe))
                                (cons _exn89718_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95580)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89714_))
            (let ((_e89716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89714_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89716_)
                  (macro-wrong-number-of-values-exception-rte _e89716_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95583
                                (let ()
                                  (declare (not safe))
                                  (cons _e89716_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95583)))))
            (if (macro-wrong-number-of-values-exception? _exn89714_)
                (macro-wrong-number-of-values-exception-rte _exn89714_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95582
                              (let ()
                                (declare (not safe))
                                (cons _exn89714_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95582)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89708_))
            (let ((_e89711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89708_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89711_)
                  (macro-wrong-number-of-values-exception-vals _e89711_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95585
                                (let ()
                                  (declare (not safe))
                                  (cons _e89711_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95585)))))
            (if (macro-wrong-number-of-values-exception? _exn89708_)
                (macro-wrong-number-of-values-exception-vals _exn89708_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95584
                              (let ()
                                (declare (not safe))
                                (cons _exn89708_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95584)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89702_))
            (let ((_e89705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89702_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89705_))
            (macro-wrong-processor-c-return-exception? _exn89702_))))))
