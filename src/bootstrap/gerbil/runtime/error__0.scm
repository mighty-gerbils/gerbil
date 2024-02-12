(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707735854)
  (begin
    (define Exception::t
      (let ((__tmp95795 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95795
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91198_ (apply make-instance Exception::t _$args91198_)))
    (define StackTrace::t
      (let ((__tmp95796 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95796
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91195_ (apply make-instance StackTrace::t _$args91195_)))
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
      (let ((__tmp95797 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95797
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91192_ (apply make-instance Error::t _$args91192_)))
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
      (let ((__tmp95798 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95798
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91189_
        (apply make-instance RuntimeException::t _$args91189_)))
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
      (lambda (_exn91184_ _continue91185_)
        (let ((_exn91187_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91184_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91187_ _continue91185_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91180_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91180_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91180_ 'continuation))
                '#!void
                (let ((__tmp95799
                       (lambda (_cont91182_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91180_
                            'continuation
                            _cont91182_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95799)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91180_))))
    (define error
      (lambda (_message91177_ . _irritants91178_)
        (raise (let ((__obj95789
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95789
                  _message91177_
                  'irritants:
                  _irritants91178_)
                 __obj95789))))
    (define with-exception-handler
      (lambda (_handler91170_ _thunk91171_)
        (if (let () (declare (not safe)) (procedure? _handler91170_))
            '#!void
            (raise (let ((__obj95790
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95790
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91170_ '())))
                     __obj95790)))
        (if (let () (declare (not safe)) (procedure? _thunk91171_))
            '#!void
            (raise (let ((__obj95791
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95791
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91171_ '())))
                     __obj95791)))
        (let ((__tmp95800
               (lambda (_exn91173_)
                 (let ((_exn91175_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91173_))))
                   (_handler91170_ _exn91175_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95800 _thunk91171_))))
    (define with-catch
      (lambda (_handler91163_ _thunk91164_)
        (if (let () (declare (not safe)) (procedure? _handler91163_))
            '#!void
            (raise (let ((__obj95792
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95792
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91163_ '())))
                     __obj95792)))
        (if (let () (declare (not safe)) (procedure? _thunk91164_))
            '#!void
            (raise (let ((__obj95793
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95793
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91164_ '())))
                     __obj95793)))
        (let ((__tmp95801
               (lambda (_cont91166_)
                 (with-exception-handler
                  (lambda (_exn91168_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91166_
                       _handler91163_
                       _exn91168_)))
                  _thunk91164_))))
          (declare (not safe))
          (##continuation-capture __tmp95801))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91154_)
        (if (or (heap-overflow-exception? _exn91154_)
                (stack-overflow-exception? _exn91154_))
            _exn91154_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91154_))
                _exn91154_
                (if (macro-exception? _exn91154_)
                    (let ((_rte91159_
                           (let ((__obj95794
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95794
                                _exn91154_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95794)))
                      (let ((__tmp95802
                             (lambda (_cont91161_)
                               (let ((__tmp95803
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91161_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91159_
                                  'continuation
                                  __tmp95803)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95802))
                      _rte91159_)
                    _exn91154_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91149_)
        (let ((_$e91151_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91149_))))
          (if _$e91151_ _$e91151_ (error-exception? _obj91149_)))))
    (define error-message
      (lambda (_obj91147_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91147_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91147_ 'message))
            (if (error-exception? _obj91147_)
                (error-exception-message _obj91147_)
                '#f))))
    (define error-irritants
      (lambda (_obj91145_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91145_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91145_ 'irritants))
            (if (error-exception? _obj91145_)
                (error-exception-parameters _obj91145_)
                '#f))))
    (define error-trace
      (lambda (_obj91143_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91143_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91143_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91125_ _port91126_)
        (let ((_$e91128_
               (let ()
                 (declare (not safe))
                 (method-ref _e91125_ 'display-exception))))
          (if _$e91128_
              ((lambda (_f91131_) (_f91131_ _e91125_ _port91126_)) _$e91128_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91125_ _port91126_))))))
    (define display-exception__0
      (lambda (_e91136_)
        (let ((_port91138_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91136_ _port91138_))))
    (define display-exception
      (lambda _g95805_
        (let ((_g95804_ (let () (declare (not safe)) (##length _g95805_))))
          (cond ((let () (declare (not safe)) (##fx= _g95804_ 1))
                 (apply (lambda (_e91136_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91136_)))
                        _g95805_))
                ((let () (declare (not safe)) (##fx= _g95804_ 2))
                 (apply (lambda (_e91140_ _port91141_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91140_ _port91141_)))
                        _g95805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95805_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91114_ _message91115_ . _rest91116_)
        (let ((_message91122_
               (if (let () (declare (not safe)) (string? _message91115_))
                   _message91115_
                   (call-with-output-string
                    '""
                    (lambda (_g9111791119_)
                      (display _message91115_ _g9111791119_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91114_ 'message _message91122_))
          (apply class-instance-init! _self91114_ _rest91116_))))
    (define Error:::init!::specialize
      (lambda (__t95768)
        (let ((__message95769
               (let ((__tmp95770
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95768 'message))))
                 (if __tmp95770 __tmp95770 (error '"Unknown slot" 'message)))))
          (lambda (_self91114_ _message91115_ . _rest91116_)
            (let ((_message91122_
                   (if (let () (declare (not safe)) (string? _message91115_))
                       _message91115_
                       (call-with-output-string
                        '""
                        (lambda (_g9111791119_)
                          (display _message91115_ _g9111791119_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91114_
                 _message91122_
                 __message95769
                 __t95768
                 '#f))
              (apply class-instance-init! _self91114_ _rest91116_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90972_ _port90973_)
        (let ((_tmp-port90975_ (open-output-string))
              (_display-error-newline90976_
               (> (output-port-column _port90973_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90975_))
          (let ((__tmp95806
                 (lambda ()
                   (if _display-error-newline90976_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90979_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90972_ 'where))))
                     (if _$e90979_ (display _$e90979_) (display '"?")))
                   (let ((__tmp95807
                          (let ((__tmp95808
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90972_))))
                            (declare (not safe))
                            (##type-name __tmp95808))))
                     (declare (not safe))
                     (display* '" [" __tmp95807 '"]: "))
                   (let ((__tmp95809
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90972_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95809))
                   (let ((_irritants90982_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90972_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90982_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90984_)
                              (write _obj90984_)
                              (write-char '#\space))
                            _irritants90982_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90972_))
                            (dump-stack-trace?))
                       (let ((_cont9098590987_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90972_
                                 'continuation))))
                         (if _cont9098590987_
                             (let ((_cont90990_ _cont9098590987_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90990_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95806
             current-output-port
             _tmp-port90975_))
          (let ((__tmp95810 (get-output-string _tmp-port90975_)))
            (declare (not safe))
            (##write-string __tmp95810 _port90973_)))))
    (define Error::display-exception::specialize
      (lambda (__t95771)
        (let ((__irritants95772
               (let ((__tmp95776
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95771 'irritants))))
                 (if __tmp95776
                     __tmp95776
                     (error '"Unknown slot" 'irritants))))
              (__where95773
               (let ((__tmp95777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95771 'where))))
                 (if __tmp95777 __tmp95777 (error '"Unknown slot" 'where))))
              (__message95774
               (let ((__tmp95778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95771 'message))))
                 (if __tmp95778 __tmp95778 (error '"Unknown slot" 'message))))
              (__continuation95775
               (let ((__tmp95779
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95771 'continuation))))
                 (if __tmp95779
                     __tmp95779
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90972_ _port90973_)
            (let ((_tmp-port90975_ (open-output-string))
                  (_display-error-newline90976_
                   (> (output-port-column _port90973_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90975_))
              (let ((__tmp95811
                     (lambda ()
                       (if _display-error-newline90976_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90979_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90972_
                                 __where95773
                                 __t95771
                                 '#f))))
                         (if _$e90979_ (display _$e90979_) (display '"?")))
                       (let ((__tmp95812
                              (let ((__tmp95813
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90972_))))
                                (declare (not safe))
                                (##type-name __tmp95813))))
                         (declare (not safe))
                         (display* '" [" __tmp95812 '"]: "))
                       (let ((__tmp95814
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90972_
                                 __message95774
                                 __t95771
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95814))
                       (let ((_irritants90982_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90972_
                                 __irritants95772
                                 __t95771
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90982_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90984_)
                                  (write _obj90984_)
                                  (write-char '#\space))
                                _irritants90982_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90972_))
                                (dump-stack-trace?))
                           (let ((_cont9098590987_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90972_
                                     __continuation95775
                                     __t95771
                                     '#f))))
                             (if _cont9098590987_
                                 (let ((_cont90990_ _cont9098590987_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90990_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95811
                 current-output-port
                 _tmp-port90975_))
              (let ((__tmp95815 (get-output-string _tmp-port90975_)))
                (declare (not safe))
                (##write-string __tmp95815 _port90973_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90839_ _port90840_)
        (let ((_tmp-port90842_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90842_))
          (let ((__tmp95816
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90839_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95816 _tmp-port90842_))
          (if (dump-stack-trace?)
              (let ((_cont9084390845_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90839_ 'continuation))))
                (if _cont9084390845_
                    (let ((_cont90848_ _cont9084390845_))
                      (display '"--- continuation backtrace:" _tmp-port90842_)
                      (newline _tmp-port90842_)
                      (display-continuation-backtrace
                       _cont90848_
                       _tmp-port90842_))
                    '#f))
              '#!void)
          (let ((__tmp95817 (get-output-string _tmp-port90842_)))
            (declare (not safe))
            (##write-string __tmp95817 _port90840_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95780)
        (let ((__exception95781
               (let ((__tmp95783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95780 'exception))))
                 (if __tmp95783
                     __tmp95783
                     (error '"Unknown slot" 'exception))))
              (__continuation95782
               (let ((__tmp95784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95780 'continuation))))
                 (if __tmp95784
                     __tmp95784
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90839_ _port90840_)
            (let ((_tmp-port90842_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90842_))
              (let ((__tmp95818
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90839_
                        __exception95781
                        __t95780
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95818 _tmp-port90842_))
              (if (dump-stack-trace?)
                  (let ((_cont9084390845_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90839_
                            __continuation95782
                            __t95780
                            '#f))))
                    (if _cont9084390845_
                        (let ((_cont90848_ _cont9084390845_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90842_)
                          (newline _tmp-port90842_)
                          (display-continuation-backtrace
                           _cont90848_
                           _tmp-port90842_))
                        '#f))
                  '#!void)
              (let ((__tmp95819 (get-output-string _tmp-port90842_)))
                (declare (not safe))
                (##write-string __tmp95819 _port90840_)))))))
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
      (lambda (_port90711_)
        (if (macro-character-port? _port90711_)
            (let ((_old-width90713_
                   (macro-character-port-output-width _port90711_)))
              (macro-character-port-output-width-set!
               _port90711_
               (lambda (_port90715_) '256))
              _old-width90713_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90708_ _old-width90709_)
        (if (macro-character-port? _port90708_)
            (macro-character-port-output-width-set!
             _port90708_
             _old-width90709_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90706_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90706_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90700_))
            (let ((_e90703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90700_ 'exception))))
              (macro-abandoned-mutex-exception? _e90703_))
            (macro-abandoned-mutex-exception? _exn90700_))))
    (define cfun-conversion-exception?
      (lambda (_exn90696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90696_))
            (let ((_e90698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90696_ 'exception))))
              (macro-cfun-conversion-exception? _e90698_))
            (macro-cfun-conversion-exception? _exn90696_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90692_))
            (let ((_e90694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90692_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90694_)
                  (macro-cfun-conversion-exception-arguments _e90694_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95821
                                (let ()
                                  (declare (not safe))
                                  (cons _e90694_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95821)))))
            (if (macro-cfun-conversion-exception? _exn90692_)
                (macro-cfun-conversion-exception-arguments _exn90692_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95820
                              (let ()
                                (declare (not safe))
                                (cons _exn90692_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95820)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90688_))
            (let ((_e90690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90688_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90690_)
                  (macro-cfun-conversion-exception-code _e90690_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95823
                                (let ()
                                  (declare (not safe))
                                  (cons _e90690_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95823)))))
            (if (macro-cfun-conversion-exception? _exn90688_)
                (macro-cfun-conversion-exception-code _exn90688_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95822
                              (let ()
                                (declare (not safe))
                                (cons _exn90688_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95822)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90684_))
            (let ((_e90686_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90684_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90686_)
                  (macro-cfun-conversion-exception-message _e90686_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95825
                                (let ()
                                  (declare (not safe))
                                  (cons _e90686_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95825)))))
            (if (macro-cfun-conversion-exception? _exn90684_)
                (macro-cfun-conversion-exception-message _exn90684_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95824
                              (let ()
                                (declare (not safe))
                                (cons _exn90684_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95824)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90678_))
            (let ((_e90681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90678_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90681_)
                  (macro-cfun-conversion-exception-procedure _e90681_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95827
                                (let ()
                                  (declare (not safe))
                                  (cons _e90681_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95827)))))
            (if (macro-cfun-conversion-exception? _exn90678_)
                (macro-cfun-conversion-exception-procedure _exn90678_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95826
                              (let ()
                                (declare (not safe))
                                (cons _exn90678_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95826)))))))
    (define datum-parsing-exception?
      (lambda (_exn90674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90674_))
            (let ((_e90676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90674_ 'exception))))
              (macro-datum-parsing-exception? _e90676_))
            (macro-datum-parsing-exception? _exn90674_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90670_))
            (let ((_e90672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90670_ 'exception))))
              (if (macro-datum-parsing-exception? _e90672_)
                  (macro-datum-parsing-exception-kind _e90672_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95829
                                (let ()
                                  (declare (not safe))
                                  (cons _e90672_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95829)))))
            (if (macro-datum-parsing-exception? _exn90670_)
                (macro-datum-parsing-exception-kind _exn90670_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95828
                              (let ()
                                (declare (not safe))
                                (cons _exn90670_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95828)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90666_))
            (let ((_e90668_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90666_ 'exception))))
              (if (macro-datum-parsing-exception? _e90668_)
                  (macro-datum-parsing-exception-parameters _e90668_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95831
                                (let ()
                                  (declare (not safe))
                                  (cons _e90668_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95831)))))
            (if (macro-datum-parsing-exception? _exn90666_)
                (macro-datum-parsing-exception-parameters _exn90666_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95830
                              (let ()
                                (declare (not safe))
                                (cons _exn90666_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95830)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90660_))
            (let ((_e90663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90660_ 'exception))))
              (if (macro-datum-parsing-exception? _e90663_)
                  (macro-datum-parsing-exception-readenv _e90663_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95833
                                (let ()
                                  (declare (not safe))
                                  (cons _e90663_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95833)))))
            (if (macro-datum-parsing-exception? _exn90660_)
                (macro-datum-parsing-exception-readenv _exn90660_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95832
                              (let ()
                                (declare (not safe))
                                (cons _exn90660_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95832)))))))
    (define deadlock-exception?
      (lambda (_exn90654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90654_))
            (let ((_e90657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90654_ 'exception))))
              (macro-deadlock-exception? _e90657_))
            (macro-deadlock-exception? _exn90654_))))
    (define divide-by-zero-exception?
      (lambda (_exn90650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90650_))
            (let ((_e90652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90650_ 'exception))))
              (macro-divide-by-zero-exception? _e90652_))
            (macro-divide-by-zero-exception? _exn90650_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90646_))
            (let ((_e90648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90646_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90648_)
                  (macro-divide-by-zero-exception-arguments _e90648_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95835
                                (let ()
                                  (declare (not safe))
                                  (cons _e90648_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95835)))))
            (if (macro-divide-by-zero-exception? _exn90646_)
                (macro-divide-by-zero-exception-arguments _exn90646_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95834
                              (let ()
                                (declare (not safe))
                                (cons _exn90646_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95834)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90640_))
            (let ((_e90643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90640_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90643_)
                  (macro-divide-by-zero-exception-procedure _e90643_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95837
                                (let ()
                                  (declare (not safe))
                                  (cons _e90643_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95837)))))
            (if (macro-divide-by-zero-exception? _exn90640_)
                (macro-divide-by-zero-exception-procedure _exn90640_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95836
                              (let ()
                                (declare (not safe))
                                (cons _exn90640_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95836)))))))
    (define error-exception?
      (lambda (_exn90636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90636_))
            (let ((_e90638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90636_ 'exception))))
              (macro-error-exception? _e90638_))
            (macro-error-exception? _exn90636_))))
    (define error-exception-message
      (lambda (_exn90632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90632_))
            (let ((_e90634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90632_ 'exception))))
              (if (macro-error-exception? _e90634_)
                  (macro-error-exception-message _e90634_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95839
                                (let ()
                                  (declare (not safe))
                                  (cons _e90634_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95839)))))
            (if (macro-error-exception? _exn90632_)
                (macro-error-exception-message _exn90632_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95838
                              (let ()
                                (declare (not safe))
                                (cons _exn90632_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95838)))))))
    (define error-exception-parameters
      (lambda (_exn90626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90626_))
            (let ((_e90629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90626_ 'exception))))
              (if (macro-error-exception? _e90629_)
                  (macro-error-exception-parameters _e90629_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95841
                                (let ()
                                  (declare (not safe))
                                  (cons _e90629_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95841)))))
            (if (macro-error-exception? _exn90626_)
                (macro-error-exception-parameters _exn90626_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95840
                              (let ()
                                (declare (not safe))
                                (cons _exn90626_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95840)))))))
    (define expression-parsing-exception?
      (lambda (_exn90622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90622_))
            (let ((_e90624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90622_ 'exception))))
              (macro-expression-parsing-exception? _e90624_))
            (macro-expression-parsing-exception? _exn90622_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90618_))
            (let ((_e90620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90618_ 'exception))))
              (if (macro-expression-parsing-exception? _e90620_)
                  (macro-expression-parsing-exception-kind _e90620_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95843
                                (let ()
                                  (declare (not safe))
                                  (cons _e90620_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95843)))))
            (if (macro-expression-parsing-exception? _exn90618_)
                (macro-expression-parsing-exception-kind _exn90618_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95842
                              (let ()
                                (declare (not safe))
                                (cons _exn90618_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95842)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90614_))
            (let ((_e90616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90614_ 'exception))))
              (if (macro-expression-parsing-exception? _e90616_)
                  (macro-expression-parsing-exception-parameters _e90616_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95845
                                (let ()
                                  (declare (not safe))
                                  (cons _e90616_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95845)))))
            (if (macro-expression-parsing-exception? _exn90614_)
                (macro-expression-parsing-exception-parameters _exn90614_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95844
                              (let ()
                                (declare (not safe))
                                (cons _exn90614_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95844)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90608_))
            (let ((_e90611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90608_ 'exception))))
              (if (macro-expression-parsing-exception? _e90611_)
                  (macro-expression-parsing-exception-source _e90611_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95847
                                (let ()
                                  (declare (not safe))
                                  (cons _e90611_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95847)))))
            (if (macro-expression-parsing-exception? _exn90608_)
                (macro-expression-parsing-exception-source _exn90608_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95846
                              (let ()
                                (declare (not safe))
                                (cons _exn90608_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95846)))))))
    (define file-exists-exception?
      (lambda (_exn90604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90604_))
            (let ((_e90606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90604_ 'exception))))
              (macro-file-exists-exception? _e90606_))
            (macro-file-exists-exception? _exn90604_))))
    (define file-exists-exception-arguments
      (lambda (_exn90600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90600_))
            (let ((_e90602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90600_ 'exception))))
              (if (macro-file-exists-exception? _e90602_)
                  (macro-file-exists-exception-arguments _e90602_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95849
                                (let ()
                                  (declare (not safe))
                                  (cons _e90602_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95849)))))
            (if (macro-file-exists-exception? _exn90600_)
                (macro-file-exists-exception-arguments _exn90600_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95848
                              (let ()
                                (declare (not safe))
                                (cons _exn90600_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95848)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90594_))
            (let ((_e90597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90594_ 'exception))))
              (if (macro-file-exists-exception? _e90597_)
                  (macro-file-exists-exception-procedure _e90597_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95851
                                (let ()
                                  (declare (not safe))
                                  (cons _e90597_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95851)))))
            (if (macro-file-exists-exception? _exn90594_)
                (macro-file-exists-exception-procedure _exn90594_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95850
                              (let ()
                                (declare (not safe))
                                (cons _exn90594_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95850)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90590_))
            (let ((_e90592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90590_ 'exception))))
              (macro-fixnum-overflow-exception? _e90592_))
            (macro-fixnum-overflow-exception? _exn90590_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90586_))
            (let ((_e90588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90586_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90588_)
                  (macro-fixnum-overflow-exception-arguments _e90588_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95853
                                (let ()
                                  (declare (not safe))
                                  (cons _e90588_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95853)))))
            (if (macro-fixnum-overflow-exception? _exn90586_)
                (macro-fixnum-overflow-exception-arguments _exn90586_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95852
                              (let ()
                                (declare (not safe))
                                (cons _exn90586_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95852)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90580_))
            (let ((_e90583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90580_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90583_)
                  (macro-fixnum-overflow-exception-procedure _e90583_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95855
                                (let ()
                                  (declare (not safe))
                                  (cons _e90583_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95855)))))
            (if (macro-fixnum-overflow-exception? _exn90580_)
                (macro-fixnum-overflow-exception-procedure _exn90580_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95854
                              (let ()
                                (declare (not safe))
                                (cons _exn90580_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95854)))))))
    (define heap-overflow-exception?
      (lambda (_exn90574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90574_))
            (let ((_e90577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90574_ 'exception))))
              (macro-heap-overflow-exception? _e90577_))
            (macro-heap-overflow-exception? _exn90574_))))
    (define inactive-thread-exception?
      (lambda (_exn90570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90570_))
            (let ((_e90572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90570_ 'exception))))
              (macro-inactive-thread-exception? _e90572_))
            (macro-inactive-thread-exception? _exn90570_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90566_))
            (let ((_e90568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90566_ 'exception))))
              (if (macro-inactive-thread-exception? _e90568_)
                  (macro-inactive-thread-exception-arguments _e90568_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95857
                                (let ()
                                  (declare (not safe))
                                  (cons _e90568_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95857)))))
            (if (macro-inactive-thread-exception? _exn90566_)
                (macro-inactive-thread-exception-arguments _exn90566_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95856
                              (let ()
                                (declare (not safe))
                                (cons _exn90566_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95856)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90560_))
            (let ((_e90563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90560_ 'exception))))
              (if (macro-inactive-thread-exception? _e90563_)
                  (macro-inactive-thread-exception-procedure _e90563_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95859
                                (let ()
                                  (declare (not safe))
                                  (cons _e90563_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95859)))))
            (if (macro-inactive-thread-exception? _exn90560_)
                (macro-inactive-thread-exception-procedure _exn90560_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95858
                              (let ()
                                (declare (not safe))
                                (cons _exn90560_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95858)))))))
    (define initialized-thread-exception?
      (lambda (_exn90556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90556_))
            (let ((_e90558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90556_ 'exception))))
              (macro-initialized-thread-exception? _e90558_))
            (macro-initialized-thread-exception? _exn90556_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90552_))
            (let ((_e90554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90552_ 'exception))))
              (if (macro-initialized-thread-exception? _e90554_)
                  (macro-initialized-thread-exception-arguments _e90554_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95861
                                (let ()
                                  (declare (not safe))
                                  (cons _e90554_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95861)))))
            (if (macro-initialized-thread-exception? _exn90552_)
                (macro-initialized-thread-exception-arguments _exn90552_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95860
                              (let ()
                                (declare (not safe))
                                (cons _exn90552_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95860)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90546_))
            (let ((_e90549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90546_ 'exception))))
              (if (macro-initialized-thread-exception? _e90549_)
                  (macro-initialized-thread-exception-procedure _e90549_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95863
                                (let ()
                                  (declare (not safe))
                                  (cons _e90549_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95863)))))
            (if (macro-initialized-thread-exception? _exn90546_)
                (macro-initialized-thread-exception-procedure _exn90546_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95862
                              (let ()
                                (declare (not safe))
                                (cons _exn90546_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95862)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90542_))
            (let ((_e90544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90542_ 'exception))))
              (macro-invalid-hash-number-exception? _e90544_))
            (macro-invalid-hash-number-exception? _exn90542_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90538_))
            (let ((_e90540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90538_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90540_)
                  (macro-invalid-hash-number-exception-arguments _e90540_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95865
                                (let ()
                                  (declare (not safe))
                                  (cons _e90540_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95865)))))
            (if (macro-invalid-hash-number-exception? _exn90538_)
                (macro-invalid-hash-number-exception-arguments _exn90538_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95864
                              (let ()
                                (declare (not safe))
                                (cons _exn90538_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95864)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90532_))
            (let ((_e90535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90532_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90535_)
                  (macro-invalid-hash-number-exception-procedure _e90535_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95867
                                (let ()
                                  (declare (not safe))
                                  (cons _e90535_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95867)))))
            (if (macro-invalid-hash-number-exception? _exn90532_)
                (macro-invalid-hash-number-exception-procedure _exn90532_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95866
                              (let ()
                                (declare (not safe))
                                (cons _exn90532_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95866)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90528_))
            (let ((_e90530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90528_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90530_))
            (macro-invalid-utf8-encoding-exception? _exn90528_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90524_))
            (let ((_e90526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90524_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90526_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90526_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95869
                                (let ()
                                  (declare (not safe))
                                  (cons _e90526_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95869)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90524_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90524_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95868
                              (let ()
                                (declare (not safe))
                                (cons _exn90524_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95868)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90518_))
            (let ((_e90521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90518_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90521_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90521_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95871
                                (let ()
                                  (declare (not safe))
                                  (cons _e90521_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95871)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90518_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90518_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95870
                              (let ()
                                (declare (not safe))
                                (cons _exn90518_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95870)))))))
    (define join-timeout-exception?
      (lambda (_exn90514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90514_))
            (let ((_e90516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90514_ 'exception))))
              (macro-join-timeout-exception? _e90516_))
            (macro-join-timeout-exception? _exn90514_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90510_))
            (let ((_e90512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90510_ 'exception))))
              (if (macro-join-timeout-exception? _e90512_)
                  (macro-join-timeout-exception-arguments _e90512_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95873
                                (let ()
                                  (declare (not safe))
                                  (cons _e90512_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95873)))))
            (if (macro-join-timeout-exception? _exn90510_)
                (macro-join-timeout-exception-arguments _exn90510_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95872
                              (let ()
                                (declare (not safe))
                                (cons _exn90510_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95872)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90504_))
            (let ((_e90507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90504_ 'exception))))
              (if (macro-join-timeout-exception? _e90507_)
                  (macro-join-timeout-exception-procedure _e90507_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95875
                                (let ()
                                  (declare (not safe))
                                  (cons _e90507_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95875)))))
            (if (macro-join-timeout-exception? _exn90504_)
                (macro-join-timeout-exception-procedure _exn90504_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95874
                              (let ()
                                (declare (not safe))
                                (cons _exn90504_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95874)))))))
    (define keyword-expected-exception?
      (lambda (_exn90500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90500_))
            (let ((_e90502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90500_ 'exception))))
              (macro-keyword-expected-exception? _e90502_))
            (macro-keyword-expected-exception? _exn90500_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90496_))
            (let ((_e90498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90496_ 'exception))))
              (if (macro-keyword-expected-exception? _e90498_)
                  (macro-keyword-expected-exception-arguments _e90498_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95877
                                (let ()
                                  (declare (not safe))
                                  (cons _e90498_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95877)))))
            (if (macro-keyword-expected-exception? _exn90496_)
                (macro-keyword-expected-exception-arguments _exn90496_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95876
                              (let ()
                                (declare (not safe))
                                (cons _exn90496_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95876)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90490_))
            (let ((_e90493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90490_ 'exception))))
              (if (macro-keyword-expected-exception? _e90493_)
                  (macro-keyword-expected-exception-procedure _e90493_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95879
                                (let ()
                                  (declare (not safe))
                                  (cons _e90493_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95879)))))
            (if (macro-keyword-expected-exception? _exn90490_)
                (macro-keyword-expected-exception-procedure _exn90490_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95878
                              (let ()
                                (declare (not safe))
                                (cons _exn90490_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95878)))))))
    (define length-mismatch-exception?
      (lambda (_exn90486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90486_))
            (let ((_e90488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90486_ 'exception))))
              (macro-length-mismatch-exception? _e90488_))
            (macro-length-mismatch-exception? _exn90486_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90482_))
            (let ((_e90484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90482_ 'exception))))
              (if (macro-length-mismatch-exception? _e90484_)
                  (macro-length-mismatch-exception-arg-id _e90484_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95881
                                (let ()
                                  (declare (not safe))
                                  (cons _e90484_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95881)))))
            (if (macro-length-mismatch-exception? _exn90482_)
                (macro-length-mismatch-exception-arg-id _exn90482_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95880
                              (let ()
                                (declare (not safe))
                                (cons _exn90482_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95880)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90478_))
            (let ((_e90480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90478_ 'exception))))
              (if (macro-length-mismatch-exception? _e90480_)
                  (macro-length-mismatch-exception-arguments _e90480_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95883
                                (let ()
                                  (declare (not safe))
                                  (cons _e90480_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95883)))))
            (if (macro-length-mismatch-exception? _exn90478_)
                (macro-length-mismatch-exception-arguments _exn90478_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95882
                              (let ()
                                (declare (not safe))
                                (cons _exn90478_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95882)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90472_))
            (let ((_e90475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90472_ 'exception))))
              (if (macro-length-mismatch-exception? _e90475_)
                  (macro-length-mismatch-exception-procedure _e90475_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95885
                                (let ()
                                  (declare (not safe))
                                  (cons _e90475_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95885)))))
            (if (macro-length-mismatch-exception? _exn90472_)
                (macro-length-mismatch-exception-procedure _exn90472_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95884
                              (let ()
                                (declare (not safe))
                                (cons _exn90472_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95884)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90468_))
            (let ((_e90470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90468_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90470_))
            (macro-mailbox-receive-timeout-exception? _exn90468_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90464_))
            (let ((_e90466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90464_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90466_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90466_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95887
                                (let ()
                                  (declare (not safe))
                                  (cons _e90466_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95887)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90464_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90464_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95886
                              (let ()
                                (declare (not safe))
                                (cons _exn90464_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95886)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90458_))
            (let ((_e90461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90458_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90461_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90461_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95889
                                (let ()
                                  (declare (not safe))
                                  (cons _e90461_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95889)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90458_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90458_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95888
                              (let ()
                                (declare (not safe))
                                (cons _exn90458_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95888)))))))
    (define module-not-found-exception?
      (lambda (_exn90454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90454_))
            (let ((_e90456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90454_ 'exception))))
              (macro-module-not-found-exception? _e90456_))
            (macro-module-not-found-exception? _exn90454_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90450_))
            (let ((_e90452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90450_ 'exception))))
              (if (macro-module-not-found-exception? _e90452_)
                  (macro-module-not-found-exception-arguments _e90452_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95891
                                (let ()
                                  (declare (not safe))
                                  (cons _e90452_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95891)))))
            (if (macro-module-not-found-exception? _exn90450_)
                (macro-module-not-found-exception-arguments _exn90450_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95890
                              (let ()
                                (declare (not safe))
                                (cons _exn90450_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95890)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90444_))
            (let ((_e90447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90444_ 'exception))))
              (if (macro-module-not-found-exception? _e90447_)
                  (macro-module-not-found-exception-procedure _e90447_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95893
                                (let ()
                                  (declare (not safe))
                                  (cons _e90447_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95893)))))
            (if (macro-module-not-found-exception? _exn90444_)
                (macro-module-not-found-exception-procedure _exn90444_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95892
                              (let ()
                                (declare (not safe))
                                (cons _exn90444_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95892)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90438_))
            (let ((_e90441_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90438_ 'exception))))
              (macro-multiple-c-return-exception? _e90441_))
            (macro-multiple-c-return-exception? _exn90438_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90434_))
            (let ((_e90436_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90434_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90436_))
            (macro-no-such-file-or-directory-exception? _exn90434_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90430_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90430_))
            (let ((_e90432_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90430_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90432_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90432_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95895
                                (let ()
                                  (declare (not safe))
                                  (cons _e90432_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95895)))))
            (if (macro-no-such-file-or-directory-exception? _exn90430_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90430_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95894
                              (let ()
                                (declare (not safe))
                                (cons _exn90430_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95894)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90424_))
            (let ((_e90427_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90424_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90427_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90427_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95897
                                (let ()
                                  (declare (not safe))
                                  (cons _e90427_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95897)))))
            (if (macro-no-such-file-or-directory-exception? _exn90424_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90424_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95896
                              (let ()
                                (declare (not safe))
                                (cons _exn90424_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95896)))))))
    (define noncontinuable-exception?
      (lambda (_exn90420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90420_))
            (let ((_e90422_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90420_ 'exception))))
              (macro-noncontinuable-exception? _e90422_))
            (macro-noncontinuable-exception? _exn90420_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90414_))
            (let ((_e90417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90414_ 'exception))))
              (if (macro-noncontinuable-exception? _e90417_)
                  (macro-noncontinuable-exception-reason _e90417_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95899
                                (let ()
                                  (declare (not safe))
                                  (cons _e90417_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95899)))))
            (if (macro-noncontinuable-exception? _exn90414_)
                (macro-noncontinuable-exception-reason _exn90414_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95898
                              (let ()
                                (declare (not safe))
                                (cons _exn90414_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95898)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90410_))
            (let ((_e90412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90410_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90412_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90410_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90406_))
            (let ((_e90408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90406_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90408_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90408_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95901
                                (let ()
                                  (declare (not safe))
                                  (cons _e90408_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95901)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90406_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90406_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95900
                              (let ()
                                (declare (not safe))
                                (cons _exn90406_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95900)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90400_))
            (let ((_e90403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90400_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90403_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90403_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95903
                                (let ()
                                  (declare (not safe))
                                  (cons _e90403_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95903)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90400_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90400_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95902
                              (let ()
                                (declare (not safe))
                                (cons _exn90400_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95902)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90396_))
            (let ((_e90398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90396_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90398_))
            (macro-nonprocedure-operator-exception? _exn90396_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90392_))
            (let ((_e90394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90392_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90394_)
                  (macro-nonprocedure-operator-exception-arguments _e90394_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95905
                                (let ()
                                  (declare (not safe))
                                  (cons _e90394_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95905)))))
            (if (macro-nonprocedure-operator-exception? _exn90392_)
                (macro-nonprocedure-operator-exception-arguments _exn90392_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95904
                              (let ()
                                (declare (not safe))
                                (cons _exn90392_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95904)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90388_))
            (let ((_e90390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90388_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90390_)
                  (macro-nonprocedure-operator-exception-code _e90390_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95907
                                (let ()
                                  (declare (not safe))
                                  (cons _e90390_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95907)))))
            (if (macro-nonprocedure-operator-exception? _exn90388_)
                (macro-nonprocedure-operator-exception-code _exn90388_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95906
                              (let ()
                                (declare (not safe))
                                (cons _exn90388_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95906)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90384_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90384_))
            (let ((_e90386_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90384_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90386_)
                  (macro-nonprocedure-operator-exception-operator _e90386_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95909
                                (let ()
                                  (declare (not safe))
                                  (cons _e90386_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95909)))))
            (if (macro-nonprocedure-operator-exception? _exn90384_)
                (macro-nonprocedure-operator-exception-operator _exn90384_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95908
                              (let ()
                                (declare (not safe))
                                (cons _exn90384_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95908)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90378_))
            (let ((_e90381_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90378_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90381_)
                  (macro-nonprocedure-operator-exception-rte _e90381_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95911
                                (let ()
                                  (declare (not safe))
                                  (cons _e90381_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95911)))))
            (if (macro-nonprocedure-operator-exception? _exn90378_)
                (macro-nonprocedure-operator-exception-rte _exn90378_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95910
                              (let ()
                                (declare (not safe))
                                (cons _exn90378_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95910)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90374_))
            (let ((_e90376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90374_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90376_))
            (macro-not-in-compilation-context-exception? _exn90374_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90370_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90370_))
            (let ((_e90372_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90370_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90372_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90372_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95913
                                (let ()
                                  (declare (not safe))
                                  (cons _e90372_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95913)))))
            (if (macro-not-in-compilation-context-exception? _exn90370_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90370_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95912
                              (let ()
                                (declare (not safe))
                                (cons _exn90370_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95912)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90364_))
            (let ((_e90367_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90364_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90367_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90367_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95915
                                (let ()
                                  (declare (not safe))
                                  (cons _e90367_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95915)))))
            (if (macro-not-in-compilation-context-exception? _exn90364_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90364_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95914
                              (let ()
                                (declare (not safe))
                                (cons _exn90364_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95914)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90360_))
            (let ((_e90362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90360_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90362_))
            (macro-number-of-arguments-limit-exception? _exn90360_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90356_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90356_))
            (let ((_e90358_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90356_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90358_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90358_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95917
                                (let ()
                                  (declare (not safe))
                                  (cons _e90358_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95917)))))
            (if (macro-number-of-arguments-limit-exception? _exn90356_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90356_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95916
                              (let ()
                                (declare (not safe))
                                (cons _exn90356_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95916)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90350_))
            (let ((_e90353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90350_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90353_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90353_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95919
                                (let ()
                                  (declare (not safe))
                                  (cons _e90353_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95919)))))
            (if (macro-number-of-arguments-limit-exception? _exn90350_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90350_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95918
                              (let ()
                                (declare (not safe))
                                (cons _exn90350_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95918)))))))
    (define os-exception?
      (lambda (_exn90346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90346_))
            (let ((_e90348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90346_ 'exception))))
              (macro-os-exception? _e90348_))
            (macro-os-exception? _exn90346_))))
    (define os-exception-arguments
      (lambda (_exn90342_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90342_))
            (let ((_e90344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90342_ 'exception))))
              (if (macro-os-exception? _e90344_)
                  (macro-os-exception-arguments _e90344_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95921
                                (let ()
                                  (declare (not safe))
                                  (cons _e90344_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95921)))))
            (if (macro-os-exception? _exn90342_)
                (macro-os-exception-arguments _exn90342_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95920
                              (let ()
                                (declare (not safe))
                                (cons _exn90342_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95920)))))))
    (define os-exception-code
      (lambda (_exn90338_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90338_))
            (let ((_e90340_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90338_ 'exception))))
              (if (macro-os-exception? _e90340_)
                  (macro-os-exception-code _e90340_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95923
                                (let ()
                                  (declare (not safe))
                                  (cons _e90340_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95923)))))
            (if (macro-os-exception? _exn90338_)
                (macro-os-exception-code _exn90338_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95922
                              (let ()
                                (declare (not safe))
                                (cons _exn90338_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95922)))))))
    (define os-exception-message
      (lambda (_exn90334_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90334_))
            (let ((_e90336_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90334_ 'exception))))
              (if (macro-os-exception? _e90336_)
                  (macro-os-exception-message _e90336_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95925
                                (let ()
                                  (declare (not safe))
                                  (cons _e90336_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95925)))))
            (if (macro-os-exception? _exn90334_)
                (macro-os-exception-message _exn90334_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95924
                              (let ()
                                (declare (not safe))
                                (cons _exn90334_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95924)))))))
    (define os-exception-procedure
      (lambda (_exn90328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90328_))
            (let ((_e90331_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90328_ 'exception))))
              (if (macro-os-exception? _e90331_)
                  (macro-os-exception-procedure _e90331_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95927
                                (let ()
                                  (declare (not safe))
                                  (cons _e90331_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95927)))))
            (if (macro-os-exception? _exn90328_)
                (macro-os-exception-procedure _exn90328_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95926
                              (let ()
                                (declare (not safe))
                                (cons _exn90328_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95926)))))))
    (define permission-denied-exception?
      (lambda (_exn90324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90324_))
            (let ((_e90326_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90324_ 'exception))))
              (macro-permission-denied-exception? _e90326_))
            (macro-permission-denied-exception? _exn90324_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90320_))
            (let ((_e90322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90320_ 'exception))))
              (if (macro-permission-denied-exception? _e90322_)
                  (macro-permission-denied-exception-arguments _e90322_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95929
                                (let ()
                                  (declare (not safe))
                                  (cons _e90322_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95929)))))
            (if (macro-permission-denied-exception? _exn90320_)
                (macro-permission-denied-exception-arguments _exn90320_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95928
                              (let ()
                                (declare (not safe))
                                (cons _exn90320_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95928)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90314_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90314_))
            (let ((_e90317_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90314_ 'exception))))
              (if (macro-permission-denied-exception? _e90317_)
                  (macro-permission-denied-exception-procedure _e90317_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95931
                                (let ()
                                  (declare (not safe))
                                  (cons _e90317_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95931)))))
            (if (macro-permission-denied-exception? _exn90314_)
                (macro-permission-denied-exception-procedure _exn90314_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95930
                              (let ()
                                (declare (not safe))
                                (cons _exn90314_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95930)))))))
    (define range-exception?
      (lambda (_exn90310_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90310_))
            (let ((_e90312_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90310_ 'exception))))
              (macro-range-exception? _e90312_))
            (macro-range-exception? _exn90310_))))
    (define range-exception-arg-id
      (lambda (_exn90306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90306_))
            (let ((_e90308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90306_ 'exception))))
              (if (macro-range-exception? _e90308_)
                  (macro-range-exception-arg-id _e90308_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95933
                                (let ()
                                  (declare (not safe))
                                  (cons _e90308_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95933)))))
            (if (macro-range-exception? _exn90306_)
                (macro-range-exception-arg-id _exn90306_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95932
                              (let ()
                                (declare (not safe))
                                (cons _exn90306_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95932)))))))
    (define range-exception-arguments
      (lambda (_exn90302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90302_))
            (let ((_e90304_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90302_ 'exception))))
              (if (macro-range-exception? _e90304_)
                  (macro-range-exception-arguments _e90304_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95935
                                (let ()
                                  (declare (not safe))
                                  (cons _e90304_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95935)))))
            (if (macro-range-exception? _exn90302_)
                (macro-range-exception-arguments _exn90302_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95934
                              (let ()
                                (declare (not safe))
                                (cons _exn90302_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95934)))))))
    (define range-exception-procedure
      (lambda (_exn90296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90296_))
            (let ((_e90299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90296_ 'exception))))
              (if (macro-range-exception? _e90299_)
                  (macro-range-exception-procedure _e90299_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95937
                                (let ()
                                  (declare (not safe))
                                  (cons _e90299_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95937)))))
            (if (macro-range-exception? _exn90296_)
                (macro-range-exception-procedure _exn90296_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95936
                              (let ()
                                (declare (not safe))
                                (cons _exn90296_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95936)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90292_))
            (let ((_e90294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90292_ 'exception))))
              (macro-rpc-remote-error-exception? _e90294_))
            (macro-rpc-remote-error-exception? _exn90292_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90288_))
            (let ((_e90290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90288_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90290_)
                  (macro-rpc-remote-error-exception-arguments _e90290_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95939
                                (let ()
                                  (declare (not safe))
                                  (cons _e90290_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95939)))))
            (if (macro-rpc-remote-error-exception? _exn90288_)
                (macro-rpc-remote-error-exception-arguments _exn90288_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95938
                              (let ()
                                (declare (not safe))
                                (cons _exn90288_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95938)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90284_))
            (let ((_e90286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90284_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90286_)
                  (macro-rpc-remote-error-exception-message _e90286_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95941
                                (let ()
                                  (declare (not safe))
                                  (cons _e90286_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95941)))))
            (if (macro-rpc-remote-error-exception? _exn90284_)
                (macro-rpc-remote-error-exception-message _exn90284_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95940
                              (let ()
                                (declare (not safe))
                                (cons _exn90284_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95940)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90278_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90278_))
            (let ((_e90281_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90278_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90281_)
                  (macro-rpc-remote-error-exception-procedure _e90281_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95943
                                (let ()
                                  (declare (not safe))
                                  (cons _e90281_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95943)))))
            (if (macro-rpc-remote-error-exception? _exn90278_)
                (macro-rpc-remote-error-exception-procedure _exn90278_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95942
                              (let ()
                                (declare (not safe))
                                (cons _exn90278_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95942)))))))
    (define scheduler-exception?
      (lambda (_exn90274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90274_))
            (let ((_e90276_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90274_ 'exception))))
              (macro-scheduler-exception? _e90276_))
            (macro-scheduler-exception? _exn90274_))))
    (define scheduler-exception-reason
      (lambda (_exn90268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90268_))
            (let ((_e90271_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90268_ 'exception))))
              (if (macro-scheduler-exception? _e90271_)
                  (macro-scheduler-exception-reason _e90271_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95945
                                (let ()
                                  (declare (not safe))
                                  (cons _e90271_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95945)))))
            (if (macro-scheduler-exception? _exn90268_)
                (macro-scheduler-exception-reason _exn90268_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95944
                              (let ()
                                (declare (not safe))
                                (cons _exn90268_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95944)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90264_))
            (let ((_e90266_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90264_ 'exception))))
              (macro-sfun-conversion-exception? _e90266_))
            (macro-sfun-conversion-exception? _exn90264_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90260_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90260_))
            (let ((_e90262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90260_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90262_)
                  (macro-sfun-conversion-exception-arguments _e90262_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95947
                                (let ()
                                  (declare (not safe))
                                  (cons _e90262_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95947)))))
            (if (macro-sfun-conversion-exception? _exn90260_)
                (macro-sfun-conversion-exception-arguments _exn90260_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95946
                              (let ()
                                (declare (not safe))
                                (cons _exn90260_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95946)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90256_))
            (let ((_e90258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90256_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90258_)
                  (macro-sfun-conversion-exception-code _e90258_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95949
                                (let ()
                                  (declare (not safe))
                                  (cons _e90258_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95949)))))
            (if (macro-sfun-conversion-exception? _exn90256_)
                (macro-sfun-conversion-exception-code _exn90256_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95948
                              (let ()
                                (declare (not safe))
                                (cons _exn90256_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95948)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90252_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90252_))
            (let ((_e90254_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90252_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90254_)
                  (macro-sfun-conversion-exception-message _e90254_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95951
                                (let ()
                                  (declare (not safe))
                                  (cons _e90254_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95951)))))
            (if (macro-sfun-conversion-exception? _exn90252_)
                (macro-sfun-conversion-exception-message _exn90252_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95950
                              (let ()
                                (declare (not safe))
                                (cons _exn90252_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95950)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90246_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90246_))
            (let ((_e90249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90246_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90249_)
                  (macro-sfun-conversion-exception-procedure _e90249_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95953
                                (let ()
                                  (declare (not safe))
                                  (cons _e90249_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95953)))))
            (if (macro-sfun-conversion-exception? _exn90246_)
                (macro-sfun-conversion-exception-procedure _exn90246_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95952
                              (let ()
                                (declare (not safe))
                                (cons _exn90246_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95952)))))))
    (define stack-overflow-exception?
      (lambda (_exn90240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90240_))
            (let ((_e90243_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90240_ 'exception))))
              (macro-stack-overflow-exception? _e90243_))
            (macro-stack-overflow-exception? _exn90240_))))
    (define started-thread-exception?
      (lambda (_exn90236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90236_))
            (let ((_e90238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90236_ 'exception))))
              (macro-started-thread-exception? _e90238_))
            (macro-started-thread-exception? _exn90236_))))
    (define started-thread-exception-arguments
      (lambda (_exn90232_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90232_))
            (let ((_e90234_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90232_ 'exception))))
              (if (macro-started-thread-exception? _e90234_)
                  (macro-started-thread-exception-arguments _e90234_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95955
                                (let ()
                                  (declare (not safe))
                                  (cons _e90234_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95955)))))
            (if (macro-started-thread-exception? _exn90232_)
                (macro-started-thread-exception-arguments _exn90232_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95954
                              (let ()
                                (declare (not safe))
                                (cons _exn90232_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95954)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90226_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90226_))
            (let ((_e90229_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90226_ 'exception))))
              (if (macro-started-thread-exception? _e90229_)
                  (macro-started-thread-exception-procedure _e90229_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95957
                                (let ()
                                  (declare (not safe))
                                  (cons _e90229_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95957)))))
            (if (macro-started-thread-exception? _exn90226_)
                (macro-started-thread-exception-procedure _exn90226_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95956
                              (let ()
                                (declare (not safe))
                                (cons _exn90226_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95956)))))))
    (define terminated-thread-exception?
      (lambda (_exn90222_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90222_))
            (let ((_e90224_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90222_ 'exception))))
              (macro-terminated-thread-exception? _e90224_))
            (macro-terminated-thread-exception? _exn90222_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90218_))
            (let ((_e90220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90218_ 'exception))))
              (if (macro-terminated-thread-exception? _e90220_)
                  (macro-terminated-thread-exception-arguments _e90220_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95959
                                (let ()
                                  (declare (not safe))
                                  (cons _e90220_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95959)))))
            (if (macro-terminated-thread-exception? _exn90218_)
                (macro-terminated-thread-exception-arguments _exn90218_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95958
                              (let ()
                                (declare (not safe))
                                (cons _exn90218_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95958)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90212_))
            (let ((_e90215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90212_ 'exception))))
              (if (macro-terminated-thread-exception? _e90215_)
                  (macro-terminated-thread-exception-procedure _e90215_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95961
                                (let ()
                                  (declare (not safe))
                                  (cons _e90215_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95961)))))
            (if (macro-terminated-thread-exception? _exn90212_)
                (macro-terminated-thread-exception-procedure _exn90212_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95960
                              (let ()
                                (declare (not safe))
                                (cons _exn90212_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95960)))))))
    (define type-exception?
      (lambda (_exn90208_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90208_))
            (let ((_e90210_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90208_ 'exception))))
              (macro-type-exception? _e90210_))
            (macro-type-exception? _exn90208_))))
    (define type-exception-arg-id
      (lambda (_exn90204_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90204_))
            (let ((_e90206_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90204_ 'exception))))
              (if (macro-type-exception? _e90206_)
                  (macro-type-exception-arg-id _e90206_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95963
                                (let ()
                                  (declare (not safe))
                                  (cons _e90206_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95963)))))
            (if (macro-type-exception? _exn90204_)
                (macro-type-exception-arg-id _exn90204_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95962
                              (let ()
                                (declare (not safe))
                                (cons _exn90204_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95962)))))))
    (define type-exception-arguments
      (lambda (_exn90200_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90200_))
            (let ((_e90202_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90200_ 'exception))))
              (if (macro-type-exception? _e90202_)
                  (macro-type-exception-arguments _e90202_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95965
                                (let ()
                                  (declare (not safe))
                                  (cons _e90202_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95965)))))
            (if (macro-type-exception? _exn90200_)
                (macro-type-exception-arguments _exn90200_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95964
                              (let ()
                                (declare (not safe))
                                (cons _exn90200_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95964)))))))
    (define type-exception-procedure
      (lambda (_exn90196_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90196_))
            (let ((_e90198_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90196_ 'exception))))
              (if (macro-type-exception? _e90198_)
                  (macro-type-exception-procedure _e90198_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95967
                                (let ()
                                  (declare (not safe))
                                  (cons _e90198_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95967)))))
            (if (macro-type-exception? _exn90196_)
                (macro-type-exception-procedure _exn90196_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95966
                              (let ()
                                (declare (not safe))
                                (cons _exn90196_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95966)))))))
    (define type-exception-type-id
      (lambda (_exn90190_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90190_))
            (let ((_e90193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90190_ 'exception))))
              (if (macro-type-exception? _e90193_)
                  (macro-type-exception-type-id _e90193_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95969
                                (let ()
                                  (declare (not safe))
                                  (cons _e90193_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95969)))))
            (if (macro-type-exception? _exn90190_)
                (macro-type-exception-type-id _exn90190_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95968
                              (let ()
                                (declare (not safe))
                                (cons _exn90190_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95968)))))))
    (define unbound-global-exception?
      (lambda (_exn90186_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90186_))
            (let ((_e90188_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90186_ 'exception))))
              (macro-unbound-global-exception? _e90188_))
            (macro-unbound-global-exception? _exn90186_))))
    (define unbound-global-exception-code
      (lambda (_exn90182_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90182_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90182_ 'exception))))
              (if (macro-unbound-global-exception? _e90184_)
                  (macro-unbound-global-exception-code _e90184_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95971
                                (let ()
                                  (declare (not safe))
                                  (cons _e90184_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95971)))))
            (if (macro-unbound-global-exception? _exn90182_)
                (macro-unbound-global-exception-code _exn90182_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95970
                              (let ()
                                (declare (not safe))
                                (cons _exn90182_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95970)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90178_))
            (let ((_e90180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90178_ 'exception))))
              (if (macro-unbound-global-exception? _e90180_)
                  (macro-unbound-global-exception-rte _e90180_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95973
                                (let ()
                                  (declare (not safe))
                                  (cons _e90180_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95973)))))
            (if (macro-unbound-global-exception? _exn90178_)
                (macro-unbound-global-exception-rte _exn90178_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95972
                              (let ()
                                (declare (not safe))
                                (cons _exn90178_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95972)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90172_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90172_))
            (let ((_e90175_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90172_ 'exception))))
              (if (macro-unbound-global-exception? _e90175_)
                  (macro-unbound-global-exception-variable _e90175_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95975
                                (let ()
                                  (declare (not safe))
                                  (cons _e90175_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95975)))))
            (if (macro-unbound-global-exception? _exn90172_)
                (macro-unbound-global-exception-variable _exn90172_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95974
                              (let ()
                                (declare (not safe))
                                (cons _exn90172_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95974)))))))
    (define unbound-key-exception?
      (lambda (_exn90168_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90168_))
            (let ((_e90170_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90168_ 'exception))))
              (macro-unbound-key-exception? _e90170_))
            (macro-unbound-key-exception? _exn90168_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90164_))
            (let ((_e90166_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90164_ 'exception))))
              (if (macro-unbound-key-exception? _e90166_)
                  (macro-unbound-key-exception-arguments _e90166_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95977
                                (let ()
                                  (declare (not safe))
                                  (cons _e90166_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95977)))))
            (if (macro-unbound-key-exception? _exn90164_)
                (macro-unbound-key-exception-arguments _exn90164_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95976
                              (let ()
                                (declare (not safe))
                                (cons _exn90164_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95976)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90158_))
            (let ((_e90161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90158_ 'exception))))
              (if (macro-unbound-key-exception? _e90161_)
                  (macro-unbound-key-exception-procedure _e90161_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95979
                                (let ()
                                  (declare (not safe))
                                  (cons _e90161_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95979)))))
            (if (macro-unbound-key-exception? _exn90158_)
                (macro-unbound-key-exception-procedure _exn90158_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95978
                              (let ()
                                (declare (not safe))
                                (cons _exn90158_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95978)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90154_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90154_))
            (let ((_e90156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90154_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90156_))
            (macro-unbound-os-environment-variable-exception? _exn90154_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90150_))
            (let ((_e90152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90150_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90152_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90152_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95981
                                (let ()
                                  (declare (not safe))
                                  (cons _e90152_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95981)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90150_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90150_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95980
                              (let ()
                                (declare (not safe))
                                (cons _exn90150_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95980)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90144_))
            (let ((_e90147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90144_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90147_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90147_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95983
                                (let ()
                                  (declare (not safe))
                                  (cons _e90147_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95983)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90144_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90144_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95982
                              (let ()
                                (declare (not safe))
                                (cons _exn90144_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95982)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90140_))
            (let ((_e90142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90140_ 'exception))))
              (macro-unbound-serial-number-exception? _e90142_))
            (macro-unbound-serial-number-exception? _exn90140_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90136_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90136_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90138_)
                  (macro-unbound-serial-number-exception-arguments _e90138_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95985
                                (let ()
                                  (declare (not safe))
                                  (cons _e90138_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95985)))))
            (if (macro-unbound-serial-number-exception? _exn90136_)
                (macro-unbound-serial-number-exception-arguments _exn90136_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95984
                              (let ()
                                (declare (not safe))
                                (cons _exn90136_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95984)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90130_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90130_))
            (let ((_e90133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90130_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90133_)
                  (macro-unbound-serial-number-exception-procedure _e90133_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95987
                                (let ()
                                  (declare (not safe))
                                  (cons _e90133_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95987)))))
            (if (macro-unbound-serial-number-exception? _exn90130_)
                (macro-unbound-serial-number-exception-procedure _exn90130_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95986
                              (let ()
                                (declare (not safe))
                                (cons _exn90130_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95986)))))))
    (define uncaught-exception?
      (lambda (_exn90126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90126_))
            (let ((_e90128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90126_ 'exception))))
              (macro-uncaught-exception? _e90128_))
            (macro-uncaught-exception? _exn90126_))))
    (define uncaught-exception-arguments
      (lambda (_exn90122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90122_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90122_ 'exception))))
              (if (macro-uncaught-exception? _e90124_)
                  (macro-uncaught-exception-arguments _e90124_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95989
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95989)))))
            (if (macro-uncaught-exception? _exn90122_)
                (macro-uncaught-exception-arguments _exn90122_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95988
                              (let ()
                                (declare (not safe))
                                (cons _exn90122_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95988)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90118_))
            (let ((_e90120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90118_ 'exception))))
              (if (macro-uncaught-exception? _e90120_)
                  (macro-uncaught-exception-procedure _e90120_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95991
                                (let ()
                                  (declare (not safe))
                                  (cons _e90120_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95991)))))
            (if (macro-uncaught-exception? _exn90118_)
                (macro-uncaught-exception-procedure _exn90118_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95990
                              (let ()
                                (declare (not safe))
                                (cons _exn90118_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95990)))))))
    (define uncaught-exception-reason
      (lambda (_exn90112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90112_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90112_ 'exception))))
              (if (macro-uncaught-exception? _e90115_)
                  (macro-uncaught-exception-reason _e90115_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95993
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95993)))))
            (if (macro-uncaught-exception? _exn90112_)
                (macro-uncaught-exception-reason _exn90112_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95992
                              (let ()
                                (declare (not safe))
                                (cons _exn90112_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95992)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90108_))
            (let ((_e90110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90108_ 'exception))))
              (macro-uninitialized-thread-exception? _e90110_))
            (macro-uninitialized-thread-exception? _exn90108_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90104_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90104_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90106_)
                  (macro-uninitialized-thread-exception-arguments _e90106_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95995
                                (let ()
                                  (declare (not safe))
                                  (cons _e90106_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95995)))))
            (if (macro-uninitialized-thread-exception? _exn90104_)
                (macro-uninitialized-thread-exception-arguments _exn90104_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95994
                              (let ()
                                (declare (not safe))
                                (cons _exn90104_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95994)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90098_))
            (let ((_e90101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90098_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90101_)
                  (macro-uninitialized-thread-exception-procedure _e90101_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95997
                                (let ()
                                  (declare (not safe))
                                  (cons _e90101_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95997)))))
            (if (macro-uninitialized-thread-exception? _exn90098_)
                (macro-uninitialized-thread-exception-procedure _exn90098_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95996
                              (let ()
                                (declare (not safe))
                                (cons _exn90098_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95996)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90094_))
            (let ((_e90096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90094_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90096_))
            (macro-unknown-keyword-argument-exception? _exn90094_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90090_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90090_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90092_)
                  (macro-unknown-keyword-argument-exception-arguments _e90092_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95999
                                (let ()
                                  (declare (not safe))
                                  (cons _e90092_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95999)))))
            (if (macro-unknown-keyword-argument-exception? _exn90090_)
                (macro-unknown-keyword-argument-exception-arguments _exn90090_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95998
                              (let ()
                                (declare (not safe))
                                (cons _exn90090_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95998)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90084_))
            (let ((_e90087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90084_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90087_)
                  (macro-unknown-keyword-argument-exception-procedure _e90087_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96001
                                (let ()
                                  (declare (not safe))
                                  (cons _e90087_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp96001)))))
            (if (macro-unknown-keyword-argument-exception? _exn90084_)
                (macro-unknown-keyword-argument-exception-procedure _exn90084_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96000
                              (let ()
                                (declare (not safe))
                                (cons _exn90084_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp96000)))))))
    (define unterminated-process-exception?
      (lambda (_exn90080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90080_))
            (let ((_e90082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90080_ 'exception))))
              (macro-unterminated-process-exception? _e90082_))
            (macro-unterminated-process-exception? _exn90080_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90076_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90076_ 'exception))))
              (if (macro-unterminated-process-exception? _e90078_)
                  (macro-unterminated-process-exception-arguments _e90078_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96003
                                (let ()
                                  (declare (not safe))
                                  (cons _e90078_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp96003)))))
            (if (macro-unterminated-process-exception? _exn90076_)
                (macro-unterminated-process-exception-arguments _exn90076_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96002
                              (let ()
                                (declare (not safe))
                                (cons _exn90076_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp96002)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90070_))
            (let ((_e90073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90070_ 'exception))))
              (if (macro-unterminated-process-exception? _e90073_)
                  (macro-unterminated-process-exception-procedure _e90073_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96005
                                (let ()
                                  (declare (not safe))
                                  (cons _e90073_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp96005)))))
            (if (macro-unterminated-process-exception? _exn90070_)
                (macro-unterminated-process-exception-procedure _exn90070_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96004
                              (let ()
                                (declare (not safe))
                                (cons _exn90070_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp96004)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90066_))
            (let ((_e90068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90066_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90068_))
            (macro-wrong-number-of-arguments-exception? _exn90066_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90062_))
            (let ((_e90064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90062_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90064_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90064_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96007
                                (let ()
                                  (declare (not safe))
                                  (cons _e90064_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp96007)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90062_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90062_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96006
                              (let ()
                                (declare (not safe))
                                (cons _exn90062_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp96006)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90056_))
            (let ((_e90059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90056_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90059_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90059_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96009
                                (let ()
                                  (declare (not safe))
                                  (cons _e90059_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96009)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90056_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90056_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96008
                              (let ()
                                (declare (not safe))
                                (cons _exn90056_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp96008)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90052_))
            (let ((_e90054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90052_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90054_))
            (macro-wrong-number-of-values-exception? _exn90052_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90048_))
            (let ((_e90050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90048_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90050_)
                  (macro-wrong-number-of-values-exception-code _e90050_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96011
                                (let ()
                                  (declare (not safe))
                                  (cons _e90050_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96011)))))
            (if (macro-wrong-number-of-values-exception? _exn90048_)
                (macro-wrong-number-of-values-exception-code _exn90048_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96010
                              (let ()
                                (declare (not safe))
                                (cons _exn90048_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96010)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90044_))
            (let ((_e90046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90044_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90046_)
                  (macro-wrong-number-of-values-exception-rte _e90046_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96013
                                (let ()
                                  (declare (not safe))
                                  (cons _e90046_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96013)))))
            (if (macro-wrong-number-of-values-exception? _exn90044_)
                (macro-wrong-number-of-values-exception-rte _exn90044_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96012
                              (let ()
                                (declare (not safe))
                                (cons _exn90044_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96012)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90038_))
            (let ((_e90041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90038_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90041_)
                  (macro-wrong-number-of-values-exception-vals _e90041_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96015
                                (let ()
                                  (declare (not safe))
                                  (cons _e90041_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96015)))))
            (if (macro-wrong-number-of-values-exception? _exn90038_)
                (macro-wrong-number-of-values-exception-vals _exn90038_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96014
                              (let ()
                                (declare (not safe))
                                (cons _exn90038_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96014)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90032_))
            (let ((_e90035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90032_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90035_))
            (macro-wrong-processor-c-return-exception? _exn90032_))))))
