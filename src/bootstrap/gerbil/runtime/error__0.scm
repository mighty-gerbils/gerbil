(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708337963)
  (begin
    (define Exception::t
      (let ((__tmp94694 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94694
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90679_ (apply make-instance Exception::t _$args90679_)))
    (define StackTrace::t
      (let ((__tmp94695 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94695
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90676_ (apply make-instance StackTrace::t _$args90676_)))
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
      (let ((__tmp94696 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94696
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90673_ (apply make-instance Error::t _$args90673_)))
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
      (let ((__tmp94697 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94697
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90670_
        (apply make-instance RuntimeException::t _$args90670_)))
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
      (lambda (_exn90665_ _continue90666_)
        (let ((_exn90668_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90665_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90668_ _continue90666_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90661_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90661_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90661_ 'continuation))
                '#!void
                (let ((__tmp94698
                       (lambda (_cont90663_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90661_
                            'continuation
                            _cont90663_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94698)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90661_))))
    (define error
      (lambda (_message90658_ . _irritants90659_)
        (raise (let ((__obj94688
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94688
                  _message90658_
                  'irritants:
                  _irritants90659_)
                 __obj94688))))
    (define with-exception-handler
      (lambda (_handler90651_ _thunk90652_)
        (if (let () (declare (not safe)) (procedure? _handler90651_))
            '#!void
            (raise (let ((__obj94689
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94689
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90651_ '())))
                     __obj94689)))
        (if (let () (declare (not safe)) (procedure? _thunk90652_))
            '#!void
            (raise (let ((__obj94690
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94690
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90652_ '())))
                     __obj94690)))
        (let ((__tmp94699
               (lambda (_exn90654_)
                 (let ((_exn90656_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90654_))))
                   (_handler90651_ _exn90656_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94699 _thunk90652_))))
    (define with-catch
      (lambda (_handler90644_ _thunk90645_)
        (if (let () (declare (not safe)) (procedure? _handler90644_))
            '#!void
            (raise (let ((__obj94691
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94691
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90644_ '())))
                     __obj94691)))
        (if (let () (declare (not safe)) (procedure? _thunk90645_))
            '#!void
            (raise (let ((__obj94692
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94692
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90645_ '())))
                     __obj94692)))
        (let ((__tmp94700
               (lambda (_cont90647_)
                 (with-exception-handler
                  (lambda (_exn90649_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90647_
                       _handler90644_
                       _exn90649_)))
                  _thunk90645_))))
          (declare (not safe))
          (##continuation-capture __tmp94700))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90635_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn90635_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn90635_)))
            _exn90635_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90635_))
                _exn90635_
                (if (macro-exception? _exn90635_)
                    (let ((_rte90640_
                           (let ((__obj94693
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94693
                                _exn90635_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94693)))
                      (let ((__tmp94701
                             (lambda (_cont90642_)
                               (let ((__tmp94702
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90642_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90640_
                                  'continuation
                                  __tmp94702)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94701))
                      _rte90640_)
                    _exn90635_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90630_)
        (let ((_$e90632_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90630_))))
          (if _$e90632_
              _$e90632_
              (let () (declare (not safe)) (error-exception? _obj90630_))))))
    (define error-message
      (lambda (_obj90628_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90628_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90628_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj90628_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj90628_))
                '#f))))
    (define error-irritants
      (lambda (_obj90626_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90626_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90626_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj90626_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj90626_))
                '#f))))
    (define error-trace
      (lambda (_obj90624_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90624_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90624_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90606_ _port90607_)
        (let ((_$e90609_
               (let ()
                 (declare (not safe))
                 (method-ref _e90606_ 'display-exception))))
          (if _$e90609_
              ((lambda (_f90612_) (_f90612_ _e90606_ _port90607_)) _$e90609_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90606_ _port90607_))))))
    (define display-exception__0
      (lambda (_e90617_)
        (let ((_port90619_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90617_ _port90619_))))
    (define display-exception
      (lambda _g94704_
        (let ((_g94703_ (let () (declare (not safe)) (##length _g94704_))))
          (cond ((let () (declare (not safe)) (##fx= _g94703_ 1))
                 (apply (lambda (_e90617_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90617_)))
                        _g94704_))
                ((let () (declare (not safe)) (##fx= _g94703_ 2))
                 (apply (lambda (_e90621_ _port90622_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90621_ _port90622_)))
                        _g94704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94704_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90595_ _message90596_ . _rest90597_)
        (let ((_message90603_
               (if (let () (declare (not safe)) (string? _message90596_))
                   _message90596_
                   (call-with-output-string
                    '""
                    (lambda (_g9059890600_)
                      (display _message90596_ _g9059890600_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90595_ 'message _message90603_))
          (apply class-instance-init! _self90595_ _rest90597_))))
    (define Error:::init!::specialize
      (lambda (__t94667)
        (let ((__message94668
               (let ((__tmp94669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94667 'message))))
                 (if __tmp94669
                     __tmp94669
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self90595_ _message90596_ . _rest90597_)
            (let ((_message90603_
                   (if (let () (declare (not safe)) (string? _message90596_))
                       _message90596_
                       (call-with-output-string
                        '""
                        (lambda (_g9059890600_)
                          (display _message90596_ _g9059890600_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90595_
                 _message90603_
                 __message94668
                 __t94667
                 '#f))
              (apply class-instance-init! _self90595_ _rest90597_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90453_ _port90454_)
        (let ((_tmp-port90456_ (open-output-string))
              (_display-error-newline90457_
               (> (output-port-column _port90454_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90456_))
          (let ((__tmp94705
                 (lambda ()
                   (if _display-error-newline90457_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90460_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90453_ 'where))))
                     (if _$e90460_ (display _$e90460_) (display '"?")))
                   (let ((__tmp94706
                          (let ((__tmp94707 (object-type _self90453_)))
                            (declare (not safe))
                            (##type-name __tmp94707))))
                     (declare (not safe))
                     (display* '" [" __tmp94706 '"]: "))
                   (let ((__tmp94708
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90453_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94708))
                   (let ((_irritants90463_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90453_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90463_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90465_)
                              (write _obj90465_)
                              (write-char '#\space))
                            _irritants90463_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90453_))
                            (dump-stack-trace?))
                       (let ((_cont9046690468_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90453_
                                 'continuation))))
                         (if _cont9046690468_
                             (let ((_cont90471_ _cont9046690468_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90471_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94705
             current-output-port
             _tmp-port90456_))
          (let ((__tmp94709 (get-output-string _tmp-port90456_)))
            (declare (not safe))
            (##write-string __tmp94709 _port90454_)))))
    (define Error::display-exception::specialize
      (lambda (__t94670)
        (let ((__message94671
               (let ((__tmp94675
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94670 'message))))
                 (if __tmp94675
                     __tmp94675
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__irritants94672
               (let ((__tmp94676
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94670 'irritants))))
                 (if __tmp94676
                     __tmp94676
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__where94673
               (let ((__tmp94677
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94670 'where))))
                 (if __tmp94677
                     __tmp94677
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__continuation94674
               (let ((__tmp94678
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94670 'continuation))))
                 (if __tmp94678
                     __tmp94678
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self90453_ _port90454_)
            (let ((_tmp-port90456_ (open-output-string))
                  (_display-error-newline90457_
                   (> (output-port-column _port90454_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90456_))
              (let ((__tmp94710
                     (lambda ()
                       (if _display-error-newline90457_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90460_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90453_
                                 __where94673
                                 __t94670
                                 '#f))))
                         (if _$e90460_ (display _$e90460_) (display '"?")))
                       (let ((__tmp94711
                              (let ((__tmp94712 (object-type _self90453_)))
                                (declare (not safe))
                                (##type-name __tmp94712))))
                         (declare (not safe))
                         (display* '" [" __tmp94711 '"]: "))
                       (let ((__tmp94713
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90453_
                                 __message94671
                                 __t94670
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94713))
                       (let ((_irritants90463_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90453_
                                 __irritants94672
                                 __t94670
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90463_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90465_)
                                  (write _obj90465_)
                                  (write-char '#\space))
                                _irritants90463_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90453_))
                                (dump-stack-trace?))
                           (let ((_cont9046690468_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90453_
                                     __continuation94674
                                     __t94670
                                     '#f))))
                             (if _cont9046690468_
                                 (let ((_cont90471_ _cont9046690468_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90471_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94710
                 current-output-port
                 _tmp-port90456_))
              (let ((__tmp94714 (get-output-string _tmp-port90456_)))
                (declare (not safe))
                (##write-string __tmp94714 _port90454_)))))))
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
      (lambda (_self90320_ _port90321_)
        (let ((_tmp-port90323_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90323_))
          (let ((__tmp94715
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90320_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94715 _tmp-port90323_))
          (if (dump-stack-trace?)
              (let ((_cont9032490326_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90320_ 'continuation))))
                (if _cont9032490326_
                    (let ((_cont90329_ _cont9032490326_))
                      (display '"--- continuation backtrace:" _tmp-port90323_)
                      (newline _tmp-port90323_)
                      (display-continuation-backtrace
                       _cont90329_
                       _tmp-port90323_))
                    '#f))
              '#!void)
          (let ((__tmp94716 (get-output-string _tmp-port90323_)))
            (declare (not safe))
            (##write-string __tmp94716 _port90321_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94679)
        (let ((__continuation94680
               (let ((__tmp94682
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94679 'continuation))))
                 (if __tmp94682
                     __tmp94682
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception94681
               (let ((__tmp94683
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94679 'exception))))
                 (if __tmp94683
                     __tmp94683
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self90320_ _port90321_)
            (let ((_tmp-port90323_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90323_))
              (let ((__tmp94717
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90320_
                        __exception94681
                        __t94679
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94717 _tmp-port90323_))
              (if (dump-stack-trace?)
                  (let ((_cont9032490326_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90320_
                            __continuation94680
                            __t94679
                            '#f))))
                    (if _cont9032490326_
                        (let ((_cont90329_ _cont9032490326_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90323_)
                          (newline _tmp-port90323_)
                          (display-continuation-backtrace
                           _cont90329_
                           _tmp-port90323_))
                        '#f))
                  '#!void)
              (let ((__tmp94718 (get-output-string _tmp-port90323_)))
                (declare (not safe))
                (##write-string __tmp94718 _port90321_)))))))
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
      (lambda (_port90192_)
        (if (macro-character-port? _port90192_)
            (let ((_old-width90194_
                   (macro-character-port-output-width _port90192_)))
              (macro-character-port-output-width-set!
               _port90192_
               (lambda (_port90196_) '256))
              _old-width90194_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90189_ _old-width90190_)
        (if (macro-character-port? _port90189_)
            (macro-character-port-output-width-set!
             _port90189_
             _old-width90190_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90187_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e90187_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn90181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90181_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90181_ 'exception))))
              (macro-abandoned-mutex-exception? _e90184_))
            (macro-abandoned-mutex-exception? _exn90181_))))
    (define cfun-conversion-exception?
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (macro-cfun-conversion-exception? _e90179_))
            (macro-cfun-conversion-exception? _exn90177_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90173_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90173_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90175_)
                  (macro-cfun-conversion-exception-arguments _e90175_)
                  (let ((__tmp94721
                         (let ((__tmp94722
                                (let ()
                                  (declare (not safe))
                                  (cons _e90175_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94722))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp94721))))
            (if (macro-cfun-conversion-exception? _exn90173_)
                (macro-cfun-conversion-exception-arguments _exn90173_)
                (let ((__tmp94719
                       (let ((__tmp94720
                              (let ()
                                (declare (not safe))
                                (cons _exn90173_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94720))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp94719))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90169_))
            (let ((_e90171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90169_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90171_)
                  (macro-cfun-conversion-exception-code _e90171_)
                  (let ((__tmp94725
                         (let ((__tmp94726
                                (let ()
                                  (declare (not safe))
                                  (cons _e90171_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp94726))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp94725))))
            (if (macro-cfun-conversion-exception? _exn90169_)
                (macro-cfun-conversion-exception-code _exn90169_)
                (let ((__tmp94723
                       (let ((__tmp94724
                              (let ()
                                (declare (not safe))
                                (cons _exn90169_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp94724))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp94723))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90165_))
            (let ((_e90167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90165_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90167_)
                  (macro-cfun-conversion-exception-message _e90167_)
                  (let ((__tmp94729
                         (let ((__tmp94730
                                (let ()
                                  (declare (not safe))
                                  (cons _e90167_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94730))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp94729))))
            (if (macro-cfun-conversion-exception? _exn90165_)
                (macro-cfun-conversion-exception-message _exn90165_)
                (let ((__tmp94727
                       (let ((__tmp94728
                              (let ()
                                (declare (not safe))
                                (cons _exn90165_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94728))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp94727))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90159_))
            (let ((_e90162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90159_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90162_)
                  (macro-cfun-conversion-exception-procedure _e90162_)
                  (let ((__tmp94733
                         (let ((__tmp94734
                                (let ()
                                  (declare (not safe))
                                  (cons _e90162_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94734))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp94733))))
            (if (macro-cfun-conversion-exception? _exn90159_)
                (macro-cfun-conversion-exception-procedure _exn90159_)
                (let ((__tmp94731
                       (let ((__tmp94732
                              (let ()
                                (declare (not safe))
                                (cons _exn90159_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94732))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp94731))))))
    (define datum-parsing-exception?
      (lambda (_exn90155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90155_))
            (let ((_e90157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90155_ 'exception))))
              (macro-datum-parsing-exception? _e90157_))
            (macro-datum-parsing-exception? _exn90155_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90151_))
            (let ((_e90153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90151_ 'exception))))
              (if (macro-datum-parsing-exception? _e90153_)
                  (macro-datum-parsing-exception-kind _e90153_)
                  (let ((__tmp94737
                         (let ((__tmp94738
                                (let ()
                                  (declare (not safe))
                                  (cons _e90153_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94738))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp94737))))
            (if (macro-datum-parsing-exception? _exn90151_)
                (macro-datum-parsing-exception-kind _exn90151_)
                (let ((__tmp94735
                       (let ((__tmp94736
                              (let ()
                                (declare (not safe))
                                (cons _exn90151_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94736))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp94735))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90147_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90147_))
            (let ((_e90149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90147_ 'exception))))
              (if (macro-datum-parsing-exception? _e90149_)
                  (macro-datum-parsing-exception-parameters _e90149_)
                  (let ((__tmp94741
                         (let ((__tmp94742
                                (let ()
                                  (declare (not safe))
                                  (cons _e90149_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94742))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp94741))))
            (if (macro-datum-parsing-exception? _exn90147_)
                (macro-datum-parsing-exception-parameters _exn90147_)
                (let ((__tmp94739
                       (let ((__tmp94740
                              (let ()
                                (declare (not safe))
                                (cons _exn90147_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94740))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp94739))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90141_))
            (let ((_e90144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90141_ 'exception))))
              (if (macro-datum-parsing-exception? _e90144_)
                  (macro-datum-parsing-exception-readenv _e90144_)
                  (let ((__tmp94745
                         (let ((__tmp94746
                                (let ()
                                  (declare (not safe))
                                  (cons _e90144_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94746))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp94745))))
            (if (macro-datum-parsing-exception? _exn90141_)
                (macro-datum-parsing-exception-readenv _exn90141_)
                (let ((__tmp94743
                       (let ((__tmp94744
                              (let ()
                                (declare (not safe))
                                (cons _exn90141_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp94744))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp94743))))))
    (define deadlock-exception?
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (macro-deadlock-exception? _e90138_))
            (macro-deadlock-exception? _exn90135_))))
    (define divide-by-zero-exception?
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (macro-divide-by-zero-exception? _e90133_))
            (macro-divide-by-zero-exception? _exn90131_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90127_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90127_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90129_)
                  (macro-divide-by-zero-exception-arguments _e90129_)
                  (let ((__tmp94749
                         (let ((__tmp94750
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94750))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp94749))))
            (if (macro-divide-by-zero-exception? _exn90127_)
                (macro-divide-by-zero-exception-arguments _exn90127_)
                (let ((__tmp94747
                       (let ((__tmp94748
                              (let ()
                                (declare (not safe))
                                (cons _exn90127_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94748))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp94747))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90124_)
                  (macro-divide-by-zero-exception-procedure _e90124_)
                  (let ((__tmp94753
                         (let ((__tmp94754
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94754))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp94753))))
            (if (macro-divide-by-zero-exception? _exn90121_)
                (macro-divide-by-zero-exception-procedure _exn90121_)
                (let ((__tmp94751
                       (let ((__tmp94752
                              (let ()
                                (declare (not safe))
                                (cons _exn90121_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94752))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp94751))))))
    (define error-exception?
      (lambda (_exn90117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90117_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90117_ 'exception))))
              (macro-error-exception? _e90119_))
            (macro-error-exception? _exn90117_))))
    (define error-exception-message
      (lambda (_exn90113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90113_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90113_ 'exception))))
              (if (macro-error-exception? _e90115_)
                  (macro-error-exception-message _e90115_)
                  (let ((__tmp94757
                         (let ((__tmp94758
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94758))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp94757))))
            (if (macro-error-exception? _exn90113_)
                (macro-error-exception-message _exn90113_)
                (let ((__tmp94755
                       (let ((__tmp94756
                              (let ()
                                (declare (not safe))
                                (cons _exn90113_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94756))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp94755))))))
    (define error-exception-parameters
      (lambda (_exn90107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90107_))
            (let ((_e90110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90107_ 'exception))))
              (if (macro-error-exception? _e90110_)
                  (macro-error-exception-parameters _e90110_)
                  (let ((__tmp94761
                         (let ((__tmp94762
                                (let ()
                                  (declare (not safe))
                                  (cons _e90110_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94762))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp94761))))
            (if (macro-error-exception? _exn90107_)
                (macro-error-exception-parameters _exn90107_)
                (let ((__tmp94759
                       (let ((__tmp94760
                              (let ()
                                (declare (not safe))
                                (cons _exn90107_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94760))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp94759))))))
    (define expression-parsing-exception?
      (lambda (_exn90103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90103_))
            (let ((_e90105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90103_ 'exception))))
              (macro-expression-parsing-exception? _e90105_))
            (macro-expression-parsing-exception? _exn90103_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90099_))
            (let ((_e90101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90099_ 'exception))))
              (if (macro-expression-parsing-exception? _e90101_)
                  (macro-expression-parsing-exception-kind _e90101_)
                  (let ((__tmp94765
                         (let ((__tmp94766
                                (let ()
                                  (declare (not safe))
                                  (cons _e90101_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94766))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp94765))))
            (if (macro-expression-parsing-exception? _exn90099_)
                (macro-expression-parsing-exception-kind _exn90099_)
                (let ((__tmp94763
                       (let ((__tmp94764
                              (let ()
                                (declare (not safe))
                                (cons _exn90099_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94764))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp94763))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90095_))
            (let ((_e90097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90095_ 'exception))))
              (if (macro-expression-parsing-exception? _e90097_)
                  (macro-expression-parsing-exception-parameters _e90097_)
                  (let ((__tmp94769
                         (let ((__tmp94770
                                (let ()
                                  (declare (not safe))
                                  (cons _e90097_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp94770))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp94769))))
            (if (macro-expression-parsing-exception? _exn90095_)
                (macro-expression-parsing-exception-parameters _exn90095_)
                (let ((__tmp94767
                       (let ((__tmp94768
                              (let ()
                                (declare (not safe))
                                (cons _exn90095_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94768))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp94767))))))
    (define expression-parsing-exception-source
      (lambda (_exn90089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90089_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90089_ 'exception))))
              (if (macro-expression-parsing-exception? _e90092_)
                  (macro-expression-parsing-exception-source _e90092_)
                  (let ((__tmp94773
                         (let ((__tmp94774
                                (let ()
                                  (declare (not safe))
                                  (cons _e90092_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp94774))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp94773))))
            (if (macro-expression-parsing-exception? _exn90089_)
                (macro-expression-parsing-exception-source _exn90089_)
                (let ((__tmp94771
                       (let ((__tmp94772
                              (let ()
                                (declare (not safe))
                                (cons _exn90089_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp94772))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp94771))))))
    (define file-exists-exception?
      (lambda (_exn90085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90085_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90085_ 'exception))))
              (macro-file-exists-exception? _e90087_))
            (macro-file-exists-exception? _exn90085_))))
    (define file-exists-exception-arguments
      (lambda (_exn90081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90081_))
            (let ((_e90083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90081_ 'exception))))
              (if (macro-file-exists-exception? _e90083_)
                  (macro-file-exists-exception-arguments _e90083_)
                  (let ((__tmp94777
                         (let ((__tmp94778
                                (let ()
                                  (declare (not safe))
                                  (cons _e90083_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp94778))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp94777))))
            (if (macro-file-exists-exception? _exn90081_)
                (macro-file-exists-exception-arguments _exn90081_)
                (let ((__tmp94775
                       (let ((__tmp94776
                              (let ()
                                (declare (not safe))
                                (cons _exn90081_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp94776))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp94775))))))
    (define file-exists-exception-procedure
      (lambda (_exn90075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90075_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90075_ 'exception))))
              (if (macro-file-exists-exception? _e90078_)
                  (macro-file-exists-exception-procedure _e90078_)
                  (let ((__tmp94781
                         (let ((__tmp94782
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp94782))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp94781))))
            (if (macro-file-exists-exception? _exn90075_)
                (macro-file-exists-exception-procedure _exn90075_)
                (let ((__tmp94779
                       (let ((__tmp94780
                              (let ()
                                (declare (not safe))
                                (cons _exn90075_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp94780))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp94779))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90071_))
            (let ((_e90073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90071_ 'exception))))
              (macro-fixnum-overflow-exception? _e90073_))
            (macro-fixnum-overflow-exception? _exn90071_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90067_))
            (let ((_e90069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90067_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90069_)
                  (macro-fixnum-overflow-exception-arguments _e90069_)
                  (let ((__tmp94785
                         (let ((__tmp94786
                                (let ()
                                  (declare (not safe))
                                  (cons _e90069_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp94786))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp94785))))
            (if (macro-fixnum-overflow-exception? _exn90067_)
                (macro-fixnum-overflow-exception-arguments _exn90067_)
                (let ((__tmp94783
                       (let ((__tmp94784
                              (let ()
                                (declare (not safe))
                                (cons _exn90067_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp94784))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp94783))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90061_))
            (let ((_e90064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90061_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90064_)
                  (macro-fixnum-overflow-exception-procedure _e90064_)
                  (let ((__tmp94789
                         (let ((__tmp94790
                                (let ()
                                  (declare (not safe))
                                  (cons _e90064_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp94790))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp94789))))
            (if (macro-fixnum-overflow-exception? _exn90061_)
                (macro-fixnum-overflow-exception-procedure _exn90061_)
                (let ((__tmp94787
                       (let ((__tmp94788
                              (let ()
                                (declare (not safe))
                                (cons _exn90061_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp94788))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp94787))))))
    (define heap-overflow-exception?
      (lambda (_exn90055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90055_))
            (let ((_e90058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90055_ 'exception))))
              (macro-heap-overflow-exception? _e90058_))
            (macro-heap-overflow-exception? _exn90055_))))
    (define inactive-thread-exception?
      (lambda (_exn90051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90051_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90051_ 'exception))))
              (macro-inactive-thread-exception? _e90053_))
            (macro-inactive-thread-exception? _exn90051_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90047_))
            (let ((_e90049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90047_ 'exception))))
              (if (macro-inactive-thread-exception? _e90049_)
                  (macro-inactive-thread-exception-arguments _e90049_)
                  (let ((__tmp94793
                         (let ((__tmp94794
                                (let ()
                                  (declare (not safe))
                                  (cons _e90049_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp94794))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp94793))))
            (if (macro-inactive-thread-exception? _exn90047_)
                (macro-inactive-thread-exception-arguments _exn90047_)
                (let ((__tmp94791
                       (let ((__tmp94792
                              (let ()
                                (declare (not safe))
                                (cons _exn90047_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp94792))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp94791))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90041_))
            (let ((_e90044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90041_ 'exception))))
              (if (macro-inactive-thread-exception? _e90044_)
                  (macro-inactive-thread-exception-procedure _e90044_)
                  (let ((__tmp94797
                         (let ((__tmp94798
                                (let ()
                                  (declare (not safe))
                                  (cons _e90044_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp94798))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp94797))))
            (if (macro-inactive-thread-exception? _exn90041_)
                (macro-inactive-thread-exception-procedure _exn90041_)
                (let ((__tmp94795
                       (let ((__tmp94796
                              (let ()
                                (declare (not safe))
                                (cons _exn90041_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp94796))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp94795))))))
    (define initialized-thread-exception?
      (lambda (_exn90037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90037_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90037_ 'exception))))
              (macro-initialized-thread-exception? _e90039_))
            (macro-initialized-thread-exception? _exn90037_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90033_))
            (let ((_e90035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90033_ 'exception))))
              (if (macro-initialized-thread-exception? _e90035_)
                  (macro-initialized-thread-exception-arguments _e90035_)
                  (let ((__tmp94801
                         (let ((__tmp94802
                                (let ()
                                  (declare (not safe))
                                  (cons _e90035_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp94802))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp94801))))
            (if (macro-initialized-thread-exception? _exn90033_)
                (macro-initialized-thread-exception-arguments _exn90033_)
                (let ((__tmp94799
                       (let ((__tmp94800
                              (let ()
                                (declare (not safe))
                                (cons _exn90033_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp94800))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp94799))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90027_))
            (let ((_e90030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90027_ 'exception))))
              (if (macro-initialized-thread-exception? _e90030_)
                  (macro-initialized-thread-exception-procedure _e90030_)
                  (let ((__tmp94805
                         (let ((__tmp94806
                                (let ()
                                  (declare (not safe))
                                  (cons _e90030_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp94806))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp94805))))
            (if (macro-initialized-thread-exception? _exn90027_)
                (macro-initialized-thread-exception-procedure _exn90027_)
                (let ((__tmp94803
                       (let ((__tmp94804
                              (let ()
                                (declare (not safe))
                                (cons _exn90027_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp94804))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp94803))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90023_))
            (let ((_e90025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90023_ 'exception))))
              (macro-invalid-hash-number-exception? _e90025_))
            (macro-invalid-hash-number-exception? _exn90023_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90019_))
            (let ((_e90021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90019_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90021_)
                  (macro-invalid-hash-number-exception-arguments _e90021_)
                  (let ((__tmp94809
                         (let ((__tmp94810
                                (let ()
                                  (declare (not safe))
                                  (cons _e90021_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp94810))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp94809))))
            (if (macro-invalid-hash-number-exception? _exn90019_)
                (macro-invalid-hash-number-exception-arguments _exn90019_)
                (let ((__tmp94807
                       (let ((__tmp94808
                              (let ()
                                (declare (not safe))
                                (cons _exn90019_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp94808))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp94807))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90013_))
            (let ((_e90016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90013_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90016_)
                  (macro-invalid-hash-number-exception-procedure _e90016_)
                  (let ((__tmp94813
                         (let ((__tmp94814
                                (let ()
                                  (declare (not safe))
                                  (cons _e90016_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp94814))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp94813))))
            (if (macro-invalid-hash-number-exception? _exn90013_)
                (macro-invalid-hash-number-exception-procedure _exn90013_)
                (let ((__tmp94811
                       (let ((__tmp94812
                              (let ()
                                (declare (not safe))
                                (cons _exn90013_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp94812))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp94811))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90009_))
            (let ((_e90011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90009_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90011_))
            (macro-invalid-utf8-encoding-exception? _exn90009_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90005_))
            (let ((_e90007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90005_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90007_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90007_)
                  (let ((__tmp94817
                         (let ((__tmp94818
                                (let ()
                                  (declare (not safe))
                                  (cons _e90007_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp94818))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp94817))))
            (if (macro-invalid-utf8-encoding-exception? _exn90005_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90005_)
                (let ((__tmp94815
                       (let ((__tmp94816
                              (let ()
                                (declare (not safe))
                                (cons _exn90005_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp94816))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp94815))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89999_))
            (let ((_e90002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89999_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90002_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90002_)
                  (let ((__tmp94821
                         (let ((__tmp94822
                                (let ()
                                  (declare (not safe))
                                  (cons _e90002_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp94822))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp94821))))
            (if (macro-invalid-utf8-encoding-exception? _exn89999_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89999_)
                (let ((__tmp94819
                       (let ((__tmp94820
                              (let ()
                                (declare (not safe))
                                (cons _exn89999_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp94820))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp94819))))))
    (define join-timeout-exception?
      (lambda (_exn89995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89995_))
            (let ((_e89997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89995_ 'exception))))
              (macro-join-timeout-exception? _e89997_))
            (macro-join-timeout-exception? _exn89995_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89991_))
            (let ((_e89993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89991_ 'exception))))
              (if (macro-join-timeout-exception? _e89993_)
                  (macro-join-timeout-exception-arguments _e89993_)
                  (let ((__tmp94825
                         (let ((__tmp94826
                                (let ()
                                  (declare (not safe))
                                  (cons _e89993_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp94826))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp94825))))
            (if (macro-join-timeout-exception? _exn89991_)
                (macro-join-timeout-exception-arguments _exn89991_)
                (let ((__tmp94823
                       (let ((__tmp94824
                              (let ()
                                (declare (not safe))
                                (cons _exn89991_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp94824))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp94823))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89985_))
            (let ((_e89988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89985_ 'exception))))
              (if (macro-join-timeout-exception? _e89988_)
                  (macro-join-timeout-exception-procedure _e89988_)
                  (let ((__tmp94829
                         (let ((__tmp94830
                                (let ()
                                  (declare (not safe))
                                  (cons _e89988_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp94830))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp94829))))
            (if (macro-join-timeout-exception? _exn89985_)
                (macro-join-timeout-exception-procedure _exn89985_)
                (let ((__tmp94827
                       (let ((__tmp94828
                              (let ()
                                (declare (not safe))
                                (cons _exn89985_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp94828))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp94827))))))
    (define keyword-expected-exception?
      (lambda (_exn89981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89981_))
            (let ((_e89983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89981_ 'exception))))
              (macro-keyword-expected-exception? _e89983_))
            (macro-keyword-expected-exception? _exn89981_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89977_))
            (let ((_e89979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89977_ 'exception))))
              (if (macro-keyword-expected-exception? _e89979_)
                  (macro-keyword-expected-exception-arguments _e89979_)
                  (let ((__tmp94833
                         (let ((__tmp94834
                                (let ()
                                  (declare (not safe))
                                  (cons _e89979_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp94834))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp94833))))
            (if (macro-keyword-expected-exception? _exn89977_)
                (macro-keyword-expected-exception-arguments _exn89977_)
                (let ((__tmp94831
                       (let ((__tmp94832
                              (let ()
                                (declare (not safe))
                                (cons _exn89977_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp94832))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp94831))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89971_))
            (let ((_e89974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89971_ 'exception))))
              (if (macro-keyword-expected-exception? _e89974_)
                  (macro-keyword-expected-exception-procedure _e89974_)
                  (let ((__tmp94837
                         (let ((__tmp94838
                                (let ()
                                  (declare (not safe))
                                  (cons _e89974_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp94838))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp94837))))
            (if (macro-keyword-expected-exception? _exn89971_)
                (macro-keyword-expected-exception-procedure _exn89971_)
                (let ((__tmp94835
                       (let ((__tmp94836
                              (let ()
                                (declare (not safe))
                                (cons _exn89971_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp94836))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp94835))))))
    (define length-mismatch-exception?
      (lambda (_exn89967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89967_))
            (let ((_e89969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89967_ 'exception))))
              (macro-length-mismatch-exception? _e89969_))
            (macro-length-mismatch-exception? _exn89967_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89963_))
            (let ((_e89965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89963_ 'exception))))
              (if (macro-length-mismatch-exception? _e89965_)
                  (macro-length-mismatch-exception-arg-id _e89965_)
                  (let ((__tmp94841
                         (let ((__tmp94842
                                (let ()
                                  (declare (not safe))
                                  (cons _e89965_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp94842))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp94841))))
            (if (macro-length-mismatch-exception? _exn89963_)
                (macro-length-mismatch-exception-arg-id _exn89963_)
                (let ((__tmp94839
                       (let ((__tmp94840
                              (let ()
                                (declare (not safe))
                                (cons _exn89963_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp94840))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp94839))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89959_))
            (let ((_e89961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89959_ 'exception))))
              (if (macro-length-mismatch-exception? _e89961_)
                  (macro-length-mismatch-exception-arguments _e89961_)
                  (let ((__tmp94845
                         (let ((__tmp94846
                                (let ()
                                  (declare (not safe))
                                  (cons _e89961_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp94846))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp94845))))
            (if (macro-length-mismatch-exception? _exn89959_)
                (macro-length-mismatch-exception-arguments _exn89959_)
                (let ((__tmp94843
                       (let ((__tmp94844
                              (let ()
                                (declare (not safe))
                                (cons _exn89959_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp94844))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp94843))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89953_))
            (let ((_e89956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89953_ 'exception))))
              (if (macro-length-mismatch-exception? _e89956_)
                  (macro-length-mismatch-exception-procedure _e89956_)
                  (let ((__tmp94849
                         (let ((__tmp94850
                                (let ()
                                  (declare (not safe))
                                  (cons _e89956_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp94850))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp94849))))
            (if (macro-length-mismatch-exception? _exn89953_)
                (macro-length-mismatch-exception-procedure _exn89953_)
                (let ((__tmp94847
                       (let ((__tmp94848
                              (let ()
                                (declare (not safe))
                                (cons _exn89953_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp94848))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp94847))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89949_))
            (let ((_e89951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89949_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89951_))
            (macro-mailbox-receive-timeout-exception? _exn89949_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89945_))
            (let ((_e89947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89945_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89947_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89947_)
                  (let ((__tmp94853
                         (let ((__tmp94854
                                (let ()
                                  (declare (not safe))
                                  (cons _e89947_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp94854))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp94853))))
            (if (macro-mailbox-receive-timeout-exception? _exn89945_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89945_)
                (let ((__tmp94851
                       (let ((__tmp94852
                              (let ()
                                (declare (not safe))
                                (cons _exn89945_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp94852))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp94851))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89939_))
            (let ((_e89942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89939_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89942_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89942_)
                  (let ((__tmp94857
                         (let ((__tmp94858
                                (let ()
                                  (declare (not safe))
                                  (cons _e89942_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp94858))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp94857))))
            (if (macro-mailbox-receive-timeout-exception? _exn89939_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89939_)
                (let ((__tmp94855
                       (let ((__tmp94856
                              (let ()
                                (declare (not safe))
                                (cons _exn89939_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp94856))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp94855))))))
    (define module-not-found-exception?
      (lambda (_exn89935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89935_))
            (let ((_e89937_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89935_ 'exception))))
              (macro-module-not-found-exception? _e89937_))
            (macro-module-not-found-exception? _exn89935_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89931_))
            (let ((_e89933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89931_ 'exception))))
              (if (macro-module-not-found-exception? _e89933_)
                  (macro-module-not-found-exception-arguments _e89933_)
                  (let ((__tmp94861
                         (let ((__tmp94862
                                (let ()
                                  (declare (not safe))
                                  (cons _e89933_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp94862))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp94861))))
            (if (macro-module-not-found-exception? _exn89931_)
                (macro-module-not-found-exception-arguments _exn89931_)
                (let ((__tmp94859
                       (let ((__tmp94860
                              (let ()
                                (declare (not safe))
                                (cons _exn89931_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp94860))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp94859))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89925_))
            (let ((_e89928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89925_ 'exception))))
              (if (macro-module-not-found-exception? _e89928_)
                  (macro-module-not-found-exception-procedure _e89928_)
                  (let ((__tmp94865
                         (let ((__tmp94866
                                (let ()
                                  (declare (not safe))
                                  (cons _e89928_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp94866))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp94865))))
            (if (macro-module-not-found-exception? _exn89925_)
                (macro-module-not-found-exception-procedure _exn89925_)
                (let ((__tmp94863
                       (let ((__tmp94864
                              (let ()
                                (declare (not safe))
                                (cons _exn89925_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp94864))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp94863))))))
    (define multiple-c-return-exception?
      (lambda (_exn89919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89919_))
            (let ((_e89922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89919_ 'exception))))
              (macro-multiple-c-return-exception? _e89922_))
            (macro-multiple-c-return-exception? _exn89919_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89915_))
            (let ((_e89917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89915_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89917_))
            (macro-no-such-file-or-directory-exception? _exn89915_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89911_))
            (let ((_e89913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89911_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89913_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89913_)
                  (let ((__tmp94869
                         (let ((__tmp94870
                                (let ()
                                  (declare (not safe))
                                  (cons _e89913_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp94870))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp94869))))
            (if (macro-no-such-file-or-directory-exception? _exn89911_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89911_)
                (let ((__tmp94867
                       (let ((__tmp94868
                              (let ()
                                (declare (not safe))
                                (cons _exn89911_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp94868))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp94867))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89905_))
            (let ((_e89908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89905_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89908_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89908_)
                  (let ((__tmp94873
                         (let ((__tmp94874
                                (let ()
                                  (declare (not safe))
                                  (cons _e89908_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp94874))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp94873))))
            (if (macro-no-such-file-or-directory-exception? _exn89905_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89905_)
                (let ((__tmp94871
                       (let ((__tmp94872
                              (let ()
                                (declare (not safe))
                                (cons _exn89905_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp94872))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp94871))))))
    (define noncontinuable-exception?
      (lambda (_exn89901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89901_))
            (let ((_e89903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89901_ 'exception))))
              (macro-noncontinuable-exception? _e89903_))
            (macro-noncontinuable-exception? _exn89901_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89895_))
            (let ((_e89898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89895_ 'exception))))
              (if (macro-noncontinuable-exception? _e89898_)
                  (macro-noncontinuable-exception-reason _e89898_)
                  (let ((__tmp94877
                         (let ((__tmp94878
                                (let ()
                                  (declare (not safe))
                                  (cons _e89898_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp94878))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp94877))))
            (if (macro-noncontinuable-exception? _exn89895_)
                (macro-noncontinuable-exception-reason _exn89895_)
                (let ((__tmp94875
                       (let ((__tmp94876
                              (let ()
                                (declare (not safe))
                                (cons _exn89895_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp94876))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp94875))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89891_))
            (let ((_e89893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89891_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89893_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89891_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89887_))
            (let ((_e89889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89887_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89889_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89889_)
                  (let ((__tmp94881
                         (let ((__tmp94882
                                (let ()
                                  (declare (not safe))
                                  (cons _e89889_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp94882))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp94881))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89887_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89887_)
                (let ((__tmp94879
                       (let ((__tmp94880
                              (let ()
                                (declare (not safe))
                                (cons _exn89887_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp94880))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp94879))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89881_))
            (let ((_e89884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89881_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89884_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89884_)
                  (let ((__tmp94885
                         (let ((__tmp94886
                                (let ()
                                  (declare (not safe))
                                  (cons _e89884_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp94886))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp94885))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89881_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89881_)
                (let ((__tmp94883
                       (let ((__tmp94884
                              (let ()
                                (declare (not safe))
                                (cons _exn89881_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp94884))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp94883))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89877_))
            (let ((_e89879_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89877_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89879_))
            (macro-nonprocedure-operator-exception? _exn89877_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89873_))
            (let ((_e89875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89873_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89875_)
                  (macro-nonprocedure-operator-exception-arguments _e89875_)
                  (let ((__tmp94889
                         (let ((__tmp94890
                                (let ()
                                  (declare (not safe))
                                  (cons _e89875_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp94890))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp94889))))
            (if (macro-nonprocedure-operator-exception? _exn89873_)
                (macro-nonprocedure-operator-exception-arguments _exn89873_)
                (let ((__tmp94887
                       (let ((__tmp94888
                              (let ()
                                (declare (not safe))
                                (cons _exn89873_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp94888))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp94887))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89869_))
            (let ((_e89871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89869_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89871_)
                  (macro-nonprocedure-operator-exception-code _e89871_)
                  (let ((__tmp94893
                         (let ((__tmp94894
                                (let ()
                                  (declare (not safe))
                                  (cons _e89871_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp94894))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp94893))))
            (if (macro-nonprocedure-operator-exception? _exn89869_)
                (macro-nonprocedure-operator-exception-code _exn89869_)
                (let ((__tmp94891
                       (let ((__tmp94892
                              (let ()
                                (declare (not safe))
                                (cons _exn89869_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp94892))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp94891))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89865_))
            (let ((_e89867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89865_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89867_)
                  (macro-nonprocedure-operator-exception-operator _e89867_)
                  (let ((__tmp94897
                         (let ((__tmp94898
                                (let ()
                                  (declare (not safe))
                                  (cons _e89867_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp94898))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp94897))))
            (if (macro-nonprocedure-operator-exception? _exn89865_)
                (macro-nonprocedure-operator-exception-operator _exn89865_)
                (let ((__tmp94895
                       (let ((__tmp94896
                              (let ()
                                (declare (not safe))
                                (cons _exn89865_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp94896))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp94895))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89859_))
            (let ((_e89862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89859_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89862_)
                  (macro-nonprocedure-operator-exception-rte _e89862_)
                  (let ((__tmp94901
                         (let ((__tmp94902
                                (let ()
                                  (declare (not safe))
                                  (cons _e89862_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp94902))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp94901))))
            (if (macro-nonprocedure-operator-exception? _exn89859_)
                (macro-nonprocedure-operator-exception-rte _exn89859_)
                (let ((__tmp94899
                       (let ((__tmp94900
                              (let ()
                                (declare (not safe))
                                (cons _exn89859_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp94900))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp94899))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89855_))
            (let ((_e89857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89855_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89857_))
            (macro-not-in-compilation-context-exception? _exn89855_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89851_))
            (let ((_e89853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89851_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89853_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89853_)
                  (let ((__tmp94905
                         (let ((__tmp94906
                                (let ()
                                  (declare (not safe))
                                  (cons _e89853_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp94906))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp94905))))
            (if (macro-not-in-compilation-context-exception? _exn89851_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89851_)
                (let ((__tmp94903
                       (let ((__tmp94904
                              (let ()
                                (declare (not safe))
                                (cons _exn89851_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp94904))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp94903))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89845_))
            (let ((_e89848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89845_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89848_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89848_)
                  (let ((__tmp94909
                         (let ((__tmp94910
                                (let ()
                                  (declare (not safe))
                                  (cons _e89848_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp94910))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp94909))))
            (if (macro-not-in-compilation-context-exception? _exn89845_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89845_)
                (let ((__tmp94907
                       (let ((__tmp94908
                              (let ()
                                (declare (not safe))
                                (cons _exn89845_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp94908))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp94907))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89841_))
            (let ((_e89843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89841_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89843_))
            (macro-number-of-arguments-limit-exception? _exn89841_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89837_))
            (let ((_e89839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89837_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89839_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89839_)
                  (let ((__tmp94913
                         (let ((__tmp94914
                                (let ()
                                  (declare (not safe))
                                  (cons _e89839_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp94914))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp94913))))
            (if (macro-number-of-arguments-limit-exception? _exn89837_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89837_)
                (let ((__tmp94911
                       (let ((__tmp94912
                              (let ()
                                (declare (not safe))
                                (cons _exn89837_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp94912))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp94911))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89831_))
            (let ((_e89834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89831_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89834_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89834_)
                  (let ((__tmp94917
                         (let ((__tmp94918
                                (let ()
                                  (declare (not safe))
                                  (cons _e89834_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp94918))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp94917))))
            (if (macro-number-of-arguments-limit-exception? _exn89831_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89831_)
                (let ((__tmp94915
                       (let ((__tmp94916
                              (let ()
                                (declare (not safe))
                                (cons _exn89831_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp94916))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp94915))))))
    (define os-exception?
      (lambda (_exn89827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89827_))
            (let ((_e89829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89827_ 'exception))))
              (macro-os-exception? _e89829_))
            (macro-os-exception? _exn89827_))))
    (define os-exception-arguments
      (lambda (_exn89823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89823_))
            (let ((_e89825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89823_ 'exception))))
              (if (macro-os-exception? _e89825_)
                  (macro-os-exception-arguments _e89825_)
                  (let ((__tmp94921
                         (let ((__tmp94922
                                (let ()
                                  (declare (not safe))
                                  (cons _e89825_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp94922))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp94921))))
            (if (macro-os-exception? _exn89823_)
                (macro-os-exception-arguments _exn89823_)
                (let ((__tmp94919
                       (let ((__tmp94920
                              (let ()
                                (declare (not safe))
                                (cons _exn89823_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp94920))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp94919))))))
    (define os-exception-code
      (lambda (_exn89819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89819_))
            (let ((_e89821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89819_ 'exception))))
              (if (macro-os-exception? _e89821_)
                  (macro-os-exception-code _e89821_)
                  (let ((__tmp94925
                         (let ((__tmp94926
                                (let ()
                                  (declare (not safe))
                                  (cons _e89821_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp94926))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp94925))))
            (if (macro-os-exception? _exn89819_)
                (macro-os-exception-code _exn89819_)
                (let ((__tmp94923
                       (let ((__tmp94924
                              (let ()
                                (declare (not safe))
                                (cons _exn89819_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp94924))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp94923))))))
    (define os-exception-message
      (lambda (_exn89815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89815_))
            (let ((_e89817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89815_ 'exception))))
              (if (macro-os-exception? _e89817_)
                  (macro-os-exception-message _e89817_)
                  (let ((__tmp94929
                         (let ((__tmp94930
                                (let ()
                                  (declare (not safe))
                                  (cons _e89817_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp94930))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp94929))))
            (if (macro-os-exception? _exn89815_)
                (macro-os-exception-message _exn89815_)
                (let ((__tmp94927
                       (let ((__tmp94928
                              (let ()
                                (declare (not safe))
                                (cons _exn89815_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp94928))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp94927))))))
    (define os-exception-procedure
      (lambda (_exn89809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89809_))
            (let ((_e89812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89809_ 'exception))))
              (if (macro-os-exception? _e89812_)
                  (macro-os-exception-procedure _e89812_)
                  (let ((__tmp94933
                         (let ((__tmp94934
                                (let ()
                                  (declare (not safe))
                                  (cons _e89812_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp94934))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp94933))))
            (if (macro-os-exception? _exn89809_)
                (macro-os-exception-procedure _exn89809_)
                (let ((__tmp94931
                       (let ((__tmp94932
                              (let ()
                                (declare (not safe))
                                (cons _exn89809_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp94932))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp94931))))))
    (define permission-denied-exception?
      (lambda (_exn89805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89805_))
            (let ((_e89807_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89805_ 'exception))))
              (macro-permission-denied-exception? _e89807_))
            (macro-permission-denied-exception? _exn89805_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89801_))
            (let ((_e89803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89801_ 'exception))))
              (if (macro-permission-denied-exception? _e89803_)
                  (macro-permission-denied-exception-arguments _e89803_)
                  (let ((__tmp94937
                         (let ((__tmp94938
                                (let ()
                                  (declare (not safe))
                                  (cons _e89803_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp94938))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp94937))))
            (if (macro-permission-denied-exception? _exn89801_)
                (macro-permission-denied-exception-arguments _exn89801_)
                (let ((__tmp94935
                       (let ((__tmp94936
                              (let ()
                                (declare (not safe))
                                (cons _exn89801_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp94936))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp94935))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89795_))
            (let ((_e89798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89795_ 'exception))))
              (if (macro-permission-denied-exception? _e89798_)
                  (macro-permission-denied-exception-procedure _e89798_)
                  (let ((__tmp94941
                         (let ((__tmp94942
                                (let ()
                                  (declare (not safe))
                                  (cons _e89798_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp94942))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp94941))))
            (if (macro-permission-denied-exception? _exn89795_)
                (macro-permission-denied-exception-procedure _exn89795_)
                (let ((__tmp94939
                       (let ((__tmp94940
                              (let ()
                                (declare (not safe))
                                (cons _exn89795_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp94940))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp94939))))))
    (define range-exception?
      (lambda (_exn89791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89791_))
            (let ((_e89793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89791_ 'exception))))
              (macro-range-exception? _e89793_))
            (macro-range-exception? _exn89791_))))
    (define range-exception-arg-id
      (lambda (_exn89787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89787_))
            (let ((_e89789_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89787_ 'exception))))
              (if (macro-range-exception? _e89789_)
                  (macro-range-exception-arg-id _e89789_)
                  (let ((__tmp94945
                         (let ((__tmp94946
                                (let ()
                                  (declare (not safe))
                                  (cons _e89789_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp94946))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp94945))))
            (if (macro-range-exception? _exn89787_)
                (macro-range-exception-arg-id _exn89787_)
                (let ((__tmp94943
                       (let ((__tmp94944
                              (let ()
                                (declare (not safe))
                                (cons _exn89787_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp94944))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp94943))))))
    (define range-exception-arguments
      (lambda (_exn89783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89783_))
            (let ((_e89785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89783_ 'exception))))
              (if (macro-range-exception? _e89785_)
                  (macro-range-exception-arguments _e89785_)
                  (let ((__tmp94949
                         (let ((__tmp94950
                                (let ()
                                  (declare (not safe))
                                  (cons _e89785_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp94950))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp94949))))
            (if (macro-range-exception? _exn89783_)
                (macro-range-exception-arguments _exn89783_)
                (let ((__tmp94947
                       (let ((__tmp94948
                              (let ()
                                (declare (not safe))
                                (cons _exn89783_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp94948))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp94947))))))
    (define range-exception-procedure
      (lambda (_exn89777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89777_))
            (let ((_e89780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89777_ 'exception))))
              (if (macro-range-exception? _e89780_)
                  (macro-range-exception-procedure _e89780_)
                  (let ((__tmp94953
                         (let ((__tmp94954
                                (let ()
                                  (declare (not safe))
                                  (cons _e89780_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp94954))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp94953))))
            (if (macro-range-exception? _exn89777_)
                (macro-range-exception-procedure _exn89777_)
                (let ((__tmp94951
                       (let ((__tmp94952
                              (let ()
                                (declare (not safe))
                                (cons _exn89777_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp94952))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp94951))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89773_))
            (let ((_e89775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89773_ 'exception))))
              (macro-rpc-remote-error-exception? _e89775_))
            (macro-rpc-remote-error-exception? _exn89773_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89769_))
            (let ((_e89771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89769_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89771_)
                  (macro-rpc-remote-error-exception-arguments _e89771_)
                  (let ((__tmp94957
                         (let ((__tmp94958
                                (let ()
                                  (declare (not safe))
                                  (cons _e89771_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp94958))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp94957))))
            (if (macro-rpc-remote-error-exception? _exn89769_)
                (macro-rpc-remote-error-exception-arguments _exn89769_)
                (let ((__tmp94955
                       (let ((__tmp94956
                              (let ()
                                (declare (not safe))
                                (cons _exn89769_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp94956))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp94955))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89765_))
            (let ((_e89767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89765_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89767_)
                  (macro-rpc-remote-error-exception-message _e89767_)
                  (let ((__tmp94961
                         (let ((__tmp94962
                                (let ()
                                  (declare (not safe))
                                  (cons _e89767_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp94962))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp94961))))
            (if (macro-rpc-remote-error-exception? _exn89765_)
                (macro-rpc-remote-error-exception-message _exn89765_)
                (let ((__tmp94959
                       (let ((__tmp94960
                              (let ()
                                (declare (not safe))
                                (cons _exn89765_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp94960))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp94959))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89759_))
            (let ((_e89762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89759_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89762_)
                  (macro-rpc-remote-error-exception-procedure _e89762_)
                  (let ((__tmp94965
                         (let ((__tmp94966
                                (let ()
                                  (declare (not safe))
                                  (cons _e89762_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp94966))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp94965))))
            (if (macro-rpc-remote-error-exception? _exn89759_)
                (macro-rpc-remote-error-exception-procedure _exn89759_)
                (let ((__tmp94963
                       (let ((__tmp94964
                              (let ()
                                (declare (not safe))
                                (cons _exn89759_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp94964))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp94963))))))
    (define scheduler-exception?
      (lambda (_exn89755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89755_))
            (let ((_e89757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89755_ 'exception))))
              (macro-scheduler-exception? _e89757_))
            (macro-scheduler-exception? _exn89755_))))
    (define scheduler-exception-reason
      (lambda (_exn89749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89749_))
            (let ((_e89752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89749_ 'exception))))
              (if (macro-scheduler-exception? _e89752_)
                  (macro-scheduler-exception-reason _e89752_)
                  (let ((__tmp94969
                         (let ((__tmp94970
                                (let ()
                                  (declare (not safe))
                                  (cons _e89752_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp94970))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp94969))))
            (if (macro-scheduler-exception? _exn89749_)
                (macro-scheduler-exception-reason _exn89749_)
                (let ((__tmp94967
                       (let ((__tmp94968
                              (let ()
                                (declare (not safe))
                                (cons _exn89749_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp94968))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp94967))))))
    (define sfun-conversion-exception?
      (lambda (_exn89745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89745_))
            (let ((_e89747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89745_ 'exception))))
              (macro-sfun-conversion-exception? _e89747_))
            (macro-sfun-conversion-exception? _exn89745_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89741_))
            (let ((_e89743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89741_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89743_)
                  (macro-sfun-conversion-exception-arguments _e89743_)
                  (let ((__tmp94973
                         (let ((__tmp94974
                                (let ()
                                  (declare (not safe))
                                  (cons _e89743_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp94974))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp94973))))
            (if (macro-sfun-conversion-exception? _exn89741_)
                (macro-sfun-conversion-exception-arguments _exn89741_)
                (let ((__tmp94971
                       (let ((__tmp94972
                              (let ()
                                (declare (not safe))
                                (cons _exn89741_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp94972))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp94971))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89737_))
            (let ((_e89739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89737_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89739_)
                  (macro-sfun-conversion-exception-code _e89739_)
                  (let ((__tmp94977
                         (let ((__tmp94978
                                (let ()
                                  (declare (not safe))
                                  (cons _e89739_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp94978))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp94977))))
            (if (macro-sfun-conversion-exception? _exn89737_)
                (macro-sfun-conversion-exception-code _exn89737_)
                (let ((__tmp94975
                       (let ((__tmp94976
                              (let ()
                                (declare (not safe))
                                (cons _exn89737_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp94976))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp94975))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89733_))
            (let ((_e89735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89733_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89735_)
                  (macro-sfun-conversion-exception-message _e89735_)
                  (let ((__tmp94981
                         (let ((__tmp94982
                                (let ()
                                  (declare (not safe))
                                  (cons _e89735_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp94982))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp94981))))
            (if (macro-sfun-conversion-exception? _exn89733_)
                (macro-sfun-conversion-exception-message _exn89733_)
                (let ((__tmp94979
                       (let ((__tmp94980
                              (let ()
                                (declare (not safe))
                                (cons _exn89733_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp94980))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp94979))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89727_))
            (let ((_e89730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89727_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89730_)
                  (macro-sfun-conversion-exception-procedure _e89730_)
                  (let ((__tmp94985
                         (let ((__tmp94986
                                (let ()
                                  (declare (not safe))
                                  (cons _e89730_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp94986))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp94985))))
            (if (macro-sfun-conversion-exception? _exn89727_)
                (macro-sfun-conversion-exception-procedure _exn89727_)
                (let ((__tmp94983
                       (let ((__tmp94984
                              (let ()
                                (declare (not safe))
                                (cons _exn89727_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp94984))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp94983))))))
    (define stack-overflow-exception?
      (lambda (_exn89721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89721_))
            (let ((_e89724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89721_ 'exception))))
              (macro-stack-overflow-exception? _e89724_))
            (macro-stack-overflow-exception? _exn89721_))))
    (define started-thread-exception?
      (lambda (_exn89717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89717_))
            (let ((_e89719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89717_ 'exception))))
              (macro-started-thread-exception? _e89719_))
            (macro-started-thread-exception? _exn89717_))))
    (define started-thread-exception-arguments
      (lambda (_exn89713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89713_))
            (let ((_e89715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89713_ 'exception))))
              (if (macro-started-thread-exception? _e89715_)
                  (macro-started-thread-exception-arguments _e89715_)
                  (let ((__tmp94989
                         (let ((__tmp94990
                                (let ()
                                  (declare (not safe))
                                  (cons _e89715_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp94990))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp94989))))
            (if (macro-started-thread-exception? _exn89713_)
                (macro-started-thread-exception-arguments _exn89713_)
                (let ((__tmp94987
                       (let ((__tmp94988
                              (let ()
                                (declare (not safe))
                                (cons _exn89713_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp94988))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp94987))))))
    (define started-thread-exception-procedure
      (lambda (_exn89707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89707_))
            (let ((_e89710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89707_ 'exception))))
              (if (macro-started-thread-exception? _e89710_)
                  (macro-started-thread-exception-procedure _e89710_)
                  (let ((__tmp94993
                         (let ((__tmp94994
                                (let ()
                                  (declare (not safe))
                                  (cons _e89710_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp94994))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp94993))))
            (if (macro-started-thread-exception? _exn89707_)
                (macro-started-thread-exception-procedure _exn89707_)
                (let ((__tmp94991
                       (let ((__tmp94992
                              (let ()
                                (declare (not safe))
                                (cons _exn89707_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp94992))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp94991))))))
    (define terminated-thread-exception?
      (lambda (_exn89703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89703_))
            (let ((_e89705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89703_ 'exception))))
              (macro-terminated-thread-exception? _e89705_))
            (macro-terminated-thread-exception? _exn89703_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89699_))
            (let ((_e89701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89699_ 'exception))))
              (if (macro-terminated-thread-exception? _e89701_)
                  (macro-terminated-thread-exception-arguments _e89701_)
                  (let ((__tmp94997
                         (let ((__tmp94998
                                (let ()
                                  (declare (not safe))
                                  (cons _e89701_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp94998))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp94997))))
            (if (macro-terminated-thread-exception? _exn89699_)
                (macro-terminated-thread-exception-arguments _exn89699_)
                (let ((__tmp94995
                       (let ((__tmp94996
                              (let ()
                                (declare (not safe))
                                (cons _exn89699_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp94996))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp94995))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89693_))
            (let ((_e89696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89693_ 'exception))))
              (if (macro-terminated-thread-exception? _e89696_)
                  (macro-terminated-thread-exception-procedure _e89696_)
                  (let ((__tmp95001
                         (let ((__tmp95002
                                (let ()
                                  (declare (not safe))
                                  (cons _e89696_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95002))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp95001))))
            (if (macro-terminated-thread-exception? _exn89693_)
                (macro-terminated-thread-exception-procedure _exn89693_)
                (let ((__tmp94999
                       (let ((__tmp95000
                              (let ()
                                (declare (not safe))
                                (cons _exn89693_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95000))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp94999))))))
    (define type-exception?
      (lambda (_exn89689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89689_))
            (let ((_e89691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89689_ 'exception))))
              (macro-type-exception? _e89691_))
            (macro-type-exception? _exn89689_))))
    (define type-exception-arg-id
      (lambda (_exn89685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89685_))
            (let ((_e89687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89685_ 'exception))))
              (if (macro-type-exception? _e89687_)
                  (macro-type-exception-arg-id _e89687_)
                  (let ((__tmp95005
                         (let ((__tmp95006
                                (let ()
                                  (declare (not safe))
                                  (cons _e89687_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95006))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp95005))))
            (if (macro-type-exception? _exn89685_)
                (macro-type-exception-arg-id _exn89685_)
                (let ((__tmp95003
                       (let ((__tmp95004
                              (let ()
                                (declare (not safe))
                                (cons _exn89685_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95004))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp95003))))))
    (define type-exception-arguments
      (lambda (_exn89681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89681_))
            (let ((_e89683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89681_ 'exception))))
              (if (macro-type-exception? _e89683_)
                  (macro-type-exception-arguments _e89683_)
                  (let ((__tmp95009
                         (let ((__tmp95010
                                (let ()
                                  (declare (not safe))
                                  (cons _e89683_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95010))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp95009))))
            (if (macro-type-exception? _exn89681_)
                (macro-type-exception-arguments _exn89681_)
                (let ((__tmp95007
                       (let ((__tmp95008
                              (let ()
                                (declare (not safe))
                                (cons _exn89681_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95008))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp95007))))))
    (define type-exception-procedure
      (lambda (_exn89677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89677_))
            (let ((_e89679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89677_ 'exception))))
              (if (macro-type-exception? _e89679_)
                  (macro-type-exception-procedure _e89679_)
                  (let ((__tmp95013
                         (let ((__tmp95014
                                (let ()
                                  (declare (not safe))
                                  (cons _e89679_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95014))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp95013))))
            (if (macro-type-exception? _exn89677_)
                (macro-type-exception-procedure _exn89677_)
                (let ((__tmp95011
                       (let ((__tmp95012
                              (let ()
                                (declare (not safe))
                                (cons _exn89677_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95012))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp95011))))))
    (define type-exception-type-id
      (lambda (_exn89671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89671_))
            (let ((_e89674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89671_ 'exception))))
              (if (macro-type-exception? _e89674_)
                  (macro-type-exception-type-id _e89674_)
                  (let ((__tmp95017
                         (let ((__tmp95018
                                (let ()
                                  (declare (not safe))
                                  (cons _e89674_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95018))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp95017))))
            (if (macro-type-exception? _exn89671_)
                (macro-type-exception-type-id _exn89671_)
                (let ((__tmp95015
                       (let ((__tmp95016
                              (let ()
                                (declare (not safe))
                                (cons _exn89671_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95016))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp95015))))))
    (define unbound-global-exception?
      (lambda (_exn89667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89667_))
            (let ((_e89669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89667_ 'exception))))
              (macro-unbound-global-exception? _e89669_))
            (macro-unbound-global-exception? _exn89667_))))
    (define unbound-global-exception-code
      (lambda (_exn89663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89663_))
            (let ((_e89665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89663_ 'exception))))
              (if (macro-unbound-global-exception? _e89665_)
                  (macro-unbound-global-exception-code _e89665_)
                  (let ((__tmp95021
                         (let ((__tmp95022
                                (let ()
                                  (declare (not safe))
                                  (cons _e89665_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95022))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp95021))))
            (if (macro-unbound-global-exception? _exn89663_)
                (macro-unbound-global-exception-code _exn89663_)
                (let ((__tmp95019
                       (let ((__tmp95020
                              (let ()
                                (declare (not safe))
                                (cons _exn89663_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95020))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp95019))))))
    (define unbound-global-exception-rte
      (lambda (_exn89659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89659_))
            (let ((_e89661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89659_ 'exception))))
              (if (macro-unbound-global-exception? _e89661_)
                  (macro-unbound-global-exception-rte _e89661_)
                  (let ((__tmp95025
                         (let ((__tmp95026
                                (let ()
                                  (declare (not safe))
                                  (cons _e89661_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95026))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp95025))))
            (if (macro-unbound-global-exception? _exn89659_)
                (macro-unbound-global-exception-rte _exn89659_)
                (let ((__tmp95023
                       (let ((__tmp95024
                              (let ()
                                (declare (not safe))
                                (cons _exn89659_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95024))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp95023))))))
    (define unbound-global-exception-variable
      (lambda (_exn89653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89653_))
            (let ((_e89656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89653_ 'exception))))
              (if (macro-unbound-global-exception? _e89656_)
                  (macro-unbound-global-exception-variable _e89656_)
                  (let ((__tmp95029
                         (let ((__tmp95030
                                (let ()
                                  (declare (not safe))
                                  (cons _e89656_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95030))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp95029))))
            (if (macro-unbound-global-exception? _exn89653_)
                (macro-unbound-global-exception-variable _exn89653_)
                (let ((__tmp95027
                       (let ((__tmp95028
                              (let ()
                                (declare (not safe))
                                (cons _exn89653_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95028))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp95027))))))
    (define unbound-key-exception?
      (lambda (_exn89649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89649_))
            (let ((_e89651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89649_ 'exception))))
              (macro-unbound-key-exception? _e89651_))
            (macro-unbound-key-exception? _exn89649_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89645_))
            (let ((_e89647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89645_ 'exception))))
              (if (macro-unbound-key-exception? _e89647_)
                  (macro-unbound-key-exception-arguments _e89647_)
                  (let ((__tmp95033
                         (let ((__tmp95034
                                (let ()
                                  (declare (not safe))
                                  (cons _e89647_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95034))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp95033))))
            (if (macro-unbound-key-exception? _exn89645_)
                (macro-unbound-key-exception-arguments _exn89645_)
                (let ((__tmp95031
                       (let ((__tmp95032
                              (let ()
                                (declare (not safe))
                                (cons _exn89645_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp95032))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp95031))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89639_))
            (let ((_e89642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89639_ 'exception))))
              (if (macro-unbound-key-exception? _e89642_)
                  (macro-unbound-key-exception-procedure _e89642_)
                  (let ((__tmp95037
                         (let ((__tmp95038
                                (let ()
                                  (declare (not safe))
                                  (cons _e89642_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95038))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp95037))))
            (if (macro-unbound-key-exception? _exn89639_)
                (macro-unbound-key-exception-procedure _exn89639_)
                (let ((__tmp95035
                       (let ((__tmp95036
                              (let ()
                                (declare (not safe))
                                (cons _exn89639_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp95036))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp95035))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89635_))
            (let ((_e89637_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89635_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89637_))
            (macro-unbound-os-environment-variable-exception? _exn89635_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89631_))
            (let ((_e89633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89631_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89633_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89633_)
                  (let ((__tmp95041
                         (let ((__tmp95042
                                (let ()
                                  (declare (not safe))
                                  (cons _e89633_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95042))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp95041))))
            (if (macro-unbound-os-environment-variable-exception? _exn89631_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89631_)
                (let ((__tmp95039
                       (let ((__tmp95040
                              (let ()
                                (declare (not safe))
                                (cons _exn89631_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95040))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp95039))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89625_))
            (let ((_e89628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89625_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89628_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89628_)
                  (let ((__tmp95045
                         (let ((__tmp95046
                                (let ()
                                  (declare (not safe))
                                  (cons _e89628_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95046))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp95045))))
            (if (macro-unbound-os-environment-variable-exception? _exn89625_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89625_)
                (let ((__tmp95043
                       (let ((__tmp95044
                              (let ()
                                (declare (not safe))
                                (cons _exn89625_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95044))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp95043))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89621_))
            (let ((_e89623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89621_ 'exception))))
              (macro-unbound-serial-number-exception? _e89623_))
            (macro-unbound-serial-number-exception? _exn89621_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89617_))
            (let ((_e89619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89617_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89619_)
                  (macro-unbound-serial-number-exception-arguments _e89619_)
                  (let ((__tmp95049
                         (let ((__tmp95050
                                (let ()
                                  (declare (not safe))
                                  (cons _e89619_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95050))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp95049))))
            (if (macro-unbound-serial-number-exception? _exn89617_)
                (macro-unbound-serial-number-exception-arguments _exn89617_)
                (let ((__tmp95047
                       (let ((__tmp95048
                              (let ()
                                (declare (not safe))
                                (cons _exn89617_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95048))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp95047))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89611_))
            (let ((_e89614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89611_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89614_)
                  (macro-unbound-serial-number-exception-procedure _e89614_)
                  (let ((__tmp95053
                         (let ((__tmp95054
                                (let ()
                                  (declare (not safe))
                                  (cons _e89614_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95054))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp95053))))
            (if (macro-unbound-serial-number-exception? _exn89611_)
                (macro-unbound-serial-number-exception-procedure _exn89611_)
                (let ((__tmp95051
                       (let ((__tmp95052
                              (let ()
                                (declare (not safe))
                                (cons _exn89611_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95052))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp95051))))))
    (define uncaught-exception?
      (lambda (_exn89607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89607_))
            (let ((_e89609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89607_ 'exception))))
              (macro-uncaught-exception? _e89609_))
            (macro-uncaught-exception? _exn89607_))))
    (define uncaught-exception-arguments
      (lambda (_exn89603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89603_))
            (let ((_e89605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89603_ 'exception))))
              (if (macro-uncaught-exception? _e89605_)
                  (macro-uncaught-exception-arguments _e89605_)
                  (let ((__tmp95057
                         (let ((__tmp95058
                                (let ()
                                  (declare (not safe))
                                  (cons _e89605_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95058))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp95057))))
            (if (macro-uncaught-exception? _exn89603_)
                (macro-uncaught-exception-arguments _exn89603_)
                (let ((__tmp95055
                       (let ((__tmp95056
                              (let ()
                                (declare (not safe))
                                (cons _exn89603_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95056))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp95055))))))
    (define uncaught-exception-procedure
      (lambda (_exn89599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89599_))
            (let ((_e89601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89599_ 'exception))))
              (if (macro-uncaught-exception? _e89601_)
                  (macro-uncaught-exception-procedure _e89601_)
                  (let ((__tmp95061
                         (let ((__tmp95062
                                (let ()
                                  (declare (not safe))
                                  (cons _e89601_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95062))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp95061))))
            (if (macro-uncaught-exception? _exn89599_)
                (macro-uncaught-exception-procedure _exn89599_)
                (let ((__tmp95059
                       (let ((__tmp95060
                              (let ()
                                (declare (not safe))
                                (cons _exn89599_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95060))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp95059))))))
    (define uncaught-exception-reason
      (lambda (_exn89593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89593_))
            (let ((_e89596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89593_ 'exception))))
              (if (macro-uncaught-exception? _e89596_)
                  (macro-uncaught-exception-reason _e89596_)
                  (let ((__tmp95065
                         (let ((__tmp95066
                                (let ()
                                  (declare (not safe))
                                  (cons _e89596_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95066))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp95065))))
            (if (macro-uncaught-exception? _exn89593_)
                (macro-uncaught-exception-reason _exn89593_)
                (let ((__tmp95063
                       (let ((__tmp95064
                              (let ()
                                (declare (not safe))
                                (cons _exn89593_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95064))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp95063))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89589_))
            (let ((_e89591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89589_ 'exception))))
              (macro-uninitialized-thread-exception? _e89591_))
            (macro-uninitialized-thread-exception? _exn89589_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89585_))
            (let ((_e89587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89585_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89587_)
                  (macro-uninitialized-thread-exception-arguments _e89587_)
                  (let ((__tmp95069
                         (let ((__tmp95070
                                (let ()
                                  (declare (not safe))
                                  (cons _e89587_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95070))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp95069))))
            (if (macro-uninitialized-thread-exception? _exn89585_)
                (macro-uninitialized-thread-exception-arguments _exn89585_)
                (let ((__tmp95067
                       (let ((__tmp95068
                              (let ()
                                (declare (not safe))
                                (cons _exn89585_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95068))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp95067))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89579_))
            (let ((_e89582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89579_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89582_)
                  (macro-uninitialized-thread-exception-procedure _e89582_)
                  (let ((__tmp95073
                         (let ((__tmp95074
                                (let ()
                                  (declare (not safe))
                                  (cons _e89582_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95074))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp95073))))
            (if (macro-uninitialized-thread-exception? _exn89579_)
                (macro-uninitialized-thread-exception-procedure _exn89579_)
                (let ((__tmp95071
                       (let ((__tmp95072
                              (let ()
                                (declare (not safe))
                                (cons _exn89579_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95072))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp95071))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89575_))
            (let ((_e89577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89575_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89577_))
            (macro-unknown-keyword-argument-exception? _exn89575_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89571_))
            (let ((_e89573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89571_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89573_)
                  (macro-unknown-keyword-argument-exception-arguments _e89573_)
                  (let ((__tmp95077
                         (let ((__tmp95078
                                (let ()
                                  (declare (not safe))
                                  (cons _e89573_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95078))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp95077))))
            (if (macro-unknown-keyword-argument-exception? _exn89571_)
                (macro-unknown-keyword-argument-exception-arguments _exn89571_)
                (let ((__tmp95075
                       (let ((__tmp95076
                              (let ()
                                (declare (not safe))
                                (cons _exn89571_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95076))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp95075))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89565_))
            (let ((_e89568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89565_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89568_)
                  (macro-unknown-keyword-argument-exception-procedure _e89568_)
                  (let ((__tmp95081
                         (let ((__tmp95082
                                (let ()
                                  (declare (not safe))
                                  (cons _e89568_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95082))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp95081))))
            (if (macro-unknown-keyword-argument-exception? _exn89565_)
                (macro-unknown-keyword-argument-exception-procedure _exn89565_)
                (let ((__tmp95079
                       (let ((__tmp95080
                              (let ()
                                (declare (not safe))
                                (cons _exn89565_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95080))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp95079))))))
    (define unterminated-process-exception?
      (lambda (_exn89561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89561_))
            (let ((_e89563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89561_ 'exception))))
              (macro-unterminated-process-exception? _e89563_))
            (macro-unterminated-process-exception? _exn89561_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89557_))
            (let ((_e89559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89557_ 'exception))))
              (if (macro-unterminated-process-exception? _e89559_)
                  (macro-unterminated-process-exception-arguments _e89559_)
                  (let ((__tmp95085
                         (let ((__tmp95086
                                (let ()
                                  (declare (not safe))
                                  (cons _e89559_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95086))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp95085))))
            (if (macro-unterminated-process-exception? _exn89557_)
                (macro-unterminated-process-exception-arguments _exn89557_)
                (let ((__tmp95083
                       (let ((__tmp95084
                              (let ()
                                (declare (not safe))
                                (cons _exn89557_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95084))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp95083))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89551_))
            (let ((_e89554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89551_ 'exception))))
              (if (macro-unterminated-process-exception? _e89554_)
                  (macro-unterminated-process-exception-procedure _e89554_)
                  (let ((__tmp95089
                         (let ((__tmp95090
                                (let ()
                                  (declare (not safe))
                                  (cons _e89554_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95090))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp95089))))
            (if (macro-unterminated-process-exception? _exn89551_)
                (macro-unterminated-process-exception-procedure _exn89551_)
                (let ((__tmp95087
                       (let ((__tmp95088
                              (let ()
                                (declare (not safe))
                                (cons _exn89551_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95088))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp95087))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89547_))
            (let ((_e89549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89547_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89549_))
            (macro-wrong-number-of-arguments-exception? _exn89547_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89543_))
            (let ((_e89545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89543_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89545_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89545_)
                  (let ((__tmp95093
                         (let ((__tmp95094
                                (let ()
                                  (declare (not safe))
                                  (cons _e89545_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95094))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp95093))))
            (if (macro-wrong-number-of-arguments-exception? _exn89543_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89543_)
                (let ((__tmp95091
                       (let ((__tmp95092
                              (let ()
                                (declare (not safe))
                                (cons _exn89543_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95092))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp95091))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89537_))
            (let ((_e89540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89537_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89540_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89540_)
                  (let ((__tmp95097
                         (let ((__tmp95098
                                (let ()
                                  (declare (not safe))
                                  (cons _e89540_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95098))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp95097))))
            (if (macro-wrong-number-of-arguments-exception? _exn89537_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89537_)
                (let ((__tmp95095
                       (let ((__tmp95096
                              (let ()
                                (declare (not safe))
                                (cons _exn89537_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95096))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp95095))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89533_))
            (let ((_e89535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89533_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89535_))
            (macro-wrong-number-of-values-exception? _exn89533_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89529_))
            (let ((_e89531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89529_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89531_)
                  (macro-wrong-number-of-values-exception-code _e89531_)
                  (let ((__tmp95101
                         (let ((__tmp95102
                                (let ()
                                  (declare (not safe))
                                  (cons _e89531_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95102))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp95101))))
            (if (macro-wrong-number-of-values-exception? _exn89529_)
                (macro-wrong-number-of-values-exception-code _exn89529_)
                (let ((__tmp95099
                       (let ((__tmp95100
                              (let ()
                                (declare (not safe))
                                (cons _exn89529_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95100))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp95099))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89525_))
            (let ((_e89527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89525_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89527_)
                  (macro-wrong-number-of-values-exception-rte _e89527_)
                  (let ((__tmp95105
                         (let ((__tmp95106
                                (let ()
                                  (declare (not safe))
                                  (cons _e89527_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95106))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp95105))))
            (if (macro-wrong-number-of-values-exception? _exn89525_)
                (macro-wrong-number-of-values-exception-rte _exn89525_)
                (let ((__tmp95103
                       (let ((__tmp95104
                              (let ()
                                (declare (not safe))
                                (cons _exn89525_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95104))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp95103))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89519_))
            (let ((_e89522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89519_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89522_)
                  (macro-wrong-number-of-values-exception-vals _e89522_)
                  (let ((__tmp95109
                         (let ((__tmp95110
                                (let ()
                                  (declare (not safe))
                                  (cons _e89522_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95110))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp95109))))
            (if (macro-wrong-number-of-values-exception? _exn89519_)
                (macro-wrong-number-of-values-exception-vals _exn89519_)
                (let ((__tmp95107
                       (let ((__tmp95108
                              (let ()
                                (declare (not safe))
                                (cons _exn89519_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95108))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp95107))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89513_))
            (let ((_e89516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89513_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89516_))
            (macro-wrong-processor-c-return-exception? _exn89513_))))))
