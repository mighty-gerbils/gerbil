(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708247272)
  (begin
    (define Exception::t
      (let ((__tmp94846 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94846
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90750_ (apply make-instance Exception::t _$args90750_)))
    (define StackTrace::t
      (let ((__tmp94847 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94847
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90747_ (apply make-instance StackTrace::t _$args90747_)))
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
      (let ((__tmp94848 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94848
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90744_ (apply make-instance Error::t _$args90744_)))
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
      (let ((__tmp94849 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94849
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90741_
        (apply make-instance RuntimeException::t _$args90741_)))
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
      (lambda (_exn90736_ _continue90737_)
        (let ((_exn90739_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90736_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90739_ _continue90737_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90732_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90732_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90732_ 'continuation))
                '#!void
                (let ((__tmp94850
                       (lambda (_cont90734_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90732_
                            'continuation
                            _cont90734_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94850)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90732_))))
    (define error
      (lambda (_message90729_ . _irritants90730_)
        (raise (let ((__obj94840
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94840
                  _message90729_
                  'irritants:
                  _irritants90730_)
                 __obj94840))))
    (define with-exception-handler
      (lambda (_handler90722_ _thunk90723_)
        (if (let () (declare (not safe)) (procedure? _handler90722_))
            '#!void
            (raise (let ((__obj94841
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94841
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90722_ '())))
                     __obj94841)))
        (if (let () (declare (not safe)) (procedure? _thunk90723_))
            '#!void
            (raise (let ((__obj94842
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94842
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90723_ '())))
                     __obj94842)))
        (let ((__tmp94851
               (lambda (_exn90725_)
                 (let ((_exn90727_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90725_))))
                   (_handler90722_ _exn90727_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94851 _thunk90723_))))
    (define with-catch
      (lambda (_handler90715_ _thunk90716_)
        (if (let () (declare (not safe)) (procedure? _handler90715_))
            '#!void
            (raise (let ((__obj94843
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94843
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90715_ '())))
                     __obj94843)))
        (if (let () (declare (not safe)) (procedure? _thunk90716_))
            '#!void
            (raise (let ((__obj94844
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94844
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90716_ '())))
                     __obj94844)))
        (let ((__tmp94852
               (lambda (_cont90718_)
                 (with-exception-handler
                  (lambda (_exn90720_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90718_
                       _handler90715_
                       _exn90720_)))
                  _thunk90716_))))
          (declare (not safe))
          (##continuation-capture __tmp94852))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90706_)
        (if (or (heap-overflow-exception? _exn90706_)
                (stack-overflow-exception? _exn90706_))
            _exn90706_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90706_))
                _exn90706_
                (if (macro-exception? _exn90706_)
                    (let ((_rte90711_
                           (let ((__obj94845
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94845
                                _exn90706_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94845)))
                      (let ((__tmp94853
                             (lambda (_cont90713_)
                               (let ((__tmp94854
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90713_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90711_
                                  'continuation
                                  __tmp94854)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94853))
                      _rte90711_)
                    _exn90706_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90701_)
        (let ((_$e90703_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90701_))))
          (if _$e90703_ _$e90703_ (error-exception? _obj90701_)))))
    (define error-message
      (lambda (_obj90699_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90699_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90699_ 'message))
            (if (error-exception? _obj90699_)
                (error-exception-message _obj90699_)
                '#f))))
    (define error-irritants
      (lambda (_obj90697_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90697_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90697_ 'irritants))
            (if (error-exception? _obj90697_)
                (error-exception-parameters _obj90697_)
                '#f))))
    (define error-trace
      (lambda (_obj90695_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90695_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90695_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90677_ _port90678_)
        (let ((_$e90680_
               (let ()
                 (declare (not safe))
                 (method-ref _e90677_ 'display-exception))))
          (if _$e90680_
              ((lambda (_f90683_) (_f90683_ _e90677_ _port90678_)) _$e90680_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90677_ _port90678_))))))
    (define display-exception__0
      (lambda (_e90688_)
        (let ((_port90690_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90688_ _port90690_))))
    (define display-exception
      (lambda _g94856_
        (let ((_g94855_ (let () (declare (not safe)) (##length _g94856_))))
          (cond ((let () (declare (not safe)) (##fx= _g94855_ 1))
                 (apply (lambda (_e90688_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90688_)))
                        _g94856_))
                ((let () (declare (not safe)) (##fx= _g94855_ 2))
                 (apply (lambda (_e90692_ _port90693_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90692_ _port90693_)))
                        _g94856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94856_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90666_ _message90667_ . _rest90668_)
        (let ((_message90674_
               (if (let () (declare (not safe)) (string? _message90667_))
                   _message90667_
                   (call-with-output-string
                    '""
                    (lambda (_g9066990671_)
                      (display _message90667_ _g9066990671_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90666_ 'message _message90674_))
          (apply class-instance-init! _self90666_ _rest90668_))))
    (define Error:::init!::specialize
      (lambda (__t94819)
        (let ((__message94820
               (let ((__tmp94821
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94819 'message))))
                 (if __tmp94821 __tmp94821 (error '"Unknown slot" 'message)))))
          (lambda (_self90666_ _message90667_ . _rest90668_)
            (let ((_message90674_
                   (if (let () (declare (not safe)) (string? _message90667_))
                       _message90667_
                       (call-with-output-string
                        '""
                        (lambda (_g9066990671_)
                          (display _message90667_ _g9066990671_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90666_
                 _message90674_
                 __message94820
                 __t94819
                 '#f))
              (apply class-instance-init! _self90666_ _rest90668_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90524_ _port90525_)
        (let ((_tmp-port90527_ (open-output-string))
              (_display-error-newline90528_
               (> (output-port-column _port90525_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90527_))
          (let ((__tmp94857
                 (lambda ()
                   (if _display-error-newline90528_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90531_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90524_ 'where))))
                     (if _$e90531_ (display _$e90531_) (display '"?")))
                   (let ((__tmp94858
                          (let ((__tmp94859
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90524_))))
                            (declare (not safe))
                            (##type-name __tmp94859))))
                     (declare (not safe))
                     (display* '" [" __tmp94858 '"]: "))
                   (let ((__tmp94860
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90524_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94860))
                   (let ((_irritants90534_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90524_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90534_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90536_)
                              (write _obj90536_)
                              (write-char '#\space))
                            _irritants90534_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90524_))
                            (dump-stack-trace?))
                       (let ((_cont9053790539_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90524_
                                 'continuation))))
                         (if _cont9053790539_
                             (let ((_cont90542_ _cont9053790539_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90542_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94857
             current-output-port
             _tmp-port90527_))
          (let ((__tmp94861 (get-output-string _tmp-port90527_)))
            (declare (not safe))
            (##write-string __tmp94861 _port90525_)))))
    (define Error::display-exception::specialize
      (lambda (__t94822)
        (let ((__continuation94823
               (let ((__tmp94827
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94822 'continuation))))
                 (if __tmp94827
                     __tmp94827
                     (error '"Unknown slot" 'continuation))))
              (__where94824
               (let ((__tmp94828
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94822 'where))))
                 (if __tmp94828 __tmp94828 (error '"Unknown slot" 'where))))
              (__message94825
               (let ((__tmp94829
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94822 'message))))
                 (if __tmp94829 __tmp94829 (error '"Unknown slot" 'message))))
              (__irritants94826
               (let ((__tmp94830
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94822 'irritants))))
                 (if __tmp94830
                     __tmp94830
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self90524_ _port90525_)
            (let ((_tmp-port90527_ (open-output-string))
                  (_display-error-newline90528_
                   (> (output-port-column _port90525_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90527_))
              (let ((__tmp94862
                     (lambda ()
                       (if _display-error-newline90528_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90531_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90524_
                                 __where94824
                                 __t94822
                                 '#f))))
                         (if _$e90531_ (display _$e90531_) (display '"?")))
                       (let ((__tmp94863
                              (let ((__tmp94864
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90524_))))
                                (declare (not safe))
                                (##type-name __tmp94864))))
                         (declare (not safe))
                         (display* '" [" __tmp94863 '"]: "))
                       (let ((__tmp94865
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90524_
                                 __message94825
                                 __t94822
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94865))
                       (let ((_irritants90534_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90524_
                                 __irritants94826
                                 __t94822
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90534_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90536_)
                                  (write _obj90536_)
                                  (write-char '#\space))
                                _irritants90534_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90524_))
                                (dump-stack-trace?))
                           (let ((_cont9053790539_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90524_
                                     __continuation94823
                                     __t94822
                                     '#f))))
                             (if _cont9053790539_
                                 (let ((_cont90542_ _cont9053790539_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90542_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94862
                 current-output-port
                 _tmp-port90527_))
              (let ((__tmp94866 (get-output-string _tmp-port90527_)))
                (declare (not safe))
                (##write-string __tmp94866 _port90525_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90391_ _port90392_)
        (let ((_tmp-port90394_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90394_))
          (let ((__tmp94867
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90391_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94867 _tmp-port90394_))
          (if (dump-stack-trace?)
              (let ((_cont9039590397_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90391_ 'continuation))))
                (if _cont9039590397_
                    (let ((_cont90400_ _cont9039590397_))
                      (display '"--- continuation backtrace:" _tmp-port90394_)
                      (newline _tmp-port90394_)
                      (display-continuation-backtrace
                       _cont90400_
                       _tmp-port90394_))
                    '#f))
              '#!void)
          (let ((__tmp94868 (get-output-string _tmp-port90394_)))
            (declare (not safe))
            (##write-string __tmp94868 _port90392_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94831)
        (let ((__exception94832
               (let ((__tmp94834
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94831 'exception))))
                 (if __tmp94834
                     __tmp94834
                     (error '"Unknown slot" 'exception))))
              (__continuation94833
               (let ((__tmp94835
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94831 'continuation))))
                 (if __tmp94835
                     __tmp94835
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90391_ _port90392_)
            (let ((_tmp-port90394_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90394_))
              (let ((__tmp94869
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90391_
                        __exception94832
                        __t94831
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94869 _tmp-port90394_))
              (if (dump-stack-trace?)
                  (let ((_cont9039590397_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90391_
                            __continuation94833
                            __t94831
                            '#f))))
                    (if _cont9039590397_
                        (let ((_cont90400_ _cont9039590397_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90394_)
                          (newline _tmp-port90394_)
                          (display-continuation-backtrace
                           _cont90400_
                           _tmp-port90394_))
                        '#f))
                  '#!void)
              (let ((__tmp94870 (get-output-string _tmp-port90394_)))
                (declare (not safe))
                (##write-string __tmp94870 _port90392_)))))))
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
      (lambda (_port90263_)
        (if (macro-character-port? _port90263_)
            (let ((_old-width90265_
                   (macro-character-port-output-width _port90263_)))
              (macro-character-port-output-width-set!
               _port90263_
               (lambda (_port90267_) '256))
              _old-width90265_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90260_ _old-width90261_)
        (if (macro-character-port? _port90260_)
            (macro-character-port-output-width-set!
             _port90260_
             _old-width90261_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90258_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90258_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90252_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90252_))
            (let ((_e90255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90252_ 'exception))))
              (macro-abandoned-mutex-exception? _e90255_))
            (macro-abandoned-mutex-exception? _exn90252_))))
    (define cfun-conversion-exception?
      (lambda (_exn90248_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90248_))
            (let ((_e90250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90248_ 'exception))))
              (macro-cfun-conversion-exception? _e90250_))
            (macro-cfun-conversion-exception? _exn90248_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90244_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90244_))
            (let ((_e90246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90244_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90246_)
                  (macro-cfun-conversion-exception-arguments _e90246_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94872
                                (let ()
                                  (declare (not safe))
                                  (cons _e90246_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94872)))))
            (if (macro-cfun-conversion-exception? _exn90244_)
                (macro-cfun-conversion-exception-arguments _exn90244_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94871
                              (let ()
                                (declare (not safe))
                                (cons _exn90244_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94871)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90240_))
            (let ((_e90242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90240_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90242_)
                  (macro-cfun-conversion-exception-code _e90242_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94874
                                (let ()
                                  (declare (not safe))
                                  (cons _e90242_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp94874)))))
            (if (macro-cfun-conversion-exception? _exn90240_)
                (macro-cfun-conversion-exception-code _exn90240_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94873
                              (let ()
                                (declare (not safe))
                                (cons _exn90240_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp94873)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90236_))
            (let ((_e90238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90236_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90238_)
                  (macro-cfun-conversion-exception-message _e90238_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94876
                                (let ()
                                  (declare (not safe))
                                  (cons _e90238_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94876)))))
            (if (macro-cfun-conversion-exception? _exn90236_)
                (macro-cfun-conversion-exception-message _exn90236_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94875
                              (let ()
                                (declare (not safe))
                                (cons _exn90236_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94875)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90230_))
            (let ((_e90233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90230_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90233_)
                  (macro-cfun-conversion-exception-procedure _e90233_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94878
                                (let ()
                                  (declare (not safe))
                                  (cons _e90233_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94878)))))
            (if (macro-cfun-conversion-exception? _exn90230_)
                (macro-cfun-conversion-exception-procedure _exn90230_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94877
                              (let ()
                                (declare (not safe))
                                (cons _exn90230_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94877)))))))
    (define datum-parsing-exception?
      (lambda (_exn90226_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90226_))
            (let ((_e90228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90226_ 'exception))))
              (macro-datum-parsing-exception? _e90228_))
            (macro-datum-parsing-exception? _exn90226_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90222_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90222_))
            (let ((_e90224_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90222_ 'exception))))
              (if (macro-datum-parsing-exception? _e90224_)
                  (macro-datum-parsing-exception-kind _e90224_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94880
                                (let ()
                                  (declare (not safe))
                                  (cons _e90224_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94880)))))
            (if (macro-datum-parsing-exception? _exn90222_)
                (macro-datum-parsing-exception-kind _exn90222_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94879
                              (let ()
                                (declare (not safe))
                                (cons _exn90222_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94879)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90218_))
            (let ((_e90220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90218_ 'exception))))
              (if (macro-datum-parsing-exception? _e90220_)
                  (macro-datum-parsing-exception-parameters _e90220_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94882
                                (let ()
                                  (declare (not safe))
                                  (cons _e90220_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94882)))))
            (if (macro-datum-parsing-exception? _exn90218_)
                (macro-datum-parsing-exception-parameters _exn90218_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94881
                              (let ()
                                (declare (not safe))
                                (cons _exn90218_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94881)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90212_))
            (let ((_e90215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90212_ 'exception))))
              (if (macro-datum-parsing-exception? _e90215_)
                  (macro-datum-parsing-exception-readenv _e90215_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94884
                                (let ()
                                  (declare (not safe))
                                  (cons _e90215_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94884)))))
            (if (macro-datum-parsing-exception? _exn90212_)
                (macro-datum-parsing-exception-readenv _exn90212_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94883
                              (let ()
                                (declare (not safe))
                                (cons _exn90212_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp94883)))))))
    (define deadlock-exception?
      (lambda (_exn90206_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90206_))
            (let ((_e90209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90206_ 'exception))))
              (macro-deadlock-exception? _e90209_))
            (macro-deadlock-exception? _exn90206_))))
    (define divide-by-zero-exception?
      (lambda (_exn90202_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90202_))
            (let ((_e90204_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90202_ 'exception))))
              (macro-divide-by-zero-exception? _e90204_))
            (macro-divide-by-zero-exception? _exn90202_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90198_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90198_))
            (let ((_e90200_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90198_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90200_)
                  (macro-divide-by-zero-exception-arguments _e90200_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94886
                                (let ()
                                  (declare (not safe))
                                  (cons _e90200_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94886)))))
            (if (macro-divide-by-zero-exception? _exn90198_)
                (macro-divide-by-zero-exception-arguments _exn90198_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94885
                              (let ()
                                (declare (not safe))
                                (cons _exn90198_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94885)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90192_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90192_))
            (let ((_e90195_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90192_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90195_)
                  (macro-divide-by-zero-exception-procedure _e90195_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94888
                                (let ()
                                  (declare (not safe))
                                  (cons _e90195_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94888)))))
            (if (macro-divide-by-zero-exception? _exn90192_)
                (macro-divide-by-zero-exception-procedure _exn90192_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94887
                              (let ()
                                (declare (not safe))
                                (cons _exn90192_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94887)))))))
    (define error-exception?
      (lambda (_exn90188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90188_))
            (let ((_e90190_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90188_ 'exception))))
              (macro-error-exception? _e90190_))
            (macro-error-exception? _exn90188_))))
    (define error-exception-message
      (lambda (_exn90184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90184_))
            (let ((_e90186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90184_ 'exception))))
              (if (macro-error-exception? _e90186_)
                  (macro-error-exception-message _e90186_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94890
                                (let ()
                                  (declare (not safe))
                                  (cons _e90186_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94890)))))
            (if (macro-error-exception? _exn90184_)
                (macro-error-exception-message _exn90184_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94889
                              (let ()
                                (declare (not safe))
                                (cons _exn90184_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94889)))))))
    (define error-exception-parameters
      (lambda (_exn90178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90178_))
            (let ((_e90181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90178_ 'exception))))
              (if (macro-error-exception? _e90181_)
                  (macro-error-exception-parameters _e90181_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94892
                                (let ()
                                  (declare (not safe))
                                  (cons _e90181_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94892)))))
            (if (macro-error-exception? _exn90178_)
                (macro-error-exception-parameters _exn90178_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94891
                              (let ()
                                (declare (not safe))
                                (cons _exn90178_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94891)))))))
    (define expression-parsing-exception?
      (lambda (_exn90174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90174_))
            (let ((_e90176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90174_ 'exception))))
              (macro-expression-parsing-exception? _e90176_))
            (macro-expression-parsing-exception? _exn90174_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90170_))
            (let ((_e90172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90170_ 'exception))))
              (if (macro-expression-parsing-exception? _e90172_)
                  (macro-expression-parsing-exception-kind _e90172_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94894
                                (let ()
                                  (declare (not safe))
                                  (cons _e90172_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94894)))))
            (if (macro-expression-parsing-exception? _exn90170_)
                (macro-expression-parsing-exception-kind _exn90170_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94893
                              (let ()
                                (declare (not safe))
                                (cons _exn90170_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94893)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90166_))
            (let ((_e90168_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90166_ 'exception))))
              (if (macro-expression-parsing-exception? _e90168_)
                  (macro-expression-parsing-exception-parameters _e90168_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94896
                                (let ()
                                  (declare (not safe))
                                  (cons _e90168_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp94896)))))
            (if (macro-expression-parsing-exception? _exn90166_)
                (macro-expression-parsing-exception-parameters _exn90166_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94895
                              (let ()
                                (declare (not safe))
                                (cons _exn90166_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94895)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90160_))
            (let ((_e90163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90160_ 'exception))))
              (if (macro-expression-parsing-exception? _e90163_)
                  (macro-expression-parsing-exception-source _e90163_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94898
                                (let ()
                                  (declare (not safe))
                                  (cons _e90163_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp94898)))))
            (if (macro-expression-parsing-exception? _exn90160_)
                (macro-expression-parsing-exception-source _exn90160_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94897
                              (let ()
                                (declare (not safe))
                                (cons _exn90160_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp94897)))))))
    (define file-exists-exception?
      (lambda (_exn90156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90156_))
            (let ((_e90158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90156_ 'exception))))
              (macro-file-exists-exception? _e90158_))
            (macro-file-exists-exception? _exn90156_))))
    (define file-exists-exception-arguments
      (lambda (_exn90152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90152_))
            (let ((_e90154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90152_ 'exception))))
              (if (macro-file-exists-exception? _e90154_)
                  (macro-file-exists-exception-arguments _e90154_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94900
                                (let ()
                                  (declare (not safe))
                                  (cons _e90154_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp94900)))))
            (if (macro-file-exists-exception? _exn90152_)
                (macro-file-exists-exception-arguments _exn90152_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94899
                              (let ()
                                (declare (not safe))
                                (cons _exn90152_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp94899)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90146_))
            (let ((_e90149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90146_ 'exception))))
              (if (macro-file-exists-exception? _e90149_)
                  (macro-file-exists-exception-procedure _e90149_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94902
                                (let ()
                                  (declare (not safe))
                                  (cons _e90149_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp94902)))))
            (if (macro-file-exists-exception? _exn90146_)
                (macro-file-exists-exception-procedure _exn90146_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94901
                              (let ()
                                (declare (not safe))
                                (cons _exn90146_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp94901)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90142_))
            (let ((_e90144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90142_ 'exception))))
              (macro-fixnum-overflow-exception? _e90144_))
            (macro-fixnum-overflow-exception? _exn90142_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90138_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90138_))
            (let ((_e90140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90138_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90140_)
                  (macro-fixnum-overflow-exception-arguments _e90140_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94904
                                (let ()
                                  (declare (not safe))
                                  (cons _e90140_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp94904)))))
            (if (macro-fixnum-overflow-exception? _exn90138_)
                (macro-fixnum-overflow-exception-arguments _exn90138_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94903
                              (let ()
                                (declare (not safe))
                                (cons _exn90138_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp94903)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90132_))
            (let ((_e90135_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90132_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90135_)
                  (macro-fixnum-overflow-exception-procedure _e90135_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94906
                                (let ()
                                  (declare (not safe))
                                  (cons _e90135_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp94906)))))
            (if (macro-fixnum-overflow-exception? _exn90132_)
                (macro-fixnum-overflow-exception-procedure _exn90132_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94905
                              (let ()
                                (declare (not safe))
                                (cons _exn90132_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp94905)))))))
    (define heap-overflow-exception?
      (lambda (_exn90126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90126_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90126_ 'exception))))
              (macro-heap-overflow-exception? _e90129_))
            (macro-heap-overflow-exception? _exn90126_))))
    (define inactive-thread-exception?
      (lambda (_exn90122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90122_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90122_ 'exception))))
              (macro-inactive-thread-exception? _e90124_))
            (macro-inactive-thread-exception? _exn90122_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90118_))
            (let ((_e90120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90118_ 'exception))))
              (if (macro-inactive-thread-exception? _e90120_)
                  (macro-inactive-thread-exception-arguments _e90120_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94908
                                (let ()
                                  (declare (not safe))
                                  (cons _e90120_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp94908)))))
            (if (macro-inactive-thread-exception? _exn90118_)
                (macro-inactive-thread-exception-arguments _exn90118_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94907
                              (let ()
                                (declare (not safe))
                                (cons _exn90118_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp94907)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90112_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90112_ 'exception))))
              (if (macro-inactive-thread-exception? _e90115_)
                  (macro-inactive-thread-exception-procedure _e90115_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94910
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp94910)))))
            (if (macro-inactive-thread-exception? _exn90112_)
                (macro-inactive-thread-exception-procedure _exn90112_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94909
                              (let ()
                                (declare (not safe))
                                (cons _exn90112_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp94909)))))))
    (define initialized-thread-exception?
      (lambda (_exn90108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90108_))
            (let ((_e90110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90108_ 'exception))))
              (macro-initialized-thread-exception? _e90110_))
            (macro-initialized-thread-exception? _exn90108_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90104_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90104_ 'exception))))
              (if (macro-initialized-thread-exception? _e90106_)
                  (macro-initialized-thread-exception-arguments _e90106_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94912
                                (let ()
                                  (declare (not safe))
                                  (cons _e90106_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp94912)))))
            (if (macro-initialized-thread-exception? _exn90104_)
                (macro-initialized-thread-exception-arguments _exn90104_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94911
                              (let ()
                                (declare (not safe))
                                (cons _exn90104_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp94911)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90098_))
            (let ((_e90101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90098_ 'exception))))
              (if (macro-initialized-thread-exception? _e90101_)
                  (macro-initialized-thread-exception-procedure _e90101_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94914
                                (let ()
                                  (declare (not safe))
                                  (cons _e90101_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp94914)))))
            (if (macro-initialized-thread-exception? _exn90098_)
                (macro-initialized-thread-exception-procedure _exn90098_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94913
                              (let ()
                                (declare (not safe))
                                (cons _exn90098_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp94913)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90094_))
            (let ((_e90096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90094_ 'exception))))
              (macro-invalid-hash-number-exception? _e90096_))
            (macro-invalid-hash-number-exception? _exn90094_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90090_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90090_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90092_)
                  (macro-invalid-hash-number-exception-arguments _e90092_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94916
                                (let ()
                                  (declare (not safe))
                                  (cons _e90092_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp94916)))))
            (if (macro-invalid-hash-number-exception? _exn90090_)
                (macro-invalid-hash-number-exception-arguments _exn90090_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94915
                              (let ()
                                (declare (not safe))
                                (cons _exn90090_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp94915)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90084_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90084_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90087_)
                  (macro-invalid-hash-number-exception-procedure _e90087_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94918
                                (let ()
                                  (declare (not safe))
                                  (cons _e90087_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp94918)))))
            (if (macro-invalid-hash-number-exception? _exn90084_)
                (macro-invalid-hash-number-exception-procedure _exn90084_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94917
                              (let ()
                                (declare (not safe))
                                (cons _exn90084_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp94917)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90080_))
            (let ((_e90082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90080_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90082_))
            (macro-invalid-utf8-encoding-exception? _exn90080_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90076_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90076_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90078_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90078_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94920
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp94920)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90076_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90076_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94919
                              (let ()
                                (declare (not safe))
                                (cons _exn90076_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp94919)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90070_))
            (let ((_e90073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90070_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90073_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90073_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94922
                                (let ()
                                  (declare (not safe))
                                  (cons _e90073_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp94922)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90070_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90070_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94921
                              (let ()
                                (declare (not safe))
                                (cons _exn90070_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp94921)))))))
    (define join-timeout-exception?
      (lambda (_exn90066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90066_))
            (let ((_e90068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90066_ 'exception))))
              (macro-join-timeout-exception? _e90068_))
            (macro-join-timeout-exception? _exn90066_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90062_))
            (let ((_e90064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90062_ 'exception))))
              (if (macro-join-timeout-exception? _e90064_)
                  (macro-join-timeout-exception-arguments _e90064_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94924
                                (let ()
                                  (declare (not safe))
                                  (cons _e90064_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp94924)))))
            (if (macro-join-timeout-exception? _exn90062_)
                (macro-join-timeout-exception-arguments _exn90062_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94923
                              (let ()
                                (declare (not safe))
                                (cons _exn90062_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp94923)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90056_))
            (let ((_e90059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90056_ 'exception))))
              (if (macro-join-timeout-exception? _e90059_)
                  (macro-join-timeout-exception-procedure _e90059_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94926
                                (let ()
                                  (declare (not safe))
                                  (cons _e90059_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp94926)))))
            (if (macro-join-timeout-exception? _exn90056_)
                (macro-join-timeout-exception-procedure _exn90056_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94925
                              (let ()
                                (declare (not safe))
                                (cons _exn90056_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp94925)))))))
    (define keyword-expected-exception?
      (lambda (_exn90052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90052_))
            (let ((_e90054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90052_ 'exception))))
              (macro-keyword-expected-exception? _e90054_))
            (macro-keyword-expected-exception? _exn90052_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90048_))
            (let ((_e90050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90048_ 'exception))))
              (if (macro-keyword-expected-exception? _e90050_)
                  (macro-keyword-expected-exception-arguments _e90050_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94928
                                (let ()
                                  (declare (not safe))
                                  (cons _e90050_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp94928)))))
            (if (macro-keyword-expected-exception? _exn90048_)
                (macro-keyword-expected-exception-arguments _exn90048_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94927
                              (let ()
                                (declare (not safe))
                                (cons _exn90048_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp94927)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90042_))
            (let ((_e90045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90042_ 'exception))))
              (if (macro-keyword-expected-exception? _e90045_)
                  (macro-keyword-expected-exception-procedure _e90045_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94930
                                (let ()
                                  (declare (not safe))
                                  (cons _e90045_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp94930)))))
            (if (macro-keyword-expected-exception? _exn90042_)
                (macro-keyword-expected-exception-procedure _exn90042_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94929
                              (let ()
                                (declare (not safe))
                                (cons _exn90042_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp94929)))))))
    (define length-mismatch-exception?
      (lambda (_exn90038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90038_))
            (let ((_e90040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90038_ 'exception))))
              (macro-length-mismatch-exception? _e90040_))
            (macro-length-mismatch-exception? _exn90038_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90034_))
            (let ((_e90036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90034_ 'exception))))
              (if (macro-length-mismatch-exception? _e90036_)
                  (macro-length-mismatch-exception-arg-id _e90036_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94932
                                (let ()
                                  (declare (not safe))
                                  (cons _e90036_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp94932)))))
            (if (macro-length-mismatch-exception? _exn90034_)
                (macro-length-mismatch-exception-arg-id _exn90034_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94931
                              (let ()
                                (declare (not safe))
                                (cons _exn90034_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp94931)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90030_))
            (let ((_e90032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90030_ 'exception))))
              (if (macro-length-mismatch-exception? _e90032_)
                  (macro-length-mismatch-exception-arguments _e90032_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94934
                                (let ()
                                  (declare (not safe))
                                  (cons _e90032_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp94934)))))
            (if (macro-length-mismatch-exception? _exn90030_)
                (macro-length-mismatch-exception-arguments _exn90030_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94933
                              (let ()
                                (declare (not safe))
                                (cons _exn90030_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp94933)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90024_))
            (let ((_e90027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90024_ 'exception))))
              (if (macro-length-mismatch-exception? _e90027_)
                  (macro-length-mismatch-exception-procedure _e90027_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94936
                                (let ()
                                  (declare (not safe))
                                  (cons _e90027_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp94936)))))
            (if (macro-length-mismatch-exception? _exn90024_)
                (macro-length-mismatch-exception-procedure _exn90024_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94935
                              (let ()
                                (declare (not safe))
                                (cons _exn90024_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp94935)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90020_))
            (let ((_e90022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90020_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90022_))
            (macro-mailbox-receive-timeout-exception? _exn90020_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90016_))
            (let ((_e90018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90016_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90018_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90018_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94938
                                (let ()
                                  (declare (not safe))
                                  (cons _e90018_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp94938)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90016_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90016_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94937
                              (let ()
                                (declare (not safe))
                                (cons _exn90016_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp94937)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90010_))
            (let ((_e90013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90010_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90013_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90013_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94940
                                (let ()
                                  (declare (not safe))
                                  (cons _e90013_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp94940)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90010_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90010_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94939
                              (let ()
                                (declare (not safe))
                                (cons _exn90010_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp94939)))))))
    (define module-not-found-exception?
      (lambda (_exn90006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90006_))
            (let ((_e90008_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90006_ 'exception))))
              (macro-module-not-found-exception? _e90008_))
            (macro-module-not-found-exception? _exn90006_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90002_))
            (let ((_e90004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90002_ 'exception))))
              (if (macro-module-not-found-exception? _e90004_)
                  (macro-module-not-found-exception-arguments _e90004_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94942
                                (let ()
                                  (declare (not safe))
                                  (cons _e90004_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp94942)))))
            (if (macro-module-not-found-exception? _exn90002_)
                (macro-module-not-found-exception-arguments _exn90002_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94941
                              (let ()
                                (declare (not safe))
                                (cons _exn90002_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp94941)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89996_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89996_))
            (let ((_e89999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89996_ 'exception))))
              (if (macro-module-not-found-exception? _e89999_)
                  (macro-module-not-found-exception-procedure _e89999_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94944
                                (let ()
                                  (declare (not safe))
                                  (cons _e89999_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp94944)))))
            (if (macro-module-not-found-exception? _exn89996_)
                (macro-module-not-found-exception-procedure _exn89996_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94943
                              (let ()
                                (declare (not safe))
                                (cons _exn89996_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp94943)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89990_))
            (let ((_e89993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89990_ 'exception))))
              (macro-multiple-c-return-exception? _e89993_))
            (macro-multiple-c-return-exception? _exn89990_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89986_))
            (let ((_e89988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89986_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89988_))
            (macro-no-such-file-or-directory-exception? _exn89986_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89982_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89982_))
            (let ((_e89984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89982_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89984_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89984_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94946
                                (let ()
                                  (declare (not safe))
                                  (cons _e89984_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp94946)))))
            (if (macro-no-such-file-or-directory-exception? _exn89982_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89982_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94945
                              (let ()
                                (declare (not safe))
                                (cons _exn89982_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp94945)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89976_))
            (let ((_e89979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89976_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89979_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89979_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94948
                                (let ()
                                  (declare (not safe))
                                  (cons _e89979_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp94948)))))
            (if (macro-no-such-file-or-directory-exception? _exn89976_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89976_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94947
                              (let ()
                                (declare (not safe))
                                (cons _exn89976_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp94947)))))))
    (define noncontinuable-exception?
      (lambda (_exn89972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89972_))
            (let ((_e89974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89972_ 'exception))))
              (macro-noncontinuable-exception? _e89974_))
            (macro-noncontinuable-exception? _exn89972_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89966_))
            (let ((_e89969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89966_ 'exception))))
              (if (macro-noncontinuable-exception? _e89969_)
                  (macro-noncontinuable-exception-reason _e89969_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp94950
                                (let ()
                                  (declare (not safe))
                                  (cons _e89969_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp94950)))))
            (if (macro-noncontinuable-exception? _exn89966_)
                (macro-noncontinuable-exception-reason _exn89966_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp94949
                              (let ()
                                (declare (not safe))
                                (cons _exn89966_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp94949)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89962_))
            (let ((_e89964_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89962_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89964_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89962_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89958_))
            (let ((_e89960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89958_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89960_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89960_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94952
                                (let ()
                                  (declare (not safe))
                                  (cons _e89960_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp94952)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89958_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89958_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94951
                              (let ()
                                (declare (not safe))
                                (cons _exn89958_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp94951)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89952_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89952_))
            (let ((_e89955_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89952_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89955_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89955_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94954
                                (let ()
                                  (declare (not safe))
                                  (cons _e89955_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp94954)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89952_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89952_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94953
                              (let ()
                                (declare (not safe))
                                (cons _exn89952_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp94953)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89948_))
            (let ((_e89950_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89948_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89950_))
            (macro-nonprocedure-operator-exception? _exn89948_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89944_))
            (let ((_e89946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89944_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89946_)
                  (macro-nonprocedure-operator-exception-arguments _e89946_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94956
                                (let ()
                                  (declare (not safe))
                                  (cons _e89946_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp94956)))))
            (if (macro-nonprocedure-operator-exception? _exn89944_)
                (macro-nonprocedure-operator-exception-arguments _exn89944_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94955
                              (let ()
                                (declare (not safe))
                                (cons _exn89944_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp94955)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89940_))
            (let ((_e89942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89940_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89942_)
                  (macro-nonprocedure-operator-exception-code _e89942_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94958
                                (let ()
                                  (declare (not safe))
                                  (cons _e89942_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp94958)))))
            (if (macro-nonprocedure-operator-exception? _exn89940_)
                (macro-nonprocedure-operator-exception-code _exn89940_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94957
                              (let ()
                                (declare (not safe))
                                (cons _exn89940_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp94957)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89936_))
            (let ((_e89938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89936_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89938_)
                  (macro-nonprocedure-operator-exception-operator _e89938_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94960
                                (let ()
                                  (declare (not safe))
                                  (cons _e89938_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp94960)))))
            (if (macro-nonprocedure-operator-exception? _exn89936_)
                (macro-nonprocedure-operator-exception-operator _exn89936_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94959
                              (let ()
                                (declare (not safe))
                                (cons _exn89936_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp94959)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89930_))
            (let ((_e89933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89930_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89933_)
                  (macro-nonprocedure-operator-exception-rte _e89933_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94962
                                (let ()
                                  (declare (not safe))
                                  (cons _e89933_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp94962)))))
            (if (macro-nonprocedure-operator-exception? _exn89930_)
                (macro-nonprocedure-operator-exception-rte _exn89930_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94961
                              (let ()
                                (declare (not safe))
                                (cons _exn89930_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp94961)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89926_))
            (let ((_e89928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89926_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89928_))
            (macro-not-in-compilation-context-exception? _exn89926_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89922_))
            (let ((_e89924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89922_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89924_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89924_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94964
                                (let ()
                                  (declare (not safe))
                                  (cons _e89924_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp94964)))))
            (if (macro-not-in-compilation-context-exception? _exn89922_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89922_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94963
                              (let ()
                                (declare (not safe))
                                (cons _exn89922_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp94963)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89916_))
            (let ((_e89919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89916_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89919_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89919_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94966
                                (let ()
                                  (declare (not safe))
                                  (cons _e89919_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp94966)))))
            (if (macro-not-in-compilation-context-exception? _exn89916_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89916_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94965
                              (let ()
                                (declare (not safe))
                                (cons _exn89916_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp94965)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89912_))
            (let ((_e89914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89912_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89914_))
            (macro-number-of-arguments-limit-exception? _exn89912_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89908_))
            (let ((_e89910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89908_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89910_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89910_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94968
                                (let ()
                                  (declare (not safe))
                                  (cons _e89910_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp94968)))))
            (if (macro-number-of-arguments-limit-exception? _exn89908_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89908_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94967
                              (let ()
                                (declare (not safe))
                                (cons _exn89908_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp94967)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89902_))
            (let ((_e89905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89902_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89905_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89905_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94970
                                (let ()
                                  (declare (not safe))
                                  (cons _e89905_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp94970)))))
            (if (macro-number-of-arguments-limit-exception? _exn89902_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89902_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94969
                              (let ()
                                (declare (not safe))
                                (cons _exn89902_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp94969)))))))
    (define os-exception?
      (lambda (_exn89898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89898_))
            (let ((_e89900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89898_ 'exception))))
              (macro-os-exception? _e89900_))
            (macro-os-exception? _exn89898_))))
    (define os-exception-arguments
      (lambda (_exn89894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89894_))
            (let ((_e89896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89894_ 'exception))))
              (if (macro-os-exception? _e89896_)
                  (macro-os-exception-arguments _e89896_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94972
                                (let ()
                                  (declare (not safe))
                                  (cons _e89896_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp94972)))))
            (if (macro-os-exception? _exn89894_)
                (macro-os-exception-arguments _exn89894_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94971
                              (let ()
                                (declare (not safe))
                                (cons _exn89894_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp94971)))))))
    (define os-exception-code
      (lambda (_exn89890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89890_))
            (let ((_e89892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89890_ 'exception))))
              (if (macro-os-exception? _e89892_)
                  (macro-os-exception-code _e89892_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94974
                                (let ()
                                  (declare (not safe))
                                  (cons _e89892_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp94974)))))
            (if (macro-os-exception? _exn89890_)
                (macro-os-exception-code _exn89890_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94973
                              (let ()
                                (declare (not safe))
                                (cons _exn89890_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp94973)))))))
    (define os-exception-message
      (lambda (_exn89886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89886_))
            (let ((_e89888_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89886_ 'exception))))
              (if (macro-os-exception? _e89888_)
                  (macro-os-exception-message _e89888_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94976
                                (let ()
                                  (declare (not safe))
                                  (cons _e89888_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp94976)))))
            (if (macro-os-exception? _exn89886_)
                (macro-os-exception-message _exn89886_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94975
                              (let ()
                                (declare (not safe))
                                (cons _exn89886_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp94975)))))))
    (define os-exception-procedure
      (lambda (_exn89880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89880_))
            (let ((_e89883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89880_ 'exception))))
              (if (macro-os-exception? _e89883_)
                  (macro-os-exception-procedure _e89883_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94978
                                (let ()
                                  (declare (not safe))
                                  (cons _e89883_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp94978)))))
            (if (macro-os-exception? _exn89880_)
                (macro-os-exception-procedure _exn89880_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94977
                              (let ()
                                (declare (not safe))
                                (cons _exn89880_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp94977)))))))
    (define permission-denied-exception?
      (lambda (_exn89876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89876_))
            (let ((_e89878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89876_ 'exception))))
              (macro-permission-denied-exception? _e89878_))
            (macro-permission-denied-exception? _exn89876_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89872_))
            (let ((_e89874_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89872_ 'exception))))
              (if (macro-permission-denied-exception? _e89874_)
                  (macro-permission-denied-exception-arguments _e89874_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94980
                                (let ()
                                  (declare (not safe))
                                  (cons _e89874_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp94980)))))
            (if (macro-permission-denied-exception? _exn89872_)
                (macro-permission-denied-exception-arguments _exn89872_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94979
                              (let ()
                                (declare (not safe))
                                (cons _exn89872_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp94979)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89866_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89866_ 'exception))))
              (if (macro-permission-denied-exception? _e89869_)
                  (macro-permission-denied-exception-procedure _e89869_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94982
                                (let ()
                                  (declare (not safe))
                                  (cons _e89869_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp94982)))))
            (if (macro-permission-denied-exception? _exn89866_)
                (macro-permission-denied-exception-procedure _exn89866_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94981
                              (let ()
                                (declare (not safe))
                                (cons _exn89866_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp94981)))))))
    (define range-exception?
      (lambda (_exn89862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89862_))
            (let ((_e89864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89862_ 'exception))))
              (macro-range-exception? _e89864_))
            (macro-range-exception? _exn89862_))))
    (define range-exception-arg-id
      (lambda (_exn89858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89858_))
            (let ((_e89860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89858_ 'exception))))
              (if (macro-range-exception? _e89860_)
                  (macro-range-exception-arg-id _e89860_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94984
                                (let ()
                                  (declare (not safe))
                                  (cons _e89860_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp94984)))))
            (if (macro-range-exception? _exn89858_)
                (macro-range-exception-arg-id _exn89858_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94983
                              (let ()
                                (declare (not safe))
                                (cons _exn89858_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp94983)))))))
    (define range-exception-arguments
      (lambda (_exn89854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89854_))
            (let ((_e89856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89854_ 'exception))))
              (if (macro-range-exception? _e89856_)
                  (macro-range-exception-arguments _e89856_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94986
                                (let ()
                                  (declare (not safe))
                                  (cons _e89856_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp94986)))))
            (if (macro-range-exception? _exn89854_)
                (macro-range-exception-arguments _exn89854_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94985
                              (let ()
                                (declare (not safe))
                                (cons _exn89854_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp94985)))))))
    (define range-exception-procedure
      (lambda (_exn89848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89848_))
            (let ((_e89851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89848_ 'exception))))
              (if (macro-range-exception? _e89851_)
                  (macro-range-exception-procedure _e89851_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94988
                                (let ()
                                  (declare (not safe))
                                  (cons _e89851_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp94988)))))
            (if (macro-range-exception? _exn89848_)
                (macro-range-exception-procedure _exn89848_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94987
                              (let ()
                                (declare (not safe))
                                (cons _exn89848_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp94987)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89844_))
            (let ((_e89846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89844_ 'exception))))
              (macro-rpc-remote-error-exception? _e89846_))
            (macro-rpc-remote-error-exception? _exn89844_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89840_))
            (let ((_e89842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89840_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89842_)
                  (macro-rpc-remote-error-exception-arguments _e89842_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94990
                                (let ()
                                  (declare (not safe))
                                  (cons _e89842_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp94990)))))
            (if (macro-rpc-remote-error-exception? _exn89840_)
                (macro-rpc-remote-error-exception-arguments _exn89840_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94989
                              (let ()
                                (declare (not safe))
                                (cons _exn89840_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp94989)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89836_))
            (let ((_e89838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89836_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89838_)
                  (macro-rpc-remote-error-exception-message _e89838_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94992
                                (let ()
                                  (declare (not safe))
                                  (cons _e89838_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp94992)))))
            (if (macro-rpc-remote-error-exception? _exn89836_)
                (macro-rpc-remote-error-exception-message _exn89836_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94991
                              (let ()
                                (declare (not safe))
                                (cons _exn89836_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp94991)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89830_))
            (let ((_e89833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89830_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89833_)
                  (macro-rpc-remote-error-exception-procedure _e89833_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94994
                                (let ()
                                  (declare (not safe))
                                  (cons _e89833_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp94994)))))
            (if (macro-rpc-remote-error-exception? _exn89830_)
                (macro-rpc-remote-error-exception-procedure _exn89830_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94993
                              (let ()
                                (declare (not safe))
                                (cons _exn89830_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp94993)))))))
    (define scheduler-exception?
      (lambda (_exn89826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89826_))
            (let ((_e89828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89826_ 'exception))))
              (macro-scheduler-exception? _e89828_))
            (macro-scheduler-exception? _exn89826_))))
    (define scheduler-exception-reason
      (lambda (_exn89820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89820_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89820_ 'exception))))
              (if (macro-scheduler-exception? _e89823_)
                  (macro-scheduler-exception-reason _e89823_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp94996
                                (let ()
                                  (declare (not safe))
                                  (cons _e89823_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp94996)))))
            (if (macro-scheduler-exception? _exn89820_)
                (macro-scheduler-exception-reason _exn89820_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp94995
                              (let ()
                                (declare (not safe))
                                (cons _exn89820_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp94995)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89816_))
            (let ((_e89818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89816_ 'exception))))
              (macro-sfun-conversion-exception? _e89818_))
            (macro-sfun-conversion-exception? _exn89816_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89812_))
            (let ((_e89814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89812_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89814_)
                  (macro-sfun-conversion-exception-arguments _e89814_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94998
                                (let ()
                                  (declare (not safe))
                                  (cons _e89814_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp94998)))))
            (if (macro-sfun-conversion-exception? _exn89812_)
                (macro-sfun-conversion-exception-arguments _exn89812_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94997
                              (let ()
                                (declare (not safe))
                                (cons _exn89812_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp94997)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89808_))
            (let ((_e89810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89808_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89810_)
                  (macro-sfun-conversion-exception-code _e89810_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95000
                                (let ()
                                  (declare (not safe))
                                  (cons _e89810_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95000)))))
            (if (macro-sfun-conversion-exception? _exn89808_)
                (macro-sfun-conversion-exception-code _exn89808_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94999
                              (let ()
                                (declare (not safe))
                                (cons _exn89808_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp94999)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89804_))
            (let ((_e89806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89804_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89806_)
                  (macro-sfun-conversion-exception-message _e89806_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95002
                                (let ()
                                  (declare (not safe))
                                  (cons _e89806_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95002)))))
            (if (macro-sfun-conversion-exception? _exn89804_)
                (macro-sfun-conversion-exception-message _exn89804_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95001
                              (let ()
                                (declare (not safe))
                                (cons _exn89804_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95001)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89798_))
            (let ((_e89801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89798_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89801_)
                  (macro-sfun-conversion-exception-procedure _e89801_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95004
                                (let ()
                                  (declare (not safe))
                                  (cons _e89801_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95004)))))
            (if (macro-sfun-conversion-exception? _exn89798_)
                (macro-sfun-conversion-exception-procedure _exn89798_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95003
                              (let ()
                                (declare (not safe))
                                (cons _exn89798_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95003)))))))
    (define stack-overflow-exception?
      (lambda (_exn89792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89792_))
            (let ((_e89795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89792_ 'exception))))
              (macro-stack-overflow-exception? _e89795_))
            (macro-stack-overflow-exception? _exn89792_))))
    (define started-thread-exception?
      (lambda (_exn89788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89788_))
            (let ((_e89790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89788_ 'exception))))
              (macro-started-thread-exception? _e89790_))
            (macro-started-thread-exception? _exn89788_))))
    (define started-thread-exception-arguments
      (lambda (_exn89784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89784_))
            (let ((_e89786_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89784_ 'exception))))
              (if (macro-started-thread-exception? _e89786_)
                  (macro-started-thread-exception-arguments _e89786_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95006
                                (let ()
                                  (declare (not safe))
                                  (cons _e89786_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95006)))))
            (if (macro-started-thread-exception? _exn89784_)
                (macro-started-thread-exception-arguments _exn89784_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95005
                              (let ()
                                (declare (not safe))
                                (cons _exn89784_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95005)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89778_))
            (let ((_e89781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89778_ 'exception))))
              (if (macro-started-thread-exception? _e89781_)
                  (macro-started-thread-exception-procedure _e89781_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95008
                                (let ()
                                  (declare (not safe))
                                  (cons _e89781_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95008)))))
            (if (macro-started-thread-exception? _exn89778_)
                (macro-started-thread-exception-procedure _exn89778_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95007
                              (let ()
                                (declare (not safe))
                                (cons _exn89778_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95007)))))))
    (define terminated-thread-exception?
      (lambda (_exn89774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89774_))
            (let ((_e89776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89774_ 'exception))))
              (macro-terminated-thread-exception? _e89776_))
            (macro-terminated-thread-exception? _exn89774_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89770_))
            (let ((_e89772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89770_ 'exception))))
              (if (macro-terminated-thread-exception? _e89772_)
                  (macro-terminated-thread-exception-arguments _e89772_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95010
                                (let ()
                                  (declare (not safe))
                                  (cons _e89772_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95010)))))
            (if (macro-terminated-thread-exception? _exn89770_)
                (macro-terminated-thread-exception-arguments _exn89770_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95009
                              (let ()
                                (declare (not safe))
                                (cons _exn89770_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95009)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89764_))
            (let ((_e89767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89764_ 'exception))))
              (if (macro-terminated-thread-exception? _e89767_)
                  (macro-terminated-thread-exception-procedure _e89767_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95012
                                (let ()
                                  (declare (not safe))
                                  (cons _e89767_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95012)))))
            (if (macro-terminated-thread-exception? _exn89764_)
                (macro-terminated-thread-exception-procedure _exn89764_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95011
                              (let ()
                                (declare (not safe))
                                (cons _exn89764_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95011)))))))
    (define type-exception?
      (lambda (_exn89760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89760_))
            (let ((_e89762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89760_ 'exception))))
              (macro-type-exception? _e89762_))
            (macro-type-exception? _exn89760_))))
    (define type-exception-arg-id
      (lambda (_exn89756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89756_))
            (let ((_e89758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89756_ 'exception))))
              (if (macro-type-exception? _e89758_)
                  (macro-type-exception-arg-id _e89758_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95014
                                (let ()
                                  (declare (not safe))
                                  (cons _e89758_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95014)))))
            (if (macro-type-exception? _exn89756_)
                (macro-type-exception-arg-id _exn89756_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95013
                              (let ()
                                (declare (not safe))
                                (cons _exn89756_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95013)))))))
    (define type-exception-arguments
      (lambda (_exn89752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89752_))
            (let ((_e89754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89752_ 'exception))))
              (if (macro-type-exception? _e89754_)
                  (macro-type-exception-arguments _e89754_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95016
                                (let ()
                                  (declare (not safe))
                                  (cons _e89754_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95016)))))
            (if (macro-type-exception? _exn89752_)
                (macro-type-exception-arguments _exn89752_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95015
                              (let ()
                                (declare (not safe))
                                (cons _exn89752_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95015)))))))
    (define type-exception-procedure
      (lambda (_exn89748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89748_))
            (let ((_e89750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89748_ 'exception))))
              (if (macro-type-exception? _e89750_)
                  (macro-type-exception-procedure _e89750_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95018
                                (let ()
                                  (declare (not safe))
                                  (cons _e89750_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95018)))))
            (if (macro-type-exception? _exn89748_)
                (macro-type-exception-procedure _exn89748_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95017
                              (let ()
                                (declare (not safe))
                                (cons _exn89748_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95017)))))))
    (define type-exception-type-id
      (lambda (_exn89742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89742_))
            (let ((_e89745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89742_ 'exception))))
              (if (macro-type-exception? _e89745_)
                  (macro-type-exception-type-id _e89745_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95020
                                (let ()
                                  (declare (not safe))
                                  (cons _e89745_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95020)))))
            (if (macro-type-exception? _exn89742_)
                (macro-type-exception-type-id _exn89742_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95019
                              (let ()
                                (declare (not safe))
                                (cons _exn89742_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95019)))))))
    (define unbound-global-exception?
      (lambda (_exn89738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89738_))
            (let ((_e89740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89738_ 'exception))))
              (macro-unbound-global-exception? _e89740_))
            (macro-unbound-global-exception? _exn89738_))))
    (define unbound-global-exception-code
      (lambda (_exn89734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89734_))
            (let ((_e89736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89734_ 'exception))))
              (if (macro-unbound-global-exception? _e89736_)
                  (macro-unbound-global-exception-code _e89736_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95022
                                (let ()
                                  (declare (not safe))
                                  (cons _e89736_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95022)))))
            (if (macro-unbound-global-exception? _exn89734_)
                (macro-unbound-global-exception-code _exn89734_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95021
                              (let ()
                                (declare (not safe))
                                (cons _exn89734_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95021)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89730_))
            (let ((_e89732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89730_ 'exception))))
              (if (macro-unbound-global-exception? _e89732_)
                  (macro-unbound-global-exception-rte _e89732_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95024
                                (let ()
                                  (declare (not safe))
                                  (cons _e89732_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95024)))))
            (if (macro-unbound-global-exception? _exn89730_)
                (macro-unbound-global-exception-rte _exn89730_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95023
                              (let ()
                                (declare (not safe))
                                (cons _exn89730_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95023)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89724_))
            (let ((_e89727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89724_ 'exception))))
              (if (macro-unbound-global-exception? _e89727_)
                  (macro-unbound-global-exception-variable _e89727_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95026
                                (let ()
                                  (declare (not safe))
                                  (cons _e89727_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95026)))))
            (if (macro-unbound-global-exception? _exn89724_)
                (macro-unbound-global-exception-variable _exn89724_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95025
                              (let ()
                                (declare (not safe))
                                (cons _exn89724_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95025)))))))
    (define unbound-key-exception?
      (lambda (_exn89720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89720_))
            (let ((_e89722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89720_ 'exception))))
              (macro-unbound-key-exception? _e89722_))
            (macro-unbound-key-exception? _exn89720_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89716_))
            (let ((_e89718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89716_ 'exception))))
              (if (macro-unbound-key-exception? _e89718_)
                  (macro-unbound-key-exception-arguments _e89718_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95028
                                (let ()
                                  (declare (not safe))
                                  (cons _e89718_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95028)))))
            (if (macro-unbound-key-exception? _exn89716_)
                (macro-unbound-key-exception-arguments _exn89716_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95027
                              (let ()
                                (declare (not safe))
                                (cons _exn89716_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95027)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89710_))
            (let ((_e89713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89710_ 'exception))))
              (if (macro-unbound-key-exception? _e89713_)
                  (macro-unbound-key-exception-procedure _e89713_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95030
                                (let ()
                                  (declare (not safe))
                                  (cons _e89713_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95030)))))
            (if (macro-unbound-key-exception? _exn89710_)
                (macro-unbound-key-exception-procedure _exn89710_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95029
                              (let ()
                                (declare (not safe))
                                (cons _exn89710_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95029)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89706_))
            (let ((_e89708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89706_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89708_))
            (macro-unbound-os-environment-variable-exception? _exn89706_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89702_))
            (let ((_e89704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89702_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89704_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89704_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95032
                                (let ()
                                  (declare (not safe))
                                  (cons _e89704_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95032)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89702_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89702_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95031
                              (let ()
                                (declare (not safe))
                                (cons _exn89702_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95031)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89696_))
            (let ((_e89699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89696_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89699_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89699_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95034
                                (let ()
                                  (declare (not safe))
                                  (cons _e89699_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95034)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89696_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89696_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95033
                              (let ()
                                (declare (not safe))
                                (cons _exn89696_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95033)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89692_))
            (let ((_e89694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89692_ 'exception))))
              (macro-unbound-serial-number-exception? _e89694_))
            (macro-unbound-serial-number-exception? _exn89692_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89688_))
            (let ((_e89690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89688_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89690_)
                  (macro-unbound-serial-number-exception-arguments _e89690_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95036
                                (let ()
                                  (declare (not safe))
                                  (cons _e89690_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95036)))))
            (if (macro-unbound-serial-number-exception? _exn89688_)
                (macro-unbound-serial-number-exception-arguments _exn89688_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95035
                              (let ()
                                (declare (not safe))
                                (cons _exn89688_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95035)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89682_))
            (let ((_e89685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89682_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89685_)
                  (macro-unbound-serial-number-exception-procedure _e89685_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95038
                                (let ()
                                  (declare (not safe))
                                  (cons _e89685_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95038)))))
            (if (macro-unbound-serial-number-exception? _exn89682_)
                (macro-unbound-serial-number-exception-procedure _exn89682_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95037
                              (let ()
                                (declare (not safe))
                                (cons _exn89682_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95037)))))))
    (define uncaught-exception?
      (lambda (_exn89678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89678_))
            (let ((_e89680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89678_ 'exception))))
              (macro-uncaught-exception? _e89680_))
            (macro-uncaught-exception? _exn89678_))))
    (define uncaught-exception-arguments
      (lambda (_exn89674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89674_))
            (let ((_e89676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89674_ 'exception))))
              (if (macro-uncaught-exception? _e89676_)
                  (macro-uncaught-exception-arguments _e89676_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95040
                                (let ()
                                  (declare (not safe))
                                  (cons _e89676_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95040)))))
            (if (macro-uncaught-exception? _exn89674_)
                (macro-uncaught-exception-arguments _exn89674_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95039
                              (let ()
                                (declare (not safe))
                                (cons _exn89674_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95039)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89670_))
            (let ((_e89672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89670_ 'exception))))
              (if (macro-uncaught-exception? _e89672_)
                  (macro-uncaught-exception-procedure _e89672_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95042
                                (let ()
                                  (declare (not safe))
                                  (cons _e89672_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95042)))))
            (if (macro-uncaught-exception? _exn89670_)
                (macro-uncaught-exception-procedure _exn89670_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95041
                              (let ()
                                (declare (not safe))
                                (cons _exn89670_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95041)))))))
    (define uncaught-exception-reason
      (lambda (_exn89664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89664_))
            (let ((_e89667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89664_ 'exception))))
              (if (macro-uncaught-exception? _e89667_)
                  (macro-uncaught-exception-reason _e89667_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95044
                                (let ()
                                  (declare (not safe))
                                  (cons _e89667_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95044)))))
            (if (macro-uncaught-exception? _exn89664_)
                (macro-uncaught-exception-reason _exn89664_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95043
                              (let ()
                                (declare (not safe))
                                (cons _exn89664_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95043)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89660_))
            (let ((_e89662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89660_ 'exception))))
              (macro-uninitialized-thread-exception? _e89662_))
            (macro-uninitialized-thread-exception? _exn89660_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89656_))
            (let ((_e89658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89656_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89658_)
                  (macro-uninitialized-thread-exception-arguments _e89658_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95046
                                (let ()
                                  (declare (not safe))
                                  (cons _e89658_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95046)))))
            (if (macro-uninitialized-thread-exception? _exn89656_)
                (macro-uninitialized-thread-exception-arguments _exn89656_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95045
                              (let ()
                                (declare (not safe))
                                (cons _exn89656_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95045)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89650_))
            (let ((_e89653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89650_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89653_)
                  (macro-uninitialized-thread-exception-procedure _e89653_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95048
                                (let ()
                                  (declare (not safe))
                                  (cons _e89653_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95048)))))
            (if (macro-uninitialized-thread-exception? _exn89650_)
                (macro-uninitialized-thread-exception-procedure _exn89650_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95047
                              (let ()
                                (declare (not safe))
                                (cons _exn89650_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95047)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89646_))
            (let ((_e89648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89646_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89648_))
            (macro-unknown-keyword-argument-exception? _exn89646_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89642_))
            (let ((_e89644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89642_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89644_)
                  (macro-unknown-keyword-argument-exception-arguments _e89644_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95050
                                (let ()
                                  (declare (not safe))
                                  (cons _e89644_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95050)))))
            (if (macro-unknown-keyword-argument-exception? _exn89642_)
                (macro-unknown-keyword-argument-exception-arguments _exn89642_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95049
                              (let ()
                                (declare (not safe))
                                (cons _exn89642_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95049)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89636_))
            (let ((_e89639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89636_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89639_)
                  (macro-unknown-keyword-argument-exception-procedure _e89639_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95052
                                (let ()
                                  (declare (not safe))
                                  (cons _e89639_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95052)))))
            (if (macro-unknown-keyword-argument-exception? _exn89636_)
                (macro-unknown-keyword-argument-exception-procedure _exn89636_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95051
                              (let ()
                                (declare (not safe))
                                (cons _exn89636_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95051)))))))
    (define unterminated-process-exception?
      (lambda (_exn89632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89632_))
            (let ((_e89634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89632_ 'exception))))
              (macro-unterminated-process-exception? _e89634_))
            (macro-unterminated-process-exception? _exn89632_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89628_))
            (let ((_e89630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89628_ 'exception))))
              (if (macro-unterminated-process-exception? _e89630_)
                  (macro-unterminated-process-exception-arguments _e89630_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95054
                                (let ()
                                  (declare (not safe))
                                  (cons _e89630_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95054)))))
            (if (macro-unterminated-process-exception? _exn89628_)
                (macro-unterminated-process-exception-arguments _exn89628_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95053
                              (let ()
                                (declare (not safe))
                                (cons _exn89628_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95053)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89622_))
            (let ((_e89625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89622_ 'exception))))
              (if (macro-unterminated-process-exception? _e89625_)
                  (macro-unterminated-process-exception-procedure _e89625_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95056
                                (let ()
                                  (declare (not safe))
                                  (cons _e89625_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95056)))))
            (if (macro-unterminated-process-exception? _exn89622_)
                (macro-unterminated-process-exception-procedure _exn89622_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95055
                              (let ()
                                (declare (not safe))
                                (cons _exn89622_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95055)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89618_))
            (let ((_e89620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89618_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89620_))
            (macro-wrong-number-of-arguments-exception? _exn89618_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89614_))
            (let ((_e89616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89614_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89616_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89616_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95058
                                (let ()
                                  (declare (not safe))
                                  (cons _e89616_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95058)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89614_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89614_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95057
                              (let ()
                                (declare (not safe))
                                (cons _exn89614_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95057)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89608_))
            (let ((_e89611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89608_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89611_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89611_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95060
                                (let ()
                                  (declare (not safe))
                                  (cons _e89611_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95060)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89608_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89608_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95059
                              (let ()
                                (declare (not safe))
                                (cons _exn89608_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95059)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89604_))
            (let ((_e89606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89604_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89606_))
            (macro-wrong-number-of-values-exception? _exn89604_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89600_))
            (let ((_e89602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89600_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89602_)
                  (macro-wrong-number-of-values-exception-code _e89602_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95062
                                (let ()
                                  (declare (not safe))
                                  (cons _e89602_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95062)))))
            (if (macro-wrong-number-of-values-exception? _exn89600_)
                (macro-wrong-number-of-values-exception-code _exn89600_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95061
                              (let ()
                                (declare (not safe))
                                (cons _exn89600_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95061)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89596_))
            (let ((_e89598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89596_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89598_)
                  (macro-wrong-number-of-values-exception-rte _e89598_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95064
                                (let ()
                                  (declare (not safe))
                                  (cons _e89598_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95064)))))
            (if (macro-wrong-number-of-values-exception? _exn89596_)
                (macro-wrong-number-of-values-exception-rte _exn89596_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95063
                              (let ()
                                (declare (not safe))
                                (cons _exn89596_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95063)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89590_))
            (let ((_e89593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89590_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89593_)
                  (macro-wrong-number-of-values-exception-vals _e89593_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95066
                                (let ()
                                  (declare (not safe))
                                  (cons _e89593_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95066)))))
            (if (macro-wrong-number-of-values-exception? _exn89590_)
                (macro-wrong-number-of-values-exception-vals _exn89590_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95065
                              (let ()
                                (declare (not safe))
                                (cons _exn89590_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95065)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89584_))
            (let ((_e89587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89584_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89587_))
            (macro-wrong-processor-c-return-exception? _exn89584_))))))
