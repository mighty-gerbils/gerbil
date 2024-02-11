(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707610212)
  (begin
    (define Exception::t
      (let ((__tmp95358 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95358
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90861_
        (apply make-class-instance Exception::t _$args90861_)))
    (define StackTrace::t
      (let ((__tmp95359 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95359
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90858_
        (apply make-class-instance StackTrace::t _$args90858_)))
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
      (let ((__tmp95360 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95360
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90855_ (apply make-class-instance Error::t _$args90855_)))
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
      (let ((__tmp95361 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95361
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90852_
        (apply make-class-instance RuntimeException::t _$args90852_)))
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
      (lambda (_exn90847_ _continue90848_)
        (let ((_exn90850_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90847_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90850_ _continue90848_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90843_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90843_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90843_ 'continuation))
                '#!void
                (let ((__tmp95362
                       (lambda (_cont90845_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90843_
                            'continuation
                            _cont90845_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95362)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90843_))))
    (define error
      (lambda (_message90840_ . _irritants90841_)
        (raise (let ((__obj95352
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95352
                  _message90840_
                  'irritants:
                  _irritants90841_)
                 __obj95352))))
    (define with-exception-handler
      (lambda (_handler90833_ _thunk90834_)
        (if (let () (declare (not safe)) (procedure? _handler90833_))
            '#!void
            (raise (let ((__obj95353
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95353
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90833_ '())))
                     __obj95353)))
        (if (let () (declare (not safe)) (procedure? _thunk90834_))
            '#!void
            (raise (let ((__obj95354
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95354
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90834_ '())))
                     __obj95354)))
        (let ((__tmp95363
               (lambda (_exn90836_)
                 (let ((_exn90838_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90836_))))
                   (_handler90833_ _exn90838_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95363 _thunk90834_))))
    (define with-catch
      (lambda (_handler90826_ _thunk90827_)
        (if (let () (declare (not safe)) (procedure? _handler90826_))
            '#!void
            (raise (let ((__obj95355
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95355
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90826_ '())))
                     __obj95355)))
        (if (let () (declare (not safe)) (procedure? _thunk90827_))
            '#!void
            (raise (let ((__obj95356
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95356
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90827_ '())))
                     __obj95356)))
        (let ((__tmp95364
               (lambda (_cont90829_)
                 (with-exception-handler
                  (lambda (_exn90831_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90829_
                       _handler90826_
                       _exn90831_)))
                  _thunk90827_))))
          (declare (not safe))
          (##continuation-capture __tmp95364))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90817_)
        (if (or (heap-overflow-exception? _exn90817_)
                (stack-overflow-exception? _exn90817_))
            _exn90817_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90817_))
                _exn90817_
                (if (macro-exception? _exn90817_)
                    (let ((_rte90822_
                           (let ((__obj95357
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95357
                                _exn90817_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95357)))
                      (let ((__tmp95365
                             (lambda (_cont90824_)
                               (let ((__tmp95366
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90824_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90822_
                                  'continuation
                                  __tmp95366)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95365))
                      _rte90822_)
                    _exn90817_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90812_)
        (let ((_$e90814_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90812_))))
          (if _$e90814_ _$e90814_ (error-exception? _obj90812_)))))
    (define error-message
      (lambda (_obj90810_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90810_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90810_ 'message))
            (if (error-exception? _obj90810_)
                (error-exception-message _obj90810_)
                '#f))))
    (define error-irritants
      (lambda (_obj90808_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90808_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90808_ 'irritants))
            (if (error-exception? _obj90808_)
                (error-exception-parameters _obj90808_)
                '#f))))
    (define error-trace
      (lambda (_obj90806_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90806_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90806_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90788_ _port90789_)
        (let ((_$e90791_
               (let ()
                 (declare (not safe))
                 (method-ref _e90788_ 'display-exception))))
          (if _$e90791_
              ((lambda (_f90794_) (_f90794_ _e90788_ _port90789_)) _$e90791_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90788_ _port90789_))))))
    (define display-exception__0
      (lambda (_e90799_)
        (let ((_port90801_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90799_ _port90801_))))
    (define display-exception
      (lambda _g95368_
        (let ((_g95367_ (let () (declare (not safe)) (##length _g95368_))))
          (cond ((let () (declare (not safe)) (##fx= _g95367_ 1))
                 (apply (lambda (_e90799_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90799_)))
                        _g95368_))
                ((let () (declare (not safe)) (##fx= _g95367_ 2))
                 (apply (lambda (_e90803_ _port90804_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90803_ _port90804_)))
                        _g95368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95368_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90777_ _message90778_ . _rest90779_)
        (let ((_message90785_
               (if (let () (declare (not safe)) (string? _message90778_))
                   _message90778_
                   (call-with-output-string
                    '""
                    (lambda (_g9078090782_)
                      (display _message90778_ _g9078090782_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90777_ 'message _message90785_))
          (apply class-instance-init! _self90777_ _rest90779_))))
    (define Error:::init!::specialize
      (lambda (__t95331)
        (let ((__message95332
               (let ((__tmp95333
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95331 'message))))
                 (if __tmp95333 __tmp95333 (error '"Unknown slot" 'message)))))
          (lambda (_self90777_ _message90778_ . _rest90779_)
            (let ((_message90785_
                   (if (let () (declare (not safe)) (string? _message90778_))
                       _message90778_
                       (call-with-output-string
                        '""
                        (lambda (_g9078090782_)
                          (display _message90778_ _g9078090782_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90777_
                 _message90785_
                 __message95332
                 __t95331
                 '#f))
              (apply class-instance-init! _self90777_ _rest90779_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90635_ _port90636_)
        (let ((_tmp-port90638_ (open-output-string))
              (_display-error-newline90639_
               (> (output-port-column _port90636_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90638_))
          (let ((__tmp95369
                 (lambda ()
                   (if _display-error-newline90639_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90642_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90635_ 'where))))
                     (if _$e90642_ (display _$e90642_) (display '"?")))
                   (let ((__tmp95370
                          (let ((__tmp95371
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90635_))))
                            (declare (not safe))
                            (##type-name __tmp95371))))
                     (declare (not safe))
                     (display* '" [" __tmp95370 '"]: "))
                   (let ((__tmp95372
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90635_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95372))
                   (let ((_irritants90645_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90635_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90645_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90647_)
                              (write _obj90647_)
                              (write-char '#\space))
                            _irritants90645_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90635_))
                            (dump-stack-trace?))
                       (let ((_cont9064890650_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90635_
                                 'continuation))))
                         (if _cont9064890650_
                             (let ((_cont90653_ _cont9064890650_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90653_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95369
             current-output-port
             _tmp-port90638_))
          (let ((__tmp95373 (get-output-string _tmp-port90638_)))
            (declare (not safe))
            (##write-string __tmp95373 _port90636_)))))
    (define Error::display-exception::specialize
      (lambda (__t95334)
        (let ((__irritants95335
               (let ((__tmp95339
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95334 'irritants))))
                 (if __tmp95339
                     __tmp95339
                     (error '"Unknown slot" 'irritants))))
              (__where95336
               (let ((__tmp95340
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95334 'where))))
                 (if __tmp95340 __tmp95340 (error '"Unknown slot" 'where))))
              (__message95337
               (let ((__tmp95341
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95334 'message))))
                 (if __tmp95341 __tmp95341 (error '"Unknown slot" 'message))))
              (__continuation95338
               (let ((__tmp95342
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95334 'continuation))))
                 (if __tmp95342
                     __tmp95342
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90635_ _port90636_)
            (let ((_tmp-port90638_ (open-output-string))
                  (_display-error-newline90639_
                   (> (output-port-column _port90636_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90638_))
              (let ((__tmp95374
                     (lambda ()
                       (if _display-error-newline90639_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90642_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90635_
                                 __where95336
                                 __t95334
                                 '#f))))
                         (if _$e90642_ (display _$e90642_) (display '"?")))
                       (let ((__tmp95375
                              (let ((__tmp95376
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90635_))))
                                (declare (not safe))
                                (##type-name __tmp95376))))
                         (declare (not safe))
                         (display* '" [" __tmp95375 '"]: "))
                       (let ((__tmp95377
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90635_
                                 __message95337
                                 __t95334
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95377))
                       (let ((_irritants90645_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90635_
                                 __irritants95335
                                 __t95334
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90645_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90647_)
                                  (write _obj90647_)
                                  (write-char '#\space))
                                _irritants90645_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90635_))
                                (dump-stack-trace?))
                           (let ((_cont9064890650_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90635_
                                     __continuation95338
                                     __t95334
                                     '#f))))
                             (if _cont9064890650_
                                 (let ((_cont90653_ _cont9064890650_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90653_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95374
                 current-output-port
                 _tmp-port90638_))
              (let ((__tmp95378 (get-output-string _tmp-port90638_)))
                (declare (not safe))
                (##write-string __tmp95378 _port90636_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90502_ _port90503_)
        (let ((_tmp-port90505_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90505_))
          (let ((__tmp95379
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90502_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95379 _tmp-port90505_))
          (if (dump-stack-trace?)
              (let ((_cont9050690508_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90502_ 'continuation))))
                (if _cont9050690508_
                    (let ((_cont90511_ _cont9050690508_))
                      (display '"--- continuation backtrace:" _tmp-port90505_)
                      (newline _tmp-port90505_)
                      (display-continuation-backtrace
                       _cont90511_
                       _tmp-port90505_))
                    '#f))
              '#!void)
          (let ((__tmp95380 (get-output-string _tmp-port90505_)))
            (declare (not safe))
            (##write-string __tmp95380 _port90503_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95343)
        (let ((__exception95344
               (let ((__tmp95346
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95343 'exception))))
                 (if __tmp95346
                     __tmp95346
                     (error '"Unknown slot" 'exception))))
              (__continuation95345
               (let ((__tmp95347
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95343 'continuation))))
                 (if __tmp95347
                     __tmp95347
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90502_ _port90503_)
            (let ((_tmp-port90505_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90505_))
              (let ((__tmp95381
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90502_
                        __exception95344
                        __t95343
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95381 _tmp-port90505_))
              (if (dump-stack-trace?)
                  (let ((_cont9050690508_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90502_
                            __continuation95345
                            __t95343
                            '#f))))
                    (if _cont9050690508_
                        (let ((_cont90511_ _cont9050690508_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90505_)
                          (newline _tmp-port90505_)
                          (display-continuation-backtrace
                           _cont90511_
                           _tmp-port90505_))
                        '#f))
                  '#!void)
              (let ((__tmp95382 (get-output-string _tmp-port90505_)))
                (declare (not safe))
                (##write-string __tmp95382 _port90503_)))))))
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
      (lambda (_port90374_)
        (if (macro-character-port? _port90374_)
            (let ((_old-width90376_
                   (macro-character-port-output-width _port90374_)))
              (macro-character-port-output-width-set!
               _port90374_
               (lambda (_port90378_) '256))
              _old-width90376_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90371_ _old-width90372_)
        (if (macro-character-port? _port90371_)
            (macro-character-port-output-width-set!
             _port90371_
             _old-width90372_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90369_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90369_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90363_))
            (let ((_e90366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90363_ 'exception))))
              (macro-abandoned-mutex-exception? _e90366_))
            (macro-abandoned-mutex-exception? _exn90363_))))
    (define cfun-conversion-exception?
      (lambda (_exn90359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90359_))
            (let ((_e90361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90359_ 'exception))))
              (macro-cfun-conversion-exception? _e90361_))
            (macro-cfun-conversion-exception? _exn90359_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90355_))
            (let ((_e90357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90355_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90357_)
                  (macro-cfun-conversion-exception-arguments _e90357_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95384
                                (let ()
                                  (declare (not safe))
                                  (cons _e90357_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95384)))))
            (if (macro-cfun-conversion-exception? _exn90355_)
                (macro-cfun-conversion-exception-arguments _exn90355_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95383
                              (let ()
                                (declare (not safe))
                                (cons _exn90355_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95383)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90351_))
            (let ((_e90353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90351_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90353_)
                  (macro-cfun-conversion-exception-code _e90353_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95386
                                (let ()
                                  (declare (not safe))
                                  (cons _e90353_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95386)))))
            (if (macro-cfun-conversion-exception? _exn90351_)
                (macro-cfun-conversion-exception-code _exn90351_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95385
                              (let ()
                                (declare (not safe))
                                (cons _exn90351_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95385)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90347_))
            (let ((_e90349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90347_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90349_)
                  (macro-cfun-conversion-exception-message _e90349_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95388
                                (let ()
                                  (declare (not safe))
                                  (cons _e90349_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95388)))))
            (if (macro-cfun-conversion-exception? _exn90347_)
                (macro-cfun-conversion-exception-message _exn90347_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95387
                              (let ()
                                (declare (not safe))
                                (cons _exn90347_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95387)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90341_))
            (let ((_e90344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90341_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90344_)
                  (macro-cfun-conversion-exception-procedure _e90344_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95390
                                (let ()
                                  (declare (not safe))
                                  (cons _e90344_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95390)))))
            (if (macro-cfun-conversion-exception? _exn90341_)
                (macro-cfun-conversion-exception-procedure _exn90341_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95389
                              (let ()
                                (declare (not safe))
                                (cons _exn90341_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95389)))))))
    (define datum-parsing-exception?
      (lambda (_exn90337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90337_))
            (let ((_e90339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90337_ 'exception))))
              (macro-datum-parsing-exception? _e90339_))
            (macro-datum-parsing-exception? _exn90337_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90333_))
            (let ((_e90335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90333_ 'exception))))
              (if (macro-datum-parsing-exception? _e90335_)
                  (macro-datum-parsing-exception-kind _e90335_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95392
                                (let ()
                                  (declare (not safe))
                                  (cons _e90335_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95392)))))
            (if (macro-datum-parsing-exception? _exn90333_)
                (macro-datum-parsing-exception-kind _exn90333_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95391
                              (let ()
                                (declare (not safe))
                                (cons _exn90333_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95391)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90329_))
            (let ((_e90331_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90329_ 'exception))))
              (if (macro-datum-parsing-exception? _e90331_)
                  (macro-datum-parsing-exception-parameters _e90331_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95394
                                (let ()
                                  (declare (not safe))
                                  (cons _e90331_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95394)))))
            (if (macro-datum-parsing-exception? _exn90329_)
                (macro-datum-parsing-exception-parameters _exn90329_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95393
                              (let ()
                                (declare (not safe))
                                (cons _exn90329_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95393)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90323_))
            (let ((_e90326_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90323_ 'exception))))
              (if (macro-datum-parsing-exception? _e90326_)
                  (macro-datum-parsing-exception-readenv _e90326_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95396
                                (let ()
                                  (declare (not safe))
                                  (cons _e90326_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95396)))))
            (if (macro-datum-parsing-exception? _exn90323_)
                (macro-datum-parsing-exception-readenv _exn90323_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95395
                              (let ()
                                (declare (not safe))
                                (cons _exn90323_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95395)))))))
    (define deadlock-exception?
      (lambda (_exn90317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90317_))
            (let ((_e90320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90317_ 'exception))))
              (macro-deadlock-exception? _e90320_))
            (macro-deadlock-exception? _exn90317_))))
    (define divide-by-zero-exception?
      (lambda (_exn90313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90313_))
            (let ((_e90315_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90313_ 'exception))))
              (macro-divide-by-zero-exception? _e90315_))
            (macro-divide-by-zero-exception? _exn90313_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90309_))
            (let ((_e90311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90309_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90311_)
                  (macro-divide-by-zero-exception-arguments _e90311_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95398
                                (let ()
                                  (declare (not safe))
                                  (cons _e90311_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95398)))))
            (if (macro-divide-by-zero-exception? _exn90309_)
                (macro-divide-by-zero-exception-arguments _exn90309_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95397
                              (let ()
                                (declare (not safe))
                                (cons _exn90309_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95397)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90303_))
            (let ((_e90306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90303_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90306_)
                  (macro-divide-by-zero-exception-procedure _e90306_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95400
                                (let ()
                                  (declare (not safe))
                                  (cons _e90306_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95400)))))
            (if (macro-divide-by-zero-exception? _exn90303_)
                (macro-divide-by-zero-exception-procedure _exn90303_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95399
                              (let ()
                                (declare (not safe))
                                (cons _exn90303_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95399)))))))
    (define error-exception?
      (lambda (_exn90299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90299_))
            (let ((_e90301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90299_ 'exception))))
              (macro-error-exception? _e90301_))
            (macro-error-exception? _exn90299_))))
    (define error-exception-message
      (lambda (_exn90295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90295_))
            (let ((_e90297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90295_ 'exception))))
              (if (macro-error-exception? _e90297_)
                  (macro-error-exception-message _e90297_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95402
                                (let ()
                                  (declare (not safe))
                                  (cons _e90297_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95402)))))
            (if (macro-error-exception? _exn90295_)
                (macro-error-exception-message _exn90295_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95401
                              (let ()
                                (declare (not safe))
                                (cons _exn90295_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95401)))))))
    (define error-exception-parameters
      (lambda (_exn90289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90289_))
            (let ((_e90292_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90289_ 'exception))))
              (if (macro-error-exception? _e90292_)
                  (macro-error-exception-parameters _e90292_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95404
                                (let ()
                                  (declare (not safe))
                                  (cons _e90292_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95404)))))
            (if (macro-error-exception? _exn90289_)
                (macro-error-exception-parameters _exn90289_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95403
                              (let ()
                                (declare (not safe))
                                (cons _exn90289_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95403)))))))
    (define expression-parsing-exception?
      (lambda (_exn90285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90285_))
            (let ((_e90287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90285_ 'exception))))
              (macro-expression-parsing-exception? _e90287_))
            (macro-expression-parsing-exception? _exn90285_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90281_))
            (let ((_e90283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90281_ 'exception))))
              (if (macro-expression-parsing-exception? _e90283_)
                  (macro-expression-parsing-exception-kind _e90283_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95406
                                (let ()
                                  (declare (not safe))
                                  (cons _e90283_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95406)))))
            (if (macro-expression-parsing-exception? _exn90281_)
                (macro-expression-parsing-exception-kind _exn90281_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95405
                              (let ()
                                (declare (not safe))
                                (cons _exn90281_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95405)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90277_))
            (let ((_e90279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90277_ 'exception))))
              (if (macro-expression-parsing-exception? _e90279_)
                  (macro-expression-parsing-exception-parameters _e90279_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95408
                                (let ()
                                  (declare (not safe))
                                  (cons _e90279_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95408)))))
            (if (macro-expression-parsing-exception? _exn90277_)
                (macro-expression-parsing-exception-parameters _exn90277_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95407
                              (let ()
                                (declare (not safe))
                                (cons _exn90277_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95407)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90271_))
            (let ((_e90274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90271_ 'exception))))
              (if (macro-expression-parsing-exception? _e90274_)
                  (macro-expression-parsing-exception-source _e90274_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95410
                                (let ()
                                  (declare (not safe))
                                  (cons _e90274_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95410)))))
            (if (macro-expression-parsing-exception? _exn90271_)
                (macro-expression-parsing-exception-source _exn90271_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95409
                              (let ()
                                (declare (not safe))
                                (cons _exn90271_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95409)))))))
    (define file-exists-exception?
      (lambda (_exn90267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90267_))
            (let ((_e90269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90267_ 'exception))))
              (macro-file-exists-exception? _e90269_))
            (macro-file-exists-exception? _exn90267_))))
    (define file-exists-exception-arguments
      (lambda (_exn90263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90263_))
            (let ((_e90265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90263_ 'exception))))
              (if (macro-file-exists-exception? _e90265_)
                  (macro-file-exists-exception-arguments _e90265_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95412
                                (let ()
                                  (declare (not safe))
                                  (cons _e90265_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95412)))))
            (if (macro-file-exists-exception? _exn90263_)
                (macro-file-exists-exception-arguments _exn90263_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95411
                              (let ()
                                (declare (not safe))
                                (cons _exn90263_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95411)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90257_))
            (let ((_e90260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90257_ 'exception))))
              (if (macro-file-exists-exception? _e90260_)
                  (macro-file-exists-exception-procedure _e90260_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95414
                                (let ()
                                  (declare (not safe))
                                  (cons _e90260_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95414)))))
            (if (macro-file-exists-exception? _exn90257_)
                (macro-file-exists-exception-procedure _exn90257_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95413
                              (let ()
                                (declare (not safe))
                                (cons _exn90257_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95413)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90253_))
            (let ((_e90255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90253_ 'exception))))
              (macro-fixnum-overflow-exception? _e90255_))
            (macro-fixnum-overflow-exception? _exn90253_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90249_))
            (let ((_e90251_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90249_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90251_)
                  (macro-fixnum-overflow-exception-arguments _e90251_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95416
                                (let ()
                                  (declare (not safe))
                                  (cons _e90251_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95416)))))
            (if (macro-fixnum-overflow-exception? _exn90249_)
                (macro-fixnum-overflow-exception-arguments _exn90249_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95415
                              (let ()
                                (declare (not safe))
                                (cons _exn90249_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95415)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90243_))
            (let ((_e90246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90243_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90246_)
                  (macro-fixnum-overflow-exception-procedure _e90246_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95418
                                (let ()
                                  (declare (not safe))
                                  (cons _e90246_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95418)))))
            (if (macro-fixnum-overflow-exception? _exn90243_)
                (macro-fixnum-overflow-exception-procedure _exn90243_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95417
                              (let ()
                                (declare (not safe))
                                (cons _exn90243_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95417)))))))
    (define heap-overflow-exception?
      (lambda (_exn90237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90237_))
            (let ((_e90240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90237_ 'exception))))
              (macro-heap-overflow-exception? _e90240_))
            (macro-heap-overflow-exception? _exn90237_))))
    (define inactive-thread-exception?
      (lambda (_exn90233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90233_))
            (let ((_e90235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90233_ 'exception))))
              (macro-inactive-thread-exception? _e90235_))
            (macro-inactive-thread-exception? _exn90233_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90229_))
            (let ((_e90231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90229_ 'exception))))
              (if (macro-inactive-thread-exception? _e90231_)
                  (macro-inactive-thread-exception-arguments _e90231_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95420
                                (let ()
                                  (declare (not safe))
                                  (cons _e90231_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95420)))))
            (if (macro-inactive-thread-exception? _exn90229_)
                (macro-inactive-thread-exception-arguments _exn90229_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95419
                              (let ()
                                (declare (not safe))
                                (cons _exn90229_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95419)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90223_))
            (let ((_e90226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90223_ 'exception))))
              (if (macro-inactive-thread-exception? _e90226_)
                  (macro-inactive-thread-exception-procedure _e90226_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95422
                                (let ()
                                  (declare (not safe))
                                  (cons _e90226_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95422)))))
            (if (macro-inactive-thread-exception? _exn90223_)
                (macro-inactive-thread-exception-procedure _exn90223_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95421
                              (let ()
                                (declare (not safe))
                                (cons _exn90223_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95421)))))))
    (define initialized-thread-exception?
      (lambda (_exn90219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90219_))
            (let ((_e90221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90219_ 'exception))))
              (macro-initialized-thread-exception? _e90221_))
            (macro-initialized-thread-exception? _exn90219_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90215_))
            (let ((_e90217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90215_ 'exception))))
              (if (macro-initialized-thread-exception? _e90217_)
                  (macro-initialized-thread-exception-arguments _e90217_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95424
                                (let ()
                                  (declare (not safe))
                                  (cons _e90217_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95424)))))
            (if (macro-initialized-thread-exception? _exn90215_)
                (macro-initialized-thread-exception-arguments _exn90215_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95423
                              (let ()
                                (declare (not safe))
                                (cons _exn90215_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95423)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90209_))
            (let ((_e90212_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90209_ 'exception))))
              (if (macro-initialized-thread-exception? _e90212_)
                  (macro-initialized-thread-exception-procedure _e90212_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95426
                                (let ()
                                  (declare (not safe))
                                  (cons _e90212_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95426)))))
            (if (macro-initialized-thread-exception? _exn90209_)
                (macro-initialized-thread-exception-procedure _exn90209_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95425
                              (let ()
                                (declare (not safe))
                                (cons _exn90209_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95425)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90205_))
            (let ((_e90207_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90205_ 'exception))))
              (macro-invalid-hash-number-exception? _e90207_))
            (macro-invalid-hash-number-exception? _exn90205_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90201_))
            (let ((_e90203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90201_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90203_)
                  (macro-invalid-hash-number-exception-arguments _e90203_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95428
                                (let ()
                                  (declare (not safe))
                                  (cons _e90203_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95428)))))
            (if (macro-invalid-hash-number-exception? _exn90201_)
                (macro-invalid-hash-number-exception-arguments _exn90201_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95427
                              (let ()
                                (declare (not safe))
                                (cons _exn90201_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95427)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90195_))
            (let ((_e90198_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90195_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90198_)
                  (macro-invalid-hash-number-exception-procedure _e90198_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95430
                                (let ()
                                  (declare (not safe))
                                  (cons _e90198_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95430)))))
            (if (macro-invalid-hash-number-exception? _exn90195_)
                (macro-invalid-hash-number-exception-procedure _exn90195_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95429
                              (let ()
                                (declare (not safe))
                                (cons _exn90195_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95429)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90191_))
            (let ((_e90193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90191_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90193_))
            (macro-invalid-utf8-encoding-exception? _exn90191_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90187_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90187_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90189_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90189_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95432
                                (let ()
                                  (declare (not safe))
                                  (cons _e90189_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95432)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90187_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90187_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95431
                              (let ()
                                (declare (not safe))
                                (cons _exn90187_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95431)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90181_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90181_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90184_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90184_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95434
                                (let ()
                                  (declare (not safe))
                                  (cons _e90184_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95434)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90181_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90181_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95433
                              (let ()
                                (declare (not safe))
                                (cons _exn90181_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95433)))))))
    (define join-timeout-exception?
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (macro-join-timeout-exception? _e90179_))
            (macro-join-timeout-exception? _exn90177_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90173_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90173_ 'exception))))
              (if (macro-join-timeout-exception? _e90175_)
                  (macro-join-timeout-exception-arguments _e90175_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95436
                                (let ()
                                  (declare (not safe))
                                  (cons _e90175_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95436)))))
            (if (macro-join-timeout-exception? _exn90173_)
                (macro-join-timeout-exception-arguments _exn90173_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95435
                              (let ()
                                (declare (not safe))
                                (cons _exn90173_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95435)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90167_))
            (let ((_e90170_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90167_ 'exception))))
              (if (macro-join-timeout-exception? _e90170_)
                  (macro-join-timeout-exception-procedure _e90170_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95438
                                (let ()
                                  (declare (not safe))
                                  (cons _e90170_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95438)))))
            (if (macro-join-timeout-exception? _exn90167_)
                (macro-join-timeout-exception-procedure _exn90167_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95437
                              (let ()
                                (declare (not safe))
                                (cons _exn90167_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95437)))))))
    (define keyword-expected-exception?
      (lambda (_exn90163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90163_))
            (let ((_e90165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90163_ 'exception))))
              (macro-keyword-expected-exception? _e90165_))
            (macro-keyword-expected-exception? _exn90163_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90159_))
            (let ((_e90161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90159_ 'exception))))
              (if (macro-keyword-expected-exception? _e90161_)
                  (macro-keyword-expected-exception-arguments _e90161_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95440
                                (let ()
                                  (declare (not safe))
                                  (cons _e90161_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95440)))))
            (if (macro-keyword-expected-exception? _exn90159_)
                (macro-keyword-expected-exception-arguments _exn90159_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95439
                              (let ()
                                (declare (not safe))
                                (cons _exn90159_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95439)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90153_))
            (let ((_e90156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90153_ 'exception))))
              (if (macro-keyword-expected-exception? _e90156_)
                  (macro-keyword-expected-exception-procedure _e90156_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95442
                                (let ()
                                  (declare (not safe))
                                  (cons _e90156_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95442)))))
            (if (macro-keyword-expected-exception? _exn90153_)
                (macro-keyword-expected-exception-procedure _exn90153_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95441
                              (let ()
                                (declare (not safe))
                                (cons _exn90153_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95441)))))))
    (define length-mismatch-exception?
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (macro-length-mismatch-exception? _e90151_))
            (macro-length-mismatch-exception? _exn90149_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90145_))
            (let ((_e90147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90145_ 'exception))))
              (if (macro-length-mismatch-exception? _e90147_)
                  (macro-length-mismatch-exception-arg-id _e90147_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95444
                                (let ()
                                  (declare (not safe))
                                  (cons _e90147_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95444)))))
            (if (macro-length-mismatch-exception? _exn90145_)
                (macro-length-mismatch-exception-arg-id _exn90145_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95443
                              (let ()
                                (declare (not safe))
                                (cons _exn90145_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95443)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90141_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90141_ 'exception))))
              (if (macro-length-mismatch-exception? _e90143_)
                  (macro-length-mismatch-exception-arguments _e90143_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95446
                                (let ()
                                  (declare (not safe))
                                  (cons _e90143_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95446)))))
            (if (macro-length-mismatch-exception? _exn90141_)
                (macro-length-mismatch-exception-arguments _exn90141_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95445
                              (let ()
                                (declare (not safe))
                                (cons _exn90141_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95445)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (if (macro-length-mismatch-exception? _e90138_)
                  (macro-length-mismatch-exception-procedure _e90138_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95448
                                (let ()
                                  (declare (not safe))
                                  (cons _e90138_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95448)))))
            (if (macro-length-mismatch-exception? _exn90135_)
                (macro-length-mismatch-exception-procedure _exn90135_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95447
                              (let ()
                                (declare (not safe))
                                (cons _exn90135_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95447)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90133_))
            (macro-mailbox-receive-timeout-exception? _exn90131_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90127_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90127_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90129_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90129_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95450
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95450)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90127_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90127_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95449
                              (let ()
                                (declare (not safe))
                                (cons _exn90127_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95449)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90124_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90124_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95452
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95452)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90121_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90121_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95451
                              (let ()
                                (declare (not safe))
                                (cons _exn90121_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95451)))))))
    (define module-not-found-exception?
      (lambda (_exn90117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90117_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90117_ 'exception))))
              (macro-module-not-found-exception? _e90119_))
            (macro-module-not-found-exception? _exn90117_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90113_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90113_ 'exception))))
              (if (macro-module-not-found-exception? _e90115_)
                  (macro-module-not-found-exception-arguments _e90115_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95454
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95454)))))
            (if (macro-module-not-found-exception? _exn90113_)
                (macro-module-not-found-exception-arguments _exn90113_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95453
                              (let ()
                                (declare (not safe))
                                (cons _exn90113_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95453)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90107_))
            (let ((_e90110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90107_ 'exception))))
              (if (macro-module-not-found-exception? _e90110_)
                  (macro-module-not-found-exception-procedure _e90110_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95456
                                (let ()
                                  (declare (not safe))
                                  (cons _e90110_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95456)))))
            (if (macro-module-not-found-exception? _exn90107_)
                (macro-module-not-found-exception-procedure _exn90107_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95455
                              (let ()
                                (declare (not safe))
                                (cons _exn90107_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95455)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90101_))
            (let ((_e90104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90101_ 'exception))))
              (macro-multiple-c-return-exception? _e90104_))
            (macro-multiple-c-return-exception? _exn90101_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90097_))
            (let ((_e90099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90097_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90099_))
            (macro-no-such-file-or-directory-exception? _exn90097_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90093_))
            (let ((_e90095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90093_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90095_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90095_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95458
                                (let ()
                                  (declare (not safe))
                                  (cons _e90095_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95458)))))
            (if (macro-no-such-file-or-directory-exception? _exn90093_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90093_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95457
                              (let ()
                                (declare (not safe))
                                (cons _exn90093_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95457)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90087_))
            (let ((_e90090_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90087_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90090_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90090_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95460
                                (let ()
                                  (declare (not safe))
                                  (cons _e90090_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95460)))))
            (if (macro-no-such-file-or-directory-exception? _exn90087_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90087_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95459
                              (let ()
                                (declare (not safe))
                                (cons _exn90087_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95459)))))))
    (define noncontinuable-exception?
      (lambda (_exn90083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90083_))
            (let ((_e90085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90083_ 'exception))))
              (macro-noncontinuable-exception? _e90085_))
            (macro-noncontinuable-exception? _exn90083_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90077_))
            (let ((_e90080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90077_ 'exception))))
              (if (macro-noncontinuable-exception? _e90080_)
                  (macro-noncontinuable-exception-reason _e90080_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95462
                                (let ()
                                  (declare (not safe))
                                  (cons _e90080_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95462)))))
            (if (macro-noncontinuable-exception? _exn90077_)
                (macro-noncontinuable-exception-reason _exn90077_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95461
                              (let ()
                                (declare (not safe))
                                (cons _exn90077_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95461)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90073_))
            (let ((_e90075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90073_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90075_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90073_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90069_))
            (let ((_e90071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90069_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90071_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90071_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95464
                                (let ()
                                  (declare (not safe))
                                  (cons _e90071_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95464)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90069_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90069_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95463
                              (let ()
                                (declare (not safe))
                                (cons _exn90069_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95463)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90063_))
            (let ((_e90066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90063_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90066_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90066_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95466
                                (let ()
                                  (declare (not safe))
                                  (cons _e90066_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95466)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90063_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90063_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95465
                              (let ()
                                (declare (not safe))
                                (cons _exn90063_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95465)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90059_))
            (let ((_e90061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90059_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90061_))
            (macro-nonprocedure-operator-exception? _exn90059_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90055_))
            (let ((_e90057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90055_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90057_)
                  (macro-nonprocedure-operator-exception-arguments _e90057_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95468
                                (let ()
                                  (declare (not safe))
                                  (cons _e90057_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95468)))))
            (if (macro-nonprocedure-operator-exception? _exn90055_)
                (macro-nonprocedure-operator-exception-arguments _exn90055_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95467
                              (let ()
                                (declare (not safe))
                                (cons _exn90055_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95467)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90051_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90051_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90053_)
                  (macro-nonprocedure-operator-exception-code _e90053_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95470
                                (let ()
                                  (declare (not safe))
                                  (cons _e90053_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95470)))))
            (if (macro-nonprocedure-operator-exception? _exn90051_)
                (macro-nonprocedure-operator-exception-code _exn90051_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95469
                              (let ()
                                (declare (not safe))
                                (cons _exn90051_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95469)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90047_))
            (let ((_e90049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90047_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90049_)
                  (macro-nonprocedure-operator-exception-operator _e90049_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95472
                                (let ()
                                  (declare (not safe))
                                  (cons _e90049_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95472)))))
            (if (macro-nonprocedure-operator-exception? _exn90047_)
                (macro-nonprocedure-operator-exception-operator _exn90047_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95471
                              (let ()
                                (declare (not safe))
                                (cons _exn90047_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95471)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90041_))
            (let ((_e90044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90041_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90044_)
                  (macro-nonprocedure-operator-exception-rte _e90044_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95474
                                (let ()
                                  (declare (not safe))
                                  (cons _e90044_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95474)))))
            (if (macro-nonprocedure-operator-exception? _exn90041_)
                (macro-nonprocedure-operator-exception-rte _exn90041_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95473
                              (let ()
                                (declare (not safe))
                                (cons _exn90041_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95473)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90037_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90037_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90039_))
            (macro-not-in-compilation-context-exception? _exn90037_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90033_))
            (let ((_e90035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90033_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90035_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90035_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95476
                                (let ()
                                  (declare (not safe))
                                  (cons _e90035_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95476)))))
            (if (macro-not-in-compilation-context-exception? _exn90033_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90033_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95475
                              (let ()
                                (declare (not safe))
                                (cons _exn90033_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95475)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90027_))
            (let ((_e90030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90027_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90030_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90030_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95478
                                (let ()
                                  (declare (not safe))
                                  (cons _e90030_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95478)))))
            (if (macro-not-in-compilation-context-exception? _exn90027_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90027_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95477
                              (let ()
                                (declare (not safe))
                                (cons _exn90027_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95477)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90023_))
            (let ((_e90025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90023_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90025_))
            (macro-number-of-arguments-limit-exception? _exn90023_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90019_))
            (let ((_e90021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90019_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90021_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90021_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95480
                                (let ()
                                  (declare (not safe))
                                  (cons _e90021_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95480)))))
            (if (macro-number-of-arguments-limit-exception? _exn90019_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90019_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95479
                              (let ()
                                (declare (not safe))
                                (cons _exn90019_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95479)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90013_))
            (let ((_e90016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90013_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90016_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90016_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95482
                                (let ()
                                  (declare (not safe))
                                  (cons _e90016_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95482)))))
            (if (macro-number-of-arguments-limit-exception? _exn90013_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90013_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95481
                              (let ()
                                (declare (not safe))
                                (cons _exn90013_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95481)))))))
    (define os-exception?
      (lambda (_exn90009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90009_))
            (let ((_e90011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90009_ 'exception))))
              (macro-os-exception? _e90011_))
            (macro-os-exception? _exn90009_))))
    (define os-exception-arguments
      (lambda (_exn90005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90005_))
            (let ((_e90007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90005_ 'exception))))
              (if (macro-os-exception? _e90007_)
                  (macro-os-exception-arguments _e90007_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95484
                                (let ()
                                  (declare (not safe))
                                  (cons _e90007_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95484)))))
            (if (macro-os-exception? _exn90005_)
                (macro-os-exception-arguments _exn90005_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95483
                              (let ()
                                (declare (not safe))
                                (cons _exn90005_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95483)))))))
    (define os-exception-code
      (lambda (_exn90001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90001_))
            (let ((_e90003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90001_ 'exception))))
              (if (macro-os-exception? _e90003_)
                  (macro-os-exception-code _e90003_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95486
                                (let ()
                                  (declare (not safe))
                                  (cons _e90003_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95486)))))
            (if (macro-os-exception? _exn90001_)
                (macro-os-exception-code _exn90001_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95485
                              (let ()
                                (declare (not safe))
                                (cons _exn90001_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95485)))))))
    (define os-exception-message
      (lambda (_exn89997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89997_))
            (let ((_e89999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89997_ 'exception))))
              (if (macro-os-exception? _e89999_)
                  (macro-os-exception-message _e89999_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95488
                                (let ()
                                  (declare (not safe))
                                  (cons _e89999_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95488)))))
            (if (macro-os-exception? _exn89997_)
                (macro-os-exception-message _exn89997_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95487
                              (let ()
                                (declare (not safe))
                                (cons _exn89997_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95487)))))))
    (define os-exception-procedure
      (lambda (_exn89991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89991_))
            (let ((_e89994_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89991_ 'exception))))
              (if (macro-os-exception? _e89994_)
                  (macro-os-exception-procedure _e89994_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95490
                                (let ()
                                  (declare (not safe))
                                  (cons _e89994_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95490)))))
            (if (macro-os-exception? _exn89991_)
                (macro-os-exception-procedure _exn89991_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95489
                              (let ()
                                (declare (not safe))
                                (cons _exn89991_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95489)))))))
    (define permission-denied-exception?
      (lambda (_exn89987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89987_))
            (let ((_e89989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89987_ 'exception))))
              (macro-permission-denied-exception? _e89989_))
            (macro-permission-denied-exception? _exn89987_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89983_))
            (let ((_e89985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89983_ 'exception))))
              (if (macro-permission-denied-exception? _e89985_)
                  (macro-permission-denied-exception-arguments _e89985_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95492
                                (let ()
                                  (declare (not safe))
                                  (cons _e89985_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95492)))))
            (if (macro-permission-denied-exception? _exn89983_)
                (macro-permission-denied-exception-arguments _exn89983_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95491
                              (let ()
                                (declare (not safe))
                                (cons _exn89983_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95491)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89977_))
            (let ((_e89980_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89977_ 'exception))))
              (if (macro-permission-denied-exception? _e89980_)
                  (macro-permission-denied-exception-procedure _e89980_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95494
                                (let ()
                                  (declare (not safe))
                                  (cons _e89980_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95494)))))
            (if (macro-permission-denied-exception? _exn89977_)
                (macro-permission-denied-exception-procedure _exn89977_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95493
                              (let ()
                                (declare (not safe))
                                (cons _exn89977_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95493)))))))
    (define range-exception?
      (lambda (_exn89973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89973_))
            (let ((_e89975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89973_ 'exception))))
              (macro-range-exception? _e89975_))
            (macro-range-exception? _exn89973_))))
    (define range-exception-arg-id
      (lambda (_exn89969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89969_))
            (let ((_e89971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89969_ 'exception))))
              (if (macro-range-exception? _e89971_)
                  (macro-range-exception-arg-id _e89971_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95496
                                (let ()
                                  (declare (not safe))
                                  (cons _e89971_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95496)))))
            (if (macro-range-exception? _exn89969_)
                (macro-range-exception-arg-id _exn89969_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95495
                              (let ()
                                (declare (not safe))
                                (cons _exn89969_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95495)))))))
    (define range-exception-arguments
      (lambda (_exn89965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89965_))
            (let ((_e89967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89965_ 'exception))))
              (if (macro-range-exception? _e89967_)
                  (macro-range-exception-arguments _e89967_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95498
                                (let ()
                                  (declare (not safe))
                                  (cons _e89967_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95498)))))
            (if (macro-range-exception? _exn89965_)
                (macro-range-exception-arguments _exn89965_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95497
                              (let ()
                                (declare (not safe))
                                (cons _exn89965_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95497)))))))
    (define range-exception-procedure
      (lambda (_exn89959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89959_))
            (let ((_e89962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89959_ 'exception))))
              (if (macro-range-exception? _e89962_)
                  (macro-range-exception-procedure _e89962_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95500
                                (let ()
                                  (declare (not safe))
                                  (cons _e89962_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95500)))))
            (if (macro-range-exception? _exn89959_)
                (macro-range-exception-procedure _exn89959_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95499
                              (let ()
                                (declare (not safe))
                                (cons _exn89959_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95499)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89955_))
            (let ((_e89957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89955_ 'exception))))
              (macro-rpc-remote-error-exception? _e89957_))
            (macro-rpc-remote-error-exception? _exn89955_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89953_)
                  (macro-rpc-remote-error-exception-arguments _e89953_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95502
                                (let ()
                                  (declare (not safe))
                                  (cons _e89953_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95502)))))
            (if (macro-rpc-remote-error-exception? _exn89951_)
                (macro-rpc-remote-error-exception-arguments _exn89951_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95501
                              (let ()
                                (declare (not safe))
                                (cons _exn89951_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95501)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89947_))
            (let ((_e89949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89947_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89949_)
                  (macro-rpc-remote-error-exception-message _e89949_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95504
                                (let ()
                                  (declare (not safe))
                                  (cons _e89949_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95504)))))
            (if (macro-rpc-remote-error-exception? _exn89947_)
                (macro-rpc-remote-error-exception-message _exn89947_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95503
                              (let ()
                                (declare (not safe))
                                (cons _exn89947_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95503)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89941_))
            (let ((_e89944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89941_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89944_)
                  (macro-rpc-remote-error-exception-procedure _e89944_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95506
                                (let ()
                                  (declare (not safe))
                                  (cons _e89944_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95506)))))
            (if (macro-rpc-remote-error-exception? _exn89941_)
                (macro-rpc-remote-error-exception-procedure _exn89941_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95505
                              (let ()
                                (declare (not safe))
                                (cons _exn89941_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95505)))))))
    (define scheduler-exception?
      (lambda (_exn89937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89937_))
            (let ((_e89939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89937_ 'exception))))
              (macro-scheduler-exception? _e89939_))
            (macro-scheduler-exception? _exn89937_))))
    (define scheduler-exception-reason
      (lambda (_exn89931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89931_))
            (let ((_e89934_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89931_ 'exception))))
              (if (macro-scheduler-exception? _e89934_)
                  (macro-scheduler-exception-reason _e89934_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95508
                                (let ()
                                  (declare (not safe))
                                  (cons _e89934_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95508)))))
            (if (macro-scheduler-exception? _exn89931_)
                (macro-scheduler-exception-reason _exn89931_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95507
                              (let ()
                                (declare (not safe))
                                (cons _exn89931_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95507)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89927_))
            (let ((_e89929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89927_ 'exception))))
              (macro-sfun-conversion-exception? _e89929_))
            (macro-sfun-conversion-exception? _exn89927_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89923_))
            (let ((_e89925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89923_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89925_)
                  (macro-sfun-conversion-exception-arguments _e89925_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95510
                                (let ()
                                  (declare (not safe))
                                  (cons _e89925_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95510)))))
            (if (macro-sfun-conversion-exception? _exn89923_)
                (macro-sfun-conversion-exception-arguments _exn89923_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95509
                              (let ()
                                (declare (not safe))
                                (cons _exn89923_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95509)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89919_))
            (let ((_e89921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89919_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89921_)
                  (macro-sfun-conversion-exception-code _e89921_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95512
                                (let ()
                                  (declare (not safe))
                                  (cons _e89921_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95512)))))
            (if (macro-sfun-conversion-exception? _exn89919_)
                (macro-sfun-conversion-exception-code _exn89919_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95511
                              (let ()
                                (declare (not safe))
                                (cons _exn89919_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95511)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89915_))
            (let ((_e89917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89915_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89917_)
                  (macro-sfun-conversion-exception-message _e89917_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95514
                                (let ()
                                  (declare (not safe))
                                  (cons _e89917_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95514)))))
            (if (macro-sfun-conversion-exception? _exn89915_)
                (macro-sfun-conversion-exception-message _exn89915_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95513
                              (let ()
                                (declare (not safe))
                                (cons _exn89915_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95513)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89909_))
            (let ((_e89912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89909_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89912_)
                  (macro-sfun-conversion-exception-procedure _e89912_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95516
                                (let ()
                                  (declare (not safe))
                                  (cons _e89912_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95516)))))
            (if (macro-sfun-conversion-exception? _exn89909_)
                (macro-sfun-conversion-exception-procedure _exn89909_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95515
                              (let ()
                                (declare (not safe))
                                (cons _exn89909_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95515)))))))
    (define stack-overflow-exception?
      (lambda (_exn89903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89903_))
            (let ((_e89906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89903_ 'exception))))
              (macro-stack-overflow-exception? _e89906_))
            (macro-stack-overflow-exception? _exn89903_))))
    (define started-thread-exception?
      (lambda (_exn89899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89899_))
            (let ((_e89901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89899_ 'exception))))
              (macro-started-thread-exception? _e89901_))
            (macro-started-thread-exception? _exn89899_))))
    (define started-thread-exception-arguments
      (lambda (_exn89895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89895_))
            (let ((_e89897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89895_ 'exception))))
              (if (macro-started-thread-exception? _e89897_)
                  (macro-started-thread-exception-arguments _e89897_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95518
                                (let ()
                                  (declare (not safe))
                                  (cons _e89897_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95518)))))
            (if (macro-started-thread-exception? _exn89895_)
                (macro-started-thread-exception-arguments _exn89895_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95517
                              (let ()
                                (declare (not safe))
                                (cons _exn89895_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95517)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89889_))
            (let ((_e89892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89889_ 'exception))))
              (if (macro-started-thread-exception? _e89892_)
                  (macro-started-thread-exception-procedure _e89892_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95520
                                (let ()
                                  (declare (not safe))
                                  (cons _e89892_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95520)))))
            (if (macro-started-thread-exception? _exn89889_)
                (macro-started-thread-exception-procedure _exn89889_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95519
                              (let ()
                                (declare (not safe))
                                (cons _exn89889_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95519)))))))
    (define terminated-thread-exception?
      (lambda (_exn89885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89885_))
            (let ((_e89887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89885_ 'exception))))
              (macro-terminated-thread-exception? _e89887_))
            (macro-terminated-thread-exception? _exn89885_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89881_))
            (let ((_e89883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89881_ 'exception))))
              (if (macro-terminated-thread-exception? _e89883_)
                  (macro-terminated-thread-exception-arguments _e89883_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95522
                                (let ()
                                  (declare (not safe))
                                  (cons _e89883_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95522)))))
            (if (macro-terminated-thread-exception? _exn89881_)
                (macro-terminated-thread-exception-arguments _exn89881_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95521
                              (let ()
                                (declare (not safe))
                                (cons _exn89881_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95521)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89875_))
            (let ((_e89878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89875_ 'exception))))
              (if (macro-terminated-thread-exception? _e89878_)
                  (macro-terminated-thread-exception-procedure _e89878_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95524
                                (let ()
                                  (declare (not safe))
                                  (cons _e89878_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95524)))))
            (if (macro-terminated-thread-exception? _exn89875_)
                (macro-terminated-thread-exception-procedure _exn89875_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95523
                              (let ()
                                (declare (not safe))
                                (cons _exn89875_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95523)))))))
    (define type-exception?
      (lambda (_exn89871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89871_))
            (let ((_e89873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89871_ 'exception))))
              (macro-type-exception? _e89873_))
            (macro-type-exception? _exn89871_))))
    (define type-exception-arg-id
      (lambda (_exn89867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89867_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89867_ 'exception))))
              (if (macro-type-exception? _e89869_)
                  (macro-type-exception-arg-id _e89869_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95526
                                (let ()
                                  (declare (not safe))
                                  (cons _e89869_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95526)))))
            (if (macro-type-exception? _exn89867_)
                (macro-type-exception-arg-id _exn89867_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95525
                              (let ()
                                (declare (not safe))
                                (cons _exn89867_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95525)))))))
    (define type-exception-arguments
      (lambda (_exn89863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89863_))
            (let ((_e89865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89863_ 'exception))))
              (if (macro-type-exception? _e89865_)
                  (macro-type-exception-arguments _e89865_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95528
                                (let ()
                                  (declare (not safe))
                                  (cons _e89865_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95528)))))
            (if (macro-type-exception? _exn89863_)
                (macro-type-exception-arguments _exn89863_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95527
                              (let ()
                                (declare (not safe))
                                (cons _exn89863_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95527)))))))
    (define type-exception-procedure
      (lambda (_exn89859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89859_))
            (let ((_e89861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89859_ 'exception))))
              (if (macro-type-exception? _e89861_)
                  (macro-type-exception-procedure _e89861_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95530
                                (let ()
                                  (declare (not safe))
                                  (cons _e89861_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95530)))))
            (if (macro-type-exception? _exn89859_)
                (macro-type-exception-procedure _exn89859_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95529
                              (let ()
                                (declare (not safe))
                                (cons _exn89859_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95529)))))))
    (define type-exception-type-id
      (lambda (_exn89853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89853_))
            (let ((_e89856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89853_ 'exception))))
              (if (macro-type-exception? _e89856_)
                  (macro-type-exception-type-id _e89856_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95532
                                (let ()
                                  (declare (not safe))
                                  (cons _e89856_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95532)))))
            (if (macro-type-exception? _exn89853_)
                (macro-type-exception-type-id _exn89853_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95531
                              (let ()
                                (declare (not safe))
                                (cons _exn89853_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95531)))))))
    (define unbound-global-exception?
      (lambda (_exn89849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89849_))
            (let ((_e89851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89849_ 'exception))))
              (macro-unbound-global-exception? _e89851_))
            (macro-unbound-global-exception? _exn89849_))))
    (define unbound-global-exception-code
      (lambda (_exn89845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89845_))
            (let ((_e89847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89845_ 'exception))))
              (if (macro-unbound-global-exception? _e89847_)
                  (macro-unbound-global-exception-code _e89847_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95534
                                (let ()
                                  (declare (not safe))
                                  (cons _e89847_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95534)))))
            (if (macro-unbound-global-exception? _exn89845_)
                (macro-unbound-global-exception-code _exn89845_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95533
                              (let ()
                                (declare (not safe))
                                (cons _exn89845_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95533)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89841_))
            (let ((_e89843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89841_ 'exception))))
              (if (macro-unbound-global-exception? _e89843_)
                  (macro-unbound-global-exception-rte _e89843_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95536
                                (let ()
                                  (declare (not safe))
                                  (cons _e89843_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95536)))))
            (if (macro-unbound-global-exception? _exn89841_)
                (macro-unbound-global-exception-rte _exn89841_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95535
                              (let ()
                                (declare (not safe))
                                (cons _exn89841_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95535)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89835_))
            (let ((_e89838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89835_ 'exception))))
              (if (macro-unbound-global-exception? _e89838_)
                  (macro-unbound-global-exception-variable _e89838_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95538
                                (let ()
                                  (declare (not safe))
                                  (cons _e89838_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95538)))))
            (if (macro-unbound-global-exception? _exn89835_)
                (macro-unbound-global-exception-variable _exn89835_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95537
                              (let ()
                                (declare (not safe))
                                (cons _exn89835_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95537)))))))
    (define unbound-key-exception?
      (lambda (_exn89831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89831_))
            (let ((_e89833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89831_ 'exception))))
              (macro-unbound-key-exception? _e89833_))
            (macro-unbound-key-exception? _exn89831_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89827_))
            (let ((_e89829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89827_ 'exception))))
              (if (macro-unbound-key-exception? _e89829_)
                  (macro-unbound-key-exception-arguments _e89829_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95540
                                (let ()
                                  (declare (not safe))
                                  (cons _e89829_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95540)))))
            (if (macro-unbound-key-exception? _exn89827_)
                (macro-unbound-key-exception-arguments _exn89827_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95539
                              (let ()
                                (declare (not safe))
                                (cons _exn89827_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95539)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (if (macro-unbound-key-exception? _e89824_)
                  (macro-unbound-key-exception-procedure _e89824_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95542
                                (let ()
                                  (declare (not safe))
                                  (cons _e89824_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95542)))))
            (if (macro-unbound-key-exception? _exn89821_)
                (macro-unbound-key-exception-procedure _exn89821_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95541
                              (let ()
                                (declare (not safe))
                                (cons _exn89821_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95541)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89817_))
            (let ((_e89819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89817_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89819_))
            (macro-unbound-os-environment-variable-exception? _exn89817_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89813_))
            (let ((_e89815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89813_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89815_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89815_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95544
                                (let ()
                                  (declare (not safe))
                                  (cons _e89815_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95544)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89813_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89813_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95543
                              (let ()
                                (declare (not safe))
                                (cons _exn89813_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95543)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89807_))
            (let ((_e89810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89807_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89810_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89810_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95546
                                (let ()
                                  (declare (not safe))
                                  (cons _e89810_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95546)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89807_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89807_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95545
                              (let ()
                                (declare (not safe))
                                (cons _exn89807_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95545)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89803_))
            (let ((_e89805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89803_ 'exception))))
              (macro-unbound-serial-number-exception? _e89805_))
            (macro-unbound-serial-number-exception? _exn89803_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89799_))
            (let ((_e89801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89799_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89801_)
                  (macro-unbound-serial-number-exception-arguments _e89801_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95548
                                (let ()
                                  (declare (not safe))
                                  (cons _e89801_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95548)))))
            (if (macro-unbound-serial-number-exception? _exn89799_)
                (macro-unbound-serial-number-exception-arguments _exn89799_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95547
                              (let ()
                                (declare (not safe))
                                (cons _exn89799_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95547)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89793_))
            (let ((_e89796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89793_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89796_)
                  (macro-unbound-serial-number-exception-procedure _e89796_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95550
                                (let ()
                                  (declare (not safe))
                                  (cons _e89796_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95550)))))
            (if (macro-unbound-serial-number-exception? _exn89793_)
                (macro-unbound-serial-number-exception-procedure _exn89793_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95549
                              (let ()
                                (declare (not safe))
                                (cons _exn89793_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95549)))))))
    (define uncaught-exception?
      (lambda (_exn89789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89789_))
            (let ((_e89791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89789_ 'exception))))
              (macro-uncaught-exception? _e89791_))
            (macro-uncaught-exception? _exn89789_))))
    (define uncaught-exception-arguments
      (lambda (_exn89785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89785_))
            (let ((_e89787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89785_ 'exception))))
              (if (macro-uncaught-exception? _e89787_)
                  (macro-uncaught-exception-arguments _e89787_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95552
                                (let ()
                                  (declare (not safe))
                                  (cons _e89787_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95552)))))
            (if (macro-uncaught-exception? _exn89785_)
                (macro-uncaught-exception-arguments _exn89785_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95551
                              (let ()
                                (declare (not safe))
                                (cons _exn89785_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95551)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89781_))
            (let ((_e89783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89781_ 'exception))))
              (if (macro-uncaught-exception? _e89783_)
                  (macro-uncaught-exception-procedure _e89783_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95554
                                (let ()
                                  (declare (not safe))
                                  (cons _e89783_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95554)))))
            (if (macro-uncaught-exception? _exn89781_)
                (macro-uncaught-exception-procedure _exn89781_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95553
                              (let ()
                                (declare (not safe))
                                (cons _exn89781_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95553)))))))
    (define uncaught-exception-reason
      (lambda (_exn89775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89775_))
            (let ((_e89778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89775_ 'exception))))
              (if (macro-uncaught-exception? _e89778_)
                  (macro-uncaught-exception-reason _e89778_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95556
                                (let ()
                                  (declare (not safe))
                                  (cons _e89778_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95556)))))
            (if (macro-uncaught-exception? _exn89775_)
                (macro-uncaught-exception-reason _exn89775_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95555
                              (let ()
                                (declare (not safe))
                                (cons _exn89775_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95555)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89771_))
            (let ((_e89773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89771_ 'exception))))
              (macro-uninitialized-thread-exception? _e89773_))
            (macro-uninitialized-thread-exception? _exn89771_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89767_))
            (let ((_e89769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89767_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89769_)
                  (macro-uninitialized-thread-exception-arguments _e89769_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95558
                                (let ()
                                  (declare (not safe))
                                  (cons _e89769_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95558)))))
            (if (macro-uninitialized-thread-exception? _exn89767_)
                (macro-uninitialized-thread-exception-arguments _exn89767_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95557
                              (let ()
                                (declare (not safe))
                                (cons _exn89767_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95557)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89761_))
            (let ((_e89764_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89761_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89764_)
                  (macro-uninitialized-thread-exception-procedure _e89764_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95560
                                (let ()
                                  (declare (not safe))
                                  (cons _e89764_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95560)))))
            (if (macro-uninitialized-thread-exception? _exn89761_)
                (macro-uninitialized-thread-exception-procedure _exn89761_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95559
                              (let ()
                                (declare (not safe))
                                (cons _exn89761_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95559)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89757_))
            (let ((_e89759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89757_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89759_))
            (macro-unknown-keyword-argument-exception? _exn89757_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89753_))
            (let ((_e89755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89753_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89755_)
                  (macro-unknown-keyword-argument-exception-arguments _e89755_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95562
                                (let ()
                                  (declare (not safe))
                                  (cons _e89755_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95562)))))
            (if (macro-unknown-keyword-argument-exception? _exn89753_)
                (macro-unknown-keyword-argument-exception-arguments _exn89753_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95561
                              (let ()
                                (declare (not safe))
                                (cons _exn89753_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95561)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89747_))
            (let ((_e89750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89747_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89750_)
                  (macro-unknown-keyword-argument-exception-procedure _e89750_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95564
                                (let ()
                                  (declare (not safe))
                                  (cons _e89750_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95564)))))
            (if (macro-unknown-keyword-argument-exception? _exn89747_)
                (macro-unknown-keyword-argument-exception-procedure _exn89747_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95563
                              (let ()
                                (declare (not safe))
                                (cons _exn89747_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95563)))))))
    (define unterminated-process-exception?
      (lambda (_exn89743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89743_))
            (let ((_e89745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89743_ 'exception))))
              (macro-unterminated-process-exception? _e89745_))
            (macro-unterminated-process-exception? _exn89743_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89739_))
            (let ((_e89741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89739_ 'exception))))
              (if (macro-unterminated-process-exception? _e89741_)
                  (macro-unterminated-process-exception-arguments _e89741_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95566
                                (let ()
                                  (declare (not safe))
                                  (cons _e89741_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95566)))))
            (if (macro-unterminated-process-exception? _exn89739_)
                (macro-unterminated-process-exception-arguments _exn89739_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95565
                              (let ()
                                (declare (not safe))
                                (cons _exn89739_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95565)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89733_))
            (let ((_e89736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89733_ 'exception))))
              (if (macro-unterminated-process-exception? _e89736_)
                  (macro-unterminated-process-exception-procedure _e89736_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95568
                                (let ()
                                  (declare (not safe))
                                  (cons _e89736_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95568)))))
            (if (macro-unterminated-process-exception? _exn89733_)
                (macro-unterminated-process-exception-procedure _exn89733_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95567
                              (let ()
                                (declare (not safe))
                                (cons _exn89733_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95567)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89729_))
            (let ((_e89731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89729_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89731_))
            (macro-wrong-number-of-arguments-exception? _exn89729_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89725_))
            (let ((_e89727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89725_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89727_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89727_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95570
                                (let ()
                                  (declare (not safe))
                                  (cons _e89727_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95570)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89725_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89725_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95569
                              (let ()
                                (declare (not safe))
                                (cons _exn89725_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95569)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89719_))
            (let ((_e89722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89719_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89722_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89722_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95572
                                (let ()
                                  (declare (not safe))
                                  (cons _e89722_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95572)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89719_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89719_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95571
                              (let ()
                                (declare (not safe))
                                (cons _exn89719_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95571)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89715_))
            (let ((_e89717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89715_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89717_))
            (macro-wrong-number-of-values-exception? _exn89715_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89711_))
            (let ((_e89713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89711_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89713_)
                  (macro-wrong-number-of-values-exception-code _e89713_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95574
                                (let ()
                                  (declare (not safe))
                                  (cons _e89713_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95574)))))
            (if (macro-wrong-number-of-values-exception? _exn89711_)
                (macro-wrong-number-of-values-exception-code _exn89711_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95573
                              (let ()
                                (declare (not safe))
                                (cons _exn89711_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95573)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89707_))
            (let ((_e89709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89707_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89709_)
                  (macro-wrong-number-of-values-exception-rte _e89709_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95576
                                (let ()
                                  (declare (not safe))
                                  (cons _e89709_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95576)))))
            (if (macro-wrong-number-of-values-exception? _exn89707_)
                (macro-wrong-number-of-values-exception-rte _exn89707_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95575
                              (let ()
                                (declare (not safe))
                                (cons _exn89707_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95575)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89701_))
            (let ((_e89704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89701_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89704_)
                  (macro-wrong-number-of-values-exception-vals _e89704_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95578
                                (let ()
                                  (declare (not safe))
                                  (cons _e89704_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95578)))))
            (if (macro-wrong-number-of-values-exception? _exn89701_)
                (macro-wrong-number-of-values-exception-vals _exn89701_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95577
                              (let ()
                                (declare (not safe))
                                (cons _exn89701_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95577)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89695_))
            (let ((_e89698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89695_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89698_))
            (macro-wrong-processor-c-return-exception? _exn89695_))))))
