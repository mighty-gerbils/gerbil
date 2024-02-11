(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707674929)
  (begin
    (define Exception::t
      (let ((__tmp95786 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95786
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91189_ (apply make-instance Exception::t _$args91189_)))
    (define StackTrace::t
      (let ((__tmp95787 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95787
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91186_ (apply make-instance StackTrace::t _$args91186_)))
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
      (let ((__tmp95788 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95788
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91183_ (apply make-instance Error::t _$args91183_)))
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
      (let ((__tmp95789 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95789
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91180_
        (apply make-instance RuntimeException::t _$args91180_)))
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
      (lambda (_exn91175_ _continue91176_)
        (let ((_exn91178_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91175_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91178_ _continue91176_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91171_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91171_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91171_ 'continuation))
                '#!void
                (let ((__tmp95790
                       (lambda (_cont91173_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91171_
                            'continuation
                            _cont91173_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95790)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91171_))))
    (define error
      (lambda (_message91168_ . _irritants91169_)
        (raise (let ((__obj95780
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95780
                  _message91168_
                  'irritants:
                  _irritants91169_)
                 __obj95780))))
    (define with-exception-handler
      (lambda (_handler91161_ _thunk91162_)
        (if (let () (declare (not safe)) (procedure? _handler91161_))
            '#!void
            (raise (let ((__obj95781
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95781
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91161_ '())))
                     __obj95781)))
        (if (let () (declare (not safe)) (procedure? _thunk91162_))
            '#!void
            (raise (let ((__obj95782
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95782
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91162_ '())))
                     __obj95782)))
        (let ((__tmp95791
               (lambda (_exn91164_)
                 (let ((_exn91166_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91164_))))
                   (_handler91161_ _exn91166_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95791 _thunk91162_))))
    (define with-catch
      (lambda (_handler91154_ _thunk91155_)
        (if (let () (declare (not safe)) (procedure? _handler91154_))
            '#!void
            (raise (let ((__obj95783
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95783
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91154_ '())))
                     __obj95783)))
        (if (let () (declare (not safe)) (procedure? _thunk91155_))
            '#!void
            (raise (let ((__obj95784
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95784
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91155_ '())))
                     __obj95784)))
        (let ((__tmp95792
               (lambda (_cont91157_)
                 (with-exception-handler
                  (lambda (_exn91159_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91157_
                       _handler91154_
                       _exn91159_)))
                  _thunk91155_))))
          (declare (not safe))
          (##continuation-capture __tmp95792))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91145_)
        (if (or (heap-overflow-exception? _exn91145_)
                (stack-overflow-exception? _exn91145_))
            _exn91145_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91145_))
                _exn91145_
                (if (macro-exception? _exn91145_)
                    (let ((_rte91150_
                           (let ((__obj95785
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95785
                                _exn91145_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95785)))
                      (let ((__tmp95793
                             (lambda (_cont91152_)
                               (let ((__tmp95794
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91152_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91150_
                                  'continuation
                                  __tmp95794)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95793))
                      _rte91150_)
                    _exn91145_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91140_)
        (let ((_$e91142_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91140_))))
          (if _$e91142_ _$e91142_ (error-exception? _obj91140_)))))
    (define error-message
      (lambda (_obj91138_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91138_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91138_ 'message))
            (if (error-exception? _obj91138_)
                (error-exception-message _obj91138_)
                '#f))))
    (define error-irritants
      (lambda (_obj91136_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91136_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91136_ 'irritants))
            (if (error-exception? _obj91136_)
                (error-exception-parameters _obj91136_)
                '#f))))
    (define error-trace
      (lambda (_obj91134_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91134_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91134_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91116_ _port91117_)
        (let ((_$e91119_
               (let ()
                 (declare (not safe))
                 (method-ref _e91116_ 'display-exception))))
          (if _$e91119_
              ((lambda (_f91122_) (_f91122_ _e91116_ _port91117_)) _$e91119_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91116_ _port91117_))))))
    (define display-exception__0
      (lambda (_e91127_)
        (let ((_port91129_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91127_ _port91129_))))
    (define display-exception
      (lambda _g95796_
        (let ((_g95795_ (let () (declare (not safe)) (##length _g95796_))))
          (cond ((let () (declare (not safe)) (##fx= _g95795_ 1))
                 (apply (lambda (_e91127_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91127_)))
                        _g95796_))
                ((let () (declare (not safe)) (##fx= _g95795_ 2))
                 (apply (lambda (_e91131_ _port91132_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91131_ _port91132_)))
                        _g95796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95796_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91105_ _message91106_ . _rest91107_)
        (let ((_message91113_
               (if (let () (declare (not safe)) (string? _message91106_))
                   _message91106_
                   (call-with-output-string
                    '""
                    (lambda (_g9110891110_)
                      (display _message91106_ _g9110891110_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91105_ 'message _message91113_))
          (apply class-instance-init! _self91105_ _rest91107_))))
    (define Error:::init!::specialize
      (lambda (__t95759)
        (let ((__message95760
               (let ((__tmp95761
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95759 'message))))
                 (if __tmp95761 __tmp95761 (error '"Unknown slot" 'message)))))
          (lambda (_self91105_ _message91106_ . _rest91107_)
            (let ((_message91113_
                   (if (let () (declare (not safe)) (string? _message91106_))
                       _message91106_
                       (call-with-output-string
                        '""
                        (lambda (_g9110891110_)
                          (display _message91106_ _g9110891110_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91105_
                 _message91113_
                 __message95760
                 __t95759
                 '#f))
              (apply class-instance-init! _self91105_ _rest91107_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90963_ _port90964_)
        (let ((_tmp-port90966_ (open-output-string))
              (_display-error-newline90967_
               (> (output-port-column _port90964_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90966_))
          (let ((__tmp95797
                 (lambda ()
                   (if _display-error-newline90967_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90970_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90963_ 'where))))
                     (if _$e90970_ (display _$e90970_) (display '"?")))
                   (let ((__tmp95798
                          (let ((__tmp95799
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90963_))))
                            (declare (not safe))
                            (##type-name __tmp95799))))
                     (declare (not safe))
                     (display* '" [" __tmp95798 '"]: "))
                   (let ((__tmp95800
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90963_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95800))
                   (let ((_irritants90973_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90963_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90973_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90975_)
                              (write _obj90975_)
                              (write-char '#\space))
                            _irritants90973_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90963_))
                            (dump-stack-trace?))
                       (let ((_cont9097690978_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90963_
                                 'continuation))))
                         (if _cont9097690978_
                             (let ((_cont90981_ _cont9097690978_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90981_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95797
             current-output-port
             _tmp-port90966_))
          (let ((__tmp95801 (get-output-string _tmp-port90966_)))
            (declare (not safe))
            (##write-string __tmp95801 _port90964_)))))
    (define Error::display-exception::specialize
      (lambda (__t95762)
        (let ((__where95763
               (let ((__tmp95767
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95762 'where))))
                 (if __tmp95767 __tmp95767 (error '"Unknown slot" 'where))))
              (__message95764
               (let ((__tmp95768
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95762 'message))))
                 (if __tmp95768 __tmp95768 (error '"Unknown slot" 'message))))
              (__irritants95765
               (let ((__tmp95769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95762 'irritants))))
                 (if __tmp95769
                     __tmp95769
                     (error '"Unknown slot" 'irritants))))
              (__continuation95766
               (let ((__tmp95770
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95762 'continuation))))
                 (if __tmp95770
                     __tmp95770
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90963_ _port90964_)
            (let ((_tmp-port90966_ (open-output-string))
                  (_display-error-newline90967_
                   (> (output-port-column _port90964_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90966_))
              (let ((__tmp95802
                     (lambda ()
                       (if _display-error-newline90967_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90970_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90963_
                                 __where95763
                                 __t95762
                                 '#f))))
                         (if _$e90970_ (display _$e90970_) (display '"?")))
                       (let ((__tmp95803
                              (let ((__tmp95804
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90963_))))
                                (declare (not safe))
                                (##type-name __tmp95804))))
                         (declare (not safe))
                         (display* '" [" __tmp95803 '"]: "))
                       (let ((__tmp95805
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90963_
                                 __message95764
                                 __t95762
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95805))
                       (let ((_irritants90973_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90963_
                                 __irritants95765
                                 __t95762
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90973_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90975_)
                                  (write _obj90975_)
                                  (write-char '#\space))
                                _irritants90973_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90963_))
                                (dump-stack-trace?))
                           (let ((_cont9097690978_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90963_
                                     __continuation95766
                                     __t95762
                                     '#f))))
                             (if _cont9097690978_
                                 (let ((_cont90981_ _cont9097690978_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90981_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95802
                 current-output-port
                 _tmp-port90966_))
              (let ((__tmp95806 (get-output-string _tmp-port90966_)))
                (declare (not safe))
                (##write-string __tmp95806 _port90964_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90830_ _port90831_)
        (let ((_tmp-port90833_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90833_))
          (let ((__tmp95807
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90830_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95807 _tmp-port90833_))
          (if (dump-stack-trace?)
              (let ((_cont9083490836_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90830_ 'continuation))))
                (if _cont9083490836_
                    (let ((_cont90839_ _cont9083490836_))
                      (display '"--- continuation backtrace:" _tmp-port90833_)
                      (newline _tmp-port90833_)
                      (display-continuation-backtrace
                       _cont90839_
                       _tmp-port90833_))
                    '#f))
              '#!void)
          (let ((__tmp95808 (get-output-string _tmp-port90833_)))
            (declare (not safe))
            (##write-string __tmp95808 _port90831_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95771)
        (let ((__continuation95772
               (let ((__tmp95774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95771 'continuation))))
                 (if __tmp95774
                     __tmp95774
                     (error '"Unknown slot" 'continuation))))
              (__exception95773
               (let ((__tmp95775
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95771 'exception))))
                 (if __tmp95775
                     __tmp95775
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self90830_ _port90831_)
            (let ((_tmp-port90833_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90833_))
              (let ((__tmp95809
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90830_
                        __exception95773
                        __t95771
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95809 _tmp-port90833_))
              (if (dump-stack-trace?)
                  (let ((_cont9083490836_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90830_
                            __continuation95772
                            __t95771
                            '#f))))
                    (if _cont9083490836_
                        (let ((_cont90839_ _cont9083490836_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90833_)
                          (newline _tmp-port90833_)
                          (display-continuation-backtrace
                           _cont90839_
                           _tmp-port90833_))
                        '#f))
                  '#!void)
              (let ((__tmp95810 (get-output-string _tmp-port90833_)))
                (declare (not safe))
                (##write-string __tmp95810 _port90831_)))))))
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
      (lambda (_port90702_)
        (if (macro-character-port? _port90702_)
            (let ((_old-width90704_
                   (macro-character-port-output-width _port90702_)))
              (macro-character-port-output-width-set!
               _port90702_
               (lambda (_port90706_) '256))
              _old-width90704_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90699_ _old-width90700_)
        (if (macro-character-port? _port90699_)
            (macro-character-port-output-width-set!
             _port90699_
             _old-width90700_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90697_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90697_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90691_))
            (let ((_e90694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90691_ 'exception))))
              (macro-abandoned-mutex-exception? _e90694_))
            (macro-abandoned-mutex-exception? _exn90691_))))
    (define cfun-conversion-exception?
      (lambda (_exn90687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90687_))
            (let ((_e90689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90687_ 'exception))))
              (macro-cfun-conversion-exception? _e90689_))
            (macro-cfun-conversion-exception? _exn90687_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90683_))
            (let ((_e90685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90683_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90685_)
                  (macro-cfun-conversion-exception-arguments _e90685_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95812
                                (let ()
                                  (declare (not safe))
                                  (cons _e90685_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95812)))))
            (if (macro-cfun-conversion-exception? _exn90683_)
                (macro-cfun-conversion-exception-arguments _exn90683_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95811
                              (let ()
                                (declare (not safe))
                                (cons _exn90683_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95811)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90679_))
            (let ((_e90681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90679_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90681_)
                  (macro-cfun-conversion-exception-code _e90681_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95814
                                (let ()
                                  (declare (not safe))
                                  (cons _e90681_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95814)))))
            (if (macro-cfun-conversion-exception? _exn90679_)
                (macro-cfun-conversion-exception-code _exn90679_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95813
                              (let ()
                                (declare (not safe))
                                (cons _exn90679_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95813)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90675_))
            (let ((_e90677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90675_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90677_)
                  (macro-cfun-conversion-exception-message _e90677_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95816
                                (let ()
                                  (declare (not safe))
                                  (cons _e90677_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95816)))))
            (if (macro-cfun-conversion-exception? _exn90675_)
                (macro-cfun-conversion-exception-message _exn90675_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95815
                              (let ()
                                (declare (not safe))
                                (cons _exn90675_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95815)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90669_))
            (let ((_e90672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90669_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90672_)
                  (macro-cfun-conversion-exception-procedure _e90672_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95818
                                (let ()
                                  (declare (not safe))
                                  (cons _e90672_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95818)))))
            (if (macro-cfun-conversion-exception? _exn90669_)
                (macro-cfun-conversion-exception-procedure _exn90669_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95817
                              (let ()
                                (declare (not safe))
                                (cons _exn90669_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95817)))))))
    (define datum-parsing-exception?
      (lambda (_exn90665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90665_))
            (let ((_e90667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90665_ 'exception))))
              (macro-datum-parsing-exception? _e90667_))
            (macro-datum-parsing-exception? _exn90665_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90661_))
            (let ((_e90663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90661_ 'exception))))
              (if (macro-datum-parsing-exception? _e90663_)
                  (macro-datum-parsing-exception-kind _e90663_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95820
                                (let ()
                                  (declare (not safe))
                                  (cons _e90663_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95820)))))
            (if (macro-datum-parsing-exception? _exn90661_)
                (macro-datum-parsing-exception-kind _exn90661_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95819
                              (let ()
                                (declare (not safe))
                                (cons _exn90661_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95819)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90657_))
            (let ((_e90659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90657_ 'exception))))
              (if (macro-datum-parsing-exception? _e90659_)
                  (macro-datum-parsing-exception-parameters _e90659_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95822
                                (let ()
                                  (declare (not safe))
                                  (cons _e90659_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95822)))))
            (if (macro-datum-parsing-exception? _exn90657_)
                (macro-datum-parsing-exception-parameters _exn90657_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95821
                              (let ()
                                (declare (not safe))
                                (cons _exn90657_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95821)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90651_))
            (let ((_e90654_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90651_ 'exception))))
              (if (macro-datum-parsing-exception? _e90654_)
                  (macro-datum-parsing-exception-readenv _e90654_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95824
                                (let ()
                                  (declare (not safe))
                                  (cons _e90654_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95824)))))
            (if (macro-datum-parsing-exception? _exn90651_)
                (macro-datum-parsing-exception-readenv _exn90651_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95823
                              (let ()
                                (declare (not safe))
                                (cons _exn90651_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95823)))))))
    (define deadlock-exception?
      (lambda (_exn90645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90645_))
            (let ((_e90648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90645_ 'exception))))
              (macro-deadlock-exception? _e90648_))
            (macro-deadlock-exception? _exn90645_))))
    (define divide-by-zero-exception?
      (lambda (_exn90641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90641_))
            (let ((_e90643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90641_ 'exception))))
              (macro-divide-by-zero-exception? _e90643_))
            (macro-divide-by-zero-exception? _exn90641_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90637_))
            (let ((_e90639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90637_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90639_)
                  (macro-divide-by-zero-exception-arguments _e90639_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95826
                                (let ()
                                  (declare (not safe))
                                  (cons _e90639_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95826)))))
            (if (macro-divide-by-zero-exception? _exn90637_)
                (macro-divide-by-zero-exception-arguments _exn90637_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95825
                              (let ()
                                (declare (not safe))
                                (cons _exn90637_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95825)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90631_))
            (let ((_e90634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90631_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90634_)
                  (macro-divide-by-zero-exception-procedure _e90634_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95828
                                (let ()
                                  (declare (not safe))
                                  (cons _e90634_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95828)))))
            (if (macro-divide-by-zero-exception? _exn90631_)
                (macro-divide-by-zero-exception-procedure _exn90631_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95827
                              (let ()
                                (declare (not safe))
                                (cons _exn90631_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95827)))))))
    (define error-exception?
      (lambda (_exn90627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90627_))
            (let ((_e90629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90627_ 'exception))))
              (macro-error-exception? _e90629_))
            (macro-error-exception? _exn90627_))))
    (define error-exception-message
      (lambda (_exn90623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90623_))
            (let ((_e90625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90623_ 'exception))))
              (if (macro-error-exception? _e90625_)
                  (macro-error-exception-message _e90625_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95830
                                (let ()
                                  (declare (not safe))
                                  (cons _e90625_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95830)))))
            (if (macro-error-exception? _exn90623_)
                (macro-error-exception-message _exn90623_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95829
                              (let ()
                                (declare (not safe))
                                (cons _exn90623_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95829)))))))
    (define error-exception-parameters
      (lambda (_exn90617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90617_))
            (let ((_e90620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90617_ 'exception))))
              (if (macro-error-exception? _e90620_)
                  (macro-error-exception-parameters _e90620_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95832
                                (let ()
                                  (declare (not safe))
                                  (cons _e90620_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95832)))))
            (if (macro-error-exception? _exn90617_)
                (macro-error-exception-parameters _exn90617_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95831
                              (let ()
                                (declare (not safe))
                                (cons _exn90617_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95831)))))))
    (define expression-parsing-exception?
      (lambda (_exn90613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90613_))
            (let ((_e90615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90613_ 'exception))))
              (macro-expression-parsing-exception? _e90615_))
            (macro-expression-parsing-exception? _exn90613_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90609_))
            (let ((_e90611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90609_ 'exception))))
              (if (macro-expression-parsing-exception? _e90611_)
                  (macro-expression-parsing-exception-kind _e90611_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95834
                                (let ()
                                  (declare (not safe))
                                  (cons _e90611_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95834)))))
            (if (macro-expression-parsing-exception? _exn90609_)
                (macro-expression-parsing-exception-kind _exn90609_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95833
                              (let ()
                                (declare (not safe))
                                (cons _exn90609_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95833)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90605_))
            (let ((_e90607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90605_ 'exception))))
              (if (macro-expression-parsing-exception? _e90607_)
                  (macro-expression-parsing-exception-parameters _e90607_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95836
                                (let ()
                                  (declare (not safe))
                                  (cons _e90607_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95836)))))
            (if (macro-expression-parsing-exception? _exn90605_)
                (macro-expression-parsing-exception-parameters _exn90605_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95835
                              (let ()
                                (declare (not safe))
                                (cons _exn90605_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95835)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90599_))
            (let ((_e90602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90599_ 'exception))))
              (if (macro-expression-parsing-exception? _e90602_)
                  (macro-expression-parsing-exception-source _e90602_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95838
                                (let ()
                                  (declare (not safe))
                                  (cons _e90602_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95838)))))
            (if (macro-expression-parsing-exception? _exn90599_)
                (macro-expression-parsing-exception-source _exn90599_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95837
                              (let ()
                                (declare (not safe))
                                (cons _exn90599_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95837)))))))
    (define file-exists-exception?
      (lambda (_exn90595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90595_))
            (let ((_e90597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90595_ 'exception))))
              (macro-file-exists-exception? _e90597_))
            (macro-file-exists-exception? _exn90595_))))
    (define file-exists-exception-arguments
      (lambda (_exn90591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90591_))
            (let ((_e90593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90591_ 'exception))))
              (if (macro-file-exists-exception? _e90593_)
                  (macro-file-exists-exception-arguments _e90593_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95840
                                (let ()
                                  (declare (not safe))
                                  (cons _e90593_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95840)))))
            (if (macro-file-exists-exception? _exn90591_)
                (macro-file-exists-exception-arguments _exn90591_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95839
                              (let ()
                                (declare (not safe))
                                (cons _exn90591_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95839)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90585_))
            (let ((_e90588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90585_ 'exception))))
              (if (macro-file-exists-exception? _e90588_)
                  (macro-file-exists-exception-procedure _e90588_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95842
                                (let ()
                                  (declare (not safe))
                                  (cons _e90588_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95842)))))
            (if (macro-file-exists-exception? _exn90585_)
                (macro-file-exists-exception-procedure _exn90585_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95841
                              (let ()
                                (declare (not safe))
                                (cons _exn90585_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95841)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90581_))
            (let ((_e90583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90581_ 'exception))))
              (macro-fixnum-overflow-exception? _e90583_))
            (macro-fixnum-overflow-exception? _exn90581_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90577_))
            (let ((_e90579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90577_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90579_)
                  (macro-fixnum-overflow-exception-arguments _e90579_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95844
                                (let ()
                                  (declare (not safe))
                                  (cons _e90579_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95844)))))
            (if (macro-fixnum-overflow-exception? _exn90577_)
                (macro-fixnum-overflow-exception-arguments _exn90577_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95843
                              (let ()
                                (declare (not safe))
                                (cons _exn90577_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95843)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90571_))
            (let ((_e90574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90571_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90574_)
                  (macro-fixnum-overflow-exception-procedure _e90574_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95846
                                (let ()
                                  (declare (not safe))
                                  (cons _e90574_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95846)))))
            (if (macro-fixnum-overflow-exception? _exn90571_)
                (macro-fixnum-overflow-exception-procedure _exn90571_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95845
                              (let ()
                                (declare (not safe))
                                (cons _exn90571_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95845)))))))
    (define heap-overflow-exception?
      (lambda (_exn90565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90565_))
            (let ((_e90568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90565_ 'exception))))
              (macro-heap-overflow-exception? _e90568_))
            (macro-heap-overflow-exception? _exn90565_))))
    (define inactive-thread-exception?
      (lambda (_exn90561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90561_))
            (let ((_e90563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90561_ 'exception))))
              (macro-inactive-thread-exception? _e90563_))
            (macro-inactive-thread-exception? _exn90561_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90557_))
            (let ((_e90559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90557_ 'exception))))
              (if (macro-inactive-thread-exception? _e90559_)
                  (macro-inactive-thread-exception-arguments _e90559_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95848
                                (let ()
                                  (declare (not safe))
                                  (cons _e90559_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95848)))))
            (if (macro-inactive-thread-exception? _exn90557_)
                (macro-inactive-thread-exception-arguments _exn90557_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95847
                              (let ()
                                (declare (not safe))
                                (cons _exn90557_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95847)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90551_))
            (let ((_e90554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90551_ 'exception))))
              (if (macro-inactive-thread-exception? _e90554_)
                  (macro-inactive-thread-exception-procedure _e90554_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95850
                                (let ()
                                  (declare (not safe))
                                  (cons _e90554_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95850)))))
            (if (macro-inactive-thread-exception? _exn90551_)
                (macro-inactive-thread-exception-procedure _exn90551_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95849
                              (let ()
                                (declare (not safe))
                                (cons _exn90551_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95849)))))))
    (define initialized-thread-exception?
      (lambda (_exn90547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90547_))
            (let ((_e90549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90547_ 'exception))))
              (macro-initialized-thread-exception? _e90549_))
            (macro-initialized-thread-exception? _exn90547_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90543_))
            (let ((_e90545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90543_ 'exception))))
              (if (macro-initialized-thread-exception? _e90545_)
                  (macro-initialized-thread-exception-arguments _e90545_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95852
                                (let ()
                                  (declare (not safe))
                                  (cons _e90545_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95852)))))
            (if (macro-initialized-thread-exception? _exn90543_)
                (macro-initialized-thread-exception-arguments _exn90543_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95851
                              (let ()
                                (declare (not safe))
                                (cons _exn90543_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95851)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90537_))
            (let ((_e90540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90537_ 'exception))))
              (if (macro-initialized-thread-exception? _e90540_)
                  (macro-initialized-thread-exception-procedure _e90540_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95854
                                (let ()
                                  (declare (not safe))
                                  (cons _e90540_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95854)))))
            (if (macro-initialized-thread-exception? _exn90537_)
                (macro-initialized-thread-exception-procedure _exn90537_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95853
                              (let ()
                                (declare (not safe))
                                (cons _exn90537_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95853)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90533_))
            (let ((_e90535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90533_ 'exception))))
              (macro-invalid-hash-number-exception? _e90535_))
            (macro-invalid-hash-number-exception? _exn90533_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90529_))
            (let ((_e90531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90529_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90531_)
                  (macro-invalid-hash-number-exception-arguments _e90531_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95856
                                (let ()
                                  (declare (not safe))
                                  (cons _e90531_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95856)))))
            (if (macro-invalid-hash-number-exception? _exn90529_)
                (macro-invalid-hash-number-exception-arguments _exn90529_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95855
                              (let ()
                                (declare (not safe))
                                (cons _exn90529_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95855)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90523_))
            (let ((_e90526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90523_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90526_)
                  (macro-invalid-hash-number-exception-procedure _e90526_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95858
                                (let ()
                                  (declare (not safe))
                                  (cons _e90526_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95858)))))
            (if (macro-invalid-hash-number-exception? _exn90523_)
                (macro-invalid-hash-number-exception-procedure _exn90523_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95857
                              (let ()
                                (declare (not safe))
                                (cons _exn90523_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95857)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90519_))
            (let ((_e90521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90519_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90521_))
            (macro-invalid-utf8-encoding-exception? _exn90519_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90515_))
            (let ((_e90517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90515_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90517_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90517_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95860
                                (let ()
                                  (declare (not safe))
                                  (cons _e90517_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95860)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90515_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90515_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95859
                              (let ()
                                (declare (not safe))
                                (cons _exn90515_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95859)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90509_))
            (let ((_e90512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90509_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90512_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90512_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95862
                                (let ()
                                  (declare (not safe))
                                  (cons _e90512_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95862)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90509_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90509_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95861
                              (let ()
                                (declare (not safe))
                                (cons _exn90509_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95861)))))))
    (define join-timeout-exception?
      (lambda (_exn90505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90505_))
            (let ((_e90507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90505_ 'exception))))
              (macro-join-timeout-exception? _e90507_))
            (macro-join-timeout-exception? _exn90505_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90501_))
            (let ((_e90503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90501_ 'exception))))
              (if (macro-join-timeout-exception? _e90503_)
                  (macro-join-timeout-exception-arguments _e90503_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95864
                                (let ()
                                  (declare (not safe))
                                  (cons _e90503_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95864)))))
            (if (macro-join-timeout-exception? _exn90501_)
                (macro-join-timeout-exception-arguments _exn90501_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95863
                              (let ()
                                (declare (not safe))
                                (cons _exn90501_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95863)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90495_))
            (let ((_e90498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90495_ 'exception))))
              (if (macro-join-timeout-exception? _e90498_)
                  (macro-join-timeout-exception-procedure _e90498_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95866
                                (let ()
                                  (declare (not safe))
                                  (cons _e90498_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95866)))))
            (if (macro-join-timeout-exception? _exn90495_)
                (macro-join-timeout-exception-procedure _exn90495_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95865
                              (let ()
                                (declare (not safe))
                                (cons _exn90495_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95865)))))))
    (define keyword-expected-exception?
      (lambda (_exn90491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90491_))
            (let ((_e90493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90491_ 'exception))))
              (macro-keyword-expected-exception? _e90493_))
            (macro-keyword-expected-exception? _exn90491_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90487_))
            (let ((_e90489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90487_ 'exception))))
              (if (macro-keyword-expected-exception? _e90489_)
                  (macro-keyword-expected-exception-arguments _e90489_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95868
                                (let ()
                                  (declare (not safe))
                                  (cons _e90489_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95868)))))
            (if (macro-keyword-expected-exception? _exn90487_)
                (macro-keyword-expected-exception-arguments _exn90487_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95867
                              (let ()
                                (declare (not safe))
                                (cons _exn90487_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95867)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90481_))
            (let ((_e90484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90481_ 'exception))))
              (if (macro-keyword-expected-exception? _e90484_)
                  (macro-keyword-expected-exception-procedure _e90484_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95870
                                (let ()
                                  (declare (not safe))
                                  (cons _e90484_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95870)))))
            (if (macro-keyword-expected-exception? _exn90481_)
                (macro-keyword-expected-exception-procedure _exn90481_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95869
                              (let ()
                                (declare (not safe))
                                (cons _exn90481_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95869)))))))
    (define length-mismatch-exception?
      (lambda (_exn90477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90477_))
            (let ((_e90479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90477_ 'exception))))
              (macro-length-mismatch-exception? _e90479_))
            (macro-length-mismatch-exception? _exn90477_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90473_))
            (let ((_e90475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90473_ 'exception))))
              (if (macro-length-mismatch-exception? _e90475_)
                  (macro-length-mismatch-exception-arg-id _e90475_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95872
                                (let ()
                                  (declare (not safe))
                                  (cons _e90475_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95872)))))
            (if (macro-length-mismatch-exception? _exn90473_)
                (macro-length-mismatch-exception-arg-id _exn90473_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95871
                              (let ()
                                (declare (not safe))
                                (cons _exn90473_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95871)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90469_))
            (let ((_e90471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90469_ 'exception))))
              (if (macro-length-mismatch-exception? _e90471_)
                  (macro-length-mismatch-exception-arguments _e90471_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95874
                                (let ()
                                  (declare (not safe))
                                  (cons _e90471_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95874)))))
            (if (macro-length-mismatch-exception? _exn90469_)
                (macro-length-mismatch-exception-arguments _exn90469_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95873
                              (let ()
                                (declare (not safe))
                                (cons _exn90469_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95873)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90463_))
            (let ((_e90466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90463_ 'exception))))
              (if (macro-length-mismatch-exception? _e90466_)
                  (macro-length-mismatch-exception-procedure _e90466_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95876
                                (let ()
                                  (declare (not safe))
                                  (cons _e90466_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95876)))))
            (if (macro-length-mismatch-exception? _exn90463_)
                (macro-length-mismatch-exception-procedure _exn90463_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95875
                              (let ()
                                (declare (not safe))
                                (cons _exn90463_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95875)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90459_))
            (let ((_e90461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90459_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90461_))
            (macro-mailbox-receive-timeout-exception? _exn90459_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90455_))
            (let ((_e90457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90455_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90457_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90457_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95878
                                (let ()
                                  (declare (not safe))
                                  (cons _e90457_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95878)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90455_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90455_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95877
                              (let ()
                                (declare (not safe))
                                (cons _exn90455_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95877)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90449_))
            (let ((_e90452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90449_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90452_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90452_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95880
                                (let ()
                                  (declare (not safe))
                                  (cons _e90452_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95880)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90449_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90449_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95879
                              (let ()
                                (declare (not safe))
                                (cons _exn90449_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95879)))))))
    (define module-not-found-exception?
      (lambda (_exn90445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90445_))
            (let ((_e90447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90445_ 'exception))))
              (macro-module-not-found-exception? _e90447_))
            (macro-module-not-found-exception? _exn90445_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90441_))
            (let ((_e90443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90441_ 'exception))))
              (if (macro-module-not-found-exception? _e90443_)
                  (macro-module-not-found-exception-arguments _e90443_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95882
                                (let ()
                                  (declare (not safe))
                                  (cons _e90443_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95882)))))
            (if (macro-module-not-found-exception? _exn90441_)
                (macro-module-not-found-exception-arguments _exn90441_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95881
                              (let ()
                                (declare (not safe))
                                (cons _exn90441_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95881)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90435_))
            (let ((_e90438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90435_ 'exception))))
              (if (macro-module-not-found-exception? _e90438_)
                  (macro-module-not-found-exception-procedure _e90438_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95884
                                (let ()
                                  (declare (not safe))
                                  (cons _e90438_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95884)))))
            (if (macro-module-not-found-exception? _exn90435_)
                (macro-module-not-found-exception-procedure _exn90435_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95883
                              (let ()
                                (declare (not safe))
                                (cons _exn90435_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95883)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90429_))
            (let ((_e90432_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90429_ 'exception))))
              (macro-multiple-c-return-exception? _e90432_))
            (macro-multiple-c-return-exception? _exn90429_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90425_))
            (let ((_e90427_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90425_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90427_))
            (macro-no-such-file-or-directory-exception? _exn90425_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90421_))
            (let ((_e90423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90421_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90423_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90423_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95886
                                (let ()
                                  (declare (not safe))
                                  (cons _e90423_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95886)))))
            (if (macro-no-such-file-or-directory-exception? _exn90421_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90421_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95885
                              (let ()
                                (declare (not safe))
                                (cons _exn90421_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95885)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90415_))
            (let ((_e90418_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90415_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90418_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90418_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95888
                                (let ()
                                  (declare (not safe))
                                  (cons _e90418_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95888)))))
            (if (macro-no-such-file-or-directory-exception? _exn90415_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90415_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95887
                              (let ()
                                (declare (not safe))
                                (cons _exn90415_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95887)))))))
    (define noncontinuable-exception?
      (lambda (_exn90411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90411_))
            (let ((_e90413_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90411_ 'exception))))
              (macro-noncontinuable-exception? _e90413_))
            (macro-noncontinuable-exception? _exn90411_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90405_))
            (let ((_e90408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90405_ 'exception))))
              (if (macro-noncontinuable-exception? _e90408_)
                  (macro-noncontinuable-exception-reason _e90408_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95890
                                (let ()
                                  (declare (not safe))
                                  (cons _e90408_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95890)))))
            (if (macro-noncontinuable-exception? _exn90405_)
                (macro-noncontinuable-exception-reason _exn90405_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95889
                              (let ()
                                (declare (not safe))
                                (cons _exn90405_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95889)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90401_))
            (let ((_e90403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90401_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90403_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90401_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90397_))
            (let ((_e90399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90397_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90399_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90399_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95892
                                (let ()
                                  (declare (not safe))
                                  (cons _e90399_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95892)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90397_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90397_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95891
                              (let ()
                                (declare (not safe))
                                (cons _exn90397_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95891)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90391_))
            (let ((_e90394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90391_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90394_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90394_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95894
                                (let ()
                                  (declare (not safe))
                                  (cons _e90394_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95894)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90391_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90391_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95893
                              (let ()
                                (declare (not safe))
                                (cons _exn90391_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95893)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90387_))
            (let ((_e90389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90387_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90389_))
            (macro-nonprocedure-operator-exception? _exn90387_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90383_))
            (let ((_e90385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90383_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90385_)
                  (macro-nonprocedure-operator-exception-arguments _e90385_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95896
                                (let ()
                                  (declare (not safe))
                                  (cons _e90385_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95896)))))
            (if (macro-nonprocedure-operator-exception? _exn90383_)
                (macro-nonprocedure-operator-exception-arguments _exn90383_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95895
                              (let ()
                                (declare (not safe))
                                (cons _exn90383_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95895)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90379_))
            (let ((_e90381_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90379_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90381_)
                  (macro-nonprocedure-operator-exception-code _e90381_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95898
                                (let ()
                                  (declare (not safe))
                                  (cons _e90381_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95898)))))
            (if (macro-nonprocedure-operator-exception? _exn90379_)
                (macro-nonprocedure-operator-exception-code _exn90379_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95897
                              (let ()
                                (declare (not safe))
                                (cons _exn90379_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95897)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90375_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90375_))
            (let ((_e90377_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90375_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90377_)
                  (macro-nonprocedure-operator-exception-operator _e90377_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95900
                                (let ()
                                  (declare (not safe))
                                  (cons _e90377_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95900)))))
            (if (macro-nonprocedure-operator-exception? _exn90375_)
                (macro-nonprocedure-operator-exception-operator _exn90375_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95899
                              (let ()
                                (declare (not safe))
                                (cons _exn90375_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95899)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90369_))
            (let ((_e90372_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90369_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90372_)
                  (macro-nonprocedure-operator-exception-rte _e90372_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95902
                                (let ()
                                  (declare (not safe))
                                  (cons _e90372_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95902)))))
            (if (macro-nonprocedure-operator-exception? _exn90369_)
                (macro-nonprocedure-operator-exception-rte _exn90369_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95901
                              (let ()
                                (declare (not safe))
                                (cons _exn90369_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95901)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90365_))
            (let ((_e90367_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90365_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90367_))
            (macro-not-in-compilation-context-exception? _exn90365_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90361_))
            (let ((_e90363_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90361_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90363_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90363_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95904
                                (let ()
                                  (declare (not safe))
                                  (cons _e90363_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95904)))))
            (if (macro-not-in-compilation-context-exception? _exn90361_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90361_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95903
                              (let ()
                                (declare (not safe))
                                (cons _exn90361_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95903)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90355_))
            (let ((_e90358_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90355_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90358_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90358_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95906
                                (let ()
                                  (declare (not safe))
                                  (cons _e90358_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95906)))))
            (if (macro-not-in-compilation-context-exception? _exn90355_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90355_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95905
                              (let ()
                                (declare (not safe))
                                (cons _exn90355_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95905)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90351_))
            (let ((_e90353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90351_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90353_))
            (macro-number-of-arguments-limit-exception? _exn90351_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90347_))
            (let ((_e90349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90347_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90349_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90349_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95908
                                (let ()
                                  (declare (not safe))
                                  (cons _e90349_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95908)))))
            (if (macro-number-of-arguments-limit-exception? _exn90347_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90347_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95907
                              (let ()
                                (declare (not safe))
                                (cons _exn90347_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95907)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90341_))
            (let ((_e90344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90341_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90344_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90344_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95910
                                (let ()
                                  (declare (not safe))
                                  (cons _e90344_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95910)))))
            (if (macro-number-of-arguments-limit-exception? _exn90341_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90341_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95909
                              (let ()
                                (declare (not safe))
                                (cons _exn90341_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95909)))))))
    (define os-exception?
      (lambda (_exn90337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90337_))
            (let ((_e90339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90337_ 'exception))))
              (macro-os-exception? _e90339_))
            (macro-os-exception? _exn90337_))))
    (define os-exception-arguments
      (lambda (_exn90333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90333_))
            (let ((_e90335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90333_ 'exception))))
              (if (macro-os-exception? _e90335_)
                  (macro-os-exception-arguments _e90335_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95912
                                (let ()
                                  (declare (not safe))
                                  (cons _e90335_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95912)))))
            (if (macro-os-exception? _exn90333_)
                (macro-os-exception-arguments _exn90333_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95911
                              (let ()
                                (declare (not safe))
                                (cons _exn90333_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95911)))))))
    (define os-exception-code
      (lambda (_exn90329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90329_))
            (let ((_e90331_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90329_ 'exception))))
              (if (macro-os-exception? _e90331_)
                  (macro-os-exception-code _e90331_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95914
                                (let ()
                                  (declare (not safe))
                                  (cons _e90331_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95914)))))
            (if (macro-os-exception? _exn90329_)
                (macro-os-exception-code _exn90329_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95913
                              (let ()
                                (declare (not safe))
                                (cons _exn90329_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95913)))))))
    (define os-exception-message
      (lambda (_exn90325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90325_))
            (let ((_e90327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90325_ 'exception))))
              (if (macro-os-exception? _e90327_)
                  (macro-os-exception-message _e90327_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95916
                                (let ()
                                  (declare (not safe))
                                  (cons _e90327_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95916)))))
            (if (macro-os-exception? _exn90325_)
                (macro-os-exception-message _exn90325_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95915
                              (let ()
                                (declare (not safe))
                                (cons _exn90325_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95915)))))))
    (define os-exception-procedure
      (lambda (_exn90319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90319_))
            (let ((_e90322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90319_ 'exception))))
              (if (macro-os-exception? _e90322_)
                  (macro-os-exception-procedure _e90322_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95918
                                (let ()
                                  (declare (not safe))
                                  (cons _e90322_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95918)))))
            (if (macro-os-exception? _exn90319_)
                (macro-os-exception-procedure _exn90319_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95917
                              (let ()
                                (declare (not safe))
                                (cons _exn90319_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95917)))))))
    (define permission-denied-exception?
      (lambda (_exn90315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90315_))
            (let ((_e90317_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90315_ 'exception))))
              (macro-permission-denied-exception? _e90317_))
            (macro-permission-denied-exception? _exn90315_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90311_))
            (let ((_e90313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90311_ 'exception))))
              (if (macro-permission-denied-exception? _e90313_)
                  (macro-permission-denied-exception-arguments _e90313_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95920
                                (let ()
                                  (declare (not safe))
                                  (cons _e90313_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95920)))))
            (if (macro-permission-denied-exception? _exn90311_)
                (macro-permission-denied-exception-arguments _exn90311_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95919
                              (let ()
                                (declare (not safe))
                                (cons _exn90311_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95919)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90305_))
            (let ((_e90308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90305_ 'exception))))
              (if (macro-permission-denied-exception? _e90308_)
                  (macro-permission-denied-exception-procedure _e90308_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95922
                                (let ()
                                  (declare (not safe))
                                  (cons _e90308_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95922)))))
            (if (macro-permission-denied-exception? _exn90305_)
                (macro-permission-denied-exception-procedure _exn90305_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95921
                              (let ()
                                (declare (not safe))
                                (cons _exn90305_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95921)))))))
    (define range-exception?
      (lambda (_exn90301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90301_))
            (let ((_e90303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90301_ 'exception))))
              (macro-range-exception? _e90303_))
            (macro-range-exception? _exn90301_))))
    (define range-exception-arg-id
      (lambda (_exn90297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90297_))
            (let ((_e90299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90297_ 'exception))))
              (if (macro-range-exception? _e90299_)
                  (macro-range-exception-arg-id _e90299_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95924
                                (let ()
                                  (declare (not safe))
                                  (cons _e90299_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95924)))))
            (if (macro-range-exception? _exn90297_)
                (macro-range-exception-arg-id _exn90297_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95923
                              (let ()
                                (declare (not safe))
                                (cons _exn90297_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95923)))))))
    (define range-exception-arguments
      (lambda (_exn90293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90293_))
            (let ((_e90295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90293_ 'exception))))
              (if (macro-range-exception? _e90295_)
                  (macro-range-exception-arguments _e90295_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95926
                                (let ()
                                  (declare (not safe))
                                  (cons _e90295_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95926)))))
            (if (macro-range-exception? _exn90293_)
                (macro-range-exception-arguments _exn90293_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95925
                              (let ()
                                (declare (not safe))
                                (cons _exn90293_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95925)))))))
    (define range-exception-procedure
      (lambda (_exn90287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90287_))
            (let ((_e90290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90287_ 'exception))))
              (if (macro-range-exception? _e90290_)
                  (macro-range-exception-procedure _e90290_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95928
                                (let ()
                                  (declare (not safe))
                                  (cons _e90290_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95928)))))
            (if (macro-range-exception? _exn90287_)
                (macro-range-exception-procedure _exn90287_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95927
                              (let ()
                                (declare (not safe))
                                (cons _exn90287_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95927)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90283_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90283_))
            (let ((_e90285_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90283_ 'exception))))
              (macro-rpc-remote-error-exception? _e90285_))
            (macro-rpc-remote-error-exception? _exn90283_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90279_))
            (let ((_e90281_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90279_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90281_)
                  (macro-rpc-remote-error-exception-arguments _e90281_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95930
                                (let ()
                                  (declare (not safe))
                                  (cons _e90281_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95930)))))
            (if (macro-rpc-remote-error-exception? _exn90279_)
                (macro-rpc-remote-error-exception-arguments _exn90279_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95929
                              (let ()
                                (declare (not safe))
                                (cons _exn90279_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95929)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90275_))
            (let ((_e90277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90275_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90277_)
                  (macro-rpc-remote-error-exception-message _e90277_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95932
                                (let ()
                                  (declare (not safe))
                                  (cons _e90277_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95932)))))
            (if (macro-rpc-remote-error-exception? _exn90275_)
                (macro-rpc-remote-error-exception-message _exn90275_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95931
                              (let ()
                                (declare (not safe))
                                (cons _exn90275_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95931)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90269_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90269_))
            (let ((_e90272_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90269_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90272_)
                  (macro-rpc-remote-error-exception-procedure _e90272_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95934
                                (let ()
                                  (declare (not safe))
                                  (cons _e90272_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95934)))))
            (if (macro-rpc-remote-error-exception? _exn90269_)
                (macro-rpc-remote-error-exception-procedure _exn90269_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95933
                              (let ()
                                (declare (not safe))
                                (cons _exn90269_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95933)))))))
    (define scheduler-exception?
      (lambda (_exn90265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90265_))
            (let ((_e90267_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90265_ 'exception))))
              (macro-scheduler-exception? _e90267_))
            (macro-scheduler-exception? _exn90265_))))
    (define scheduler-exception-reason
      (lambda (_exn90259_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90259_))
            (let ((_e90262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90259_ 'exception))))
              (if (macro-scheduler-exception? _e90262_)
                  (macro-scheduler-exception-reason _e90262_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95936
                                (let ()
                                  (declare (not safe))
                                  (cons _e90262_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95936)))))
            (if (macro-scheduler-exception? _exn90259_)
                (macro-scheduler-exception-reason _exn90259_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95935
                              (let ()
                                (declare (not safe))
                                (cons _exn90259_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95935)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90255_))
            (let ((_e90257_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90255_ 'exception))))
              (macro-sfun-conversion-exception? _e90257_))
            (macro-sfun-conversion-exception? _exn90255_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90251_))
            (let ((_e90253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90251_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90253_)
                  (macro-sfun-conversion-exception-arguments _e90253_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95938
                                (let ()
                                  (declare (not safe))
                                  (cons _e90253_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95938)))))
            (if (macro-sfun-conversion-exception? _exn90251_)
                (macro-sfun-conversion-exception-arguments _exn90251_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95937
                              (let ()
                                (declare (not safe))
                                (cons _exn90251_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95937)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90247_))
            (let ((_e90249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90247_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90249_)
                  (macro-sfun-conversion-exception-code _e90249_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95940
                                (let ()
                                  (declare (not safe))
                                  (cons _e90249_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95940)))))
            (if (macro-sfun-conversion-exception? _exn90247_)
                (macro-sfun-conversion-exception-code _exn90247_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95939
                              (let ()
                                (declare (not safe))
                                (cons _exn90247_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95939)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90243_))
            (let ((_e90245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90243_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90245_)
                  (macro-sfun-conversion-exception-message _e90245_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95942
                                (let ()
                                  (declare (not safe))
                                  (cons _e90245_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95942)))))
            (if (macro-sfun-conversion-exception? _exn90243_)
                (macro-sfun-conversion-exception-message _exn90243_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95941
                              (let ()
                                (declare (not safe))
                                (cons _exn90243_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95941)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90237_))
            (let ((_e90240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90237_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90240_)
                  (macro-sfun-conversion-exception-procedure _e90240_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95944
                                (let ()
                                  (declare (not safe))
                                  (cons _e90240_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95944)))))
            (if (macro-sfun-conversion-exception? _exn90237_)
                (macro-sfun-conversion-exception-procedure _exn90237_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95943
                              (let ()
                                (declare (not safe))
                                (cons _exn90237_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95943)))))))
    (define stack-overflow-exception?
      (lambda (_exn90231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90231_))
            (let ((_e90234_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90231_ 'exception))))
              (macro-stack-overflow-exception? _e90234_))
            (macro-stack-overflow-exception? _exn90231_))))
    (define started-thread-exception?
      (lambda (_exn90227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90227_))
            (let ((_e90229_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90227_ 'exception))))
              (macro-started-thread-exception? _e90229_))
            (macro-started-thread-exception? _exn90227_))))
    (define started-thread-exception-arguments
      (lambda (_exn90223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90223_))
            (let ((_e90225_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90223_ 'exception))))
              (if (macro-started-thread-exception? _e90225_)
                  (macro-started-thread-exception-arguments _e90225_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95946
                                (let ()
                                  (declare (not safe))
                                  (cons _e90225_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95946)))))
            (if (macro-started-thread-exception? _exn90223_)
                (macro-started-thread-exception-arguments _exn90223_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95945
                              (let ()
                                (declare (not safe))
                                (cons _exn90223_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95945)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90217_))
            (let ((_e90220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90217_ 'exception))))
              (if (macro-started-thread-exception? _e90220_)
                  (macro-started-thread-exception-procedure _e90220_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95948
                                (let ()
                                  (declare (not safe))
                                  (cons _e90220_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95948)))))
            (if (macro-started-thread-exception? _exn90217_)
                (macro-started-thread-exception-procedure _exn90217_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95947
                              (let ()
                                (declare (not safe))
                                (cons _exn90217_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95947)))))))
    (define terminated-thread-exception?
      (lambda (_exn90213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90213_))
            (let ((_e90215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90213_ 'exception))))
              (macro-terminated-thread-exception? _e90215_))
            (macro-terminated-thread-exception? _exn90213_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90209_))
            (let ((_e90211_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90209_ 'exception))))
              (if (macro-terminated-thread-exception? _e90211_)
                  (macro-terminated-thread-exception-arguments _e90211_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95950
                                (let ()
                                  (declare (not safe))
                                  (cons _e90211_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95950)))))
            (if (macro-terminated-thread-exception? _exn90209_)
                (macro-terminated-thread-exception-arguments _exn90209_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95949
                              (let ()
                                (declare (not safe))
                                (cons _exn90209_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95949)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90203_))
            (let ((_e90206_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90203_ 'exception))))
              (if (macro-terminated-thread-exception? _e90206_)
                  (macro-terminated-thread-exception-procedure _e90206_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95952
                                (let ()
                                  (declare (not safe))
                                  (cons _e90206_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95952)))))
            (if (macro-terminated-thread-exception? _exn90203_)
                (macro-terminated-thread-exception-procedure _exn90203_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95951
                              (let ()
                                (declare (not safe))
                                (cons _exn90203_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95951)))))))
    (define type-exception?
      (lambda (_exn90199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90199_))
            (let ((_e90201_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90199_ 'exception))))
              (macro-type-exception? _e90201_))
            (macro-type-exception? _exn90199_))))
    (define type-exception-arg-id
      (lambda (_exn90195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90195_))
            (let ((_e90197_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90195_ 'exception))))
              (if (macro-type-exception? _e90197_)
                  (macro-type-exception-arg-id _e90197_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95954
                                (let ()
                                  (declare (not safe))
                                  (cons _e90197_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95954)))))
            (if (macro-type-exception? _exn90195_)
                (macro-type-exception-arg-id _exn90195_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95953
                              (let ()
                                (declare (not safe))
                                (cons _exn90195_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95953)))))))
    (define type-exception-arguments
      (lambda (_exn90191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90191_))
            (let ((_e90193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90191_ 'exception))))
              (if (macro-type-exception? _e90193_)
                  (macro-type-exception-arguments _e90193_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95956
                                (let ()
                                  (declare (not safe))
                                  (cons _e90193_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95956)))))
            (if (macro-type-exception? _exn90191_)
                (macro-type-exception-arguments _exn90191_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95955
                              (let ()
                                (declare (not safe))
                                (cons _exn90191_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95955)))))))
    (define type-exception-procedure
      (lambda (_exn90187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90187_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90187_ 'exception))))
              (if (macro-type-exception? _e90189_)
                  (macro-type-exception-procedure _e90189_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95958
                                (let ()
                                  (declare (not safe))
                                  (cons _e90189_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95958)))))
            (if (macro-type-exception? _exn90187_)
                (macro-type-exception-procedure _exn90187_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95957
                              (let ()
                                (declare (not safe))
                                (cons _exn90187_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95957)))))))
    (define type-exception-type-id
      (lambda (_exn90181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90181_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90181_ 'exception))))
              (if (macro-type-exception? _e90184_)
                  (macro-type-exception-type-id _e90184_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95960
                                (let ()
                                  (declare (not safe))
                                  (cons _e90184_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95960)))))
            (if (macro-type-exception? _exn90181_)
                (macro-type-exception-type-id _exn90181_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95959
                              (let ()
                                (declare (not safe))
                                (cons _exn90181_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95959)))))))
    (define unbound-global-exception?
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (macro-unbound-global-exception? _e90179_))
            (macro-unbound-global-exception? _exn90177_))))
    (define unbound-global-exception-code
      (lambda (_exn90173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90173_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90173_ 'exception))))
              (if (macro-unbound-global-exception? _e90175_)
                  (macro-unbound-global-exception-code _e90175_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95962
                                (let ()
                                  (declare (not safe))
                                  (cons _e90175_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95962)))))
            (if (macro-unbound-global-exception? _exn90173_)
                (macro-unbound-global-exception-code _exn90173_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95961
                              (let ()
                                (declare (not safe))
                                (cons _exn90173_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95961)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90169_))
            (let ((_e90171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90169_ 'exception))))
              (if (macro-unbound-global-exception? _e90171_)
                  (macro-unbound-global-exception-rte _e90171_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95964
                                (let ()
                                  (declare (not safe))
                                  (cons _e90171_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95964)))))
            (if (macro-unbound-global-exception? _exn90169_)
                (macro-unbound-global-exception-rte _exn90169_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95963
                              (let ()
                                (declare (not safe))
                                (cons _exn90169_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95963)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90163_))
            (let ((_e90166_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90163_ 'exception))))
              (if (macro-unbound-global-exception? _e90166_)
                  (macro-unbound-global-exception-variable _e90166_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95966
                                (let ()
                                  (declare (not safe))
                                  (cons _e90166_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95966)))))
            (if (macro-unbound-global-exception? _exn90163_)
                (macro-unbound-global-exception-variable _exn90163_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95965
                              (let ()
                                (declare (not safe))
                                (cons _exn90163_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95965)))))))
    (define unbound-key-exception?
      (lambda (_exn90159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90159_))
            (let ((_e90161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90159_ 'exception))))
              (macro-unbound-key-exception? _e90161_))
            (macro-unbound-key-exception? _exn90159_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90155_))
            (let ((_e90157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90155_ 'exception))))
              (if (macro-unbound-key-exception? _e90157_)
                  (macro-unbound-key-exception-arguments _e90157_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95968
                                (let ()
                                  (declare (not safe))
                                  (cons _e90157_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95968)))))
            (if (macro-unbound-key-exception? _exn90155_)
                (macro-unbound-key-exception-arguments _exn90155_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95967
                              (let ()
                                (declare (not safe))
                                (cons _exn90155_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95967)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (if (macro-unbound-key-exception? _e90152_)
                  (macro-unbound-key-exception-procedure _e90152_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95970
                                (let ()
                                  (declare (not safe))
                                  (cons _e90152_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95970)))))
            (if (macro-unbound-key-exception? _exn90149_)
                (macro-unbound-key-exception-procedure _exn90149_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95969
                              (let ()
                                (declare (not safe))
                                (cons _exn90149_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95969)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90145_))
            (let ((_e90147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90145_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90147_))
            (macro-unbound-os-environment-variable-exception? _exn90145_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90141_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90141_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90143_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90143_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95972
                                (let ()
                                  (declare (not safe))
                                  (cons _e90143_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95972)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90141_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90141_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95971
                              (let ()
                                (declare (not safe))
                                (cons _exn90141_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95971)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90138_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90138_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95974
                                (let ()
                                  (declare (not safe))
                                  (cons _e90138_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95974)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90135_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90135_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95973
                              (let ()
                                (declare (not safe))
                                (cons _exn90135_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95973)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (macro-unbound-serial-number-exception? _e90133_))
            (macro-unbound-serial-number-exception? _exn90131_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90127_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90127_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90129_)
                  (macro-unbound-serial-number-exception-arguments _e90129_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95976
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95976)))))
            (if (macro-unbound-serial-number-exception? _exn90127_)
                (macro-unbound-serial-number-exception-arguments _exn90127_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95975
                              (let ()
                                (declare (not safe))
                                (cons _exn90127_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95975)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90124_)
                  (macro-unbound-serial-number-exception-procedure _e90124_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95978
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95978)))))
            (if (macro-unbound-serial-number-exception? _exn90121_)
                (macro-unbound-serial-number-exception-procedure _exn90121_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95977
                              (let ()
                                (declare (not safe))
                                (cons _exn90121_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95977)))))))
    (define uncaught-exception?
      (lambda (_exn90117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90117_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90117_ 'exception))))
              (macro-uncaught-exception? _e90119_))
            (macro-uncaught-exception? _exn90117_))))
    (define uncaught-exception-arguments
      (lambda (_exn90113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90113_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90113_ 'exception))))
              (if (macro-uncaught-exception? _e90115_)
                  (macro-uncaught-exception-arguments _e90115_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95980
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95980)))))
            (if (macro-uncaught-exception? _exn90113_)
                (macro-uncaught-exception-arguments _exn90113_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95979
                              (let ()
                                (declare (not safe))
                                (cons _exn90113_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95979)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90109_))
            (let ((_e90111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90109_ 'exception))))
              (if (macro-uncaught-exception? _e90111_)
                  (macro-uncaught-exception-procedure _e90111_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95982
                                (let ()
                                  (declare (not safe))
                                  (cons _e90111_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95982)))))
            (if (macro-uncaught-exception? _exn90109_)
                (macro-uncaught-exception-procedure _exn90109_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95981
                              (let ()
                                (declare (not safe))
                                (cons _exn90109_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95981)))))))
    (define uncaught-exception-reason
      (lambda (_exn90103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90103_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90103_ 'exception))))
              (if (macro-uncaught-exception? _e90106_)
                  (macro-uncaught-exception-reason _e90106_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95984
                                (let ()
                                  (declare (not safe))
                                  (cons _e90106_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95984)))))
            (if (macro-uncaught-exception? _exn90103_)
                (macro-uncaught-exception-reason _exn90103_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95983
                              (let ()
                                (declare (not safe))
                                (cons _exn90103_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95983)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90099_))
            (let ((_e90101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90099_ 'exception))))
              (macro-uninitialized-thread-exception? _e90101_))
            (macro-uninitialized-thread-exception? _exn90099_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90095_))
            (let ((_e90097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90095_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90097_)
                  (macro-uninitialized-thread-exception-arguments _e90097_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95986
                                (let ()
                                  (declare (not safe))
                                  (cons _e90097_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95986)))))
            (if (macro-uninitialized-thread-exception? _exn90095_)
                (macro-uninitialized-thread-exception-arguments _exn90095_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95985
                              (let ()
                                (declare (not safe))
                                (cons _exn90095_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95985)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90089_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90089_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90092_)
                  (macro-uninitialized-thread-exception-procedure _e90092_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95988
                                (let ()
                                  (declare (not safe))
                                  (cons _e90092_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95988)))))
            (if (macro-uninitialized-thread-exception? _exn90089_)
                (macro-uninitialized-thread-exception-procedure _exn90089_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95987
                              (let ()
                                (declare (not safe))
                                (cons _exn90089_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95987)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90085_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90085_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90087_))
            (macro-unknown-keyword-argument-exception? _exn90085_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90081_))
            (let ((_e90083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90081_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90083_)
                  (macro-unknown-keyword-argument-exception-arguments _e90083_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95990
                                (let ()
                                  (declare (not safe))
                                  (cons _e90083_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95990)))))
            (if (macro-unknown-keyword-argument-exception? _exn90081_)
                (macro-unknown-keyword-argument-exception-arguments _exn90081_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95989
                              (let ()
                                (declare (not safe))
                                (cons _exn90081_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95989)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90075_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90075_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90078_)
                  (macro-unknown-keyword-argument-exception-procedure _e90078_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95992
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95992)))))
            (if (macro-unknown-keyword-argument-exception? _exn90075_)
                (macro-unknown-keyword-argument-exception-procedure _exn90075_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95991
                              (let ()
                                (declare (not safe))
                                (cons _exn90075_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95991)))))))
    (define unterminated-process-exception?
      (lambda (_exn90071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90071_))
            (let ((_e90073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90071_ 'exception))))
              (macro-unterminated-process-exception? _e90073_))
            (macro-unterminated-process-exception? _exn90071_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90067_))
            (let ((_e90069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90067_ 'exception))))
              (if (macro-unterminated-process-exception? _e90069_)
                  (macro-unterminated-process-exception-arguments _e90069_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95994
                                (let ()
                                  (declare (not safe))
                                  (cons _e90069_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95994)))))
            (if (macro-unterminated-process-exception? _exn90067_)
                (macro-unterminated-process-exception-arguments _exn90067_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95993
                              (let ()
                                (declare (not safe))
                                (cons _exn90067_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95993)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90061_))
            (let ((_e90064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90061_ 'exception))))
              (if (macro-unterminated-process-exception? _e90064_)
                  (macro-unterminated-process-exception-procedure _e90064_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95996
                                (let ()
                                  (declare (not safe))
                                  (cons _e90064_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95996)))))
            (if (macro-unterminated-process-exception? _exn90061_)
                (macro-unterminated-process-exception-procedure _exn90061_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95995
                              (let ()
                                (declare (not safe))
                                (cons _exn90061_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95995)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90057_))
            (let ((_e90059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90057_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90059_))
            (macro-wrong-number-of-arguments-exception? _exn90057_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90053_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90053_))
            (let ((_e90055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90053_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90055_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90055_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95998
                                (let ()
                                  (declare (not safe))
                                  (cons _e90055_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95998)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90053_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90053_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95997
                              (let ()
                                (declare (not safe))
                                (cons _exn90053_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95997)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90047_))
            (let ((_e90050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90047_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90050_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90050_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96000
                                (let ()
                                  (declare (not safe))
                                  (cons _e90050_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96000)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90047_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90047_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95999
                              (let ()
                                (declare (not safe))
                                (cons _exn90047_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95999)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90043_))
            (let ((_e90045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90043_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90045_))
            (macro-wrong-number-of-values-exception? _exn90043_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90039_))
            (let ((_e90041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90039_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90041_)
                  (macro-wrong-number-of-values-exception-code _e90041_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96002
                                (let ()
                                  (declare (not safe))
                                  (cons _e90041_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96002)))))
            (if (macro-wrong-number-of-values-exception? _exn90039_)
                (macro-wrong-number-of-values-exception-code _exn90039_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96001
                              (let ()
                                (declare (not safe))
                                (cons _exn90039_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96001)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90035_))
            (let ((_e90037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90035_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90037_)
                  (macro-wrong-number-of-values-exception-rte _e90037_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96004
                                (let ()
                                  (declare (not safe))
                                  (cons _e90037_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96004)))))
            (if (macro-wrong-number-of-values-exception? _exn90035_)
                (macro-wrong-number-of-values-exception-rte _exn90035_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96003
                              (let ()
                                (declare (not safe))
                                (cons _exn90035_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96003)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90029_))
            (let ((_e90032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90029_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90032_)
                  (macro-wrong-number-of-values-exception-vals _e90032_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96006
                                (let ()
                                  (declare (not safe))
                                  (cons _e90032_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96006)))))
            (if (macro-wrong-number-of-values-exception? _exn90029_)
                (macro-wrong-number-of-values-exception-vals _exn90029_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96005
                              (let ()
                                (declare (not safe))
                                (cons _exn90029_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96005)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90023_))
            (let ((_e90026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90023_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90026_))
            (macro-wrong-processor-c-return-exception? _exn90023_))))))
