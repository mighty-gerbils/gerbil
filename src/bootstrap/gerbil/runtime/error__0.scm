(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707767842)
  (begin
    (define Exception::t
      (let ((__tmp95823 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95823
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91226_ (apply make-instance Exception::t _$args91226_)))
    (define StackTrace::t
      (let ((__tmp95824 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95824
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91223_ (apply make-instance StackTrace::t _$args91223_)))
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
      (let ((__tmp95825 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95825
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91220_ (apply make-instance Error::t _$args91220_)))
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
      (let ((__tmp95826 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95826
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91217_
        (apply make-instance RuntimeException::t _$args91217_)))
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
      (lambda (_exn91212_ _continue91213_)
        (let ((_exn91215_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91212_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91215_ _continue91213_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91208_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91208_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91208_ 'continuation))
                '#!void
                (let ((__tmp95827
                       (lambda (_cont91210_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91208_
                            'continuation
                            _cont91210_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95827)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91208_))))
    (define error
      (lambda (_message91205_ . _irritants91206_)
        (raise (let ((__obj95817
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95817
                  _message91205_
                  'irritants:
                  _irritants91206_)
                 __obj95817))))
    (define with-exception-handler
      (lambda (_handler91198_ _thunk91199_)
        (if (let () (declare (not safe)) (procedure? _handler91198_))
            '#!void
            (raise (let ((__obj95818
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95818
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91198_ '())))
                     __obj95818)))
        (if (let () (declare (not safe)) (procedure? _thunk91199_))
            '#!void
            (raise (let ((__obj95819
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95819
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91199_ '())))
                     __obj95819)))
        (let ((__tmp95828
               (lambda (_exn91201_)
                 (let ((_exn91203_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91201_))))
                   (_handler91198_ _exn91203_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95828 _thunk91199_))))
    (define with-catch
      (lambda (_handler91191_ _thunk91192_)
        (if (let () (declare (not safe)) (procedure? _handler91191_))
            '#!void
            (raise (let ((__obj95820
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95820
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91191_ '())))
                     __obj95820)))
        (if (let () (declare (not safe)) (procedure? _thunk91192_))
            '#!void
            (raise (let ((__obj95821
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95821
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91192_ '())))
                     __obj95821)))
        (let ((__tmp95829
               (lambda (_cont91194_)
                 (with-exception-handler
                  (lambda (_exn91196_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91194_
                       _handler91191_
                       _exn91196_)))
                  _thunk91192_))))
          (declare (not safe))
          (##continuation-capture __tmp95829))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91182_)
        (if (or (heap-overflow-exception? _exn91182_)
                (stack-overflow-exception? _exn91182_))
            _exn91182_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91182_))
                _exn91182_
                (if (macro-exception? _exn91182_)
                    (let ((_rte91187_
                           (let ((__obj95822
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95822
                                _exn91182_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95822)))
                      (let ((__tmp95830
                             (lambda (_cont91189_)
                               (let ((__tmp95831
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91189_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91187_
                                  'continuation
                                  __tmp95831)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95830))
                      _rte91187_)
                    _exn91182_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91177_)
        (let ((_$e91179_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91177_))))
          (if _$e91179_ _$e91179_ (error-exception? _obj91177_)))))
    (define error-message
      (lambda (_obj91175_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91175_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91175_ 'message))
            (if (error-exception? _obj91175_)
                (error-exception-message _obj91175_)
                '#f))))
    (define error-irritants
      (lambda (_obj91173_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91173_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91173_ 'irritants))
            (if (error-exception? _obj91173_)
                (error-exception-parameters _obj91173_)
                '#f))))
    (define error-trace
      (lambda (_obj91171_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91171_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91171_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91153_ _port91154_)
        (let ((_$e91156_
               (let ()
                 (declare (not safe))
                 (method-ref _e91153_ 'display-exception))))
          (if _$e91156_
              ((lambda (_f91159_) (_f91159_ _e91153_ _port91154_)) _$e91156_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91153_ _port91154_))))))
    (define display-exception__0
      (lambda (_e91164_)
        (let ((_port91166_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91164_ _port91166_))))
    (define display-exception
      (lambda _g95833_
        (let ((_g95832_ (let () (declare (not safe)) (##length _g95833_))))
          (cond ((let () (declare (not safe)) (##fx= _g95832_ 1))
                 (apply (lambda (_e91164_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91164_)))
                        _g95833_))
                ((let () (declare (not safe)) (##fx= _g95832_ 2))
                 (apply (lambda (_e91168_ _port91169_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91168_ _port91169_)))
                        _g95833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95833_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91142_ _message91143_ . _rest91144_)
        (let ((_message91150_
               (if (let () (declare (not safe)) (string? _message91143_))
                   _message91143_
                   (call-with-output-string
                    '""
                    (lambda (_g9114591147_)
                      (display _message91143_ _g9114591147_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91142_ 'message _message91150_))
          (apply class-instance-init! _self91142_ _rest91144_))))
    (define Error:::init!::specialize
      (lambda (__t95796)
        (let ((__message95797
               (let ((__tmp95798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95796 'message))))
                 (if __tmp95798 __tmp95798 (error '"Unknown slot" 'message)))))
          (lambda (_self91142_ _message91143_ . _rest91144_)
            (let ((_message91150_
                   (if (let () (declare (not safe)) (string? _message91143_))
                       _message91143_
                       (call-with-output-string
                        '""
                        (lambda (_g9114591147_)
                          (display _message91143_ _g9114591147_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91142_
                 _message91150_
                 __message95797
                 __t95796
                 '#f))
              (apply class-instance-init! _self91142_ _rest91144_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self91000_ _port91001_)
        (let ((_tmp-port91003_ (open-output-string))
              (_display-error-newline91004_
               (> (output-port-column _port91001_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91003_))
          (let ((__tmp95834
                 (lambda ()
                   (if _display-error-newline91004_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e91007_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91000_ 'where))))
                     (if _$e91007_ (display _$e91007_) (display '"?")))
                   (let ((__tmp95835
                          (let ((__tmp95836
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self91000_))))
                            (declare (not safe))
                            (##type-name __tmp95836))))
                     (declare (not safe))
                     (display* '" [" __tmp95835 '"]: "))
                   (let ((__tmp95837
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91000_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95837))
                   (let ((_irritants91010_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91000_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants91010_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj91012_)
                              (write _obj91012_)
                              (write-char '#\space))
                            _irritants91010_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self91000_))
                            (dump-stack-trace?))
                       (let ((_cont9101391015_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self91000_
                                 'continuation))))
                         (if _cont9101391015_
                             (let ((_cont91018_ _cont9101391015_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont91018_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95834
             current-output-port
             _tmp-port91003_))
          (let ((__tmp95838 (get-output-string _tmp-port91003_)))
            (declare (not safe))
            (##write-string __tmp95838 _port91001_)))))
    (define Error::display-exception::specialize
      (lambda (__t95799)
        (let ((__message95800
               (let ((__tmp95804
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95799 'message))))
                 (if __tmp95804 __tmp95804 (error '"Unknown slot" 'message))))
              (__irritants95801
               (let ((__tmp95805
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95799 'irritants))))
                 (if __tmp95805
                     __tmp95805
                     (error '"Unknown slot" 'irritants))))
              (__continuation95802
               (let ((__tmp95806
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95799 'continuation))))
                 (if __tmp95806
                     __tmp95806
                     (error '"Unknown slot" 'continuation))))
              (__where95803
               (let ((__tmp95807
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95799 'where))))
                 (if __tmp95807 __tmp95807 (error '"Unknown slot" 'where)))))
          (lambda (_self91000_ _port91001_)
            (let ((_tmp-port91003_ (open-output-string))
                  (_display-error-newline91004_
                   (> (output-port-column _port91001_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91003_))
              (let ((__tmp95839
                     (lambda ()
                       (if _display-error-newline91004_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e91007_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91000_
                                 __where95803
                                 __t95799
                                 '#f))))
                         (if _$e91007_ (display _$e91007_) (display '"?")))
                       (let ((__tmp95840
                              (let ((__tmp95841
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self91000_))))
                                (declare (not safe))
                                (##type-name __tmp95841))))
                         (declare (not safe))
                         (display* '" [" __tmp95840 '"]: "))
                       (let ((__tmp95842
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91000_
                                 __message95800
                                 __t95799
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95842))
                       (let ((_irritants91010_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91000_
                                 __irritants95801
                                 __t95799
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants91010_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj91012_)
                                  (write _obj91012_)
                                  (write-char '#\space))
                                _irritants91010_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self91000_))
                                (dump-stack-trace?))
                           (let ((_cont9101391015_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self91000_
                                     __continuation95802
                                     __t95799
                                     '#f))))
                             (if _cont9101391015_
                                 (let ((_cont91018_ _cont9101391015_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont91018_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95839
                 current-output-port
                 _tmp-port91003_))
              (let ((__tmp95843 (get-output-string _tmp-port91003_)))
                (declare (not safe))
                (##write-string __tmp95843 _port91001_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90867_ _port90868_)
        (let ((_tmp-port90870_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90870_))
          (let ((__tmp95844
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90867_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95844 _tmp-port90870_))
          (if (dump-stack-trace?)
              (let ((_cont9087190873_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90867_ 'continuation))))
                (if _cont9087190873_
                    (let ((_cont90876_ _cont9087190873_))
                      (display '"--- continuation backtrace:" _tmp-port90870_)
                      (newline _tmp-port90870_)
                      (display-continuation-backtrace
                       _cont90876_
                       _tmp-port90870_))
                    '#f))
              '#!void)
          (let ((__tmp95845 (get-output-string _tmp-port90870_)))
            (declare (not safe))
            (##write-string __tmp95845 _port90868_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95808)
        (let ((__continuation95809
               (let ((__tmp95811
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95808 'continuation))))
                 (if __tmp95811
                     __tmp95811
                     (error '"Unknown slot" 'continuation))))
              (__exception95810
               (let ((__tmp95812
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95808 'exception))))
                 (if __tmp95812
                     __tmp95812
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self90867_ _port90868_)
            (let ((_tmp-port90870_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90870_))
              (let ((__tmp95846
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90867_
                        __exception95810
                        __t95808
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95846 _tmp-port90870_))
              (if (dump-stack-trace?)
                  (let ((_cont9087190873_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90867_
                            __continuation95809
                            __t95808
                            '#f))))
                    (if _cont9087190873_
                        (let ((_cont90876_ _cont9087190873_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90870_)
                          (newline _tmp-port90870_)
                          (display-continuation-backtrace
                           _cont90876_
                           _tmp-port90870_))
                        '#f))
                  '#!void)
              (let ((__tmp95847 (get-output-string _tmp-port90870_)))
                (declare (not safe))
                (##write-string __tmp95847 _port90868_)))))))
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
      (lambda (_port90739_)
        (if (macro-character-port? _port90739_)
            (let ((_old-width90741_
                   (macro-character-port-output-width _port90739_)))
              (macro-character-port-output-width-set!
               _port90739_
               (lambda (_port90743_) '256))
              _old-width90741_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90736_ _old-width90737_)
        (if (macro-character-port? _port90736_)
            (macro-character-port-output-width-set!
             _port90736_
             _old-width90737_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90734_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90734_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90728_))
            (let ((_e90731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90728_ 'exception))))
              (macro-abandoned-mutex-exception? _e90731_))
            (macro-abandoned-mutex-exception? _exn90728_))))
    (define cfun-conversion-exception?
      (lambda (_exn90724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90724_))
            (let ((_e90726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90724_ 'exception))))
              (macro-cfun-conversion-exception? _e90726_))
            (macro-cfun-conversion-exception? _exn90724_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90720_))
            (let ((_e90722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90720_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90722_)
                  (macro-cfun-conversion-exception-arguments _e90722_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95849
                                (let ()
                                  (declare (not safe))
                                  (cons _e90722_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95849)))))
            (if (macro-cfun-conversion-exception? _exn90720_)
                (macro-cfun-conversion-exception-arguments _exn90720_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95848
                              (let ()
                                (declare (not safe))
                                (cons _exn90720_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95848)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90716_))
            (let ((_e90718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90716_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90718_)
                  (macro-cfun-conversion-exception-code _e90718_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95851
                                (let ()
                                  (declare (not safe))
                                  (cons _e90718_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95851)))))
            (if (macro-cfun-conversion-exception? _exn90716_)
                (macro-cfun-conversion-exception-code _exn90716_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95850
                              (let ()
                                (declare (not safe))
                                (cons _exn90716_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95850)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90712_))
            (let ((_e90714_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90712_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90714_)
                  (macro-cfun-conversion-exception-message _e90714_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95853
                                (let ()
                                  (declare (not safe))
                                  (cons _e90714_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95853)))))
            (if (macro-cfun-conversion-exception? _exn90712_)
                (macro-cfun-conversion-exception-message _exn90712_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95852
                              (let ()
                                (declare (not safe))
                                (cons _exn90712_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95852)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90706_))
            (let ((_e90709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90706_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90709_)
                  (macro-cfun-conversion-exception-procedure _e90709_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95855
                                (let ()
                                  (declare (not safe))
                                  (cons _e90709_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95855)))))
            (if (macro-cfun-conversion-exception? _exn90706_)
                (macro-cfun-conversion-exception-procedure _exn90706_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95854
                              (let ()
                                (declare (not safe))
                                (cons _exn90706_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95854)))))))
    (define datum-parsing-exception?
      (lambda (_exn90702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90702_))
            (let ((_e90704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90702_ 'exception))))
              (macro-datum-parsing-exception? _e90704_))
            (macro-datum-parsing-exception? _exn90702_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90698_))
            (let ((_e90700_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90698_ 'exception))))
              (if (macro-datum-parsing-exception? _e90700_)
                  (macro-datum-parsing-exception-kind _e90700_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95857
                                (let ()
                                  (declare (not safe))
                                  (cons _e90700_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95857)))))
            (if (macro-datum-parsing-exception? _exn90698_)
                (macro-datum-parsing-exception-kind _exn90698_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95856
                              (let ()
                                (declare (not safe))
                                (cons _exn90698_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95856)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90694_))
            (let ((_e90696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90694_ 'exception))))
              (if (macro-datum-parsing-exception? _e90696_)
                  (macro-datum-parsing-exception-parameters _e90696_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95859
                                (let ()
                                  (declare (not safe))
                                  (cons _e90696_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95859)))))
            (if (macro-datum-parsing-exception? _exn90694_)
                (macro-datum-parsing-exception-parameters _exn90694_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95858
                              (let ()
                                (declare (not safe))
                                (cons _exn90694_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95858)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90688_))
            (let ((_e90691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90688_ 'exception))))
              (if (macro-datum-parsing-exception? _e90691_)
                  (macro-datum-parsing-exception-readenv _e90691_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95861
                                (let ()
                                  (declare (not safe))
                                  (cons _e90691_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95861)))))
            (if (macro-datum-parsing-exception? _exn90688_)
                (macro-datum-parsing-exception-readenv _exn90688_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95860
                              (let ()
                                (declare (not safe))
                                (cons _exn90688_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95860)))))))
    (define deadlock-exception?
      (lambda (_exn90682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90682_))
            (let ((_e90685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90682_ 'exception))))
              (macro-deadlock-exception? _e90685_))
            (macro-deadlock-exception? _exn90682_))))
    (define divide-by-zero-exception?
      (lambda (_exn90678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90678_))
            (let ((_e90680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90678_ 'exception))))
              (macro-divide-by-zero-exception? _e90680_))
            (macro-divide-by-zero-exception? _exn90678_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90674_))
            (let ((_e90676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90674_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90676_)
                  (macro-divide-by-zero-exception-arguments _e90676_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95863
                                (let ()
                                  (declare (not safe))
                                  (cons _e90676_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95863)))))
            (if (macro-divide-by-zero-exception? _exn90674_)
                (macro-divide-by-zero-exception-arguments _exn90674_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95862
                              (let ()
                                (declare (not safe))
                                (cons _exn90674_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95862)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90668_))
            (let ((_e90671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90668_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90671_)
                  (macro-divide-by-zero-exception-procedure _e90671_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95865
                                (let ()
                                  (declare (not safe))
                                  (cons _e90671_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95865)))))
            (if (macro-divide-by-zero-exception? _exn90668_)
                (macro-divide-by-zero-exception-procedure _exn90668_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95864
                              (let ()
                                (declare (not safe))
                                (cons _exn90668_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95864)))))))
    (define error-exception?
      (lambda (_exn90664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90664_))
            (let ((_e90666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90664_ 'exception))))
              (macro-error-exception? _e90666_))
            (macro-error-exception? _exn90664_))))
    (define error-exception-message
      (lambda (_exn90660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90660_))
            (let ((_e90662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90660_ 'exception))))
              (if (macro-error-exception? _e90662_)
                  (macro-error-exception-message _e90662_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95867
                                (let ()
                                  (declare (not safe))
                                  (cons _e90662_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95867)))))
            (if (macro-error-exception? _exn90660_)
                (macro-error-exception-message _exn90660_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95866
                              (let ()
                                (declare (not safe))
                                (cons _exn90660_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95866)))))))
    (define error-exception-parameters
      (lambda (_exn90654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90654_))
            (let ((_e90657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90654_ 'exception))))
              (if (macro-error-exception? _e90657_)
                  (macro-error-exception-parameters _e90657_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95869
                                (let ()
                                  (declare (not safe))
                                  (cons _e90657_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95869)))))
            (if (macro-error-exception? _exn90654_)
                (macro-error-exception-parameters _exn90654_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95868
                              (let ()
                                (declare (not safe))
                                (cons _exn90654_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95868)))))))
    (define expression-parsing-exception?
      (lambda (_exn90650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90650_))
            (let ((_e90652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90650_ 'exception))))
              (macro-expression-parsing-exception? _e90652_))
            (macro-expression-parsing-exception? _exn90650_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90646_))
            (let ((_e90648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90646_ 'exception))))
              (if (macro-expression-parsing-exception? _e90648_)
                  (macro-expression-parsing-exception-kind _e90648_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95871
                                (let ()
                                  (declare (not safe))
                                  (cons _e90648_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95871)))))
            (if (macro-expression-parsing-exception? _exn90646_)
                (macro-expression-parsing-exception-kind _exn90646_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95870
                              (let ()
                                (declare (not safe))
                                (cons _exn90646_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95870)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90642_))
            (let ((_e90644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90642_ 'exception))))
              (if (macro-expression-parsing-exception? _e90644_)
                  (macro-expression-parsing-exception-parameters _e90644_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95873
                                (let ()
                                  (declare (not safe))
                                  (cons _e90644_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95873)))))
            (if (macro-expression-parsing-exception? _exn90642_)
                (macro-expression-parsing-exception-parameters _exn90642_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95872
                              (let ()
                                (declare (not safe))
                                (cons _exn90642_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95872)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90636_))
            (let ((_e90639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90636_ 'exception))))
              (if (macro-expression-parsing-exception? _e90639_)
                  (macro-expression-parsing-exception-source _e90639_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95875
                                (let ()
                                  (declare (not safe))
                                  (cons _e90639_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95875)))))
            (if (macro-expression-parsing-exception? _exn90636_)
                (macro-expression-parsing-exception-source _exn90636_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95874
                              (let ()
                                (declare (not safe))
                                (cons _exn90636_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95874)))))))
    (define file-exists-exception?
      (lambda (_exn90632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90632_))
            (let ((_e90634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90632_ 'exception))))
              (macro-file-exists-exception? _e90634_))
            (macro-file-exists-exception? _exn90632_))))
    (define file-exists-exception-arguments
      (lambda (_exn90628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90628_))
            (let ((_e90630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90628_ 'exception))))
              (if (macro-file-exists-exception? _e90630_)
                  (macro-file-exists-exception-arguments _e90630_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95877
                                (let ()
                                  (declare (not safe))
                                  (cons _e90630_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95877)))))
            (if (macro-file-exists-exception? _exn90628_)
                (macro-file-exists-exception-arguments _exn90628_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95876
                              (let ()
                                (declare (not safe))
                                (cons _exn90628_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95876)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90622_))
            (let ((_e90625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90622_ 'exception))))
              (if (macro-file-exists-exception? _e90625_)
                  (macro-file-exists-exception-procedure _e90625_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95879
                                (let ()
                                  (declare (not safe))
                                  (cons _e90625_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95879)))))
            (if (macro-file-exists-exception? _exn90622_)
                (macro-file-exists-exception-procedure _exn90622_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95878
                              (let ()
                                (declare (not safe))
                                (cons _exn90622_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95878)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90618_))
            (let ((_e90620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90618_ 'exception))))
              (macro-fixnum-overflow-exception? _e90620_))
            (macro-fixnum-overflow-exception? _exn90618_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90614_))
            (let ((_e90616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90614_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90616_)
                  (macro-fixnum-overflow-exception-arguments _e90616_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95881
                                (let ()
                                  (declare (not safe))
                                  (cons _e90616_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95881)))))
            (if (macro-fixnum-overflow-exception? _exn90614_)
                (macro-fixnum-overflow-exception-arguments _exn90614_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95880
                              (let ()
                                (declare (not safe))
                                (cons _exn90614_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95880)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90608_))
            (let ((_e90611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90608_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90611_)
                  (macro-fixnum-overflow-exception-procedure _e90611_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95883
                                (let ()
                                  (declare (not safe))
                                  (cons _e90611_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95883)))))
            (if (macro-fixnum-overflow-exception? _exn90608_)
                (macro-fixnum-overflow-exception-procedure _exn90608_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95882
                              (let ()
                                (declare (not safe))
                                (cons _exn90608_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95882)))))))
    (define heap-overflow-exception?
      (lambda (_exn90602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90602_))
            (let ((_e90605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90602_ 'exception))))
              (macro-heap-overflow-exception? _e90605_))
            (macro-heap-overflow-exception? _exn90602_))))
    (define inactive-thread-exception?
      (lambda (_exn90598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90598_))
            (let ((_e90600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90598_ 'exception))))
              (macro-inactive-thread-exception? _e90600_))
            (macro-inactive-thread-exception? _exn90598_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90594_))
            (let ((_e90596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90594_ 'exception))))
              (if (macro-inactive-thread-exception? _e90596_)
                  (macro-inactive-thread-exception-arguments _e90596_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95885
                                (let ()
                                  (declare (not safe))
                                  (cons _e90596_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95885)))))
            (if (macro-inactive-thread-exception? _exn90594_)
                (macro-inactive-thread-exception-arguments _exn90594_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95884
                              (let ()
                                (declare (not safe))
                                (cons _exn90594_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95884)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90588_))
            (let ((_e90591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90588_ 'exception))))
              (if (macro-inactive-thread-exception? _e90591_)
                  (macro-inactive-thread-exception-procedure _e90591_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95887
                                (let ()
                                  (declare (not safe))
                                  (cons _e90591_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95887)))))
            (if (macro-inactive-thread-exception? _exn90588_)
                (macro-inactive-thread-exception-procedure _exn90588_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95886
                              (let ()
                                (declare (not safe))
                                (cons _exn90588_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95886)))))))
    (define initialized-thread-exception?
      (lambda (_exn90584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90584_))
            (let ((_e90586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90584_ 'exception))))
              (macro-initialized-thread-exception? _e90586_))
            (macro-initialized-thread-exception? _exn90584_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90580_))
            (let ((_e90582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90580_ 'exception))))
              (if (macro-initialized-thread-exception? _e90582_)
                  (macro-initialized-thread-exception-arguments _e90582_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95889
                                (let ()
                                  (declare (not safe))
                                  (cons _e90582_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95889)))))
            (if (macro-initialized-thread-exception? _exn90580_)
                (macro-initialized-thread-exception-arguments _exn90580_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95888
                              (let ()
                                (declare (not safe))
                                (cons _exn90580_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95888)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90574_))
            (let ((_e90577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90574_ 'exception))))
              (if (macro-initialized-thread-exception? _e90577_)
                  (macro-initialized-thread-exception-procedure _e90577_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95891
                                (let ()
                                  (declare (not safe))
                                  (cons _e90577_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95891)))))
            (if (macro-initialized-thread-exception? _exn90574_)
                (macro-initialized-thread-exception-procedure _exn90574_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95890
                              (let ()
                                (declare (not safe))
                                (cons _exn90574_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95890)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90570_))
            (let ((_e90572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90570_ 'exception))))
              (macro-invalid-hash-number-exception? _e90572_))
            (macro-invalid-hash-number-exception? _exn90570_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90566_))
            (let ((_e90568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90566_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90568_)
                  (macro-invalid-hash-number-exception-arguments _e90568_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95893
                                (let ()
                                  (declare (not safe))
                                  (cons _e90568_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95893)))))
            (if (macro-invalid-hash-number-exception? _exn90566_)
                (macro-invalid-hash-number-exception-arguments _exn90566_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95892
                              (let ()
                                (declare (not safe))
                                (cons _exn90566_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95892)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90560_))
            (let ((_e90563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90560_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90563_)
                  (macro-invalid-hash-number-exception-procedure _e90563_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95895
                                (let ()
                                  (declare (not safe))
                                  (cons _e90563_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95895)))))
            (if (macro-invalid-hash-number-exception? _exn90560_)
                (macro-invalid-hash-number-exception-procedure _exn90560_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95894
                              (let ()
                                (declare (not safe))
                                (cons _exn90560_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95894)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90556_))
            (let ((_e90558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90556_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90558_))
            (macro-invalid-utf8-encoding-exception? _exn90556_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90552_))
            (let ((_e90554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90552_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90554_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90554_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95897
                                (let ()
                                  (declare (not safe))
                                  (cons _e90554_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95897)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90552_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90552_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95896
                              (let ()
                                (declare (not safe))
                                (cons _exn90552_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95896)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90546_))
            (let ((_e90549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90546_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90549_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90549_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95899
                                (let ()
                                  (declare (not safe))
                                  (cons _e90549_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95899)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90546_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90546_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95898
                              (let ()
                                (declare (not safe))
                                (cons _exn90546_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95898)))))))
    (define join-timeout-exception?
      (lambda (_exn90542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90542_))
            (let ((_e90544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90542_ 'exception))))
              (macro-join-timeout-exception? _e90544_))
            (macro-join-timeout-exception? _exn90542_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90538_))
            (let ((_e90540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90538_ 'exception))))
              (if (macro-join-timeout-exception? _e90540_)
                  (macro-join-timeout-exception-arguments _e90540_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95901
                                (let ()
                                  (declare (not safe))
                                  (cons _e90540_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95901)))))
            (if (macro-join-timeout-exception? _exn90538_)
                (macro-join-timeout-exception-arguments _exn90538_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95900
                              (let ()
                                (declare (not safe))
                                (cons _exn90538_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95900)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90532_))
            (let ((_e90535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90532_ 'exception))))
              (if (macro-join-timeout-exception? _e90535_)
                  (macro-join-timeout-exception-procedure _e90535_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95903
                                (let ()
                                  (declare (not safe))
                                  (cons _e90535_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95903)))))
            (if (macro-join-timeout-exception? _exn90532_)
                (macro-join-timeout-exception-procedure _exn90532_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95902
                              (let ()
                                (declare (not safe))
                                (cons _exn90532_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95902)))))))
    (define keyword-expected-exception?
      (lambda (_exn90528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90528_))
            (let ((_e90530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90528_ 'exception))))
              (macro-keyword-expected-exception? _e90530_))
            (macro-keyword-expected-exception? _exn90528_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90524_))
            (let ((_e90526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90524_ 'exception))))
              (if (macro-keyword-expected-exception? _e90526_)
                  (macro-keyword-expected-exception-arguments _e90526_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95905
                                (let ()
                                  (declare (not safe))
                                  (cons _e90526_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95905)))))
            (if (macro-keyword-expected-exception? _exn90524_)
                (macro-keyword-expected-exception-arguments _exn90524_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95904
                              (let ()
                                (declare (not safe))
                                (cons _exn90524_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95904)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90518_))
            (let ((_e90521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90518_ 'exception))))
              (if (macro-keyword-expected-exception? _e90521_)
                  (macro-keyword-expected-exception-procedure _e90521_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95907
                                (let ()
                                  (declare (not safe))
                                  (cons _e90521_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95907)))))
            (if (macro-keyword-expected-exception? _exn90518_)
                (macro-keyword-expected-exception-procedure _exn90518_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95906
                              (let ()
                                (declare (not safe))
                                (cons _exn90518_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95906)))))))
    (define length-mismatch-exception?
      (lambda (_exn90514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90514_))
            (let ((_e90516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90514_ 'exception))))
              (macro-length-mismatch-exception? _e90516_))
            (macro-length-mismatch-exception? _exn90514_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90510_))
            (let ((_e90512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90510_ 'exception))))
              (if (macro-length-mismatch-exception? _e90512_)
                  (macro-length-mismatch-exception-arg-id _e90512_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95909
                                (let ()
                                  (declare (not safe))
                                  (cons _e90512_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95909)))))
            (if (macro-length-mismatch-exception? _exn90510_)
                (macro-length-mismatch-exception-arg-id _exn90510_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95908
                              (let ()
                                (declare (not safe))
                                (cons _exn90510_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95908)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90506_))
            (let ((_e90508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90506_ 'exception))))
              (if (macro-length-mismatch-exception? _e90508_)
                  (macro-length-mismatch-exception-arguments _e90508_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95911
                                (let ()
                                  (declare (not safe))
                                  (cons _e90508_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95911)))))
            (if (macro-length-mismatch-exception? _exn90506_)
                (macro-length-mismatch-exception-arguments _exn90506_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95910
                              (let ()
                                (declare (not safe))
                                (cons _exn90506_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95910)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90500_))
            (let ((_e90503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90500_ 'exception))))
              (if (macro-length-mismatch-exception? _e90503_)
                  (macro-length-mismatch-exception-procedure _e90503_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95913
                                (let ()
                                  (declare (not safe))
                                  (cons _e90503_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95913)))))
            (if (macro-length-mismatch-exception? _exn90500_)
                (macro-length-mismatch-exception-procedure _exn90500_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95912
                              (let ()
                                (declare (not safe))
                                (cons _exn90500_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95912)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90496_))
            (let ((_e90498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90496_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90498_))
            (macro-mailbox-receive-timeout-exception? _exn90496_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90492_))
            (let ((_e90494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90492_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90494_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90494_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95915
                                (let ()
                                  (declare (not safe))
                                  (cons _e90494_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95915)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90492_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90492_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95914
                              (let ()
                                (declare (not safe))
                                (cons _exn90492_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95914)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90486_))
            (let ((_e90489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90486_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90489_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90489_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95917
                                (let ()
                                  (declare (not safe))
                                  (cons _e90489_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95917)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90486_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90486_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95916
                              (let ()
                                (declare (not safe))
                                (cons _exn90486_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95916)))))))
    (define module-not-found-exception?
      (lambda (_exn90482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90482_))
            (let ((_e90484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90482_ 'exception))))
              (macro-module-not-found-exception? _e90484_))
            (macro-module-not-found-exception? _exn90482_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90478_))
            (let ((_e90480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90478_ 'exception))))
              (if (macro-module-not-found-exception? _e90480_)
                  (macro-module-not-found-exception-arguments _e90480_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95919
                                (let ()
                                  (declare (not safe))
                                  (cons _e90480_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95919)))))
            (if (macro-module-not-found-exception? _exn90478_)
                (macro-module-not-found-exception-arguments _exn90478_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95918
                              (let ()
                                (declare (not safe))
                                (cons _exn90478_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95918)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90472_))
            (let ((_e90475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90472_ 'exception))))
              (if (macro-module-not-found-exception? _e90475_)
                  (macro-module-not-found-exception-procedure _e90475_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95921
                                (let ()
                                  (declare (not safe))
                                  (cons _e90475_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95921)))))
            (if (macro-module-not-found-exception? _exn90472_)
                (macro-module-not-found-exception-procedure _exn90472_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95920
                              (let ()
                                (declare (not safe))
                                (cons _exn90472_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95920)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90466_))
            (let ((_e90469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90466_ 'exception))))
              (macro-multiple-c-return-exception? _e90469_))
            (macro-multiple-c-return-exception? _exn90466_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90462_))
            (let ((_e90464_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90462_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90464_))
            (macro-no-such-file-or-directory-exception? _exn90462_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90458_))
            (let ((_e90460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90458_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90460_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90460_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95923
                                (let ()
                                  (declare (not safe))
                                  (cons _e90460_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95923)))))
            (if (macro-no-such-file-or-directory-exception? _exn90458_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90458_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95922
                              (let ()
                                (declare (not safe))
                                (cons _exn90458_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95922)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90452_))
            (let ((_e90455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90452_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90455_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90455_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95925
                                (let ()
                                  (declare (not safe))
                                  (cons _e90455_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95925)))))
            (if (macro-no-such-file-or-directory-exception? _exn90452_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90452_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95924
                              (let ()
                                (declare (not safe))
                                (cons _exn90452_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95924)))))))
    (define noncontinuable-exception?
      (lambda (_exn90448_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90448_))
            (let ((_e90450_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90448_ 'exception))))
              (macro-noncontinuable-exception? _e90450_))
            (macro-noncontinuable-exception? _exn90448_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90442_))
            (let ((_e90445_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90442_ 'exception))))
              (if (macro-noncontinuable-exception? _e90445_)
                  (macro-noncontinuable-exception-reason _e90445_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95927
                                (let ()
                                  (declare (not safe))
                                  (cons _e90445_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95927)))))
            (if (macro-noncontinuable-exception? _exn90442_)
                (macro-noncontinuable-exception-reason _exn90442_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95926
                              (let ()
                                (declare (not safe))
                                (cons _exn90442_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95926)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90438_))
            (let ((_e90440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90438_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90440_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90438_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90434_))
            (let ((_e90436_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90434_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90436_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90436_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95929
                                (let ()
                                  (declare (not safe))
                                  (cons _e90436_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95929)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90434_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90434_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95928
                              (let ()
                                (declare (not safe))
                                (cons _exn90434_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95928)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90428_))
            (let ((_e90431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90428_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90431_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90431_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95931
                                (let ()
                                  (declare (not safe))
                                  (cons _e90431_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95931)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90428_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90428_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95930
                              (let ()
                                (declare (not safe))
                                (cons _exn90428_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95930)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90424_))
            (let ((_e90426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90424_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90426_))
            (macro-nonprocedure-operator-exception? _exn90424_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90420_))
            (let ((_e90422_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90420_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90422_)
                  (macro-nonprocedure-operator-exception-arguments _e90422_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95933
                                (let ()
                                  (declare (not safe))
                                  (cons _e90422_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95933)))))
            (if (macro-nonprocedure-operator-exception? _exn90420_)
                (macro-nonprocedure-operator-exception-arguments _exn90420_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95932
                              (let ()
                                (declare (not safe))
                                (cons _exn90420_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95932)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90416_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90416_))
            (let ((_e90418_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90416_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90418_)
                  (macro-nonprocedure-operator-exception-code _e90418_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95935
                                (let ()
                                  (declare (not safe))
                                  (cons _e90418_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95935)))))
            (if (macro-nonprocedure-operator-exception? _exn90416_)
                (macro-nonprocedure-operator-exception-code _exn90416_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95934
                              (let ()
                                (declare (not safe))
                                (cons _exn90416_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95934)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90412_))
            (let ((_e90414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90412_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90414_)
                  (macro-nonprocedure-operator-exception-operator _e90414_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95937
                                (let ()
                                  (declare (not safe))
                                  (cons _e90414_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95937)))))
            (if (macro-nonprocedure-operator-exception? _exn90412_)
                (macro-nonprocedure-operator-exception-operator _exn90412_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95936
                              (let ()
                                (declare (not safe))
                                (cons _exn90412_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95936)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90406_))
            (let ((_e90409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90406_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90409_)
                  (macro-nonprocedure-operator-exception-rte _e90409_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95939
                                (let ()
                                  (declare (not safe))
                                  (cons _e90409_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95939)))))
            (if (macro-nonprocedure-operator-exception? _exn90406_)
                (macro-nonprocedure-operator-exception-rte _exn90406_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95938
                              (let ()
                                (declare (not safe))
                                (cons _exn90406_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95938)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90402_))
            (let ((_e90404_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90402_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90404_))
            (macro-not-in-compilation-context-exception? _exn90402_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90398_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90398_))
            (let ((_e90400_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90398_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90400_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90400_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95941
                                (let ()
                                  (declare (not safe))
                                  (cons _e90400_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95941)))))
            (if (macro-not-in-compilation-context-exception? _exn90398_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90398_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95940
                              (let ()
                                (declare (not safe))
                                (cons _exn90398_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95940)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90392_))
            (let ((_e90395_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90392_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90395_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90395_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95943
                                (let ()
                                  (declare (not safe))
                                  (cons _e90395_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95943)))))
            (if (macro-not-in-compilation-context-exception? _exn90392_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90392_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95942
                              (let ()
                                (declare (not safe))
                                (cons _exn90392_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95942)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90388_))
            (let ((_e90390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90388_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90390_))
            (macro-number-of-arguments-limit-exception? _exn90388_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90384_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90384_))
            (let ((_e90386_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90384_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90386_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90386_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95945
                                (let ()
                                  (declare (not safe))
                                  (cons _e90386_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95945)))))
            (if (macro-number-of-arguments-limit-exception? _exn90384_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90384_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95944
                              (let ()
                                (declare (not safe))
                                (cons _exn90384_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95944)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90378_))
            (let ((_e90381_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90378_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90381_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90381_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95947
                                (let ()
                                  (declare (not safe))
                                  (cons _e90381_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95947)))))
            (if (macro-number-of-arguments-limit-exception? _exn90378_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90378_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95946
                              (let ()
                                (declare (not safe))
                                (cons _exn90378_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95946)))))))
    (define os-exception?
      (lambda (_exn90374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90374_))
            (let ((_e90376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90374_ 'exception))))
              (macro-os-exception? _e90376_))
            (macro-os-exception? _exn90374_))))
    (define os-exception-arguments
      (lambda (_exn90370_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90370_))
            (let ((_e90372_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90370_ 'exception))))
              (if (macro-os-exception? _e90372_)
                  (macro-os-exception-arguments _e90372_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95949
                                (let ()
                                  (declare (not safe))
                                  (cons _e90372_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95949)))))
            (if (macro-os-exception? _exn90370_)
                (macro-os-exception-arguments _exn90370_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95948
                              (let ()
                                (declare (not safe))
                                (cons _exn90370_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95948)))))))
    (define os-exception-code
      (lambda (_exn90366_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90366_))
            (let ((_e90368_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90366_ 'exception))))
              (if (macro-os-exception? _e90368_)
                  (macro-os-exception-code _e90368_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95951
                                (let ()
                                  (declare (not safe))
                                  (cons _e90368_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95951)))))
            (if (macro-os-exception? _exn90366_)
                (macro-os-exception-code _exn90366_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95950
                              (let ()
                                (declare (not safe))
                                (cons _exn90366_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95950)))))))
    (define os-exception-message
      (lambda (_exn90362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90362_))
            (let ((_e90364_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90362_ 'exception))))
              (if (macro-os-exception? _e90364_)
                  (macro-os-exception-message _e90364_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95953
                                (let ()
                                  (declare (not safe))
                                  (cons _e90364_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95953)))))
            (if (macro-os-exception? _exn90362_)
                (macro-os-exception-message _exn90362_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95952
                              (let ()
                                (declare (not safe))
                                (cons _exn90362_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95952)))))))
    (define os-exception-procedure
      (lambda (_exn90356_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90356_))
            (let ((_e90359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90356_ 'exception))))
              (if (macro-os-exception? _e90359_)
                  (macro-os-exception-procedure _e90359_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95955
                                (let ()
                                  (declare (not safe))
                                  (cons _e90359_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95955)))))
            (if (macro-os-exception? _exn90356_)
                (macro-os-exception-procedure _exn90356_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95954
                              (let ()
                                (declare (not safe))
                                (cons _exn90356_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95954)))))))
    (define permission-denied-exception?
      (lambda (_exn90352_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90352_))
            (let ((_e90354_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90352_ 'exception))))
              (macro-permission-denied-exception? _e90354_))
            (macro-permission-denied-exception? _exn90352_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90348_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90348_))
            (let ((_e90350_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90348_ 'exception))))
              (if (macro-permission-denied-exception? _e90350_)
                  (macro-permission-denied-exception-arguments _e90350_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95957
                                (let ()
                                  (declare (not safe))
                                  (cons _e90350_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95957)))))
            (if (macro-permission-denied-exception? _exn90348_)
                (macro-permission-denied-exception-arguments _exn90348_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95956
                              (let ()
                                (declare (not safe))
                                (cons _exn90348_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95956)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90342_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90342_))
            (let ((_e90345_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90342_ 'exception))))
              (if (macro-permission-denied-exception? _e90345_)
                  (macro-permission-denied-exception-procedure _e90345_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95959
                                (let ()
                                  (declare (not safe))
                                  (cons _e90345_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95959)))))
            (if (macro-permission-denied-exception? _exn90342_)
                (macro-permission-denied-exception-procedure _exn90342_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95958
                              (let ()
                                (declare (not safe))
                                (cons _exn90342_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95958)))))))
    (define range-exception?
      (lambda (_exn90338_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90338_))
            (let ((_e90340_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90338_ 'exception))))
              (macro-range-exception? _e90340_))
            (macro-range-exception? _exn90338_))))
    (define range-exception-arg-id
      (lambda (_exn90334_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90334_))
            (let ((_e90336_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90334_ 'exception))))
              (if (macro-range-exception? _e90336_)
                  (macro-range-exception-arg-id _e90336_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95961
                                (let ()
                                  (declare (not safe))
                                  (cons _e90336_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95961)))))
            (if (macro-range-exception? _exn90334_)
                (macro-range-exception-arg-id _exn90334_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95960
                              (let ()
                                (declare (not safe))
                                (cons _exn90334_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95960)))))))
    (define range-exception-arguments
      (lambda (_exn90330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90330_))
            (let ((_e90332_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90330_ 'exception))))
              (if (macro-range-exception? _e90332_)
                  (macro-range-exception-arguments _e90332_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95963
                                (let ()
                                  (declare (not safe))
                                  (cons _e90332_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95963)))))
            (if (macro-range-exception? _exn90330_)
                (macro-range-exception-arguments _exn90330_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95962
                              (let ()
                                (declare (not safe))
                                (cons _exn90330_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95962)))))))
    (define range-exception-procedure
      (lambda (_exn90324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90324_))
            (let ((_e90327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90324_ 'exception))))
              (if (macro-range-exception? _e90327_)
                  (macro-range-exception-procedure _e90327_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95965
                                (let ()
                                  (declare (not safe))
                                  (cons _e90327_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95965)))))
            (if (macro-range-exception? _exn90324_)
                (macro-range-exception-procedure _exn90324_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95964
                              (let ()
                                (declare (not safe))
                                (cons _exn90324_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95964)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90320_))
            (let ((_e90322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90320_ 'exception))))
              (macro-rpc-remote-error-exception? _e90322_))
            (macro-rpc-remote-error-exception? _exn90320_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90316_))
            (let ((_e90318_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90316_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90318_)
                  (macro-rpc-remote-error-exception-arguments _e90318_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95967
                                (let ()
                                  (declare (not safe))
                                  (cons _e90318_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95967)))))
            (if (macro-rpc-remote-error-exception? _exn90316_)
                (macro-rpc-remote-error-exception-arguments _exn90316_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95966
                              (let ()
                                (declare (not safe))
                                (cons _exn90316_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95966)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90312_))
            (let ((_e90314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90312_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90314_)
                  (macro-rpc-remote-error-exception-message _e90314_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95969
                                (let ()
                                  (declare (not safe))
                                  (cons _e90314_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95969)))))
            (if (macro-rpc-remote-error-exception? _exn90312_)
                (macro-rpc-remote-error-exception-message _exn90312_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95968
                              (let ()
                                (declare (not safe))
                                (cons _exn90312_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95968)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90306_))
            (let ((_e90309_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90306_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90309_)
                  (macro-rpc-remote-error-exception-procedure _e90309_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95971
                                (let ()
                                  (declare (not safe))
                                  (cons _e90309_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95971)))))
            (if (macro-rpc-remote-error-exception? _exn90306_)
                (macro-rpc-remote-error-exception-procedure _exn90306_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95970
                              (let ()
                                (declare (not safe))
                                (cons _exn90306_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95970)))))))
    (define scheduler-exception?
      (lambda (_exn90302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90302_))
            (let ((_e90304_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90302_ 'exception))))
              (macro-scheduler-exception? _e90304_))
            (macro-scheduler-exception? _exn90302_))))
    (define scheduler-exception-reason
      (lambda (_exn90296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90296_))
            (let ((_e90299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90296_ 'exception))))
              (if (macro-scheduler-exception? _e90299_)
                  (macro-scheduler-exception-reason _e90299_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95973
                                (let ()
                                  (declare (not safe))
                                  (cons _e90299_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95973)))))
            (if (macro-scheduler-exception? _exn90296_)
                (macro-scheduler-exception-reason _exn90296_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95972
                              (let ()
                                (declare (not safe))
                                (cons _exn90296_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95972)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90292_))
            (let ((_e90294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90292_ 'exception))))
              (macro-sfun-conversion-exception? _e90294_))
            (macro-sfun-conversion-exception? _exn90292_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90288_))
            (let ((_e90290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90288_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90290_)
                  (macro-sfun-conversion-exception-arguments _e90290_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95975
                                (let ()
                                  (declare (not safe))
                                  (cons _e90290_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95975)))))
            (if (macro-sfun-conversion-exception? _exn90288_)
                (macro-sfun-conversion-exception-arguments _exn90288_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95974
                              (let ()
                                (declare (not safe))
                                (cons _exn90288_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95974)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90284_))
            (let ((_e90286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90284_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90286_)
                  (macro-sfun-conversion-exception-code _e90286_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95977
                                (let ()
                                  (declare (not safe))
                                  (cons _e90286_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95977)))))
            (if (macro-sfun-conversion-exception? _exn90284_)
                (macro-sfun-conversion-exception-code _exn90284_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95976
                              (let ()
                                (declare (not safe))
                                (cons _exn90284_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95976)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90280_))
            (let ((_e90282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90280_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90282_)
                  (macro-sfun-conversion-exception-message _e90282_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95979
                                (let ()
                                  (declare (not safe))
                                  (cons _e90282_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95979)))))
            (if (macro-sfun-conversion-exception? _exn90280_)
                (macro-sfun-conversion-exception-message _exn90280_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95978
                              (let ()
                                (declare (not safe))
                                (cons _exn90280_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95978)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90274_))
            (let ((_e90277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90274_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90277_)
                  (macro-sfun-conversion-exception-procedure _e90277_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95981
                                (let ()
                                  (declare (not safe))
                                  (cons _e90277_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95981)))))
            (if (macro-sfun-conversion-exception? _exn90274_)
                (macro-sfun-conversion-exception-procedure _exn90274_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95980
                              (let ()
                                (declare (not safe))
                                (cons _exn90274_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95980)))))))
    (define stack-overflow-exception?
      (lambda (_exn90268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90268_))
            (let ((_e90271_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90268_ 'exception))))
              (macro-stack-overflow-exception? _e90271_))
            (macro-stack-overflow-exception? _exn90268_))))
    (define started-thread-exception?
      (lambda (_exn90264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90264_))
            (let ((_e90266_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90264_ 'exception))))
              (macro-started-thread-exception? _e90266_))
            (macro-started-thread-exception? _exn90264_))))
    (define started-thread-exception-arguments
      (lambda (_exn90260_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90260_))
            (let ((_e90262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90260_ 'exception))))
              (if (macro-started-thread-exception? _e90262_)
                  (macro-started-thread-exception-arguments _e90262_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95983
                                (let ()
                                  (declare (not safe))
                                  (cons _e90262_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95983)))))
            (if (macro-started-thread-exception? _exn90260_)
                (macro-started-thread-exception-arguments _exn90260_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95982
                              (let ()
                                (declare (not safe))
                                (cons _exn90260_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95982)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90254_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90254_))
            (let ((_e90257_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90254_ 'exception))))
              (if (macro-started-thread-exception? _e90257_)
                  (macro-started-thread-exception-procedure _e90257_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95985
                                (let ()
                                  (declare (not safe))
                                  (cons _e90257_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95985)))))
            (if (macro-started-thread-exception? _exn90254_)
                (macro-started-thread-exception-procedure _exn90254_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95984
                              (let ()
                                (declare (not safe))
                                (cons _exn90254_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95984)))))))
    (define terminated-thread-exception?
      (lambda (_exn90250_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90250_))
            (let ((_e90252_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90250_ 'exception))))
              (macro-terminated-thread-exception? _e90252_))
            (macro-terminated-thread-exception? _exn90250_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90246_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90246_))
            (let ((_e90248_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90246_ 'exception))))
              (if (macro-terminated-thread-exception? _e90248_)
                  (macro-terminated-thread-exception-arguments _e90248_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95987
                                (let ()
                                  (declare (not safe))
                                  (cons _e90248_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95987)))))
            (if (macro-terminated-thread-exception? _exn90246_)
                (macro-terminated-thread-exception-arguments _exn90246_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95986
                              (let ()
                                (declare (not safe))
                                (cons _exn90246_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95986)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90240_))
            (let ((_e90243_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90240_ 'exception))))
              (if (macro-terminated-thread-exception? _e90243_)
                  (macro-terminated-thread-exception-procedure _e90243_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95989
                                (let ()
                                  (declare (not safe))
                                  (cons _e90243_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95989)))))
            (if (macro-terminated-thread-exception? _exn90240_)
                (macro-terminated-thread-exception-procedure _exn90240_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95988
                              (let ()
                                (declare (not safe))
                                (cons _exn90240_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95988)))))))
    (define type-exception?
      (lambda (_exn90236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90236_))
            (let ((_e90238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90236_ 'exception))))
              (macro-type-exception? _e90238_))
            (macro-type-exception? _exn90236_))))
    (define type-exception-arg-id
      (lambda (_exn90232_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90232_))
            (let ((_e90234_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90232_ 'exception))))
              (if (macro-type-exception? _e90234_)
                  (macro-type-exception-arg-id _e90234_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95991
                                (let ()
                                  (declare (not safe))
                                  (cons _e90234_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95991)))))
            (if (macro-type-exception? _exn90232_)
                (macro-type-exception-arg-id _exn90232_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95990
                              (let ()
                                (declare (not safe))
                                (cons _exn90232_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95990)))))))
    (define type-exception-arguments
      (lambda (_exn90228_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90228_))
            (let ((_e90230_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90228_ 'exception))))
              (if (macro-type-exception? _e90230_)
                  (macro-type-exception-arguments _e90230_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95993
                                (let ()
                                  (declare (not safe))
                                  (cons _e90230_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95993)))))
            (if (macro-type-exception? _exn90228_)
                (macro-type-exception-arguments _exn90228_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95992
                              (let ()
                                (declare (not safe))
                                (cons _exn90228_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95992)))))))
    (define type-exception-procedure
      (lambda (_exn90224_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90224_))
            (let ((_e90226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90224_ 'exception))))
              (if (macro-type-exception? _e90226_)
                  (macro-type-exception-procedure _e90226_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95995
                                (let ()
                                  (declare (not safe))
                                  (cons _e90226_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95995)))))
            (if (macro-type-exception? _exn90224_)
                (macro-type-exception-procedure _exn90224_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95994
                              (let ()
                                (declare (not safe))
                                (cons _exn90224_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95994)))))))
    (define type-exception-type-id
      (lambda (_exn90218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90218_))
            (let ((_e90221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90218_ 'exception))))
              (if (macro-type-exception? _e90221_)
                  (macro-type-exception-type-id _e90221_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95997
                                (let ()
                                  (declare (not safe))
                                  (cons _e90221_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95997)))))
            (if (macro-type-exception? _exn90218_)
                (macro-type-exception-type-id _exn90218_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95996
                              (let ()
                                (declare (not safe))
                                (cons _exn90218_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95996)))))))
    (define unbound-global-exception?
      (lambda (_exn90214_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90214_))
            (let ((_e90216_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90214_ 'exception))))
              (macro-unbound-global-exception? _e90216_))
            (macro-unbound-global-exception? _exn90214_))))
    (define unbound-global-exception-code
      (lambda (_exn90210_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90210_))
            (let ((_e90212_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90210_ 'exception))))
              (if (macro-unbound-global-exception? _e90212_)
                  (macro-unbound-global-exception-code _e90212_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95999
                                (let ()
                                  (declare (not safe))
                                  (cons _e90212_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95999)))))
            (if (macro-unbound-global-exception? _exn90210_)
                (macro-unbound-global-exception-code _exn90210_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95998
                              (let ()
                                (declare (not safe))
                                (cons _exn90210_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95998)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90206_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90206_))
            (let ((_e90208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90206_ 'exception))))
              (if (macro-unbound-global-exception? _e90208_)
                  (macro-unbound-global-exception-rte _e90208_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96001
                                (let ()
                                  (declare (not safe))
                                  (cons _e90208_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp96001)))))
            (if (macro-unbound-global-exception? _exn90206_)
                (macro-unbound-global-exception-rte _exn90206_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96000
                              (let ()
                                (declare (not safe))
                                (cons _exn90206_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp96000)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90200_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90200_))
            (let ((_e90203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90200_ 'exception))))
              (if (macro-unbound-global-exception? _e90203_)
                  (macro-unbound-global-exception-variable _e90203_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96003
                                (let ()
                                  (declare (not safe))
                                  (cons _e90203_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp96003)))))
            (if (macro-unbound-global-exception? _exn90200_)
                (macro-unbound-global-exception-variable _exn90200_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96002
                              (let ()
                                (declare (not safe))
                                (cons _exn90200_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp96002)))))))
    (define unbound-key-exception?
      (lambda (_exn90196_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90196_))
            (let ((_e90198_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90196_ 'exception))))
              (macro-unbound-key-exception? _e90198_))
            (macro-unbound-key-exception? _exn90196_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90192_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90192_))
            (let ((_e90194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90192_ 'exception))))
              (if (macro-unbound-key-exception? _e90194_)
                  (macro-unbound-key-exception-arguments _e90194_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp96005
                                (let ()
                                  (declare (not safe))
                                  (cons _e90194_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp96005)))))
            (if (macro-unbound-key-exception? _exn90192_)
                (macro-unbound-key-exception-arguments _exn90192_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp96004
                              (let ()
                                (declare (not safe))
                                (cons _exn90192_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp96004)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90186_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90186_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90186_ 'exception))))
              (if (macro-unbound-key-exception? _e90189_)
                  (macro-unbound-key-exception-procedure _e90189_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp96007
                                (let ()
                                  (declare (not safe))
                                  (cons _e90189_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp96007)))))
            (if (macro-unbound-key-exception? _exn90186_)
                (macro-unbound-key-exception-procedure _exn90186_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp96006
                              (let ()
                                (declare (not safe))
                                (cons _exn90186_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp96006)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90182_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90182_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90182_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90184_))
            (macro-unbound-os-environment-variable-exception? _exn90182_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90178_))
            (let ((_e90180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90178_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90180_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90180_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp96009
                                (let ()
                                  (declare (not safe))
                                  (cons _e90180_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp96009)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90178_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90178_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp96008
                              (let ()
                                (declare (not safe))
                                (cons _exn90178_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp96008)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90172_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90172_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90172_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90175_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90175_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp96011
                                (let ()
                                  (declare (not safe))
                                  (cons _e90175_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp96011)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90172_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90172_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp96010
                              (let ()
                                (declare (not safe))
                                (cons _exn90172_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp96010)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90168_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90168_))
            (let ((_e90170_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90168_ 'exception))))
              (macro-unbound-serial-number-exception? _e90170_))
            (macro-unbound-serial-number-exception? _exn90168_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90164_))
            (let ((_e90166_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90164_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90166_)
                  (macro-unbound-serial-number-exception-arguments _e90166_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp96013
                                (let ()
                                  (declare (not safe))
                                  (cons _e90166_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp96013)))))
            (if (macro-unbound-serial-number-exception? _exn90164_)
                (macro-unbound-serial-number-exception-arguments _exn90164_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp96012
                              (let ()
                                (declare (not safe))
                                (cons _exn90164_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp96012)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90158_))
            (let ((_e90161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90158_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90161_)
                  (macro-unbound-serial-number-exception-procedure _e90161_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp96015
                                (let ()
                                  (declare (not safe))
                                  (cons _e90161_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp96015)))))
            (if (macro-unbound-serial-number-exception? _exn90158_)
                (macro-unbound-serial-number-exception-procedure _exn90158_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp96014
                              (let ()
                                (declare (not safe))
                                (cons _exn90158_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp96014)))))))
    (define uncaught-exception?
      (lambda (_exn90154_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90154_))
            (let ((_e90156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90154_ 'exception))))
              (macro-uncaught-exception? _e90156_))
            (macro-uncaught-exception? _exn90154_))))
    (define uncaught-exception-arguments
      (lambda (_exn90150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90150_))
            (let ((_e90152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90150_ 'exception))))
              (if (macro-uncaught-exception? _e90152_)
                  (macro-uncaught-exception-arguments _e90152_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96017
                                (let ()
                                  (declare (not safe))
                                  (cons _e90152_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp96017)))))
            (if (macro-uncaught-exception? _exn90150_)
                (macro-uncaught-exception-arguments _exn90150_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96016
                              (let ()
                                (declare (not safe))
                                (cons _exn90150_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp96016)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90146_))
            (let ((_e90148_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90146_ 'exception))))
              (if (macro-uncaught-exception? _e90148_)
                  (macro-uncaught-exception-procedure _e90148_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96019
                                (let ()
                                  (declare (not safe))
                                  (cons _e90148_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp96019)))))
            (if (macro-uncaught-exception? _exn90146_)
                (macro-uncaught-exception-procedure _exn90146_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96018
                              (let ()
                                (declare (not safe))
                                (cons _exn90146_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp96018)))))))
    (define uncaught-exception-reason
      (lambda (_exn90140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90140_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90140_ 'exception))))
              (if (macro-uncaught-exception? _e90143_)
                  (macro-uncaught-exception-reason _e90143_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96021
                                (let ()
                                  (declare (not safe))
                                  (cons _e90143_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp96021)))))
            (if (macro-uncaught-exception? _exn90140_)
                (macro-uncaught-exception-reason _exn90140_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96020
                              (let ()
                                (declare (not safe))
                                (cons _exn90140_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp96020)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90136_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90136_ 'exception))))
              (macro-uninitialized-thread-exception? _e90138_))
            (macro-uninitialized-thread-exception? _exn90136_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90132_))
            (let ((_e90134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90132_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90134_)
                  (macro-uninitialized-thread-exception-arguments _e90134_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp96023
                                (let ()
                                  (declare (not safe))
                                  (cons _e90134_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp96023)))))
            (if (macro-uninitialized-thread-exception? _exn90132_)
                (macro-uninitialized-thread-exception-arguments _exn90132_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp96022
                              (let ()
                                (declare (not safe))
                                (cons _exn90132_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp96022)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90126_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90126_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90129_)
                  (macro-uninitialized-thread-exception-procedure _e90129_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp96025
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp96025)))))
            (if (macro-uninitialized-thread-exception? _exn90126_)
                (macro-uninitialized-thread-exception-procedure _exn90126_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp96024
                              (let ()
                                (declare (not safe))
                                (cons _exn90126_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp96024)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90122_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90122_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90124_))
            (macro-unknown-keyword-argument-exception? _exn90122_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90118_))
            (let ((_e90120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90118_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90120_)
                  (macro-unknown-keyword-argument-exception-arguments _e90120_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96027
                                (let ()
                                  (declare (not safe))
                                  (cons _e90120_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp96027)))))
            (if (macro-unknown-keyword-argument-exception? _exn90118_)
                (macro-unknown-keyword-argument-exception-arguments _exn90118_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96026
                              (let ()
                                (declare (not safe))
                                (cons _exn90118_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp96026)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90112_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90112_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90115_)
                  (macro-unknown-keyword-argument-exception-procedure _e90115_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96029
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp96029)))))
            (if (macro-unknown-keyword-argument-exception? _exn90112_)
                (macro-unknown-keyword-argument-exception-procedure _exn90112_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96028
                              (let ()
                                (declare (not safe))
                                (cons _exn90112_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp96028)))))))
    (define unterminated-process-exception?
      (lambda (_exn90108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90108_))
            (let ((_e90110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90108_ 'exception))))
              (macro-unterminated-process-exception? _e90110_))
            (macro-unterminated-process-exception? _exn90108_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90104_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90104_ 'exception))))
              (if (macro-unterminated-process-exception? _e90106_)
                  (macro-unterminated-process-exception-arguments _e90106_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96031
                                (let ()
                                  (declare (not safe))
                                  (cons _e90106_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp96031)))))
            (if (macro-unterminated-process-exception? _exn90104_)
                (macro-unterminated-process-exception-arguments _exn90104_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96030
                              (let ()
                                (declare (not safe))
                                (cons _exn90104_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp96030)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90098_))
            (let ((_e90101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90098_ 'exception))))
              (if (macro-unterminated-process-exception? _e90101_)
                  (macro-unterminated-process-exception-procedure _e90101_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96033
                                (let ()
                                  (declare (not safe))
                                  (cons _e90101_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp96033)))))
            (if (macro-unterminated-process-exception? _exn90098_)
                (macro-unterminated-process-exception-procedure _exn90098_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96032
                              (let ()
                                (declare (not safe))
                                (cons _exn90098_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp96032)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90094_))
            (let ((_e90096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90094_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90096_))
            (macro-wrong-number-of-arguments-exception? _exn90094_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90090_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90090_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90092_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90092_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96035
                                (let ()
                                  (declare (not safe))
                                  (cons _e90092_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp96035)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90090_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90090_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96034
                              (let ()
                                (declare (not safe))
                                (cons _exn90090_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp96034)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90084_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90084_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90087_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90087_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96037
                                (let ()
                                  (declare (not safe))
                                  (cons _e90087_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96037)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90084_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90084_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96036
                              (let ()
                                (declare (not safe))
                                (cons _exn90084_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp96036)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90080_))
            (let ((_e90082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90080_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90082_))
            (macro-wrong-number-of-values-exception? _exn90080_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90076_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90076_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90078_)
                  (macro-wrong-number-of-values-exception-code _e90078_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96039
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96039)))))
            (if (macro-wrong-number-of-values-exception? _exn90076_)
                (macro-wrong-number-of-values-exception-code _exn90076_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96038
                              (let ()
                                (declare (not safe))
                                (cons _exn90076_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96038)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90072_))
            (let ((_e90074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90072_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90074_)
                  (macro-wrong-number-of-values-exception-rte _e90074_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96041
                                (let ()
                                  (declare (not safe))
                                  (cons _e90074_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96041)))))
            (if (macro-wrong-number-of-values-exception? _exn90072_)
                (macro-wrong-number-of-values-exception-rte _exn90072_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96040
                              (let ()
                                (declare (not safe))
                                (cons _exn90072_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96040)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90066_))
            (let ((_e90069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90066_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90069_)
                  (macro-wrong-number-of-values-exception-vals _e90069_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96043
                                (let ()
                                  (declare (not safe))
                                  (cons _e90069_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96043)))))
            (if (macro-wrong-number-of-values-exception? _exn90066_)
                (macro-wrong-number-of-values-exception-vals _exn90066_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96042
                              (let ()
                                (declare (not safe))
                                (cons _exn90066_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96042)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90060_))
            (let ((_e90063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90060_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90063_))
            (macro-wrong-processor-c-return-exception? _exn90060_))))))
