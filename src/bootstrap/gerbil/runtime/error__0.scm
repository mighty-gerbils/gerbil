(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707659877)
  (begin
    (define Exception::t
      (let ((__tmp94881 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94881
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90384_ (apply make-instance Exception::t _$args90384_)))
    (define StackTrace::t
      (let ((__tmp94882 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94882
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90381_ (apply make-instance StackTrace::t _$args90381_)))
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
      (let ((__tmp94883 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94883
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90378_ (apply make-instance Error::t _$args90378_)))
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
      (let ((__tmp94884 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94884
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90375_
        (apply make-instance RuntimeException::t _$args90375_)))
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
      (lambda (_exn90370_ _continue90371_)
        (let ((_exn90373_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90370_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90373_ _continue90371_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90366_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90366_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90366_ 'continuation))
                '#!void
                (let ((__tmp94885
                       (lambda (_cont90368_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90366_
                            'continuation
                            _cont90368_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94885)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90366_))))
    (define error
      (lambda (_message90363_ . _irritants90364_)
        (raise (let ((__obj94875
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94875
                  _message90363_
                  'irritants:
                  _irritants90364_)
                 __obj94875))))
    (define with-exception-handler
      (lambda (_handler90356_ _thunk90357_)
        (if (let () (declare (not safe)) (procedure? _handler90356_))
            '#!void
            (raise (let ((__obj94876
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94876
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90356_ '())))
                     __obj94876)))
        (if (let () (declare (not safe)) (procedure? _thunk90357_))
            '#!void
            (raise (let ((__obj94877
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94877
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90357_ '())))
                     __obj94877)))
        (let ((__tmp94886
               (lambda (_exn90359_)
                 (let ((_exn90361_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90359_))))
                   (_handler90356_ _exn90361_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94886 _thunk90357_))))
    (define with-catch
      (lambda (_handler90349_ _thunk90350_)
        (if (let () (declare (not safe)) (procedure? _handler90349_))
            '#!void
            (raise (let ((__obj94878
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94878
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90349_ '())))
                     __obj94878)))
        (if (let () (declare (not safe)) (procedure? _thunk90350_))
            '#!void
            (raise (let ((__obj94879
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94879
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90350_ '())))
                     __obj94879)))
        (let ((__tmp94887
               (lambda (_cont90352_)
                 (with-exception-handler
                  (lambda (_exn90354_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90352_
                       _handler90349_
                       _exn90354_)))
                  _thunk90350_))))
          (declare (not safe))
          (##continuation-capture __tmp94887))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90340_)
        (if (or (heap-overflow-exception? _exn90340_)
                (stack-overflow-exception? _exn90340_))
            _exn90340_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90340_))
                _exn90340_
                (if (macro-exception? _exn90340_)
                    (let ((_rte90345_
                           (let ((__obj94880
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94880
                                _exn90340_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94880)))
                      (let ((__tmp94888
                             (lambda (_cont90347_)
                               (let ((__tmp94889
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90347_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90345_
                                  'continuation
                                  __tmp94889)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94888))
                      _rte90345_)
                    _exn90340_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90335_)
        (let ((_$e90337_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90335_))))
          (if _$e90337_ _$e90337_ (error-exception? _obj90335_)))))
    (define error-message
      (lambda (_obj90333_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90333_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90333_ 'message))
            (if (error-exception? _obj90333_)
                (error-exception-message _obj90333_)
                '#f))))
    (define error-irritants
      (lambda (_obj90331_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90331_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90331_ 'irritants))
            (if (error-exception? _obj90331_)
                (error-exception-parameters _obj90331_)
                '#f))))
    (define error-trace
      (lambda (_obj90329_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90329_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90329_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90311_ _port90312_)
        (let ((_$e90314_
               (let ()
                 (declare (not safe))
                 (method-ref _e90311_ 'display-exception))))
          (if _$e90314_
              ((lambda (_f90317_) (_f90317_ _e90311_ _port90312_)) _$e90314_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90311_ _port90312_))))))
    (define display-exception__0
      (lambda (_e90322_)
        (let ((_port90324_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90322_ _port90324_))))
    (define display-exception
      (lambda _g94891_
        (let ((_g94890_ (let () (declare (not safe)) (##length _g94891_))))
          (cond ((let () (declare (not safe)) (##fx= _g94890_ 1))
                 (apply (lambda (_e90322_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90322_)))
                        _g94891_))
                ((let () (declare (not safe)) (##fx= _g94890_ 2))
                 (apply (lambda (_e90326_ _port90327_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90326_ _port90327_)))
                        _g94891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94891_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90300_ _message90301_ . _rest90302_)
        (let ((_message90308_
               (if (let () (declare (not safe)) (string? _message90301_))
                   _message90301_
                   (call-with-output-string
                    '""
                    (lambda (_g9030390305_)
                      (display _message90301_ _g9030390305_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90300_ 'message _message90308_))
          (apply class-instance-init! _self90300_ _rest90302_))))
    (define Error:::init!::specialize
      (lambda (__t94854)
        (let ((__message94855
               (let ((__tmp94856
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94854 'message))))
                 (if __tmp94856 __tmp94856 (error '"Unknown slot" 'message)))))
          (lambda (_self90300_ _message90301_ . _rest90302_)
            (let ((_message90308_
                   (if (let () (declare (not safe)) (string? _message90301_))
                       _message90301_
                       (call-with-output-string
                        '""
                        (lambda (_g9030390305_)
                          (display _message90301_ _g9030390305_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90300_
                 _message90308_
                 __message94855
                 __t94854
                 '#f))
              (apply class-instance-init! _self90300_ _rest90302_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90158_ _port90159_)
        (let ((_tmp-port90161_ (open-output-string))
              (_display-error-newline90162_
               (> (output-port-column _port90159_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90161_))
          (let ((__tmp94892
                 (lambda ()
                   (if _display-error-newline90162_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90165_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90158_ 'where))))
                     (if _$e90165_ (display _$e90165_) (display '"?")))
                   (let ((__tmp94893
                          (let ((__tmp94894
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90158_))))
                            (declare (not safe))
                            (##type-name __tmp94894))))
                     (declare (not safe))
                     (display* '" [" __tmp94893 '"]: "))
                   (let ((__tmp94895
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90158_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94895))
                   (let ((_irritants90168_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90158_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90168_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90170_)
                              (write _obj90170_)
                              (write-char '#\space))
                            _irritants90168_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90158_))
                            (dump-stack-trace?))
                       (let ((_cont9017190173_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90158_
                                 'continuation))))
                         (if _cont9017190173_
                             (let ((_cont90176_ _cont9017190173_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90176_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94892
             current-output-port
             _tmp-port90161_))
          (let ((__tmp94896 (get-output-string _tmp-port90161_)))
            (declare (not safe))
            (##write-string __tmp94896 _port90159_)))))
    (define Error::display-exception::specialize
      (lambda (__t94857)
        (let ((__continuation94858
               (let ((__tmp94862
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94857 'continuation))))
                 (if __tmp94862
                     __tmp94862
                     (error '"Unknown slot" 'continuation))))
              (__message94859
               (let ((__tmp94863
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94857 'message))))
                 (if __tmp94863 __tmp94863 (error '"Unknown slot" 'message))))
              (__irritants94860
               (let ((__tmp94864
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94857 'irritants))))
                 (if __tmp94864
                     __tmp94864
                     (error '"Unknown slot" 'irritants))))
              (__where94861
               (let ((__tmp94865
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94857 'where))))
                 (if __tmp94865 __tmp94865 (error '"Unknown slot" 'where)))))
          (lambda (_self90158_ _port90159_)
            (let ((_tmp-port90161_ (open-output-string))
                  (_display-error-newline90162_
                   (> (output-port-column _port90159_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90161_))
              (let ((__tmp94897
                     (lambda ()
                       (if _display-error-newline90162_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90165_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90158_
                                 __where94861
                                 __t94857
                                 '#f))))
                         (if _$e90165_ (display _$e90165_) (display '"?")))
                       (let ((__tmp94898
                              (let ((__tmp94899
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90158_))))
                                (declare (not safe))
                                (##type-name __tmp94899))))
                         (declare (not safe))
                         (display* '" [" __tmp94898 '"]: "))
                       (let ((__tmp94900
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90158_
                                 __message94859
                                 __t94857
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94900))
                       (let ((_irritants90168_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90158_
                                 __irritants94860
                                 __t94857
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90168_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90170_)
                                  (write _obj90170_)
                                  (write-char '#\space))
                                _irritants90168_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90158_))
                                (dump-stack-trace?))
                           (let ((_cont9017190173_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90158_
                                     __continuation94858
                                     __t94857
                                     '#f))))
                             (if _cont9017190173_
                                 (let ((_cont90176_ _cont9017190173_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90176_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94897
                 current-output-port
                 _tmp-port90161_))
              (let ((__tmp94901 (get-output-string _tmp-port90161_)))
                (declare (not safe))
                (##write-string __tmp94901 _port90159_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90025_ _port90026_)
        (let ((_tmp-port90028_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90028_))
          (let ((__tmp94902
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90025_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94902 _tmp-port90028_))
          (if (dump-stack-trace?)
              (let ((_cont9002990031_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90025_ 'continuation))))
                (if _cont9002990031_
                    (let ((_cont90034_ _cont9002990031_))
                      (display '"--- continuation backtrace:" _tmp-port90028_)
                      (newline _tmp-port90028_)
                      (display-continuation-backtrace
                       _cont90034_
                       _tmp-port90028_))
                    '#f))
              '#!void)
          (let ((__tmp94903 (get-output-string _tmp-port90028_)))
            (declare (not safe))
            (##write-string __tmp94903 _port90026_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94866)
        (let ((__continuation94867
               (let ((__tmp94869
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94866 'continuation))))
                 (if __tmp94869
                     __tmp94869
                     (error '"Unknown slot" 'continuation))))
              (__exception94868
               (let ((__tmp94870
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94866 'exception))))
                 (if __tmp94870
                     __tmp94870
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self90025_ _port90026_)
            (let ((_tmp-port90028_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90028_))
              (let ((__tmp94904
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90025_
                        __exception94868
                        __t94866
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94904 _tmp-port90028_))
              (if (dump-stack-trace?)
                  (let ((_cont9002990031_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90025_
                            __continuation94867
                            __t94866
                            '#f))))
                    (if _cont9002990031_
                        (let ((_cont90034_ _cont9002990031_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90028_)
                          (newline _tmp-port90028_)
                          (display-continuation-backtrace
                           _cont90034_
                           _tmp-port90028_))
                        '#f))
                  '#!void)
              (let ((__tmp94905 (get-output-string _tmp-port90028_)))
                (declare (not safe))
                (##write-string __tmp94905 _port90026_)))))))
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
      (lambda (_port89897_)
        (if (macro-character-port? _port89897_)
            (let ((_old-width89899_
                   (macro-character-port-output-width _port89897_)))
              (macro-character-port-output-width-set!
               _port89897_
               (lambda (_port89901_) '256))
              _old-width89899_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port89894_ _old-width89895_)
        (if (macro-character-port? _port89894_)
            (macro-character-port-output-width-set!
             _port89894_
             _old-width89895_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e89892_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e89892_))))
    (define abandoned-mutex-exception?
      (lambda (_exn89886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89886_))
            (let ((_e89889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89886_ 'exception))))
              (macro-abandoned-mutex-exception? _e89889_))
            (macro-abandoned-mutex-exception? _exn89886_))))
    (define cfun-conversion-exception?
      (lambda (_exn89882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89882_))
            (let ((_e89884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89882_ 'exception))))
              (macro-cfun-conversion-exception? _e89884_))
            (macro-cfun-conversion-exception? _exn89882_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn89878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89878_))
            (let ((_e89880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89878_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89880_)
                  (macro-cfun-conversion-exception-arguments _e89880_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94907
                                (let ()
                                  (declare (not safe))
                                  (cons _e89880_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94907)))))
            (if (macro-cfun-conversion-exception? _exn89878_)
                (macro-cfun-conversion-exception-arguments _exn89878_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94906
                              (let ()
                                (declare (not safe))
                                (cons _exn89878_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94906)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn89874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89874_))
            (let ((_e89876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89874_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89876_)
                  (macro-cfun-conversion-exception-code _e89876_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94909
                                (let ()
                                  (declare (not safe))
                                  (cons _e89876_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp94909)))))
            (if (macro-cfun-conversion-exception? _exn89874_)
                (macro-cfun-conversion-exception-code _exn89874_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94908
                              (let ()
                                (declare (not safe))
                                (cons _exn89874_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp94908)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn89870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89870_))
            (let ((_e89872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89870_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89872_)
                  (macro-cfun-conversion-exception-message _e89872_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94911
                                (let ()
                                  (declare (not safe))
                                  (cons _e89872_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94911)))))
            (if (macro-cfun-conversion-exception? _exn89870_)
                (macro-cfun-conversion-exception-message _exn89870_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94910
                              (let ()
                                (declare (not safe))
                                (cons _exn89870_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94910)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn89864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89864_))
            (let ((_e89867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89864_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89867_)
                  (macro-cfun-conversion-exception-procedure _e89867_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94913
                                (let ()
                                  (declare (not safe))
                                  (cons _e89867_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94913)))))
            (if (macro-cfun-conversion-exception? _exn89864_)
                (macro-cfun-conversion-exception-procedure _exn89864_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94912
                              (let ()
                                (declare (not safe))
                                (cons _exn89864_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94912)))))))
    (define datum-parsing-exception?
      (lambda (_exn89860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89860_))
            (let ((_e89862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89860_ 'exception))))
              (macro-datum-parsing-exception? _e89862_))
            (macro-datum-parsing-exception? _exn89860_))))
    (define datum-parsing-exception-kind
      (lambda (_exn89856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89856_))
            (let ((_e89858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89856_ 'exception))))
              (if (macro-datum-parsing-exception? _e89858_)
                  (macro-datum-parsing-exception-kind _e89858_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94915
                                (let ()
                                  (declare (not safe))
                                  (cons _e89858_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94915)))))
            (if (macro-datum-parsing-exception? _exn89856_)
                (macro-datum-parsing-exception-kind _exn89856_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94914
                              (let ()
                                (declare (not safe))
                                (cons _exn89856_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94914)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn89852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89852_))
            (let ((_e89854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89852_ 'exception))))
              (if (macro-datum-parsing-exception? _e89854_)
                  (macro-datum-parsing-exception-parameters _e89854_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94917
                                (let ()
                                  (declare (not safe))
                                  (cons _e89854_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94917)))))
            (if (macro-datum-parsing-exception? _exn89852_)
                (macro-datum-parsing-exception-parameters _exn89852_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94916
                              (let ()
                                (declare (not safe))
                                (cons _exn89852_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94916)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn89846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89846_))
            (let ((_e89849_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89846_ 'exception))))
              (if (macro-datum-parsing-exception? _e89849_)
                  (macro-datum-parsing-exception-readenv _e89849_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94919
                                (let ()
                                  (declare (not safe))
                                  (cons _e89849_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94919)))))
            (if (macro-datum-parsing-exception? _exn89846_)
                (macro-datum-parsing-exception-readenv _exn89846_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94918
                              (let ()
                                (declare (not safe))
                                (cons _exn89846_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp94918)))))))
    (define deadlock-exception?
      (lambda (_exn89840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89840_))
            (let ((_e89843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89840_ 'exception))))
              (macro-deadlock-exception? _e89843_))
            (macro-deadlock-exception? _exn89840_))))
    (define divide-by-zero-exception?
      (lambda (_exn89836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89836_))
            (let ((_e89838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89836_ 'exception))))
              (macro-divide-by-zero-exception? _e89838_))
            (macro-divide-by-zero-exception? _exn89836_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn89832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89832_))
            (let ((_e89834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89832_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89834_)
                  (macro-divide-by-zero-exception-arguments _e89834_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94921
                                (let ()
                                  (declare (not safe))
                                  (cons _e89834_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94921)))))
            (if (macro-divide-by-zero-exception? _exn89832_)
                (macro-divide-by-zero-exception-arguments _exn89832_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94920
                              (let ()
                                (declare (not safe))
                                (cons _exn89832_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94920)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn89826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89826_))
            (let ((_e89829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89826_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89829_)
                  (macro-divide-by-zero-exception-procedure _e89829_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94923
                                (let ()
                                  (declare (not safe))
                                  (cons _e89829_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94923)))))
            (if (macro-divide-by-zero-exception? _exn89826_)
                (macro-divide-by-zero-exception-procedure _exn89826_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94922
                              (let ()
                                (declare (not safe))
                                (cons _exn89826_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94922)))))))
    (define error-exception?
      (lambda (_exn89822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89822_))
            (let ((_e89824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89822_ 'exception))))
              (macro-error-exception? _e89824_))
            (macro-error-exception? _exn89822_))))
    (define error-exception-message
      (lambda (_exn89818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89818_))
            (let ((_e89820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89818_ 'exception))))
              (if (macro-error-exception? _e89820_)
                  (macro-error-exception-message _e89820_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94925
                                (let ()
                                  (declare (not safe))
                                  (cons _e89820_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94925)))))
            (if (macro-error-exception? _exn89818_)
                (macro-error-exception-message _exn89818_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94924
                              (let ()
                                (declare (not safe))
                                (cons _exn89818_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94924)))))))
    (define error-exception-parameters
      (lambda (_exn89812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89812_))
            (let ((_e89815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89812_ 'exception))))
              (if (macro-error-exception? _e89815_)
                  (macro-error-exception-parameters _e89815_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94927
                                (let ()
                                  (declare (not safe))
                                  (cons _e89815_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94927)))))
            (if (macro-error-exception? _exn89812_)
                (macro-error-exception-parameters _exn89812_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94926
                              (let ()
                                (declare (not safe))
                                (cons _exn89812_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94926)))))))
    (define expression-parsing-exception?
      (lambda (_exn89808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89808_))
            (let ((_e89810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89808_ 'exception))))
              (macro-expression-parsing-exception? _e89810_))
            (macro-expression-parsing-exception? _exn89808_))))
    (define expression-parsing-exception-kind
      (lambda (_exn89804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89804_))
            (let ((_e89806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89804_ 'exception))))
              (if (macro-expression-parsing-exception? _e89806_)
                  (macro-expression-parsing-exception-kind _e89806_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94929
                                (let ()
                                  (declare (not safe))
                                  (cons _e89806_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94929)))))
            (if (macro-expression-parsing-exception? _exn89804_)
                (macro-expression-parsing-exception-kind _exn89804_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94928
                              (let ()
                                (declare (not safe))
                                (cons _exn89804_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94928)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn89800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89800_))
            (let ((_e89802_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89800_ 'exception))))
              (if (macro-expression-parsing-exception? _e89802_)
                  (macro-expression-parsing-exception-parameters _e89802_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94931
                                (let ()
                                  (declare (not safe))
                                  (cons _e89802_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp94931)))))
            (if (macro-expression-parsing-exception? _exn89800_)
                (macro-expression-parsing-exception-parameters _exn89800_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94930
                              (let ()
                                (declare (not safe))
                                (cons _exn89800_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94930)))))))
    (define expression-parsing-exception-source
      (lambda (_exn89794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89794_))
            (let ((_e89797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89794_ 'exception))))
              (if (macro-expression-parsing-exception? _e89797_)
                  (macro-expression-parsing-exception-source _e89797_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94933
                                (let ()
                                  (declare (not safe))
                                  (cons _e89797_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp94933)))))
            (if (macro-expression-parsing-exception? _exn89794_)
                (macro-expression-parsing-exception-source _exn89794_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94932
                              (let ()
                                (declare (not safe))
                                (cons _exn89794_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp94932)))))))
    (define file-exists-exception?
      (lambda (_exn89790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89790_))
            (let ((_e89792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89790_ 'exception))))
              (macro-file-exists-exception? _e89792_))
            (macro-file-exists-exception? _exn89790_))))
    (define file-exists-exception-arguments
      (lambda (_exn89786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89786_))
            (let ((_e89788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89786_ 'exception))))
              (if (macro-file-exists-exception? _e89788_)
                  (macro-file-exists-exception-arguments _e89788_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94935
                                (let ()
                                  (declare (not safe))
                                  (cons _e89788_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp94935)))))
            (if (macro-file-exists-exception? _exn89786_)
                (macro-file-exists-exception-arguments _exn89786_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94934
                              (let ()
                                (declare (not safe))
                                (cons _exn89786_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp94934)))))))
    (define file-exists-exception-procedure
      (lambda (_exn89780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89780_))
            (let ((_e89783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89780_ 'exception))))
              (if (macro-file-exists-exception? _e89783_)
                  (macro-file-exists-exception-procedure _e89783_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94937
                                (let ()
                                  (declare (not safe))
                                  (cons _e89783_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp94937)))))
            (if (macro-file-exists-exception? _exn89780_)
                (macro-file-exists-exception-procedure _exn89780_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94936
                              (let ()
                                (declare (not safe))
                                (cons _exn89780_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp94936)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn89776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89776_))
            (let ((_e89778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89776_ 'exception))))
              (macro-fixnum-overflow-exception? _e89778_))
            (macro-fixnum-overflow-exception? _exn89776_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn89772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89772_))
            (let ((_e89774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89772_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89774_)
                  (macro-fixnum-overflow-exception-arguments _e89774_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94939
                                (let ()
                                  (declare (not safe))
                                  (cons _e89774_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp94939)))))
            (if (macro-fixnum-overflow-exception? _exn89772_)
                (macro-fixnum-overflow-exception-arguments _exn89772_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94938
                              (let ()
                                (declare (not safe))
                                (cons _exn89772_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp94938)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn89766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89766_))
            (let ((_e89769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89766_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89769_)
                  (macro-fixnum-overflow-exception-procedure _e89769_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94941
                                (let ()
                                  (declare (not safe))
                                  (cons _e89769_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp94941)))))
            (if (macro-fixnum-overflow-exception? _exn89766_)
                (macro-fixnum-overflow-exception-procedure _exn89766_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94940
                              (let ()
                                (declare (not safe))
                                (cons _exn89766_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp94940)))))))
    (define heap-overflow-exception?
      (lambda (_exn89760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89760_))
            (let ((_e89763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89760_ 'exception))))
              (macro-heap-overflow-exception? _e89763_))
            (macro-heap-overflow-exception? _exn89760_))))
    (define inactive-thread-exception?
      (lambda (_exn89756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89756_))
            (let ((_e89758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89756_ 'exception))))
              (macro-inactive-thread-exception? _e89758_))
            (macro-inactive-thread-exception? _exn89756_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn89752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89752_))
            (let ((_e89754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89752_ 'exception))))
              (if (macro-inactive-thread-exception? _e89754_)
                  (macro-inactive-thread-exception-arguments _e89754_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94943
                                (let ()
                                  (declare (not safe))
                                  (cons _e89754_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp94943)))))
            (if (macro-inactive-thread-exception? _exn89752_)
                (macro-inactive-thread-exception-arguments _exn89752_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94942
                              (let ()
                                (declare (not safe))
                                (cons _exn89752_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp94942)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn89746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89746_))
            (let ((_e89749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89746_ 'exception))))
              (if (macro-inactive-thread-exception? _e89749_)
                  (macro-inactive-thread-exception-procedure _e89749_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94945
                                (let ()
                                  (declare (not safe))
                                  (cons _e89749_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp94945)))))
            (if (macro-inactive-thread-exception? _exn89746_)
                (macro-inactive-thread-exception-procedure _exn89746_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94944
                              (let ()
                                (declare (not safe))
                                (cons _exn89746_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp94944)))))))
    (define initialized-thread-exception?
      (lambda (_exn89742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89742_))
            (let ((_e89744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89742_ 'exception))))
              (macro-initialized-thread-exception? _e89744_))
            (macro-initialized-thread-exception? _exn89742_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn89738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89738_))
            (let ((_e89740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89738_ 'exception))))
              (if (macro-initialized-thread-exception? _e89740_)
                  (macro-initialized-thread-exception-arguments _e89740_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94947
                                (let ()
                                  (declare (not safe))
                                  (cons _e89740_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp94947)))))
            (if (macro-initialized-thread-exception? _exn89738_)
                (macro-initialized-thread-exception-arguments _exn89738_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94946
                              (let ()
                                (declare (not safe))
                                (cons _exn89738_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp94946)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn89732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89732_))
            (let ((_e89735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89732_ 'exception))))
              (if (macro-initialized-thread-exception? _e89735_)
                  (macro-initialized-thread-exception-procedure _e89735_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94949
                                (let ()
                                  (declare (not safe))
                                  (cons _e89735_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp94949)))))
            (if (macro-initialized-thread-exception? _exn89732_)
                (macro-initialized-thread-exception-procedure _exn89732_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94948
                              (let ()
                                (declare (not safe))
                                (cons _exn89732_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp94948)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn89728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89728_))
            (let ((_e89730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89728_ 'exception))))
              (macro-invalid-hash-number-exception? _e89730_))
            (macro-invalid-hash-number-exception? _exn89728_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn89724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89724_))
            (let ((_e89726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89724_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89726_)
                  (macro-invalid-hash-number-exception-arguments _e89726_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94951
                                (let ()
                                  (declare (not safe))
                                  (cons _e89726_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp94951)))))
            (if (macro-invalid-hash-number-exception? _exn89724_)
                (macro-invalid-hash-number-exception-arguments _exn89724_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94950
                              (let ()
                                (declare (not safe))
                                (cons _exn89724_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp94950)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn89718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89718_))
            (let ((_e89721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89718_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89721_)
                  (macro-invalid-hash-number-exception-procedure _e89721_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94953
                                (let ()
                                  (declare (not safe))
                                  (cons _e89721_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp94953)))))
            (if (macro-invalid-hash-number-exception? _exn89718_)
                (macro-invalid-hash-number-exception-procedure _exn89718_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94952
                              (let ()
                                (declare (not safe))
                                (cons _exn89718_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp94952)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn89714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89714_))
            (let ((_e89716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89714_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e89716_))
            (macro-invalid-utf8-encoding-exception? _exn89714_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn89710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89710_))
            (let ((_e89712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89710_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89712_)
                  (macro-invalid-utf8-encoding-exception-arguments _e89712_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94955
                                (let ()
                                  (declare (not safe))
                                  (cons _e89712_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp94955)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89710_)
                (macro-invalid-utf8-encoding-exception-arguments _exn89710_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94954
                              (let ()
                                (declare (not safe))
                                (cons _exn89710_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp94954)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89704_))
            (let ((_e89707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89704_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89707_)
                  (macro-invalid-utf8-encoding-exception-procedure _e89707_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94957
                                (let ()
                                  (declare (not safe))
                                  (cons _e89707_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp94957)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89704_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89704_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94956
                              (let ()
                                (declare (not safe))
                                (cons _exn89704_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp94956)))))))
    (define join-timeout-exception?
      (lambda (_exn89700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89700_))
            (let ((_e89702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89700_ 'exception))))
              (macro-join-timeout-exception? _e89702_))
            (macro-join-timeout-exception? _exn89700_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89696_))
            (let ((_e89698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89696_ 'exception))))
              (if (macro-join-timeout-exception? _e89698_)
                  (macro-join-timeout-exception-arguments _e89698_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94959
                                (let ()
                                  (declare (not safe))
                                  (cons _e89698_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp94959)))))
            (if (macro-join-timeout-exception? _exn89696_)
                (macro-join-timeout-exception-arguments _exn89696_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94958
                              (let ()
                                (declare (not safe))
                                (cons _exn89696_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp94958)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89690_))
            (let ((_e89693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89690_ 'exception))))
              (if (macro-join-timeout-exception? _e89693_)
                  (macro-join-timeout-exception-procedure _e89693_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94961
                                (let ()
                                  (declare (not safe))
                                  (cons _e89693_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp94961)))))
            (if (macro-join-timeout-exception? _exn89690_)
                (macro-join-timeout-exception-procedure _exn89690_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94960
                              (let ()
                                (declare (not safe))
                                (cons _exn89690_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp94960)))))))
    (define keyword-expected-exception?
      (lambda (_exn89686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89686_))
            (let ((_e89688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89686_ 'exception))))
              (macro-keyword-expected-exception? _e89688_))
            (macro-keyword-expected-exception? _exn89686_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89682_))
            (let ((_e89684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89682_ 'exception))))
              (if (macro-keyword-expected-exception? _e89684_)
                  (macro-keyword-expected-exception-arguments _e89684_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94963
                                (let ()
                                  (declare (not safe))
                                  (cons _e89684_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp94963)))))
            (if (macro-keyword-expected-exception? _exn89682_)
                (macro-keyword-expected-exception-arguments _exn89682_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94962
                              (let ()
                                (declare (not safe))
                                (cons _exn89682_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp94962)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89676_))
            (let ((_e89679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89676_ 'exception))))
              (if (macro-keyword-expected-exception? _e89679_)
                  (macro-keyword-expected-exception-procedure _e89679_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94965
                                (let ()
                                  (declare (not safe))
                                  (cons _e89679_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp94965)))))
            (if (macro-keyword-expected-exception? _exn89676_)
                (macro-keyword-expected-exception-procedure _exn89676_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94964
                              (let ()
                                (declare (not safe))
                                (cons _exn89676_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp94964)))))))
    (define length-mismatch-exception?
      (lambda (_exn89672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89672_))
            (let ((_e89674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89672_ 'exception))))
              (macro-length-mismatch-exception? _e89674_))
            (macro-length-mismatch-exception? _exn89672_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89668_))
            (let ((_e89670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89668_ 'exception))))
              (if (macro-length-mismatch-exception? _e89670_)
                  (macro-length-mismatch-exception-arg-id _e89670_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94967
                                (let ()
                                  (declare (not safe))
                                  (cons _e89670_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp94967)))))
            (if (macro-length-mismatch-exception? _exn89668_)
                (macro-length-mismatch-exception-arg-id _exn89668_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94966
                              (let ()
                                (declare (not safe))
                                (cons _exn89668_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp94966)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89664_))
            (let ((_e89666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89664_ 'exception))))
              (if (macro-length-mismatch-exception? _e89666_)
                  (macro-length-mismatch-exception-arguments _e89666_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94969
                                (let ()
                                  (declare (not safe))
                                  (cons _e89666_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp94969)))))
            (if (macro-length-mismatch-exception? _exn89664_)
                (macro-length-mismatch-exception-arguments _exn89664_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94968
                              (let ()
                                (declare (not safe))
                                (cons _exn89664_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp94968)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89658_))
            (let ((_e89661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89658_ 'exception))))
              (if (macro-length-mismatch-exception? _e89661_)
                  (macro-length-mismatch-exception-procedure _e89661_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94971
                                (let ()
                                  (declare (not safe))
                                  (cons _e89661_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp94971)))))
            (if (macro-length-mismatch-exception? _exn89658_)
                (macro-length-mismatch-exception-procedure _exn89658_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94970
                              (let ()
                                (declare (not safe))
                                (cons _exn89658_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp94970)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89654_))
            (let ((_e89656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89654_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89656_))
            (macro-mailbox-receive-timeout-exception? _exn89654_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89650_))
            (let ((_e89652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89650_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89652_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89652_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94973
                                (let ()
                                  (declare (not safe))
                                  (cons _e89652_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp94973)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89650_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89650_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94972
                              (let ()
                                (declare (not safe))
                                (cons _exn89650_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp94972)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89644_))
            (let ((_e89647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89644_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89647_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89647_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94975
                                (let ()
                                  (declare (not safe))
                                  (cons _e89647_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp94975)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89644_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89644_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94974
                              (let ()
                                (declare (not safe))
                                (cons _exn89644_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp94974)))))))
    (define module-not-found-exception?
      (lambda (_exn89640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89640_))
            (let ((_e89642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89640_ 'exception))))
              (macro-module-not-found-exception? _e89642_))
            (macro-module-not-found-exception? _exn89640_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89636_))
            (let ((_e89638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89636_ 'exception))))
              (if (macro-module-not-found-exception? _e89638_)
                  (macro-module-not-found-exception-arguments _e89638_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94977
                                (let ()
                                  (declare (not safe))
                                  (cons _e89638_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp94977)))))
            (if (macro-module-not-found-exception? _exn89636_)
                (macro-module-not-found-exception-arguments _exn89636_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94976
                              (let ()
                                (declare (not safe))
                                (cons _exn89636_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp94976)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89630_))
            (let ((_e89633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89630_ 'exception))))
              (if (macro-module-not-found-exception? _e89633_)
                  (macro-module-not-found-exception-procedure _e89633_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94979
                                (let ()
                                  (declare (not safe))
                                  (cons _e89633_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp94979)))))
            (if (macro-module-not-found-exception? _exn89630_)
                (macro-module-not-found-exception-procedure _exn89630_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94978
                              (let ()
                                (declare (not safe))
                                (cons _exn89630_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp94978)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89624_))
            (let ((_e89627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89624_ 'exception))))
              (macro-multiple-c-return-exception? _e89627_))
            (macro-multiple-c-return-exception? _exn89624_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89620_))
            (let ((_e89622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89620_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89622_))
            (macro-no-such-file-or-directory-exception? _exn89620_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89616_))
            (let ((_e89618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89616_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89618_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89618_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94981
                                (let ()
                                  (declare (not safe))
                                  (cons _e89618_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp94981)))))
            (if (macro-no-such-file-or-directory-exception? _exn89616_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89616_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94980
                              (let ()
                                (declare (not safe))
                                (cons _exn89616_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp94980)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89610_))
            (let ((_e89613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89610_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89613_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89613_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94983
                                (let ()
                                  (declare (not safe))
                                  (cons _e89613_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp94983)))))
            (if (macro-no-such-file-or-directory-exception? _exn89610_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89610_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94982
                              (let ()
                                (declare (not safe))
                                (cons _exn89610_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp94982)))))))
    (define noncontinuable-exception?
      (lambda (_exn89606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89606_))
            (let ((_e89608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89606_ 'exception))))
              (macro-noncontinuable-exception? _e89608_))
            (macro-noncontinuable-exception? _exn89606_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89600_))
            (let ((_e89603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89600_ 'exception))))
              (if (macro-noncontinuable-exception? _e89603_)
                  (macro-noncontinuable-exception-reason _e89603_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp94985
                                (let ()
                                  (declare (not safe))
                                  (cons _e89603_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp94985)))))
            (if (macro-noncontinuable-exception? _exn89600_)
                (macro-noncontinuable-exception-reason _exn89600_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp94984
                              (let ()
                                (declare (not safe))
                                (cons _exn89600_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp94984)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89596_))
            (let ((_e89598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89596_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89598_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89596_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89592_))
            (let ((_e89594_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89592_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89594_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89594_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94987
                                (let ()
                                  (declare (not safe))
                                  (cons _e89594_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp94987)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89592_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89592_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94986
                              (let ()
                                (declare (not safe))
                                (cons _exn89592_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp94986)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89586_))
            (let ((_e89589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89586_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89589_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89589_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94989
                                (let ()
                                  (declare (not safe))
                                  (cons _e89589_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp94989)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89586_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89586_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94988
                              (let ()
                                (declare (not safe))
                                (cons _exn89586_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp94988)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89582_))
            (let ((_e89584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89582_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89584_))
            (macro-nonprocedure-operator-exception? _exn89582_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89578_))
            (let ((_e89580_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89578_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89580_)
                  (macro-nonprocedure-operator-exception-arguments _e89580_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94991
                                (let ()
                                  (declare (not safe))
                                  (cons _e89580_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp94991)))))
            (if (macro-nonprocedure-operator-exception? _exn89578_)
                (macro-nonprocedure-operator-exception-arguments _exn89578_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94990
                              (let ()
                                (declare (not safe))
                                (cons _exn89578_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp94990)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89574_))
            (let ((_e89576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89574_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89576_)
                  (macro-nonprocedure-operator-exception-code _e89576_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94993
                                (let ()
                                  (declare (not safe))
                                  (cons _e89576_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp94993)))))
            (if (macro-nonprocedure-operator-exception? _exn89574_)
                (macro-nonprocedure-operator-exception-code _exn89574_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94992
                              (let ()
                                (declare (not safe))
                                (cons _exn89574_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp94992)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89570_))
            (let ((_e89572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89570_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89572_)
                  (macro-nonprocedure-operator-exception-operator _e89572_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94995
                                (let ()
                                  (declare (not safe))
                                  (cons _e89572_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp94995)))))
            (if (macro-nonprocedure-operator-exception? _exn89570_)
                (macro-nonprocedure-operator-exception-operator _exn89570_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94994
                              (let ()
                                (declare (not safe))
                                (cons _exn89570_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp94994)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89564_))
            (let ((_e89567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89564_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89567_)
                  (macro-nonprocedure-operator-exception-rte _e89567_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94997
                                (let ()
                                  (declare (not safe))
                                  (cons _e89567_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp94997)))))
            (if (macro-nonprocedure-operator-exception? _exn89564_)
                (macro-nonprocedure-operator-exception-rte _exn89564_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94996
                              (let ()
                                (declare (not safe))
                                (cons _exn89564_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp94996)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89560_))
            (let ((_e89562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89560_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89562_))
            (macro-not-in-compilation-context-exception? _exn89560_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89556_))
            (let ((_e89558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89556_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89558_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89558_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94999
                                (let ()
                                  (declare (not safe))
                                  (cons _e89558_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp94999)))))
            (if (macro-not-in-compilation-context-exception? _exn89556_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89556_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94998
                              (let ()
                                (declare (not safe))
                                (cons _exn89556_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp94998)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89550_))
            (let ((_e89553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89550_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89553_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89553_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95001
                                (let ()
                                  (declare (not safe))
                                  (cons _e89553_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95001)))))
            (if (macro-not-in-compilation-context-exception? _exn89550_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89550_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95000
                              (let ()
                                (declare (not safe))
                                (cons _exn89550_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95000)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89546_))
            (let ((_e89548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89546_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89548_))
            (macro-number-of-arguments-limit-exception? _exn89546_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89542_))
            (let ((_e89544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89542_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89544_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89544_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95003
                                (let ()
                                  (declare (not safe))
                                  (cons _e89544_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95003)))))
            (if (macro-number-of-arguments-limit-exception? _exn89542_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89542_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95002
                              (let ()
                                (declare (not safe))
                                (cons _exn89542_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95002)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89536_))
            (let ((_e89539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89536_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89539_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89539_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95005
                                (let ()
                                  (declare (not safe))
                                  (cons _e89539_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95005)))))
            (if (macro-number-of-arguments-limit-exception? _exn89536_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89536_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95004
                              (let ()
                                (declare (not safe))
                                (cons _exn89536_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95004)))))))
    (define os-exception?
      (lambda (_exn89532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89532_))
            (let ((_e89534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89532_ 'exception))))
              (macro-os-exception? _e89534_))
            (macro-os-exception? _exn89532_))))
    (define os-exception-arguments
      (lambda (_exn89528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89528_))
            (let ((_e89530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89528_ 'exception))))
              (if (macro-os-exception? _e89530_)
                  (macro-os-exception-arguments _e89530_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95007
                                (let ()
                                  (declare (not safe))
                                  (cons _e89530_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95007)))))
            (if (macro-os-exception? _exn89528_)
                (macro-os-exception-arguments _exn89528_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95006
                              (let ()
                                (declare (not safe))
                                (cons _exn89528_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95006)))))))
    (define os-exception-code
      (lambda (_exn89524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89524_))
            (let ((_e89526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89524_ 'exception))))
              (if (macro-os-exception? _e89526_)
                  (macro-os-exception-code _e89526_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95009
                                (let ()
                                  (declare (not safe))
                                  (cons _e89526_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95009)))))
            (if (macro-os-exception? _exn89524_)
                (macro-os-exception-code _exn89524_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95008
                              (let ()
                                (declare (not safe))
                                (cons _exn89524_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95008)))))))
    (define os-exception-message
      (lambda (_exn89520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89520_))
            (let ((_e89522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89520_ 'exception))))
              (if (macro-os-exception? _e89522_)
                  (macro-os-exception-message _e89522_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95011
                                (let ()
                                  (declare (not safe))
                                  (cons _e89522_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95011)))))
            (if (macro-os-exception? _exn89520_)
                (macro-os-exception-message _exn89520_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95010
                              (let ()
                                (declare (not safe))
                                (cons _exn89520_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95010)))))))
    (define os-exception-procedure
      (lambda (_exn89514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89514_))
            (let ((_e89517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89514_ 'exception))))
              (if (macro-os-exception? _e89517_)
                  (macro-os-exception-procedure _e89517_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95013
                                (let ()
                                  (declare (not safe))
                                  (cons _e89517_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95013)))))
            (if (macro-os-exception? _exn89514_)
                (macro-os-exception-procedure _exn89514_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95012
                              (let ()
                                (declare (not safe))
                                (cons _exn89514_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95012)))))))
    (define permission-denied-exception?
      (lambda (_exn89510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89510_))
            (let ((_e89512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89510_ 'exception))))
              (macro-permission-denied-exception? _e89512_))
            (macro-permission-denied-exception? _exn89510_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89506_))
            (let ((_e89508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89506_ 'exception))))
              (if (macro-permission-denied-exception? _e89508_)
                  (macro-permission-denied-exception-arguments _e89508_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95015
                                (let ()
                                  (declare (not safe))
                                  (cons _e89508_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95015)))))
            (if (macro-permission-denied-exception? _exn89506_)
                (macro-permission-denied-exception-arguments _exn89506_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95014
                              (let ()
                                (declare (not safe))
                                (cons _exn89506_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95014)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89500_))
            (let ((_e89503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89500_ 'exception))))
              (if (macro-permission-denied-exception? _e89503_)
                  (macro-permission-denied-exception-procedure _e89503_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95017
                                (let ()
                                  (declare (not safe))
                                  (cons _e89503_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95017)))))
            (if (macro-permission-denied-exception? _exn89500_)
                (macro-permission-denied-exception-procedure _exn89500_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95016
                              (let ()
                                (declare (not safe))
                                (cons _exn89500_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95016)))))))
    (define range-exception?
      (lambda (_exn89496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89496_))
            (let ((_e89498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89496_ 'exception))))
              (macro-range-exception? _e89498_))
            (macro-range-exception? _exn89496_))))
    (define range-exception-arg-id
      (lambda (_exn89492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89492_))
            (let ((_e89494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89492_ 'exception))))
              (if (macro-range-exception? _e89494_)
                  (macro-range-exception-arg-id _e89494_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95019
                                (let ()
                                  (declare (not safe))
                                  (cons _e89494_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95019)))))
            (if (macro-range-exception? _exn89492_)
                (macro-range-exception-arg-id _exn89492_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95018
                              (let ()
                                (declare (not safe))
                                (cons _exn89492_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95018)))))))
    (define range-exception-arguments
      (lambda (_exn89488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89488_))
            (let ((_e89490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89488_ 'exception))))
              (if (macro-range-exception? _e89490_)
                  (macro-range-exception-arguments _e89490_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95021
                                (let ()
                                  (declare (not safe))
                                  (cons _e89490_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95021)))))
            (if (macro-range-exception? _exn89488_)
                (macro-range-exception-arguments _exn89488_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95020
                              (let ()
                                (declare (not safe))
                                (cons _exn89488_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95020)))))))
    (define range-exception-procedure
      (lambda (_exn89482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89482_))
            (let ((_e89485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89482_ 'exception))))
              (if (macro-range-exception? _e89485_)
                  (macro-range-exception-procedure _e89485_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95023
                                (let ()
                                  (declare (not safe))
                                  (cons _e89485_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95023)))))
            (if (macro-range-exception? _exn89482_)
                (macro-range-exception-procedure _exn89482_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95022
                              (let ()
                                (declare (not safe))
                                (cons _exn89482_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95022)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89478_))
            (let ((_e89480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89478_ 'exception))))
              (macro-rpc-remote-error-exception? _e89480_))
            (macro-rpc-remote-error-exception? _exn89478_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89474_))
            (let ((_e89476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89474_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89476_)
                  (macro-rpc-remote-error-exception-arguments _e89476_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95025
                                (let ()
                                  (declare (not safe))
                                  (cons _e89476_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95025)))))
            (if (macro-rpc-remote-error-exception? _exn89474_)
                (macro-rpc-remote-error-exception-arguments _exn89474_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95024
                              (let ()
                                (declare (not safe))
                                (cons _exn89474_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95024)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89470_))
            (let ((_e89472_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89470_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89472_)
                  (macro-rpc-remote-error-exception-message _e89472_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95027
                                (let ()
                                  (declare (not safe))
                                  (cons _e89472_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95027)))))
            (if (macro-rpc-remote-error-exception? _exn89470_)
                (macro-rpc-remote-error-exception-message _exn89470_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95026
                              (let ()
                                (declare (not safe))
                                (cons _exn89470_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95026)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89464_))
            (let ((_e89467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89464_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89467_)
                  (macro-rpc-remote-error-exception-procedure _e89467_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95029
                                (let ()
                                  (declare (not safe))
                                  (cons _e89467_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95029)))))
            (if (macro-rpc-remote-error-exception? _exn89464_)
                (macro-rpc-remote-error-exception-procedure _exn89464_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95028
                              (let ()
                                (declare (not safe))
                                (cons _exn89464_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95028)))))))
    (define scheduler-exception?
      (lambda (_exn89460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89460_))
            (let ((_e89462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89460_ 'exception))))
              (macro-scheduler-exception? _e89462_))
            (macro-scheduler-exception? _exn89460_))))
    (define scheduler-exception-reason
      (lambda (_exn89454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89454_))
            (let ((_e89457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89454_ 'exception))))
              (if (macro-scheduler-exception? _e89457_)
                  (macro-scheduler-exception-reason _e89457_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95031
                                (let ()
                                  (declare (not safe))
                                  (cons _e89457_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95031)))))
            (if (macro-scheduler-exception? _exn89454_)
                (macro-scheduler-exception-reason _exn89454_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95030
                              (let ()
                                (declare (not safe))
                                (cons _exn89454_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95030)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89450_))
            (let ((_e89452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89450_ 'exception))))
              (macro-sfun-conversion-exception? _e89452_))
            (macro-sfun-conversion-exception? _exn89450_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89446_))
            (let ((_e89448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89446_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89448_)
                  (macro-sfun-conversion-exception-arguments _e89448_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95033
                                (let ()
                                  (declare (not safe))
                                  (cons _e89448_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95033)))))
            (if (macro-sfun-conversion-exception? _exn89446_)
                (macro-sfun-conversion-exception-arguments _exn89446_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95032
                              (let ()
                                (declare (not safe))
                                (cons _exn89446_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95032)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89442_))
            (let ((_e89444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89442_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89444_)
                  (macro-sfun-conversion-exception-code _e89444_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95035
                                (let ()
                                  (declare (not safe))
                                  (cons _e89444_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95035)))))
            (if (macro-sfun-conversion-exception? _exn89442_)
                (macro-sfun-conversion-exception-code _exn89442_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95034
                              (let ()
                                (declare (not safe))
                                (cons _exn89442_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95034)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89438_))
            (let ((_e89440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89438_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89440_)
                  (macro-sfun-conversion-exception-message _e89440_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95037
                                (let ()
                                  (declare (not safe))
                                  (cons _e89440_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95037)))))
            (if (macro-sfun-conversion-exception? _exn89438_)
                (macro-sfun-conversion-exception-message _exn89438_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95036
                              (let ()
                                (declare (not safe))
                                (cons _exn89438_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95036)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89432_))
            (let ((_e89435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89432_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89435_)
                  (macro-sfun-conversion-exception-procedure _e89435_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95039
                                (let ()
                                  (declare (not safe))
                                  (cons _e89435_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95039)))))
            (if (macro-sfun-conversion-exception? _exn89432_)
                (macro-sfun-conversion-exception-procedure _exn89432_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95038
                              (let ()
                                (declare (not safe))
                                (cons _exn89432_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95038)))))))
    (define stack-overflow-exception?
      (lambda (_exn89426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89426_))
            (let ((_e89429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89426_ 'exception))))
              (macro-stack-overflow-exception? _e89429_))
            (macro-stack-overflow-exception? _exn89426_))))
    (define started-thread-exception?
      (lambda (_exn89422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89422_))
            (let ((_e89424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89422_ 'exception))))
              (macro-started-thread-exception? _e89424_))
            (macro-started-thread-exception? _exn89422_))))
    (define started-thread-exception-arguments
      (lambda (_exn89418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89418_))
            (let ((_e89420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89418_ 'exception))))
              (if (macro-started-thread-exception? _e89420_)
                  (macro-started-thread-exception-arguments _e89420_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95041
                                (let ()
                                  (declare (not safe))
                                  (cons _e89420_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95041)))))
            (if (macro-started-thread-exception? _exn89418_)
                (macro-started-thread-exception-arguments _exn89418_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95040
                              (let ()
                                (declare (not safe))
                                (cons _exn89418_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95040)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89412_))
            (let ((_e89415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89412_ 'exception))))
              (if (macro-started-thread-exception? _e89415_)
                  (macro-started-thread-exception-procedure _e89415_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95043
                                (let ()
                                  (declare (not safe))
                                  (cons _e89415_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95043)))))
            (if (macro-started-thread-exception? _exn89412_)
                (macro-started-thread-exception-procedure _exn89412_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95042
                              (let ()
                                (declare (not safe))
                                (cons _exn89412_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95042)))))))
    (define terminated-thread-exception?
      (lambda (_exn89408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89408_))
            (let ((_e89410_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89408_ 'exception))))
              (macro-terminated-thread-exception? _e89410_))
            (macro-terminated-thread-exception? _exn89408_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89404_))
            (let ((_e89406_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89404_ 'exception))))
              (if (macro-terminated-thread-exception? _e89406_)
                  (macro-terminated-thread-exception-arguments _e89406_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95045
                                (let ()
                                  (declare (not safe))
                                  (cons _e89406_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95045)))))
            (if (macro-terminated-thread-exception? _exn89404_)
                (macro-terminated-thread-exception-arguments _exn89404_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95044
                              (let ()
                                (declare (not safe))
                                (cons _exn89404_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95044)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89398_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89398_))
            (let ((_e89401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89398_ 'exception))))
              (if (macro-terminated-thread-exception? _e89401_)
                  (macro-terminated-thread-exception-procedure _e89401_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95047
                                (let ()
                                  (declare (not safe))
                                  (cons _e89401_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95047)))))
            (if (macro-terminated-thread-exception? _exn89398_)
                (macro-terminated-thread-exception-procedure _exn89398_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95046
                              (let ()
                                (declare (not safe))
                                (cons _exn89398_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95046)))))))
    (define type-exception?
      (lambda (_exn89394_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89394_))
            (let ((_e89396_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89394_ 'exception))))
              (macro-type-exception? _e89396_))
            (macro-type-exception? _exn89394_))))
    (define type-exception-arg-id
      (lambda (_exn89390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89390_))
            (let ((_e89392_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89390_ 'exception))))
              (if (macro-type-exception? _e89392_)
                  (macro-type-exception-arg-id _e89392_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95049
                                (let ()
                                  (declare (not safe))
                                  (cons _e89392_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95049)))))
            (if (macro-type-exception? _exn89390_)
                (macro-type-exception-arg-id _exn89390_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95048
                              (let ()
                                (declare (not safe))
                                (cons _exn89390_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95048)))))))
    (define type-exception-arguments
      (lambda (_exn89386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89386_))
            (let ((_e89388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89386_ 'exception))))
              (if (macro-type-exception? _e89388_)
                  (macro-type-exception-arguments _e89388_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95051
                                (let ()
                                  (declare (not safe))
                                  (cons _e89388_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95051)))))
            (if (macro-type-exception? _exn89386_)
                (macro-type-exception-arguments _exn89386_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95050
                              (let ()
                                (declare (not safe))
                                (cons _exn89386_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95050)))))))
    (define type-exception-procedure
      (lambda (_exn89382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89382_))
            (let ((_e89384_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89382_ 'exception))))
              (if (macro-type-exception? _e89384_)
                  (macro-type-exception-procedure _e89384_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95053
                                (let ()
                                  (declare (not safe))
                                  (cons _e89384_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95053)))))
            (if (macro-type-exception? _exn89382_)
                (macro-type-exception-procedure _exn89382_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95052
                              (let ()
                                (declare (not safe))
                                (cons _exn89382_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95052)))))))
    (define type-exception-type-id
      (lambda (_exn89376_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89376_))
            (let ((_e89379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89376_ 'exception))))
              (if (macro-type-exception? _e89379_)
                  (macro-type-exception-type-id _e89379_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95055
                                (let ()
                                  (declare (not safe))
                                  (cons _e89379_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95055)))))
            (if (macro-type-exception? _exn89376_)
                (macro-type-exception-type-id _exn89376_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95054
                              (let ()
                                (declare (not safe))
                                (cons _exn89376_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95054)))))))
    (define unbound-global-exception?
      (lambda (_exn89372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89372_))
            (let ((_e89374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89372_ 'exception))))
              (macro-unbound-global-exception? _e89374_))
            (macro-unbound-global-exception? _exn89372_))))
    (define unbound-global-exception-code
      (lambda (_exn89368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89368_))
            (let ((_e89370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89368_ 'exception))))
              (if (macro-unbound-global-exception? _e89370_)
                  (macro-unbound-global-exception-code _e89370_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95057
                                (let ()
                                  (declare (not safe))
                                  (cons _e89370_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95057)))))
            (if (macro-unbound-global-exception? _exn89368_)
                (macro-unbound-global-exception-code _exn89368_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95056
                              (let ()
                                (declare (not safe))
                                (cons _exn89368_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95056)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89364_))
            (let ((_e89366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89364_ 'exception))))
              (if (macro-unbound-global-exception? _e89366_)
                  (macro-unbound-global-exception-rte _e89366_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95059
                                (let ()
                                  (declare (not safe))
                                  (cons _e89366_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95059)))))
            (if (macro-unbound-global-exception? _exn89364_)
                (macro-unbound-global-exception-rte _exn89364_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95058
                              (let ()
                                (declare (not safe))
                                (cons _exn89364_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95058)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89358_))
            (let ((_e89361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89358_ 'exception))))
              (if (macro-unbound-global-exception? _e89361_)
                  (macro-unbound-global-exception-variable _e89361_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95061
                                (let ()
                                  (declare (not safe))
                                  (cons _e89361_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95061)))))
            (if (macro-unbound-global-exception? _exn89358_)
                (macro-unbound-global-exception-variable _exn89358_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95060
                              (let ()
                                (declare (not safe))
                                (cons _exn89358_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95060)))))))
    (define unbound-key-exception?
      (lambda (_exn89354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89354_))
            (let ((_e89356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89354_ 'exception))))
              (macro-unbound-key-exception? _e89356_))
            (macro-unbound-key-exception? _exn89354_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89350_))
            (let ((_e89352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89350_ 'exception))))
              (if (macro-unbound-key-exception? _e89352_)
                  (macro-unbound-key-exception-arguments _e89352_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95063
                                (let ()
                                  (declare (not safe))
                                  (cons _e89352_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95063)))))
            (if (macro-unbound-key-exception? _exn89350_)
                (macro-unbound-key-exception-arguments _exn89350_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95062
                              (let ()
                                (declare (not safe))
                                (cons _exn89350_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95062)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89344_))
            (let ((_e89347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89344_ 'exception))))
              (if (macro-unbound-key-exception? _e89347_)
                  (macro-unbound-key-exception-procedure _e89347_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95065
                                (let ()
                                  (declare (not safe))
                                  (cons _e89347_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95065)))))
            (if (macro-unbound-key-exception? _exn89344_)
                (macro-unbound-key-exception-procedure _exn89344_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95064
                              (let ()
                                (declare (not safe))
                                (cons _exn89344_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95064)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89340_))
            (let ((_e89342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89340_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89342_))
            (macro-unbound-os-environment-variable-exception? _exn89340_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89336_))
            (let ((_e89338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89336_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89338_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89338_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95067
                                (let ()
                                  (declare (not safe))
                                  (cons _e89338_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95067)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89336_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89336_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95066
                              (let ()
                                (declare (not safe))
                                (cons _exn89336_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95066)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89330_))
            (let ((_e89333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89330_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89333_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89333_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95069
                                (let ()
                                  (declare (not safe))
                                  (cons _e89333_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95069)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89330_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89330_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95068
                              (let ()
                                (declare (not safe))
                                (cons _exn89330_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95068)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89326_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89326_))
            (let ((_e89328_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89326_ 'exception))))
              (macro-unbound-serial-number-exception? _e89328_))
            (macro-unbound-serial-number-exception? _exn89326_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89322_))
            (let ((_e89324_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89322_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89324_)
                  (macro-unbound-serial-number-exception-arguments _e89324_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95071
                                (let ()
                                  (declare (not safe))
                                  (cons _e89324_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95071)))))
            (if (macro-unbound-serial-number-exception? _exn89322_)
                (macro-unbound-serial-number-exception-arguments _exn89322_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95070
                              (let ()
                                (declare (not safe))
                                (cons _exn89322_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95070)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89316_))
            (let ((_e89319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89316_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89319_)
                  (macro-unbound-serial-number-exception-procedure _e89319_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95073
                                (let ()
                                  (declare (not safe))
                                  (cons _e89319_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95073)))))
            (if (macro-unbound-serial-number-exception? _exn89316_)
                (macro-unbound-serial-number-exception-procedure _exn89316_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95072
                              (let ()
                                (declare (not safe))
                                (cons _exn89316_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95072)))))))
    (define uncaught-exception?
      (lambda (_exn89312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89312_))
            (let ((_e89314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89312_ 'exception))))
              (macro-uncaught-exception? _e89314_))
            (macro-uncaught-exception? _exn89312_))))
    (define uncaught-exception-arguments
      (lambda (_exn89308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89308_))
            (let ((_e89310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89308_ 'exception))))
              (if (macro-uncaught-exception? _e89310_)
                  (macro-uncaught-exception-arguments _e89310_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95075
                                (let ()
                                  (declare (not safe))
                                  (cons _e89310_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95075)))))
            (if (macro-uncaught-exception? _exn89308_)
                (macro-uncaught-exception-arguments _exn89308_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95074
                              (let ()
                                (declare (not safe))
                                (cons _exn89308_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95074)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89304_))
            (let ((_e89306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89304_ 'exception))))
              (if (macro-uncaught-exception? _e89306_)
                  (macro-uncaught-exception-procedure _e89306_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95077
                                (let ()
                                  (declare (not safe))
                                  (cons _e89306_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95077)))))
            (if (macro-uncaught-exception? _exn89304_)
                (macro-uncaught-exception-procedure _exn89304_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95076
                              (let ()
                                (declare (not safe))
                                (cons _exn89304_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95076)))))))
    (define uncaught-exception-reason
      (lambda (_exn89298_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89298_))
            (let ((_e89301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89298_ 'exception))))
              (if (macro-uncaught-exception? _e89301_)
                  (macro-uncaught-exception-reason _e89301_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95079
                                (let ()
                                  (declare (not safe))
                                  (cons _e89301_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95079)))))
            (if (macro-uncaught-exception? _exn89298_)
                (macro-uncaught-exception-reason _exn89298_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95078
                              (let ()
                                (declare (not safe))
                                (cons _exn89298_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95078)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89294_))
            (let ((_e89296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89294_ 'exception))))
              (macro-uninitialized-thread-exception? _e89296_))
            (macro-uninitialized-thread-exception? _exn89294_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89290_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89290_))
            (let ((_e89292_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89290_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89292_)
                  (macro-uninitialized-thread-exception-arguments _e89292_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95081
                                (let ()
                                  (declare (not safe))
                                  (cons _e89292_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95081)))))
            (if (macro-uninitialized-thread-exception? _exn89290_)
                (macro-uninitialized-thread-exception-arguments _exn89290_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95080
                              (let ()
                                (declare (not safe))
                                (cons _exn89290_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95080)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89284_))
            (let ((_e89287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89284_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89287_)
                  (macro-uninitialized-thread-exception-procedure _e89287_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95083
                                (let ()
                                  (declare (not safe))
                                  (cons _e89287_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95083)))))
            (if (macro-uninitialized-thread-exception? _exn89284_)
                (macro-uninitialized-thread-exception-procedure _exn89284_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95082
                              (let ()
                                (declare (not safe))
                                (cons _exn89284_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95082)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89280_))
            (let ((_e89282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89280_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89282_))
            (macro-unknown-keyword-argument-exception? _exn89280_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89276_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89276_))
            (let ((_e89278_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89276_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89278_)
                  (macro-unknown-keyword-argument-exception-arguments _e89278_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95085
                                (let ()
                                  (declare (not safe))
                                  (cons _e89278_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95085)))))
            (if (macro-unknown-keyword-argument-exception? _exn89276_)
                (macro-unknown-keyword-argument-exception-arguments _exn89276_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95084
                              (let ()
                                (declare (not safe))
                                (cons _exn89276_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95084)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89270_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89270_))
            (let ((_e89273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89270_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89273_)
                  (macro-unknown-keyword-argument-exception-procedure _e89273_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95087
                                (let ()
                                  (declare (not safe))
                                  (cons _e89273_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95087)))))
            (if (macro-unknown-keyword-argument-exception? _exn89270_)
                (macro-unknown-keyword-argument-exception-procedure _exn89270_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95086
                              (let ()
                                (declare (not safe))
                                (cons _exn89270_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95086)))))))
    (define unterminated-process-exception?
      (lambda (_exn89266_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89266_))
            (let ((_e89268_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89266_ 'exception))))
              (macro-unterminated-process-exception? _e89268_))
            (macro-unterminated-process-exception? _exn89266_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89262_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89262_))
            (let ((_e89264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89262_ 'exception))))
              (if (macro-unterminated-process-exception? _e89264_)
                  (macro-unterminated-process-exception-arguments _e89264_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95089
                                (let ()
                                  (declare (not safe))
                                  (cons _e89264_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95089)))))
            (if (macro-unterminated-process-exception? _exn89262_)
                (macro-unterminated-process-exception-arguments _exn89262_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95088
                              (let ()
                                (declare (not safe))
                                (cons _exn89262_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95088)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89256_))
            (let ((_e89259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89256_ 'exception))))
              (if (macro-unterminated-process-exception? _e89259_)
                  (macro-unterminated-process-exception-procedure _e89259_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95091
                                (let ()
                                  (declare (not safe))
                                  (cons _e89259_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95091)))))
            (if (macro-unterminated-process-exception? _exn89256_)
                (macro-unterminated-process-exception-procedure _exn89256_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95090
                              (let ()
                                (declare (not safe))
                                (cons _exn89256_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95090)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89252_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89252_))
            (let ((_e89254_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89252_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89254_))
            (macro-wrong-number-of-arguments-exception? _exn89252_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89248_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89248_))
            (let ((_e89250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89248_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89250_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89250_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95093
                                (let ()
                                  (declare (not safe))
                                  (cons _e89250_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95093)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89248_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89248_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95092
                              (let ()
                                (declare (not safe))
                                (cons _exn89248_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95092)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89242_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89242_))
            (let ((_e89245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89242_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89245_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89245_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95095
                                (let ()
                                  (declare (not safe))
                                  (cons _e89245_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95095)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89242_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89242_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95094
                              (let ()
                                (declare (not safe))
                                (cons _exn89242_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95094)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89238_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89238_))
            (let ((_e89240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89238_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89240_))
            (macro-wrong-number-of-values-exception? _exn89238_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89234_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89234_))
            (let ((_e89236_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89234_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89236_)
                  (macro-wrong-number-of-values-exception-code _e89236_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95097
                                (let ()
                                  (declare (not safe))
                                  (cons _e89236_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95097)))))
            (if (macro-wrong-number-of-values-exception? _exn89234_)
                (macro-wrong-number-of-values-exception-code _exn89234_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95096
                              (let ()
                                (declare (not safe))
                                (cons _exn89234_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95096)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89230_))
            (let ((_e89232_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89230_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89232_)
                  (macro-wrong-number-of-values-exception-rte _e89232_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95099
                                (let ()
                                  (declare (not safe))
                                  (cons _e89232_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95099)))))
            (if (macro-wrong-number-of-values-exception? _exn89230_)
                (macro-wrong-number-of-values-exception-rte _exn89230_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95098
                              (let ()
                                (declare (not safe))
                                (cons _exn89230_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95098)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89224_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89224_))
            (let ((_e89227_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89224_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89227_)
                  (macro-wrong-number-of-values-exception-vals _e89227_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95101
                                (let ()
                                  (declare (not safe))
                                  (cons _e89227_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95101)))))
            (if (macro-wrong-number-of-values-exception? _exn89224_)
                (macro-wrong-number-of-values-exception-vals _exn89224_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95100
                              (let ()
                                (declare (not safe))
                                (cons _exn89224_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95100)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89218_))
            (let ((_e89221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89218_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89221_))
            (macro-wrong-processor-c-return-exception? _exn89218_))))))
