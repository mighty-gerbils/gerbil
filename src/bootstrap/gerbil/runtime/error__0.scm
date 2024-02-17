(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708202845)
  (begin
    (define Exception::t
      (let ((__tmp94777 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94777
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90681_ (apply make-instance Exception::t _$args90681_)))
    (define StackTrace::t
      (let ((__tmp94778 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94778
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90678_ (apply make-instance StackTrace::t _$args90678_)))
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
      (let ((__tmp94779 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94779
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90675_ (apply make-instance Error::t _$args90675_)))
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
      (let ((__tmp94780 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94780
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90672_
        (apply make-instance RuntimeException::t _$args90672_)))
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
      (lambda (_exn90667_ _continue90668_)
        (let ((_exn90670_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90667_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90670_ _continue90668_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90663_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90663_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90663_ 'continuation))
                '#!void
                (let ((__tmp94781
                       (lambda (_cont90665_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90663_
                            'continuation
                            _cont90665_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94781)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90663_))))
    (define error
      (lambda (_message90660_ . _irritants90661_)
        (raise (let ((__obj94771
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94771
                  _message90660_
                  'irritants:
                  _irritants90661_)
                 __obj94771))))
    (define with-exception-handler
      (lambda (_handler90653_ _thunk90654_)
        (if (let () (declare (not safe)) (procedure? _handler90653_))
            '#!void
            (raise (let ((__obj94772
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94772
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90653_ '())))
                     __obj94772)))
        (if (let () (declare (not safe)) (procedure? _thunk90654_))
            '#!void
            (raise (let ((__obj94773
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94773
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90654_ '())))
                     __obj94773)))
        (let ((__tmp94782
               (lambda (_exn90656_)
                 (let ((_exn90658_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90656_))))
                   (_handler90653_ _exn90658_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94782 _thunk90654_))))
    (define with-catch
      (lambda (_handler90646_ _thunk90647_)
        (if (let () (declare (not safe)) (procedure? _handler90646_))
            '#!void
            (raise (let ((__obj94774
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94774
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90646_ '())))
                     __obj94774)))
        (if (let () (declare (not safe)) (procedure? _thunk90647_))
            '#!void
            (raise (let ((__obj94775
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94775
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90647_ '())))
                     __obj94775)))
        (let ((__tmp94783
               (lambda (_cont90649_)
                 (with-exception-handler
                  (lambda (_exn90651_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90649_
                       _handler90646_
                       _exn90651_)))
                  _thunk90647_))))
          (declare (not safe))
          (##continuation-capture __tmp94783))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90637_)
        (if (or (heap-overflow-exception? _exn90637_)
                (stack-overflow-exception? _exn90637_))
            _exn90637_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90637_))
                _exn90637_
                (if (macro-exception? _exn90637_)
                    (let ((_rte90642_
                           (let ((__obj94776
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94776
                                _exn90637_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94776)))
                      (let ((__tmp94784
                             (lambda (_cont90644_)
                               (let ((__tmp94785
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90644_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90642_
                                  'continuation
                                  __tmp94785)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94784))
                      _rte90642_)
                    _exn90637_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90632_)
        (let ((_$e90634_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90632_))))
          (if _$e90634_ _$e90634_ (error-exception? _obj90632_)))))
    (define error-message
      (lambda (_obj90630_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90630_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90630_ 'message))
            (if (error-exception? _obj90630_)
                (error-exception-message _obj90630_)
                '#f))))
    (define error-irritants
      (lambda (_obj90628_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90628_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90628_ 'irritants))
            (if (error-exception? _obj90628_)
                (error-exception-parameters _obj90628_)
                '#f))))
    (define error-trace
      (lambda (_obj90626_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90626_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90626_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90608_ _port90609_)
        (let ((_$e90611_
               (let ()
                 (declare (not safe))
                 (method-ref _e90608_ 'display-exception))))
          (if _$e90611_
              ((lambda (_f90614_) (_f90614_ _e90608_ _port90609_)) _$e90611_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90608_ _port90609_))))))
    (define display-exception__0
      (lambda (_e90619_)
        (let ((_port90621_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90619_ _port90621_))))
    (define display-exception
      (lambda _g94787_
        (let ((_g94786_ (let () (declare (not safe)) (##length _g94787_))))
          (cond ((let () (declare (not safe)) (##fx= _g94786_ 1))
                 (apply (lambda (_e90619_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90619_)))
                        _g94787_))
                ((let () (declare (not safe)) (##fx= _g94786_ 2))
                 (apply (lambda (_e90623_ _port90624_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90623_ _port90624_)))
                        _g94787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94787_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90597_ _message90598_ . _rest90599_)
        (let ((_message90605_
               (if (let () (declare (not safe)) (string? _message90598_))
                   _message90598_
                   (call-with-output-string
                    '""
                    (lambda (_g9060090602_)
                      (display _message90598_ _g9060090602_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90597_ 'message _message90605_))
          (apply class-instance-init! _self90597_ _rest90599_))))
    (define Error:::init!::specialize
      (lambda (__t94750)
        (let ((__message94751
               (let ((__tmp94752
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94750 'message))))
                 (if __tmp94752 __tmp94752 (error '"Unknown slot" 'message)))))
          (lambda (_self90597_ _message90598_ . _rest90599_)
            (let ((_message90605_
                   (if (let () (declare (not safe)) (string? _message90598_))
                       _message90598_
                       (call-with-output-string
                        '""
                        (lambda (_g9060090602_)
                          (display _message90598_ _g9060090602_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90597_
                 _message90605_
                 __message94751
                 __t94750
                 '#f))
              (apply class-instance-init! _self90597_ _rest90599_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90455_ _port90456_)
        (let ((_tmp-port90458_ (open-output-string))
              (_display-error-newline90459_
               (> (output-port-column _port90456_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90458_))
          (let ((__tmp94788
                 (lambda ()
                   (if _display-error-newline90459_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90462_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90455_ 'where))))
                     (if _$e90462_ (display _$e90462_) (display '"?")))
                   (let ((__tmp94789
                          (let ((__tmp94790
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90455_))))
                            (declare (not safe))
                            (##type-name __tmp94790))))
                     (declare (not safe))
                     (display* '" [" __tmp94789 '"]: "))
                   (let ((__tmp94791
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90455_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94791))
                   (let ((_irritants90465_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90455_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90465_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90467_)
                              (write _obj90467_)
                              (write-char '#\space))
                            _irritants90465_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90455_))
                            (dump-stack-trace?))
                       (let ((_cont9046890470_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90455_
                                 'continuation))))
                         (if _cont9046890470_
                             (let ((_cont90473_ _cont9046890470_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90473_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94788
             current-output-port
             _tmp-port90458_))
          (let ((__tmp94792 (get-output-string _tmp-port90458_)))
            (declare (not safe))
            (##write-string __tmp94792 _port90456_)))))
    (define Error::display-exception::specialize
      (lambda (__t94753)
        (let ((__where94754
               (let ((__tmp94758
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94753 'where))))
                 (if __tmp94758 __tmp94758 (error '"Unknown slot" 'where))))
              (__irritants94755
               (let ((__tmp94759
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94753 'irritants))))
                 (if __tmp94759
                     __tmp94759
                     (error '"Unknown slot" 'irritants))))
              (__continuation94756
               (let ((__tmp94760
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94753 'continuation))))
                 (if __tmp94760
                     __tmp94760
                     (error '"Unknown slot" 'continuation))))
              (__message94757
               (let ((__tmp94761
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94753 'message))))
                 (if __tmp94761 __tmp94761 (error '"Unknown slot" 'message)))))
          (lambda (_self90455_ _port90456_)
            (let ((_tmp-port90458_ (open-output-string))
                  (_display-error-newline90459_
                   (> (output-port-column _port90456_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90458_))
              (let ((__tmp94793
                     (lambda ()
                       (if _display-error-newline90459_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90462_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90455_
                                 __where94754
                                 __t94753
                                 '#f))))
                         (if _$e90462_ (display _$e90462_) (display '"?")))
                       (let ((__tmp94794
                              (let ((__tmp94795
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90455_))))
                                (declare (not safe))
                                (##type-name __tmp94795))))
                         (declare (not safe))
                         (display* '" [" __tmp94794 '"]: "))
                       (let ((__tmp94796
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90455_
                                 __message94757
                                 __t94753
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94796))
                       (let ((_irritants90465_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90455_
                                 __irritants94755
                                 __t94753
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90465_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90467_)
                                  (write _obj90467_)
                                  (write-char '#\space))
                                _irritants90465_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90455_))
                                (dump-stack-trace?))
                           (let ((_cont9046890470_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90455_
                                     __continuation94756
                                     __t94753
                                     '#f))))
                             (if _cont9046890470_
                                 (let ((_cont90473_ _cont9046890470_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90473_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94793
                 current-output-port
                 _tmp-port90458_))
              (let ((__tmp94797 (get-output-string _tmp-port90458_)))
                (declare (not safe))
                (##write-string __tmp94797 _port90456_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90322_ _port90323_)
        (let ((_tmp-port90325_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90325_))
          (let ((__tmp94798
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90322_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94798 _tmp-port90325_))
          (if (dump-stack-trace?)
              (let ((_cont9032690328_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90322_ 'continuation))))
                (if _cont9032690328_
                    (let ((_cont90331_ _cont9032690328_))
                      (display '"--- continuation backtrace:" _tmp-port90325_)
                      (newline _tmp-port90325_)
                      (display-continuation-backtrace
                       _cont90331_
                       _tmp-port90325_))
                    '#f))
              '#!void)
          (let ((__tmp94799 (get-output-string _tmp-port90325_)))
            (declare (not safe))
            (##write-string __tmp94799 _port90323_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94762)
        (let ((__exception94763
               (let ((__tmp94765
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94762 'exception))))
                 (if __tmp94765
                     __tmp94765
                     (error '"Unknown slot" 'exception))))
              (__continuation94764
               (let ((__tmp94766
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94762 'continuation))))
                 (if __tmp94766
                     __tmp94766
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90322_ _port90323_)
            (let ((_tmp-port90325_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90325_))
              (let ((__tmp94800
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90322_
                        __exception94763
                        __t94762
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94800 _tmp-port90325_))
              (if (dump-stack-trace?)
                  (let ((_cont9032690328_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90322_
                            __continuation94764
                            __t94762
                            '#f))))
                    (if _cont9032690328_
                        (let ((_cont90331_ _cont9032690328_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90325_)
                          (newline _tmp-port90325_)
                          (display-continuation-backtrace
                           _cont90331_
                           _tmp-port90325_))
                        '#f))
                  '#!void)
              (let ((__tmp94801 (get-output-string _tmp-port90325_)))
                (declare (not safe))
                (##write-string __tmp94801 _port90323_)))))))
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
      (lambda (_port90194_)
        (if (macro-character-port? _port90194_)
            (let ((_old-width90196_
                   (macro-character-port-output-width _port90194_)))
              (macro-character-port-output-width-set!
               _port90194_
               (lambda (_port90198_) '256))
              _old-width90196_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90191_ _old-width90192_)
        (if (macro-character-port? _port90191_)
            (macro-character-port-output-width-set!
             _port90191_
             _old-width90192_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90189_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90189_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90183_))
            (let ((_e90186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90183_ 'exception))))
              (macro-abandoned-mutex-exception? _e90186_))
            (macro-abandoned-mutex-exception? _exn90183_))))
    (define cfun-conversion-exception?
      (lambda (_exn90179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90179_))
            (let ((_e90181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90179_ 'exception))))
              (macro-cfun-conversion-exception? _e90181_))
            (macro-cfun-conversion-exception? _exn90179_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90175_))
            (let ((_e90177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90175_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90177_)
                  (macro-cfun-conversion-exception-arguments _e90177_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94803
                                (let ()
                                  (declare (not safe))
                                  (cons _e90177_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94803)))))
            (if (macro-cfun-conversion-exception? _exn90175_)
                (macro-cfun-conversion-exception-arguments _exn90175_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94802
                              (let ()
                                (declare (not safe))
                                (cons _exn90175_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94802)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90171_))
            (let ((_e90173_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90171_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90173_)
                  (macro-cfun-conversion-exception-code _e90173_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94805
                                (let ()
                                  (declare (not safe))
                                  (cons _e90173_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp94805)))))
            (if (macro-cfun-conversion-exception? _exn90171_)
                (macro-cfun-conversion-exception-code _exn90171_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94804
                              (let ()
                                (declare (not safe))
                                (cons _exn90171_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp94804)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90167_))
            (let ((_e90169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90167_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90169_)
                  (macro-cfun-conversion-exception-message _e90169_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94807
                                (let ()
                                  (declare (not safe))
                                  (cons _e90169_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94807)))))
            (if (macro-cfun-conversion-exception? _exn90167_)
                (macro-cfun-conversion-exception-message _exn90167_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94806
                              (let ()
                                (declare (not safe))
                                (cons _exn90167_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94806)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90161_))
            (let ((_e90164_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90161_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90164_)
                  (macro-cfun-conversion-exception-procedure _e90164_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94809
                                (let ()
                                  (declare (not safe))
                                  (cons _e90164_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94809)))))
            (if (macro-cfun-conversion-exception? _exn90161_)
                (macro-cfun-conversion-exception-procedure _exn90161_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94808
                              (let ()
                                (declare (not safe))
                                (cons _exn90161_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94808)))))))
    (define datum-parsing-exception?
      (lambda (_exn90157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90157_))
            (let ((_e90159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90157_ 'exception))))
              (macro-datum-parsing-exception? _e90159_))
            (macro-datum-parsing-exception? _exn90157_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90153_))
            (let ((_e90155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90153_ 'exception))))
              (if (macro-datum-parsing-exception? _e90155_)
                  (macro-datum-parsing-exception-kind _e90155_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94811
                                (let ()
                                  (declare (not safe))
                                  (cons _e90155_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94811)))))
            (if (macro-datum-parsing-exception? _exn90153_)
                (macro-datum-parsing-exception-kind _exn90153_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94810
                              (let ()
                                (declare (not safe))
                                (cons _exn90153_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94810)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (if (macro-datum-parsing-exception? _e90151_)
                  (macro-datum-parsing-exception-parameters _e90151_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94813
                                (let ()
                                  (declare (not safe))
                                  (cons _e90151_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94813)))))
            (if (macro-datum-parsing-exception? _exn90149_)
                (macro-datum-parsing-exception-parameters _exn90149_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94812
                              (let ()
                                (declare (not safe))
                                (cons _exn90149_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94812)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90143_))
            (let ((_e90146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90143_ 'exception))))
              (if (macro-datum-parsing-exception? _e90146_)
                  (macro-datum-parsing-exception-readenv _e90146_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94815
                                (let ()
                                  (declare (not safe))
                                  (cons _e90146_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94815)))))
            (if (macro-datum-parsing-exception? _exn90143_)
                (macro-datum-parsing-exception-readenv _exn90143_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94814
                              (let ()
                                (declare (not safe))
                                (cons _exn90143_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp94814)))))))
    (define deadlock-exception?
      (lambda (_exn90137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90137_))
            (let ((_e90140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90137_ 'exception))))
              (macro-deadlock-exception? _e90140_))
            (macro-deadlock-exception? _exn90137_))))
    (define divide-by-zero-exception?
      (lambda (_exn90133_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90133_))
            (let ((_e90135_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90133_ 'exception))))
              (macro-divide-by-zero-exception? _e90135_))
            (macro-divide-by-zero-exception? _exn90133_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90129_))
            (let ((_e90131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90129_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90131_)
                  (macro-divide-by-zero-exception-arguments _e90131_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94817
                                (let ()
                                  (declare (not safe))
                                  (cons _e90131_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94817)))))
            (if (macro-divide-by-zero-exception? _exn90129_)
                (macro-divide-by-zero-exception-arguments _exn90129_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94816
                              (let ()
                                (declare (not safe))
                                (cons _exn90129_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94816)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90123_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90123_))
            (let ((_e90126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90123_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90126_)
                  (macro-divide-by-zero-exception-procedure _e90126_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94819
                                (let ()
                                  (declare (not safe))
                                  (cons _e90126_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94819)))))
            (if (macro-divide-by-zero-exception? _exn90123_)
                (macro-divide-by-zero-exception-procedure _exn90123_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94818
                              (let ()
                                (declare (not safe))
                                (cons _exn90123_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94818)))))))
    (define error-exception?
      (lambda (_exn90119_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90119_))
            (let ((_e90121_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90119_ 'exception))))
              (macro-error-exception? _e90121_))
            (macro-error-exception? _exn90119_))))
    (define error-exception-message
      (lambda (_exn90115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90115_))
            (let ((_e90117_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90115_ 'exception))))
              (if (macro-error-exception? _e90117_)
                  (macro-error-exception-message _e90117_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94821
                                (let ()
                                  (declare (not safe))
                                  (cons _e90117_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94821)))))
            (if (macro-error-exception? _exn90115_)
                (macro-error-exception-message _exn90115_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94820
                              (let ()
                                (declare (not safe))
                                (cons _exn90115_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94820)))))))
    (define error-exception-parameters
      (lambda (_exn90109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90109_))
            (let ((_e90112_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90109_ 'exception))))
              (if (macro-error-exception? _e90112_)
                  (macro-error-exception-parameters _e90112_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94823
                                (let ()
                                  (declare (not safe))
                                  (cons _e90112_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94823)))))
            (if (macro-error-exception? _exn90109_)
                (macro-error-exception-parameters _exn90109_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94822
                              (let ()
                                (declare (not safe))
                                (cons _exn90109_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94822)))))))
    (define expression-parsing-exception?
      (lambda (_exn90105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90105_))
            (let ((_e90107_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90105_ 'exception))))
              (macro-expression-parsing-exception? _e90107_))
            (macro-expression-parsing-exception? _exn90105_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90101_))
            (let ((_e90103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90101_ 'exception))))
              (if (macro-expression-parsing-exception? _e90103_)
                  (macro-expression-parsing-exception-kind _e90103_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94825
                                (let ()
                                  (declare (not safe))
                                  (cons _e90103_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94825)))))
            (if (macro-expression-parsing-exception? _exn90101_)
                (macro-expression-parsing-exception-kind _exn90101_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94824
                              (let ()
                                (declare (not safe))
                                (cons _exn90101_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94824)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90097_))
            (let ((_e90099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90097_ 'exception))))
              (if (macro-expression-parsing-exception? _e90099_)
                  (macro-expression-parsing-exception-parameters _e90099_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94827
                                (let ()
                                  (declare (not safe))
                                  (cons _e90099_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp94827)))))
            (if (macro-expression-parsing-exception? _exn90097_)
                (macro-expression-parsing-exception-parameters _exn90097_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94826
                              (let ()
                                (declare (not safe))
                                (cons _exn90097_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94826)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90091_))
            (let ((_e90094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90091_ 'exception))))
              (if (macro-expression-parsing-exception? _e90094_)
                  (macro-expression-parsing-exception-source _e90094_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94829
                                (let ()
                                  (declare (not safe))
                                  (cons _e90094_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp94829)))))
            (if (macro-expression-parsing-exception? _exn90091_)
                (macro-expression-parsing-exception-source _exn90091_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94828
                              (let ()
                                (declare (not safe))
                                (cons _exn90091_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp94828)))))))
    (define file-exists-exception?
      (lambda (_exn90087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90087_))
            (let ((_e90089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90087_ 'exception))))
              (macro-file-exists-exception? _e90089_))
            (macro-file-exists-exception? _exn90087_))))
    (define file-exists-exception-arguments
      (lambda (_exn90083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90083_))
            (let ((_e90085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90083_ 'exception))))
              (if (macro-file-exists-exception? _e90085_)
                  (macro-file-exists-exception-arguments _e90085_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94831
                                (let ()
                                  (declare (not safe))
                                  (cons _e90085_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp94831)))))
            (if (macro-file-exists-exception? _exn90083_)
                (macro-file-exists-exception-arguments _exn90083_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94830
                              (let ()
                                (declare (not safe))
                                (cons _exn90083_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp94830)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90077_))
            (let ((_e90080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90077_ 'exception))))
              (if (macro-file-exists-exception? _e90080_)
                  (macro-file-exists-exception-procedure _e90080_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94833
                                (let ()
                                  (declare (not safe))
                                  (cons _e90080_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp94833)))))
            (if (macro-file-exists-exception? _exn90077_)
                (macro-file-exists-exception-procedure _exn90077_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94832
                              (let ()
                                (declare (not safe))
                                (cons _exn90077_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp94832)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90073_))
            (let ((_e90075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90073_ 'exception))))
              (macro-fixnum-overflow-exception? _e90075_))
            (macro-fixnum-overflow-exception? _exn90073_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90069_))
            (let ((_e90071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90069_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90071_)
                  (macro-fixnum-overflow-exception-arguments _e90071_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94835
                                (let ()
                                  (declare (not safe))
                                  (cons _e90071_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp94835)))))
            (if (macro-fixnum-overflow-exception? _exn90069_)
                (macro-fixnum-overflow-exception-arguments _exn90069_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94834
                              (let ()
                                (declare (not safe))
                                (cons _exn90069_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp94834)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90063_))
            (let ((_e90066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90063_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90066_)
                  (macro-fixnum-overflow-exception-procedure _e90066_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94837
                                (let ()
                                  (declare (not safe))
                                  (cons _e90066_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp94837)))))
            (if (macro-fixnum-overflow-exception? _exn90063_)
                (macro-fixnum-overflow-exception-procedure _exn90063_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94836
                              (let ()
                                (declare (not safe))
                                (cons _exn90063_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp94836)))))))
    (define heap-overflow-exception?
      (lambda (_exn90057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90057_))
            (let ((_e90060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90057_ 'exception))))
              (macro-heap-overflow-exception? _e90060_))
            (macro-heap-overflow-exception? _exn90057_))))
    (define inactive-thread-exception?
      (lambda (_exn90053_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90053_))
            (let ((_e90055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90053_ 'exception))))
              (macro-inactive-thread-exception? _e90055_))
            (macro-inactive-thread-exception? _exn90053_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90049_))
            (let ((_e90051_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90049_ 'exception))))
              (if (macro-inactive-thread-exception? _e90051_)
                  (macro-inactive-thread-exception-arguments _e90051_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94839
                                (let ()
                                  (declare (not safe))
                                  (cons _e90051_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp94839)))))
            (if (macro-inactive-thread-exception? _exn90049_)
                (macro-inactive-thread-exception-arguments _exn90049_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94838
                              (let ()
                                (declare (not safe))
                                (cons _exn90049_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp94838)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90043_))
            (let ((_e90046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90043_ 'exception))))
              (if (macro-inactive-thread-exception? _e90046_)
                  (macro-inactive-thread-exception-procedure _e90046_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94841
                                (let ()
                                  (declare (not safe))
                                  (cons _e90046_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp94841)))))
            (if (macro-inactive-thread-exception? _exn90043_)
                (macro-inactive-thread-exception-procedure _exn90043_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94840
                              (let ()
                                (declare (not safe))
                                (cons _exn90043_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp94840)))))))
    (define initialized-thread-exception?
      (lambda (_exn90039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90039_))
            (let ((_e90041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90039_ 'exception))))
              (macro-initialized-thread-exception? _e90041_))
            (macro-initialized-thread-exception? _exn90039_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90035_))
            (let ((_e90037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90035_ 'exception))))
              (if (macro-initialized-thread-exception? _e90037_)
                  (macro-initialized-thread-exception-arguments _e90037_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94843
                                (let ()
                                  (declare (not safe))
                                  (cons _e90037_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp94843)))))
            (if (macro-initialized-thread-exception? _exn90035_)
                (macro-initialized-thread-exception-arguments _exn90035_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94842
                              (let ()
                                (declare (not safe))
                                (cons _exn90035_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp94842)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90029_))
            (let ((_e90032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90029_ 'exception))))
              (if (macro-initialized-thread-exception? _e90032_)
                  (macro-initialized-thread-exception-procedure _e90032_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94845
                                (let ()
                                  (declare (not safe))
                                  (cons _e90032_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp94845)))))
            (if (macro-initialized-thread-exception? _exn90029_)
                (macro-initialized-thread-exception-procedure _exn90029_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94844
                              (let ()
                                (declare (not safe))
                                (cons _exn90029_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp94844)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90025_))
            (let ((_e90027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90025_ 'exception))))
              (macro-invalid-hash-number-exception? _e90027_))
            (macro-invalid-hash-number-exception? _exn90025_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90021_))
            (let ((_e90023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90021_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90023_)
                  (macro-invalid-hash-number-exception-arguments _e90023_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94847
                                (let ()
                                  (declare (not safe))
                                  (cons _e90023_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp94847)))))
            (if (macro-invalid-hash-number-exception? _exn90021_)
                (macro-invalid-hash-number-exception-arguments _exn90021_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94846
                              (let ()
                                (declare (not safe))
                                (cons _exn90021_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp94846)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90015_))
            (let ((_e90018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90015_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90018_)
                  (macro-invalid-hash-number-exception-procedure _e90018_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94849
                                (let ()
                                  (declare (not safe))
                                  (cons _e90018_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp94849)))))
            (if (macro-invalid-hash-number-exception? _exn90015_)
                (macro-invalid-hash-number-exception-procedure _exn90015_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94848
                              (let ()
                                (declare (not safe))
                                (cons _exn90015_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp94848)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90011_))
            (let ((_e90013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90011_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90013_))
            (macro-invalid-utf8-encoding-exception? _exn90011_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90007_))
            (let ((_e90009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90007_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90009_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90009_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94851
                                (let ()
                                  (declare (not safe))
                                  (cons _e90009_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp94851)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90007_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90007_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94850
                              (let ()
                                (declare (not safe))
                                (cons _exn90007_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp94850)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90001_))
            (let ((_e90004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90001_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90004_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90004_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94853
                                (let ()
                                  (declare (not safe))
                                  (cons _e90004_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp94853)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90001_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90001_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94852
                              (let ()
                                (declare (not safe))
                                (cons _exn90001_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp94852)))))))
    (define join-timeout-exception?
      (lambda (_exn89997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89997_))
            (let ((_e89999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89997_ 'exception))))
              (macro-join-timeout-exception? _e89999_))
            (macro-join-timeout-exception? _exn89997_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89993_))
            (let ((_e89995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89993_ 'exception))))
              (if (macro-join-timeout-exception? _e89995_)
                  (macro-join-timeout-exception-arguments _e89995_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94855
                                (let ()
                                  (declare (not safe))
                                  (cons _e89995_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp94855)))))
            (if (macro-join-timeout-exception? _exn89993_)
                (macro-join-timeout-exception-arguments _exn89993_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94854
                              (let ()
                                (declare (not safe))
                                (cons _exn89993_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp94854)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89987_))
            (let ((_e89990_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89987_ 'exception))))
              (if (macro-join-timeout-exception? _e89990_)
                  (macro-join-timeout-exception-procedure _e89990_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94857
                                (let ()
                                  (declare (not safe))
                                  (cons _e89990_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp94857)))))
            (if (macro-join-timeout-exception? _exn89987_)
                (macro-join-timeout-exception-procedure _exn89987_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94856
                              (let ()
                                (declare (not safe))
                                (cons _exn89987_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp94856)))))))
    (define keyword-expected-exception?
      (lambda (_exn89983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89983_))
            (let ((_e89985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89983_ 'exception))))
              (macro-keyword-expected-exception? _e89985_))
            (macro-keyword-expected-exception? _exn89983_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89979_))
            (let ((_e89981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89979_ 'exception))))
              (if (macro-keyword-expected-exception? _e89981_)
                  (macro-keyword-expected-exception-arguments _e89981_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94859
                                (let ()
                                  (declare (not safe))
                                  (cons _e89981_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp94859)))))
            (if (macro-keyword-expected-exception? _exn89979_)
                (macro-keyword-expected-exception-arguments _exn89979_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94858
                              (let ()
                                (declare (not safe))
                                (cons _exn89979_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp94858)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89973_))
            (let ((_e89976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89973_ 'exception))))
              (if (macro-keyword-expected-exception? _e89976_)
                  (macro-keyword-expected-exception-procedure _e89976_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94861
                                (let ()
                                  (declare (not safe))
                                  (cons _e89976_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp94861)))))
            (if (macro-keyword-expected-exception? _exn89973_)
                (macro-keyword-expected-exception-procedure _exn89973_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94860
                              (let ()
                                (declare (not safe))
                                (cons _exn89973_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp94860)))))))
    (define length-mismatch-exception?
      (lambda (_exn89969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89969_))
            (let ((_e89971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89969_ 'exception))))
              (macro-length-mismatch-exception? _e89971_))
            (macro-length-mismatch-exception? _exn89969_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89965_))
            (let ((_e89967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89965_ 'exception))))
              (if (macro-length-mismatch-exception? _e89967_)
                  (macro-length-mismatch-exception-arg-id _e89967_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94863
                                (let ()
                                  (declare (not safe))
                                  (cons _e89967_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp94863)))))
            (if (macro-length-mismatch-exception? _exn89965_)
                (macro-length-mismatch-exception-arg-id _exn89965_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94862
                              (let ()
                                (declare (not safe))
                                (cons _exn89965_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp94862)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89961_))
            (let ((_e89963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89961_ 'exception))))
              (if (macro-length-mismatch-exception? _e89963_)
                  (macro-length-mismatch-exception-arguments _e89963_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94865
                                (let ()
                                  (declare (not safe))
                                  (cons _e89963_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp94865)))))
            (if (macro-length-mismatch-exception? _exn89961_)
                (macro-length-mismatch-exception-arguments _exn89961_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94864
                              (let ()
                                (declare (not safe))
                                (cons _exn89961_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp94864)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89955_))
            (let ((_e89958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89955_ 'exception))))
              (if (macro-length-mismatch-exception? _e89958_)
                  (macro-length-mismatch-exception-procedure _e89958_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94867
                                (let ()
                                  (declare (not safe))
                                  (cons _e89958_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp94867)))))
            (if (macro-length-mismatch-exception? _exn89955_)
                (macro-length-mismatch-exception-procedure _exn89955_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94866
                              (let ()
                                (declare (not safe))
                                (cons _exn89955_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp94866)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89953_))
            (macro-mailbox-receive-timeout-exception? _exn89951_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89947_))
            (let ((_e89949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89947_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89949_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89949_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94869
                                (let ()
                                  (declare (not safe))
                                  (cons _e89949_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp94869)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89947_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89947_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94868
                              (let ()
                                (declare (not safe))
                                (cons _exn89947_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp94868)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89941_))
            (let ((_e89944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89941_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89944_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89944_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94871
                                (let ()
                                  (declare (not safe))
                                  (cons _e89944_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp94871)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89941_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89941_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94870
                              (let ()
                                (declare (not safe))
                                (cons _exn89941_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp94870)))))))
    (define module-not-found-exception?
      (lambda (_exn89937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89937_))
            (let ((_e89939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89937_ 'exception))))
              (macro-module-not-found-exception? _e89939_))
            (macro-module-not-found-exception? _exn89937_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89933_))
            (let ((_e89935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89933_ 'exception))))
              (if (macro-module-not-found-exception? _e89935_)
                  (macro-module-not-found-exception-arguments _e89935_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94873
                                (let ()
                                  (declare (not safe))
                                  (cons _e89935_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp94873)))))
            (if (macro-module-not-found-exception? _exn89933_)
                (macro-module-not-found-exception-arguments _exn89933_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94872
                              (let ()
                                (declare (not safe))
                                (cons _exn89933_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp94872)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89927_))
            (let ((_e89930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89927_ 'exception))))
              (if (macro-module-not-found-exception? _e89930_)
                  (macro-module-not-found-exception-procedure _e89930_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94875
                                (let ()
                                  (declare (not safe))
                                  (cons _e89930_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp94875)))))
            (if (macro-module-not-found-exception? _exn89927_)
                (macro-module-not-found-exception-procedure _exn89927_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94874
                              (let ()
                                (declare (not safe))
                                (cons _exn89927_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp94874)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89921_))
            (let ((_e89924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89921_ 'exception))))
              (macro-multiple-c-return-exception? _e89924_))
            (macro-multiple-c-return-exception? _exn89921_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89917_))
            (let ((_e89919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89917_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89919_))
            (macro-no-such-file-or-directory-exception? _exn89917_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89913_))
            (let ((_e89915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89913_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89915_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89915_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94877
                                (let ()
                                  (declare (not safe))
                                  (cons _e89915_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp94877)))))
            (if (macro-no-such-file-or-directory-exception? _exn89913_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89913_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94876
                              (let ()
                                (declare (not safe))
                                (cons _exn89913_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp94876)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89907_))
            (let ((_e89910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89907_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89910_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89910_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94879
                                (let ()
                                  (declare (not safe))
                                  (cons _e89910_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp94879)))))
            (if (macro-no-such-file-or-directory-exception? _exn89907_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89907_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94878
                              (let ()
                                (declare (not safe))
                                (cons _exn89907_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp94878)))))))
    (define noncontinuable-exception?
      (lambda (_exn89903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89903_))
            (let ((_e89905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89903_ 'exception))))
              (macro-noncontinuable-exception? _e89905_))
            (macro-noncontinuable-exception? _exn89903_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89897_))
            (let ((_e89900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89897_ 'exception))))
              (if (macro-noncontinuable-exception? _e89900_)
                  (macro-noncontinuable-exception-reason _e89900_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp94881
                                (let ()
                                  (declare (not safe))
                                  (cons _e89900_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp94881)))))
            (if (macro-noncontinuable-exception? _exn89897_)
                (macro-noncontinuable-exception-reason _exn89897_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp94880
                              (let ()
                                (declare (not safe))
                                (cons _exn89897_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp94880)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89893_))
            (let ((_e89895_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89893_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89895_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89893_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89889_))
            (let ((_e89891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89889_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89891_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89891_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94883
                                (let ()
                                  (declare (not safe))
                                  (cons _e89891_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp94883)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89889_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89889_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94882
                              (let ()
                                (declare (not safe))
                                (cons _exn89889_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp94882)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89883_))
            (let ((_e89886_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89883_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89886_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89886_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94885
                                (let ()
                                  (declare (not safe))
                                  (cons _e89886_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp94885)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89883_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89883_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94884
                              (let ()
                                (declare (not safe))
                                (cons _exn89883_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp94884)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89879_))
            (let ((_e89881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89879_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89881_))
            (macro-nonprocedure-operator-exception? _exn89879_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89875_))
            (let ((_e89877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89875_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89877_)
                  (macro-nonprocedure-operator-exception-arguments _e89877_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94887
                                (let ()
                                  (declare (not safe))
                                  (cons _e89877_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp94887)))))
            (if (macro-nonprocedure-operator-exception? _exn89875_)
                (macro-nonprocedure-operator-exception-arguments _exn89875_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94886
                              (let ()
                                (declare (not safe))
                                (cons _exn89875_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp94886)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89871_))
            (let ((_e89873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89871_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89873_)
                  (macro-nonprocedure-operator-exception-code _e89873_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94889
                                (let ()
                                  (declare (not safe))
                                  (cons _e89873_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp94889)))))
            (if (macro-nonprocedure-operator-exception? _exn89871_)
                (macro-nonprocedure-operator-exception-code _exn89871_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94888
                              (let ()
                                (declare (not safe))
                                (cons _exn89871_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp94888)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89867_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89867_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89869_)
                  (macro-nonprocedure-operator-exception-operator _e89869_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94891
                                (let ()
                                  (declare (not safe))
                                  (cons _e89869_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp94891)))))
            (if (macro-nonprocedure-operator-exception? _exn89867_)
                (macro-nonprocedure-operator-exception-operator _exn89867_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94890
                              (let ()
                                (declare (not safe))
                                (cons _exn89867_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp94890)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89861_))
            (let ((_e89864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89861_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89864_)
                  (macro-nonprocedure-operator-exception-rte _e89864_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94893
                                (let ()
                                  (declare (not safe))
                                  (cons _e89864_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp94893)))))
            (if (macro-nonprocedure-operator-exception? _exn89861_)
                (macro-nonprocedure-operator-exception-rte _exn89861_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94892
                              (let ()
                                (declare (not safe))
                                (cons _exn89861_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp94892)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89857_))
            (let ((_e89859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89857_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89859_))
            (macro-not-in-compilation-context-exception? _exn89857_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89853_))
            (let ((_e89855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89853_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89855_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89855_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94895
                                (let ()
                                  (declare (not safe))
                                  (cons _e89855_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp94895)))))
            (if (macro-not-in-compilation-context-exception? _exn89853_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89853_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94894
                              (let ()
                                (declare (not safe))
                                (cons _exn89853_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp94894)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89847_))
            (let ((_e89850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89847_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89850_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89850_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94897
                                (let ()
                                  (declare (not safe))
                                  (cons _e89850_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp94897)))))
            (if (macro-not-in-compilation-context-exception? _exn89847_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89847_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94896
                              (let ()
                                (declare (not safe))
                                (cons _exn89847_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp94896)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89843_))
            (let ((_e89845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89843_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89845_))
            (macro-number-of-arguments-limit-exception? _exn89843_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89839_))
            (let ((_e89841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89839_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89841_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89841_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94899
                                (let ()
                                  (declare (not safe))
                                  (cons _e89841_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp94899)))))
            (if (macro-number-of-arguments-limit-exception? _exn89839_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89839_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94898
                              (let ()
                                (declare (not safe))
                                (cons _exn89839_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp94898)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89833_))
            (let ((_e89836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89833_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89836_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89836_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94901
                                (let ()
                                  (declare (not safe))
                                  (cons _e89836_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp94901)))))
            (if (macro-number-of-arguments-limit-exception? _exn89833_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89833_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94900
                              (let ()
                                (declare (not safe))
                                (cons _exn89833_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp94900)))))))
    (define os-exception?
      (lambda (_exn89829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89829_))
            (let ((_e89831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89829_ 'exception))))
              (macro-os-exception? _e89831_))
            (macro-os-exception? _exn89829_))))
    (define os-exception-arguments
      (lambda (_exn89825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89825_))
            (let ((_e89827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89825_ 'exception))))
              (if (macro-os-exception? _e89827_)
                  (macro-os-exception-arguments _e89827_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94903
                                (let ()
                                  (declare (not safe))
                                  (cons _e89827_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp94903)))))
            (if (macro-os-exception? _exn89825_)
                (macro-os-exception-arguments _exn89825_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94902
                              (let ()
                                (declare (not safe))
                                (cons _exn89825_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp94902)))))))
    (define os-exception-code
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (if (macro-os-exception? _e89823_)
                  (macro-os-exception-code _e89823_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94905
                                (let ()
                                  (declare (not safe))
                                  (cons _e89823_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp94905)))))
            (if (macro-os-exception? _exn89821_)
                (macro-os-exception-code _exn89821_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94904
                              (let ()
                                (declare (not safe))
                                (cons _exn89821_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp94904)))))))
    (define os-exception-message
      (lambda (_exn89817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89817_))
            (let ((_e89819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89817_ 'exception))))
              (if (macro-os-exception? _e89819_)
                  (macro-os-exception-message _e89819_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94907
                                (let ()
                                  (declare (not safe))
                                  (cons _e89819_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp94907)))))
            (if (macro-os-exception? _exn89817_)
                (macro-os-exception-message _exn89817_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94906
                              (let ()
                                (declare (not safe))
                                (cons _exn89817_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp94906)))))))
    (define os-exception-procedure
      (lambda (_exn89811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89811_))
            (let ((_e89814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89811_ 'exception))))
              (if (macro-os-exception? _e89814_)
                  (macro-os-exception-procedure _e89814_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94909
                                (let ()
                                  (declare (not safe))
                                  (cons _e89814_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp94909)))))
            (if (macro-os-exception? _exn89811_)
                (macro-os-exception-procedure _exn89811_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94908
                              (let ()
                                (declare (not safe))
                                (cons _exn89811_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp94908)))))))
    (define permission-denied-exception?
      (lambda (_exn89807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89807_))
            (let ((_e89809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89807_ 'exception))))
              (macro-permission-denied-exception? _e89809_))
            (macro-permission-denied-exception? _exn89807_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89803_))
            (let ((_e89805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89803_ 'exception))))
              (if (macro-permission-denied-exception? _e89805_)
                  (macro-permission-denied-exception-arguments _e89805_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94911
                                (let ()
                                  (declare (not safe))
                                  (cons _e89805_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp94911)))))
            (if (macro-permission-denied-exception? _exn89803_)
                (macro-permission-denied-exception-arguments _exn89803_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94910
                              (let ()
                                (declare (not safe))
                                (cons _exn89803_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp94910)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89797_))
            (let ((_e89800_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89797_ 'exception))))
              (if (macro-permission-denied-exception? _e89800_)
                  (macro-permission-denied-exception-procedure _e89800_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94913
                                (let ()
                                  (declare (not safe))
                                  (cons _e89800_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp94913)))))
            (if (macro-permission-denied-exception? _exn89797_)
                (macro-permission-denied-exception-procedure _exn89797_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94912
                              (let ()
                                (declare (not safe))
                                (cons _exn89797_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp94912)))))))
    (define range-exception?
      (lambda (_exn89793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89793_))
            (let ((_e89795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89793_ 'exception))))
              (macro-range-exception? _e89795_))
            (macro-range-exception? _exn89793_))))
    (define range-exception-arg-id
      (lambda (_exn89789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89789_))
            (let ((_e89791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89789_ 'exception))))
              (if (macro-range-exception? _e89791_)
                  (macro-range-exception-arg-id _e89791_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94915
                                (let ()
                                  (declare (not safe))
                                  (cons _e89791_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp94915)))))
            (if (macro-range-exception? _exn89789_)
                (macro-range-exception-arg-id _exn89789_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94914
                              (let ()
                                (declare (not safe))
                                (cons _exn89789_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp94914)))))))
    (define range-exception-arguments
      (lambda (_exn89785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89785_))
            (let ((_e89787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89785_ 'exception))))
              (if (macro-range-exception? _e89787_)
                  (macro-range-exception-arguments _e89787_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94917
                                (let ()
                                  (declare (not safe))
                                  (cons _e89787_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp94917)))))
            (if (macro-range-exception? _exn89785_)
                (macro-range-exception-arguments _exn89785_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94916
                              (let ()
                                (declare (not safe))
                                (cons _exn89785_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp94916)))))))
    (define range-exception-procedure
      (lambda (_exn89779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89779_))
            (let ((_e89782_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89779_ 'exception))))
              (if (macro-range-exception? _e89782_)
                  (macro-range-exception-procedure _e89782_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94919
                                (let ()
                                  (declare (not safe))
                                  (cons _e89782_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp94919)))))
            (if (macro-range-exception? _exn89779_)
                (macro-range-exception-procedure _exn89779_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94918
                              (let ()
                                (declare (not safe))
                                (cons _exn89779_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp94918)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89775_))
            (let ((_e89777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89775_ 'exception))))
              (macro-rpc-remote-error-exception? _e89777_))
            (macro-rpc-remote-error-exception? _exn89775_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89771_))
            (let ((_e89773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89771_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89773_)
                  (macro-rpc-remote-error-exception-arguments _e89773_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94921
                                (let ()
                                  (declare (not safe))
                                  (cons _e89773_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp94921)))))
            (if (macro-rpc-remote-error-exception? _exn89771_)
                (macro-rpc-remote-error-exception-arguments _exn89771_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94920
                              (let ()
                                (declare (not safe))
                                (cons _exn89771_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp94920)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89767_))
            (let ((_e89769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89767_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89769_)
                  (macro-rpc-remote-error-exception-message _e89769_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94923
                                (let ()
                                  (declare (not safe))
                                  (cons _e89769_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp94923)))))
            (if (macro-rpc-remote-error-exception? _exn89767_)
                (macro-rpc-remote-error-exception-message _exn89767_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94922
                              (let ()
                                (declare (not safe))
                                (cons _exn89767_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp94922)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89761_))
            (let ((_e89764_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89761_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89764_)
                  (macro-rpc-remote-error-exception-procedure _e89764_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94925
                                (let ()
                                  (declare (not safe))
                                  (cons _e89764_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp94925)))))
            (if (macro-rpc-remote-error-exception? _exn89761_)
                (macro-rpc-remote-error-exception-procedure _exn89761_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94924
                              (let ()
                                (declare (not safe))
                                (cons _exn89761_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp94924)))))))
    (define scheduler-exception?
      (lambda (_exn89757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89757_))
            (let ((_e89759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89757_ 'exception))))
              (macro-scheduler-exception? _e89759_))
            (macro-scheduler-exception? _exn89757_))))
    (define scheduler-exception-reason
      (lambda (_exn89751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89751_))
            (let ((_e89754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89751_ 'exception))))
              (if (macro-scheduler-exception? _e89754_)
                  (macro-scheduler-exception-reason _e89754_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp94927
                                (let ()
                                  (declare (not safe))
                                  (cons _e89754_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp94927)))))
            (if (macro-scheduler-exception? _exn89751_)
                (macro-scheduler-exception-reason _exn89751_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp94926
                              (let ()
                                (declare (not safe))
                                (cons _exn89751_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp94926)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89747_))
            (let ((_e89749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89747_ 'exception))))
              (macro-sfun-conversion-exception? _e89749_))
            (macro-sfun-conversion-exception? _exn89747_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89743_))
            (let ((_e89745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89743_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89745_)
                  (macro-sfun-conversion-exception-arguments _e89745_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94929
                                (let ()
                                  (declare (not safe))
                                  (cons _e89745_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp94929)))))
            (if (macro-sfun-conversion-exception? _exn89743_)
                (macro-sfun-conversion-exception-arguments _exn89743_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94928
                              (let ()
                                (declare (not safe))
                                (cons _exn89743_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp94928)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89739_))
            (let ((_e89741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89739_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89741_)
                  (macro-sfun-conversion-exception-code _e89741_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94931
                                (let ()
                                  (declare (not safe))
                                  (cons _e89741_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp94931)))))
            (if (macro-sfun-conversion-exception? _exn89739_)
                (macro-sfun-conversion-exception-code _exn89739_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94930
                              (let ()
                                (declare (not safe))
                                (cons _exn89739_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp94930)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89735_))
            (let ((_e89737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89735_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89737_)
                  (macro-sfun-conversion-exception-message _e89737_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94933
                                (let ()
                                  (declare (not safe))
                                  (cons _e89737_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp94933)))))
            (if (macro-sfun-conversion-exception? _exn89735_)
                (macro-sfun-conversion-exception-message _exn89735_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94932
                              (let ()
                                (declare (not safe))
                                (cons _exn89735_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp94932)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89729_))
            (let ((_e89732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89729_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89732_)
                  (macro-sfun-conversion-exception-procedure _e89732_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94935
                                (let ()
                                  (declare (not safe))
                                  (cons _e89732_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp94935)))))
            (if (macro-sfun-conversion-exception? _exn89729_)
                (macro-sfun-conversion-exception-procedure _exn89729_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94934
                              (let ()
                                (declare (not safe))
                                (cons _exn89729_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp94934)))))))
    (define stack-overflow-exception?
      (lambda (_exn89723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89723_))
            (let ((_e89726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89723_ 'exception))))
              (macro-stack-overflow-exception? _e89726_))
            (macro-stack-overflow-exception? _exn89723_))))
    (define started-thread-exception?
      (lambda (_exn89719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89719_))
            (let ((_e89721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89719_ 'exception))))
              (macro-started-thread-exception? _e89721_))
            (macro-started-thread-exception? _exn89719_))))
    (define started-thread-exception-arguments
      (lambda (_exn89715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89715_))
            (let ((_e89717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89715_ 'exception))))
              (if (macro-started-thread-exception? _e89717_)
                  (macro-started-thread-exception-arguments _e89717_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp94937
                                (let ()
                                  (declare (not safe))
                                  (cons _e89717_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp94937)))))
            (if (macro-started-thread-exception? _exn89715_)
                (macro-started-thread-exception-arguments _exn89715_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp94936
                              (let ()
                                (declare (not safe))
                                (cons _exn89715_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp94936)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89709_))
            (let ((_e89712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89709_ 'exception))))
              (if (macro-started-thread-exception? _e89712_)
                  (macro-started-thread-exception-procedure _e89712_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp94939
                                (let ()
                                  (declare (not safe))
                                  (cons _e89712_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp94939)))))
            (if (macro-started-thread-exception? _exn89709_)
                (macro-started-thread-exception-procedure _exn89709_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp94938
                              (let ()
                                (declare (not safe))
                                (cons _exn89709_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp94938)))))))
    (define terminated-thread-exception?
      (lambda (_exn89705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89705_))
            (let ((_e89707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89705_ 'exception))))
              (macro-terminated-thread-exception? _e89707_))
            (macro-terminated-thread-exception? _exn89705_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89701_))
            (let ((_e89703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89701_ 'exception))))
              (if (macro-terminated-thread-exception? _e89703_)
                  (macro-terminated-thread-exception-arguments _e89703_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp94941
                                (let ()
                                  (declare (not safe))
                                  (cons _e89703_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp94941)))))
            (if (macro-terminated-thread-exception? _exn89701_)
                (macro-terminated-thread-exception-arguments _exn89701_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp94940
                              (let ()
                                (declare (not safe))
                                (cons _exn89701_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp94940)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89695_))
            (let ((_e89698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89695_ 'exception))))
              (if (macro-terminated-thread-exception? _e89698_)
                  (macro-terminated-thread-exception-procedure _e89698_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp94943
                                (let ()
                                  (declare (not safe))
                                  (cons _e89698_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp94943)))))
            (if (macro-terminated-thread-exception? _exn89695_)
                (macro-terminated-thread-exception-procedure _exn89695_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp94942
                              (let ()
                                (declare (not safe))
                                (cons _exn89695_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp94942)))))))
    (define type-exception?
      (lambda (_exn89691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89691_))
            (let ((_e89693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89691_ 'exception))))
              (macro-type-exception? _e89693_))
            (macro-type-exception? _exn89691_))))
    (define type-exception-arg-id
      (lambda (_exn89687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89687_))
            (let ((_e89689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89687_ 'exception))))
              (if (macro-type-exception? _e89689_)
                  (macro-type-exception-arg-id _e89689_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94945
                                (let ()
                                  (declare (not safe))
                                  (cons _e89689_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp94945)))))
            (if (macro-type-exception? _exn89687_)
                (macro-type-exception-arg-id _exn89687_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94944
                              (let ()
                                (declare (not safe))
                                (cons _exn89687_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp94944)))))))
    (define type-exception-arguments
      (lambda (_exn89683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89683_))
            (let ((_e89685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89683_ 'exception))))
              (if (macro-type-exception? _e89685_)
                  (macro-type-exception-arguments _e89685_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94947
                                (let ()
                                  (declare (not safe))
                                  (cons _e89685_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp94947)))))
            (if (macro-type-exception? _exn89683_)
                (macro-type-exception-arguments _exn89683_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94946
                              (let ()
                                (declare (not safe))
                                (cons _exn89683_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp94946)))))))
    (define type-exception-procedure
      (lambda (_exn89679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89679_))
            (let ((_e89681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89679_ 'exception))))
              (if (macro-type-exception? _e89681_)
                  (macro-type-exception-procedure _e89681_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94949
                                (let ()
                                  (declare (not safe))
                                  (cons _e89681_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp94949)))))
            (if (macro-type-exception? _exn89679_)
                (macro-type-exception-procedure _exn89679_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94948
                              (let ()
                                (declare (not safe))
                                (cons _exn89679_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp94948)))))))
    (define type-exception-type-id
      (lambda (_exn89673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89673_))
            (let ((_e89676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89673_ 'exception))))
              (if (macro-type-exception? _e89676_)
                  (macro-type-exception-type-id _e89676_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94951
                                (let ()
                                  (declare (not safe))
                                  (cons _e89676_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp94951)))))
            (if (macro-type-exception? _exn89673_)
                (macro-type-exception-type-id _exn89673_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94950
                              (let ()
                                (declare (not safe))
                                (cons _exn89673_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp94950)))))))
    (define unbound-global-exception?
      (lambda (_exn89669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89669_))
            (let ((_e89671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89669_ 'exception))))
              (macro-unbound-global-exception? _e89671_))
            (macro-unbound-global-exception? _exn89669_))))
    (define unbound-global-exception-code
      (lambda (_exn89665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89665_))
            (let ((_e89667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89665_ 'exception))))
              (if (macro-unbound-global-exception? _e89667_)
                  (macro-unbound-global-exception-code _e89667_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94953
                                (let ()
                                  (declare (not safe))
                                  (cons _e89667_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp94953)))))
            (if (macro-unbound-global-exception? _exn89665_)
                (macro-unbound-global-exception-code _exn89665_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94952
                              (let ()
                                (declare (not safe))
                                (cons _exn89665_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp94952)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89661_))
            (let ((_e89663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89661_ 'exception))))
              (if (macro-unbound-global-exception? _e89663_)
                  (macro-unbound-global-exception-rte _e89663_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94955
                                (let ()
                                  (declare (not safe))
                                  (cons _e89663_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp94955)))))
            (if (macro-unbound-global-exception? _exn89661_)
                (macro-unbound-global-exception-rte _exn89661_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94954
                              (let ()
                                (declare (not safe))
                                (cons _exn89661_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp94954)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89655_))
            (let ((_e89658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89655_ 'exception))))
              (if (macro-unbound-global-exception? _e89658_)
                  (macro-unbound-global-exception-variable _e89658_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94957
                                (let ()
                                  (declare (not safe))
                                  (cons _e89658_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp94957)))))
            (if (macro-unbound-global-exception? _exn89655_)
                (macro-unbound-global-exception-variable _exn89655_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94956
                              (let ()
                                (declare (not safe))
                                (cons _exn89655_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp94956)))))))
    (define unbound-key-exception?
      (lambda (_exn89651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89651_))
            (let ((_e89653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89651_ 'exception))))
              (macro-unbound-key-exception? _e89653_))
            (macro-unbound-key-exception? _exn89651_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89647_))
            (let ((_e89649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89647_ 'exception))))
              (if (macro-unbound-key-exception? _e89649_)
                  (macro-unbound-key-exception-arguments _e89649_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp94959
                                (let ()
                                  (declare (not safe))
                                  (cons _e89649_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp94959)))))
            (if (macro-unbound-key-exception? _exn89647_)
                (macro-unbound-key-exception-arguments _exn89647_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp94958
                              (let ()
                                (declare (not safe))
                                (cons _exn89647_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp94958)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89641_))
            (let ((_e89644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89641_ 'exception))))
              (if (macro-unbound-key-exception? _e89644_)
                  (macro-unbound-key-exception-procedure _e89644_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp94961
                                (let ()
                                  (declare (not safe))
                                  (cons _e89644_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp94961)))))
            (if (macro-unbound-key-exception? _exn89641_)
                (macro-unbound-key-exception-procedure _exn89641_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp94960
                              (let ()
                                (declare (not safe))
                                (cons _exn89641_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp94960)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89637_))
            (let ((_e89639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89637_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89639_))
            (macro-unbound-os-environment-variable-exception? _exn89637_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89633_))
            (let ((_e89635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89633_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89635_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89635_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp94963
                                (let ()
                                  (declare (not safe))
                                  (cons _e89635_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp94963)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89633_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89633_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp94962
                              (let ()
                                (declare (not safe))
                                (cons _exn89633_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp94962)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89627_))
            (let ((_e89630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89627_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89630_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89630_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp94965
                                (let ()
                                  (declare (not safe))
                                  (cons _e89630_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp94965)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89627_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89627_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp94964
                              (let ()
                                (declare (not safe))
                                (cons _exn89627_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp94964)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89623_))
            (let ((_e89625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89623_ 'exception))))
              (macro-unbound-serial-number-exception? _e89625_))
            (macro-unbound-serial-number-exception? _exn89623_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89619_))
            (let ((_e89621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89619_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89621_)
                  (macro-unbound-serial-number-exception-arguments _e89621_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp94967
                                (let ()
                                  (declare (not safe))
                                  (cons _e89621_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp94967)))))
            (if (macro-unbound-serial-number-exception? _exn89619_)
                (macro-unbound-serial-number-exception-arguments _exn89619_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp94966
                              (let ()
                                (declare (not safe))
                                (cons _exn89619_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp94966)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89613_))
            (let ((_e89616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89613_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89616_)
                  (macro-unbound-serial-number-exception-procedure _e89616_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp94969
                                (let ()
                                  (declare (not safe))
                                  (cons _e89616_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp94969)))))
            (if (macro-unbound-serial-number-exception? _exn89613_)
                (macro-unbound-serial-number-exception-procedure _exn89613_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp94968
                              (let ()
                                (declare (not safe))
                                (cons _exn89613_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp94968)))))))
    (define uncaught-exception?
      (lambda (_exn89609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89609_))
            (let ((_e89611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89609_ 'exception))))
              (macro-uncaught-exception? _e89611_))
            (macro-uncaught-exception? _exn89609_))))
    (define uncaught-exception-arguments
      (lambda (_exn89605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89605_))
            (let ((_e89607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89605_ 'exception))))
              (if (macro-uncaught-exception? _e89607_)
                  (macro-uncaught-exception-arguments _e89607_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94971
                                (let ()
                                  (declare (not safe))
                                  (cons _e89607_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp94971)))))
            (if (macro-uncaught-exception? _exn89605_)
                (macro-uncaught-exception-arguments _exn89605_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94970
                              (let ()
                                (declare (not safe))
                                (cons _exn89605_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp94970)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89601_))
            (let ((_e89603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89601_ 'exception))))
              (if (macro-uncaught-exception? _e89603_)
                  (macro-uncaught-exception-procedure _e89603_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94973
                                (let ()
                                  (declare (not safe))
                                  (cons _e89603_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp94973)))))
            (if (macro-uncaught-exception? _exn89601_)
                (macro-uncaught-exception-procedure _exn89601_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94972
                              (let ()
                                (declare (not safe))
                                (cons _exn89601_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp94972)))))))
    (define uncaught-exception-reason
      (lambda (_exn89595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89595_))
            (let ((_e89598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89595_ 'exception))))
              (if (macro-uncaught-exception? _e89598_)
                  (macro-uncaught-exception-reason _e89598_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94975
                                (let ()
                                  (declare (not safe))
                                  (cons _e89598_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp94975)))))
            (if (macro-uncaught-exception? _exn89595_)
                (macro-uncaught-exception-reason _exn89595_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94974
                              (let ()
                                (declare (not safe))
                                (cons _exn89595_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp94974)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89591_))
            (let ((_e89593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89591_ 'exception))))
              (macro-uninitialized-thread-exception? _e89593_))
            (macro-uninitialized-thread-exception? _exn89591_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89587_))
            (let ((_e89589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89587_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89589_)
                  (macro-uninitialized-thread-exception-arguments _e89589_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp94977
                                (let ()
                                  (declare (not safe))
                                  (cons _e89589_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp94977)))))
            (if (macro-uninitialized-thread-exception? _exn89587_)
                (macro-uninitialized-thread-exception-arguments _exn89587_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp94976
                              (let ()
                                (declare (not safe))
                                (cons _exn89587_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp94976)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89581_))
            (let ((_e89584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89581_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89584_)
                  (macro-uninitialized-thread-exception-procedure _e89584_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp94979
                                (let ()
                                  (declare (not safe))
                                  (cons _e89584_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp94979)))))
            (if (macro-uninitialized-thread-exception? _exn89581_)
                (macro-uninitialized-thread-exception-procedure _exn89581_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp94978
                              (let ()
                                (declare (not safe))
                                (cons _exn89581_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp94978)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89577_))
            (let ((_e89579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89577_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89579_))
            (macro-unknown-keyword-argument-exception? _exn89577_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89573_))
            (let ((_e89575_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89573_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89575_)
                  (macro-unknown-keyword-argument-exception-arguments _e89575_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp94981
                                (let ()
                                  (declare (not safe))
                                  (cons _e89575_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp94981)))))
            (if (macro-unknown-keyword-argument-exception? _exn89573_)
                (macro-unknown-keyword-argument-exception-arguments _exn89573_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp94980
                              (let ()
                                (declare (not safe))
                                (cons _exn89573_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp94980)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89567_))
            (let ((_e89570_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89567_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89570_)
                  (macro-unknown-keyword-argument-exception-procedure _e89570_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp94983
                                (let ()
                                  (declare (not safe))
                                  (cons _e89570_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp94983)))))
            (if (macro-unknown-keyword-argument-exception? _exn89567_)
                (macro-unknown-keyword-argument-exception-procedure _exn89567_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp94982
                              (let ()
                                (declare (not safe))
                                (cons _exn89567_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp94982)))))))
    (define unterminated-process-exception?
      (lambda (_exn89563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89563_))
            (let ((_e89565_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89563_ 'exception))))
              (macro-unterminated-process-exception? _e89565_))
            (macro-unterminated-process-exception? _exn89563_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89559_))
            (let ((_e89561_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89559_ 'exception))))
              (if (macro-unterminated-process-exception? _e89561_)
                  (macro-unterminated-process-exception-arguments _e89561_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp94985
                                (let ()
                                  (declare (not safe))
                                  (cons _e89561_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp94985)))))
            (if (macro-unterminated-process-exception? _exn89559_)
                (macro-unterminated-process-exception-arguments _exn89559_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp94984
                              (let ()
                                (declare (not safe))
                                (cons _exn89559_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp94984)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89553_))
            (let ((_e89556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89553_ 'exception))))
              (if (macro-unterminated-process-exception? _e89556_)
                  (macro-unterminated-process-exception-procedure _e89556_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp94987
                                (let ()
                                  (declare (not safe))
                                  (cons _e89556_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp94987)))))
            (if (macro-unterminated-process-exception? _exn89553_)
                (macro-unterminated-process-exception-procedure _exn89553_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp94986
                              (let ()
                                (declare (not safe))
                                (cons _exn89553_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp94986)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89549_))
            (let ((_e89551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89549_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89551_))
            (macro-wrong-number-of-arguments-exception? _exn89549_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89545_))
            (let ((_e89547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89545_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89547_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89547_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp94989
                                (let ()
                                  (declare (not safe))
                                  (cons _e89547_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp94989)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89545_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89545_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp94988
                              (let ()
                                (declare (not safe))
                                (cons _exn89545_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp94988)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89539_))
            (let ((_e89542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89539_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89542_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89542_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp94991
                                (let ()
                                  (declare (not safe))
                                  (cons _e89542_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp94991)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89539_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89539_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp94990
                              (let ()
                                (declare (not safe))
                                (cons _exn89539_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp94990)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89535_))
            (let ((_e89537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89535_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89537_))
            (macro-wrong-number-of-values-exception? _exn89535_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89531_))
            (let ((_e89533_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89531_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89533_)
                  (macro-wrong-number-of-values-exception-code _e89533_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94993
                                (let ()
                                  (declare (not safe))
                                  (cons _e89533_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp94993)))))
            (if (macro-wrong-number-of-values-exception? _exn89531_)
                (macro-wrong-number-of-values-exception-code _exn89531_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94992
                              (let ()
                                (declare (not safe))
                                (cons _exn89531_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp94992)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89527_))
            (let ((_e89529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89527_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89529_)
                  (macro-wrong-number-of-values-exception-rte _e89529_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94995
                                (let ()
                                  (declare (not safe))
                                  (cons _e89529_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp94995)))))
            (if (macro-wrong-number-of-values-exception? _exn89527_)
                (macro-wrong-number-of-values-exception-rte _exn89527_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94994
                              (let ()
                                (declare (not safe))
                                (cons _exn89527_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp94994)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89521_))
            (let ((_e89524_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89521_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89524_)
                  (macro-wrong-number-of-values-exception-vals _e89524_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94997
                                (let ()
                                  (declare (not safe))
                                  (cons _e89524_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp94997)))))
            (if (macro-wrong-number-of-values-exception? _exn89521_)
                (macro-wrong-number-of-values-exception-vals _exn89521_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94996
                              (let ()
                                (declare (not safe))
                                (cons _exn89521_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp94996)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89515_))
            (let ((_e89518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89515_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89518_))
            (macro-wrong-processor-c-return-exception? _exn89515_))))))
