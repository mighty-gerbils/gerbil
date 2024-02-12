(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707742539)
  (begin
    (define Exception::t
      (let ((__tmp95794 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95794
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91197_ (apply make-instance Exception::t _$args91197_)))
    (define StackTrace::t
      (let ((__tmp95795 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95795
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91194_ (apply make-instance StackTrace::t _$args91194_)))
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
      (let ((__tmp95796 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95796
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91191_ (apply make-instance Error::t _$args91191_)))
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
      (let ((__tmp95797 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95797
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91188_
        (apply make-instance RuntimeException::t _$args91188_)))
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
      (lambda (_exn91183_ _continue91184_)
        (let ((_exn91186_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91183_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91186_ _continue91184_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91179_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91179_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91179_ 'continuation))
                '#!void
                (let ((__tmp95798
                       (lambda (_cont91181_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91179_
                            'continuation
                            _cont91181_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95798)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91179_))))
    (define error
      (lambda (_message91176_ . _irritants91177_)
        (raise (let ((__obj95788
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95788
                  _message91176_
                  'irritants:
                  _irritants91177_)
                 __obj95788))))
    (define with-exception-handler
      (lambda (_handler91169_ _thunk91170_)
        (if (let () (declare (not safe)) (procedure? _handler91169_))
            '#!void
            (raise (let ((__obj95789
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95789
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91169_ '())))
                     __obj95789)))
        (if (let () (declare (not safe)) (procedure? _thunk91170_))
            '#!void
            (raise (let ((__obj95790
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95790
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91170_ '())))
                     __obj95790)))
        (let ((__tmp95799
               (lambda (_exn91172_)
                 (let ((_exn91174_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91172_))))
                   (_handler91169_ _exn91174_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95799 _thunk91170_))))
    (define with-catch
      (lambda (_handler91162_ _thunk91163_)
        (if (let () (declare (not safe)) (procedure? _handler91162_))
            '#!void
            (raise (let ((__obj95791
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95791
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91162_ '())))
                     __obj95791)))
        (if (let () (declare (not safe)) (procedure? _thunk91163_))
            '#!void
            (raise (let ((__obj95792
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95792
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91163_ '())))
                     __obj95792)))
        (let ((__tmp95800
               (lambda (_cont91165_)
                 (with-exception-handler
                  (lambda (_exn91167_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91165_
                       _handler91162_
                       _exn91167_)))
                  _thunk91163_))))
          (declare (not safe))
          (##continuation-capture __tmp95800))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91153_)
        (if (or (heap-overflow-exception? _exn91153_)
                (stack-overflow-exception? _exn91153_))
            _exn91153_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91153_))
                _exn91153_
                (if (macro-exception? _exn91153_)
                    (let ((_rte91158_
                           (let ((__obj95793
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95793
                                _exn91153_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95793)))
                      (let ((__tmp95801
                             (lambda (_cont91160_)
                               (let ((__tmp95802
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91160_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91158_
                                  'continuation
                                  __tmp95802)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95801))
                      _rte91158_)
                    _exn91153_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91148_)
        (let ((_$e91150_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91148_))))
          (if _$e91150_ _$e91150_ (error-exception? _obj91148_)))))
    (define error-message
      (lambda (_obj91146_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91146_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91146_ 'message))
            (if (error-exception? _obj91146_)
                (error-exception-message _obj91146_)
                '#f))))
    (define error-irritants
      (lambda (_obj91144_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91144_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91144_ 'irritants))
            (if (error-exception? _obj91144_)
                (error-exception-parameters _obj91144_)
                '#f))))
    (define error-trace
      (lambda (_obj91142_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91142_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91142_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91124_ _port91125_)
        (let ((_$e91127_
               (let ()
                 (declare (not safe))
                 (method-ref _e91124_ 'display-exception))))
          (if _$e91127_
              ((lambda (_f91130_) (_f91130_ _e91124_ _port91125_)) _$e91127_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91124_ _port91125_))))))
    (define display-exception__0
      (lambda (_e91135_)
        (let ((_port91137_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91135_ _port91137_))))
    (define display-exception
      (lambda _g95804_
        (let ((_g95803_ (let () (declare (not safe)) (##length _g95804_))))
          (cond ((let () (declare (not safe)) (##fx= _g95803_ 1))
                 (apply (lambda (_e91135_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91135_)))
                        _g95804_))
                ((let () (declare (not safe)) (##fx= _g95803_ 2))
                 (apply (lambda (_e91139_ _port91140_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91139_ _port91140_)))
                        _g95804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95804_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91113_ _message91114_ . _rest91115_)
        (let ((_message91121_
               (if (let () (declare (not safe)) (string? _message91114_))
                   _message91114_
                   (call-with-output-string
                    '""
                    (lambda (_g9111691118_)
                      (display _message91114_ _g9111691118_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91113_ 'message _message91121_))
          (apply class-instance-init! _self91113_ _rest91115_))))
    (define Error:::init!::specialize
      (lambda (__t95767)
        (let ((__message95768
               (let ((__tmp95769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95767 'message))))
                 (if __tmp95769 __tmp95769 (error '"Unknown slot" 'message)))))
          (lambda (_self91113_ _message91114_ . _rest91115_)
            (let ((_message91121_
                   (if (let () (declare (not safe)) (string? _message91114_))
                       _message91114_
                       (call-with-output-string
                        '""
                        (lambda (_g9111691118_)
                          (display _message91114_ _g9111691118_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91113_
                 _message91121_
                 __message95768
                 __t95767
                 '#f))
              (apply class-instance-init! _self91113_ _rest91115_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90971_ _port90972_)
        (let ((_tmp-port90974_ (open-output-string))
              (_display-error-newline90975_
               (> (output-port-column _port90972_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90974_))
          (let ((__tmp95805
                 (lambda ()
                   (if _display-error-newline90975_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90978_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90971_ 'where))))
                     (if _$e90978_ (display _$e90978_) (display '"?")))
                   (let ((__tmp95806
                          (let ((__tmp95807
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90971_))))
                            (declare (not safe))
                            (##type-name __tmp95807))))
                     (declare (not safe))
                     (display* '" [" __tmp95806 '"]: "))
                   (let ((__tmp95808
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90971_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95808))
                   (let ((_irritants90981_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90971_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90981_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90983_)
                              (write _obj90983_)
                              (write-char '#\space))
                            _irritants90981_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90971_))
                            (dump-stack-trace?))
                       (let ((_cont9098490986_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90971_
                                 'continuation))))
                         (if _cont9098490986_
                             (let ((_cont90989_ _cont9098490986_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90989_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95805
             current-output-port
             _tmp-port90974_))
          (let ((__tmp95809 (get-output-string _tmp-port90974_)))
            (declare (not safe))
            (##write-string __tmp95809 _port90972_)))))
    (define Error::display-exception::specialize
      (lambda (__t95770)
        (let ((__where95771
               (let ((__tmp95775
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95770 'where))))
                 (if __tmp95775 __tmp95775 (error '"Unknown slot" 'where))))
              (__irritants95772
               (let ((__tmp95776
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95770 'irritants))))
                 (if __tmp95776
                     __tmp95776
                     (error '"Unknown slot" 'irritants))))
              (__continuation95773
               (let ((__tmp95777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95770 'continuation))))
                 (if __tmp95777
                     __tmp95777
                     (error '"Unknown slot" 'continuation))))
              (__message95774
               (let ((__tmp95778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95770 'message))))
                 (if __tmp95778 __tmp95778 (error '"Unknown slot" 'message)))))
          (lambda (_self90971_ _port90972_)
            (let ((_tmp-port90974_ (open-output-string))
                  (_display-error-newline90975_
                   (> (output-port-column _port90972_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90974_))
              (let ((__tmp95810
                     (lambda ()
                       (if _display-error-newline90975_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90978_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90971_
                                 __where95771
                                 __t95770
                                 '#f))))
                         (if _$e90978_ (display _$e90978_) (display '"?")))
                       (let ((__tmp95811
                              (let ((__tmp95812
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90971_))))
                                (declare (not safe))
                                (##type-name __tmp95812))))
                         (declare (not safe))
                         (display* '" [" __tmp95811 '"]: "))
                       (let ((__tmp95813
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90971_
                                 __message95774
                                 __t95770
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95813))
                       (let ((_irritants90981_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90971_
                                 __irritants95772
                                 __t95770
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90981_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90983_)
                                  (write _obj90983_)
                                  (write-char '#\space))
                                _irritants90981_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90971_))
                                (dump-stack-trace?))
                           (let ((_cont9098490986_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90971_
                                     __continuation95773
                                     __t95770
                                     '#f))))
                             (if _cont9098490986_
                                 (let ((_cont90989_ _cont9098490986_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90989_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95810
                 current-output-port
                 _tmp-port90974_))
              (let ((__tmp95814 (get-output-string _tmp-port90974_)))
                (declare (not safe))
                (##write-string __tmp95814 _port90972_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90838_ _port90839_)
        (let ((_tmp-port90841_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90841_))
          (let ((__tmp95815
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90838_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95815 _tmp-port90841_))
          (if (dump-stack-trace?)
              (let ((_cont9084290844_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90838_ 'continuation))))
                (if _cont9084290844_
                    (let ((_cont90847_ _cont9084290844_))
                      (display '"--- continuation backtrace:" _tmp-port90841_)
                      (newline _tmp-port90841_)
                      (display-continuation-backtrace
                       _cont90847_
                       _tmp-port90841_))
                    '#f))
              '#!void)
          (let ((__tmp95816 (get-output-string _tmp-port90841_)))
            (declare (not safe))
            (##write-string __tmp95816 _port90839_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95779)
        (let ((__exception95780
               (let ((__tmp95782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95779 'exception))))
                 (if __tmp95782
                     __tmp95782
                     (error '"Unknown slot" 'exception))))
              (__continuation95781
               (let ((__tmp95783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95779 'continuation))))
                 (if __tmp95783
                     __tmp95783
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90838_ _port90839_)
            (let ((_tmp-port90841_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90841_))
              (let ((__tmp95817
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90838_
                        __exception95780
                        __t95779
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95817 _tmp-port90841_))
              (if (dump-stack-trace?)
                  (let ((_cont9084290844_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90838_
                            __continuation95781
                            __t95779
                            '#f))))
                    (if _cont9084290844_
                        (let ((_cont90847_ _cont9084290844_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90841_)
                          (newline _tmp-port90841_)
                          (display-continuation-backtrace
                           _cont90847_
                           _tmp-port90841_))
                        '#f))
                  '#!void)
              (let ((__tmp95818 (get-output-string _tmp-port90841_)))
                (declare (not safe))
                (##write-string __tmp95818 _port90839_)))))))
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
      (lambda (_port90710_)
        (if (macro-character-port? _port90710_)
            (let ((_old-width90712_
                   (macro-character-port-output-width _port90710_)))
              (macro-character-port-output-width-set!
               _port90710_
               (lambda (_port90714_) '256))
              _old-width90712_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90707_ _old-width90708_)
        (if (macro-character-port? _port90707_)
            (macro-character-port-output-width-set!
             _port90707_
             _old-width90708_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90705_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90705_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90699_))
            (let ((_e90702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90699_ 'exception))))
              (macro-abandoned-mutex-exception? _e90702_))
            (macro-abandoned-mutex-exception? _exn90699_))))
    (define cfun-conversion-exception?
      (lambda (_exn90695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90695_))
            (let ((_e90697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90695_ 'exception))))
              (macro-cfun-conversion-exception? _e90697_))
            (macro-cfun-conversion-exception? _exn90695_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90691_))
            (let ((_e90693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90691_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90693_)
                  (macro-cfun-conversion-exception-arguments _e90693_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95820
                                (let ()
                                  (declare (not safe))
                                  (cons _e90693_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95820)))))
            (if (macro-cfun-conversion-exception? _exn90691_)
                (macro-cfun-conversion-exception-arguments _exn90691_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95819
                              (let ()
                                (declare (not safe))
                                (cons _exn90691_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95819)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90687_))
            (let ((_e90689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90687_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90689_)
                  (macro-cfun-conversion-exception-code _e90689_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95822
                                (let ()
                                  (declare (not safe))
                                  (cons _e90689_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95822)))))
            (if (macro-cfun-conversion-exception? _exn90687_)
                (macro-cfun-conversion-exception-code _exn90687_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95821
                              (let ()
                                (declare (not safe))
                                (cons _exn90687_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95821)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90683_))
            (let ((_e90685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90683_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90685_)
                  (macro-cfun-conversion-exception-message _e90685_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95824
                                (let ()
                                  (declare (not safe))
                                  (cons _e90685_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95824)))))
            (if (macro-cfun-conversion-exception? _exn90683_)
                (macro-cfun-conversion-exception-message _exn90683_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95823
                              (let ()
                                (declare (not safe))
                                (cons _exn90683_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95823)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90677_))
            (let ((_e90680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90677_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90680_)
                  (macro-cfun-conversion-exception-procedure _e90680_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95826
                                (let ()
                                  (declare (not safe))
                                  (cons _e90680_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95826)))))
            (if (macro-cfun-conversion-exception? _exn90677_)
                (macro-cfun-conversion-exception-procedure _exn90677_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95825
                              (let ()
                                (declare (not safe))
                                (cons _exn90677_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95825)))))))
    (define datum-parsing-exception?
      (lambda (_exn90673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90673_))
            (let ((_e90675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90673_ 'exception))))
              (macro-datum-parsing-exception? _e90675_))
            (macro-datum-parsing-exception? _exn90673_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90669_))
            (let ((_e90671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90669_ 'exception))))
              (if (macro-datum-parsing-exception? _e90671_)
                  (macro-datum-parsing-exception-kind _e90671_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95828
                                (let ()
                                  (declare (not safe))
                                  (cons _e90671_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95828)))))
            (if (macro-datum-parsing-exception? _exn90669_)
                (macro-datum-parsing-exception-kind _exn90669_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95827
                              (let ()
                                (declare (not safe))
                                (cons _exn90669_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95827)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90665_))
            (let ((_e90667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90665_ 'exception))))
              (if (macro-datum-parsing-exception? _e90667_)
                  (macro-datum-parsing-exception-parameters _e90667_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95830
                                (let ()
                                  (declare (not safe))
                                  (cons _e90667_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95830)))))
            (if (macro-datum-parsing-exception? _exn90665_)
                (macro-datum-parsing-exception-parameters _exn90665_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95829
                              (let ()
                                (declare (not safe))
                                (cons _exn90665_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95829)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90659_))
            (let ((_e90662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90659_ 'exception))))
              (if (macro-datum-parsing-exception? _e90662_)
                  (macro-datum-parsing-exception-readenv _e90662_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95832
                                (let ()
                                  (declare (not safe))
                                  (cons _e90662_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95832)))))
            (if (macro-datum-parsing-exception? _exn90659_)
                (macro-datum-parsing-exception-readenv _exn90659_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95831
                              (let ()
                                (declare (not safe))
                                (cons _exn90659_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95831)))))))
    (define deadlock-exception?
      (lambda (_exn90653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90653_))
            (let ((_e90656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90653_ 'exception))))
              (macro-deadlock-exception? _e90656_))
            (macro-deadlock-exception? _exn90653_))))
    (define divide-by-zero-exception?
      (lambda (_exn90649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90649_))
            (let ((_e90651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90649_ 'exception))))
              (macro-divide-by-zero-exception? _e90651_))
            (macro-divide-by-zero-exception? _exn90649_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90645_))
            (let ((_e90647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90645_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90647_)
                  (macro-divide-by-zero-exception-arguments _e90647_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95834
                                (let ()
                                  (declare (not safe))
                                  (cons _e90647_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95834)))))
            (if (macro-divide-by-zero-exception? _exn90645_)
                (macro-divide-by-zero-exception-arguments _exn90645_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95833
                              (let ()
                                (declare (not safe))
                                (cons _exn90645_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95833)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90639_))
            (let ((_e90642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90639_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90642_)
                  (macro-divide-by-zero-exception-procedure _e90642_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95836
                                (let ()
                                  (declare (not safe))
                                  (cons _e90642_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95836)))))
            (if (macro-divide-by-zero-exception? _exn90639_)
                (macro-divide-by-zero-exception-procedure _exn90639_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95835
                              (let ()
                                (declare (not safe))
                                (cons _exn90639_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95835)))))))
    (define error-exception?
      (lambda (_exn90635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90635_))
            (let ((_e90637_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90635_ 'exception))))
              (macro-error-exception? _e90637_))
            (macro-error-exception? _exn90635_))))
    (define error-exception-message
      (lambda (_exn90631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90631_))
            (let ((_e90633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90631_ 'exception))))
              (if (macro-error-exception? _e90633_)
                  (macro-error-exception-message _e90633_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95838
                                (let ()
                                  (declare (not safe))
                                  (cons _e90633_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95838)))))
            (if (macro-error-exception? _exn90631_)
                (macro-error-exception-message _exn90631_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95837
                              (let ()
                                (declare (not safe))
                                (cons _exn90631_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95837)))))))
    (define error-exception-parameters
      (lambda (_exn90625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90625_))
            (let ((_e90628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90625_ 'exception))))
              (if (macro-error-exception? _e90628_)
                  (macro-error-exception-parameters _e90628_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95840
                                (let ()
                                  (declare (not safe))
                                  (cons _e90628_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95840)))))
            (if (macro-error-exception? _exn90625_)
                (macro-error-exception-parameters _exn90625_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95839
                              (let ()
                                (declare (not safe))
                                (cons _exn90625_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95839)))))))
    (define expression-parsing-exception?
      (lambda (_exn90621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90621_))
            (let ((_e90623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90621_ 'exception))))
              (macro-expression-parsing-exception? _e90623_))
            (macro-expression-parsing-exception? _exn90621_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90617_))
            (let ((_e90619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90617_ 'exception))))
              (if (macro-expression-parsing-exception? _e90619_)
                  (macro-expression-parsing-exception-kind _e90619_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95842
                                (let ()
                                  (declare (not safe))
                                  (cons _e90619_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95842)))))
            (if (macro-expression-parsing-exception? _exn90617_)
                (macro-expression-parsing-exception-kind _exn90617_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95841
                              (let ()
                                (declare (not safe))
                                (cons _exn90617_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95841)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90613_))
            (let ((_e90615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90613_ 'exception))))
              (if (macro-expression-parsing-exception? _e90615_)
                  (macro-expression-parsing-exception-parameters _e90615_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95844
                                (let ()
                                  (declare (not safe))
                                  (cons _e90615_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95844)))))
            (if (macro-expression-parsing-exception? _exn90613_)
                (macro-expression-parsing-exception-parameters _exn90613_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95843
                              (let ()
                                (declare (not safe))
                                (cons _exn90613_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95843)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90607_))
            (let ((_e90610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90607_ 'exception))))
              (if (macro-expression-parsing-exception? _e90610_)
                  (macro-expression-parsing-exception-source _e90610_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95846
                                (let ()
                                  (declare (not safe))
                                  (cons _e90610_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95846)))))
            (if (macro-expression-parsing-exception? _exn90607_)
                (macro-expression-parsing-exception-source _exn90607_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95845
                              (let ()
                                (declare (not safe))
                                (cons _exn90607_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95845)))))))
    (define file-exists-exception?
      (lambda (_exn90603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90603_))
            (let ((_e90605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90603_ 'exception))))
              (macro-file-exists-exception? _e90605_))
            (macro-file-exists-exception? _exn90603_))))
    (define file-exists-exception-arguments
      (lambda (_exn90599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90599_))
            (let ((_e90601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90599_ 'exception))))
              (if (macro-file-exists-exception? _e90601_)
                  (macro-file-exists-exception-arguments _e90601_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95848
                                (let ()
                                  (declare (not safe))
                                  (cons _e90601_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95848)))))
            (if (macro-file-exists-exception? _exn90599_)
                (macro-file-exists-exception-arguments _exn90599_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95847
                              (let ()
                                (declare (not safe))
                                (cons _exn90599_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95847)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90593_))
            (let ((_e90596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90593_ 'exception))))
              (if (macro-file-exists-exception? _e90596_)
                  (macro-file-exists-exception-procedure _e90596_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95850
                                (let ()
                                  (declare (not safe))
                                  (cons _e90596_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95850)))))
            (if (macro-file-exists-exception? _exn90593_)
                (macro-file-exists-exception-procedure _exn90593_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95849
                              (let ()
                                (declare (not safe))
                                (cons _exn90593_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95849)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90589_))
            (let ((_e90591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90589_ 'exception))))
              (macro-fixnum-overflow-exception? _e90591_))
            (macro-fixnum-overflow-exception? _exn90589_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90585_))
            (let ((_e90587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90585_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90587_)
                  (macro-fixnum-overflow-exception-arguments _e90587_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95852
                                (let ()
                                  (declare (not safe))
                                  (cons _e90587_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95852)))))
            (if (macro-fixnum-overflow-exception? _exn90585_)
                (macro-fixnum-overflow-exception-arguments _exn90585_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95851
                              (let ()
                                (declare (not safe))
                                (cons _exn90585_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95851)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90579_))
            (let ((_e90582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90579_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90582_)
                  (macro-fixnum-overflow-exception-procedure _e90582_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95854
                                (let ()
                                  (declare (not safe))
                                  (cons _e90582_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95854)))))
            (if (macro-fixnum-overflow-exception? _exn90579_)
                (macro-fixnum-overflow-exception-procedure _exn90579_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95853
                              (let ()
                                (declare (not safe))
                                (cons _exn90579_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95853)))))))
    (define heap-overflow-exception?
      (lambda (_exn90573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90573_))
            (let ((_e90576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90573_ 'exception))))
              (macro-heap-overflow-exception? _e90576_))
            (macro-heap-overflow-exception? _exn90573_))))
    (define inactive-thread-exception?
      (lambda (_exn90569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90569_))
            (let ((_e90571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90569_ 'exception))))
              (macro-inactive-thread-exception? _e90571_))
            (macro-inactive-thread-exception? _exn90569_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90565_))
            (let ((_e90567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90565_ 'exception))))
              (if (macro-inactive-thread-exception? _e90567_)
                  (macro-inactive-thread-exception-arguments _e90567_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95856
                                (let ()
                                  (declare (not safe))
                                  (cons _e90567_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95856)))))
            (if (macro-inactive-thread-exception? _exn90565_)
                (macro-inactive-thread-exception-arguments _exn90565_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95855
                              (let ()
                                (declare (not safe))
                                (cons _exn90565_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95855)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90559_))
            (let ((_e90562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90559_ 'exception))))
              (if (macro-inactive-thread-exception? _e90562_)
                  (macro-inactive-thread-exception-procedure _e90562_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95858
                                (let ()
                                  (declare (not safe))
                                  (cons _e90562_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95858)))))
            (if (macro-inactive-thread-exception? _exn90559_)
                (macro-inactive-thread-exception-procedure _exn90559_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95857
                              (let ()
                                (declare (not safe))
                                (cons _exn90559_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95857)))))))
    (define initialized-thread-exception?
      (lambda (_exn90555_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90555_))
            (let ((_e90557_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90555_ 'exception))))
              (macro-initialized-thread-exception? _e90557_))
            (macro-initialized-thread-exception? _exn90555_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90551_))
            (let ((_e90553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90551_ 'exception))))
              (if (macro-initialized-thread-exception? _e90553_)
                  (macro-initialized-thread-exception-arguments _e90553_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95860
                                (let ()
                                  (declare (not safe))
                                  (cons _e90553_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95860)))))
            (if (macro-initialized-thread-exception? _exn90551_)
                (macro-initialized-thread-exception-arguments _exn90551_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95859
                              (let ()
                                (declare (not safe))
                                (cons _exn90551_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95859)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90545_))
            (let ((_e90548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90545_ 'exception))))
              (if (macro-initialized-thread-exception? _e90548_)
                  (macro-initialized-thread-exception-procedure _e90548_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95862
                                (let ()
                                  (declare (not safe))
                                  (cons _e90548_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95862)))))
            (if (macro-initialized-thread-exception? _exn90545_)
                (macro-initialized-thread-exception-procedure _exn90545_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95861
                              (let ()
                                (declare (not safe))
                                (cons _exn90545_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95861)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90541_))
            (let ((_e90543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90541_ 'exception))))
              (macro-invalid-hash-number-exception? _e90543_))
            (macro-invalid-hash-number-exception? _exn90541_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90537_))
            (let ((_e90539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90537_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90539_)
                  (macro-invalid-hash-number-exception-arguments _e90539_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95864
                                (let ()
                                  (declare (not safe))
                                  (cons _e90539_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95864)))))
            (if (macro-invalid-hash-number-exception? _exn90537_)
                (macro-invalid-hash-number-exception-arguments _exn90537_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95863
                              (let ()
                                (declare (not safe))
                                (cons _exn90537_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95863)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90531_))
            (let ((_e90534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90531_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90534_)
                  (macro-invalid-hash-number-exception-procedure _e90534_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95866
                                (let ()
                                  (declare (not safe))
                                  (cons _e90534_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95866)))))
            (if (macro-invalid-hash-number-exception? _exn90531_)
                (macro-invalid-hash-number-exception-procedure _exn90531_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95865
                              (let ()
                                (declare (not safe))
                                (cons _exn90531_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95865)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90527_))
            (let ((_e90529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90527_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90529_))
            (macro-invalid-utf8-encoding-exception? _exn90527_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90523_))
            (let ((_e90525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90523_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90525_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90525_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95868
                                (let ()
                                  (declare (not safe))
                                  (cons _e90525_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95868)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90523_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90523_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95867
                              (let ()
                                (declare (not safe))
                                (cons _exn90523_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95867)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90517_))
            (let ((_e90520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90517_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90520_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90520_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95870
                                (let ()
                                  (declare (not safe))
                                  (cons _e90520_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95870)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90517_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90517_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95869
                              (let ()
                                (declare (not safe))
                                (cons _exn90517_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95869)))))))
    (define join-timeout-exception?
      (lambda (_exn90513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90513_))
            (let ((_e90515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90513_ 'exception))))
              (macro-join-timeout-exception? _e90515_))
            (macro-join-timeout-exception? _exn90513_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90509_))
            (let ((_e90511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90509_ 'exception))))
              (if (macro-join-timeout-exception? _e90511_)
                  (macro-join-timeout-exception-arguments _e90511_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95872
                                (let ()
                                  (declare (not safe))
                                  (cons _e90511_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95872)))))
            (if (macro-join-timeout-exception? _exn90509_)
                (macro-join-timeout-exception-arguments _exn90509_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95871
                              (let ()
                                (declare (not safe))
                                (cons _exn90509_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95871)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90503_))
            (let ((_e90506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90503_ 'exception))))
              (if (macro-join-timeout-exception? _e90506_)
                  (macro-join-timeout-exception-procedure _e90506_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95874
                                (let ()
                                  (declare (not safe))
                                  (cons _e90506_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95874)))))
            (if (macro-join-timeout-exception? _exn90503_)
                (macro-join-timeout-exception-procedure _exn90503_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95873
                              (let ()
                                (declare (not safe))
                                (cons _exn90503_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95873)))))))
    (define keyword-expected-exception?
      (lambda (_exn90499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90499_))
            (let ((_e90501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90499_ 'exception))))
              (macro-keyword-expected-exception? _e90501_))
            (macro-keyword-expected-exception? _exn90499_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90495_))
            (let ((_e90497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90495_ 'exception))))
              (if (macro-keyword-expected-exception? _e90497_)
                  (macro-keyword-expected-exception-arguments _e90497_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95876
                                (let ()
                                  (declare (not safe))
                                  (cons _e90497_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95876)))))
            (if (macro-keyword-expected-exception? _exn90495_)
                (macro-keyword-expected-exception-arguments _exn90495_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95875
                              (let ()
                                (declare (not safe))
                                (cons _exn90495_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95875)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90489_))
            (let ((_e90492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90489_ 'exception))))
              (if (macro-keyword-expected-exception? _e90492_)
                  (macro-keyword-expected-exception-procedure _e90492_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95878
                                (let ()
                                  (declare (not safe))
                                  (cons _e90492_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95878)))))
            (if (macro-keyword-expected-exception? _exn90489_)
                (macro-keyword-expected-exception-procedure _exn90489_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95877
                              (let ()
                                (declare (not safe))
                                (cons _exn90489_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95877)))))))
    (define length-mismatch-exception?
      (lambda (_exn90485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90485_))
            (let ((_e90487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90485_ 'exception))))
              (macro-length-mismatch-exception? _e90487_))
            (macro-length-mismatch-exception? _exn90485_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90481_))
            (let ((_e90483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90481_ 'exception))))
              (if (macro-length-mismatch-exception? _e90483_)
                  (macro-length-mismatch-exception-arg-id _e90483_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95880
                                (let ()
                                  (declare (not safe))
                                  (cons _e90483_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95880)))))
            (if (macro-length-mismatch-exception? _exn90481_)
                (macro-length-mismatch-exception-arg-id _exn90481_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95879
                              (let ()
                                (declare (not safe))
                                (cons _exn90481_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95879)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90477_))
            (let ((_e90479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90477_ 'exception))))
              (if (macro-length-mismatch-exception? _e90479_)
                  (macro-length-mismatch-exception-arguments _e90479_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95882
                                (let ()
                                  (declare (not safe))
                                  (cons _e90479_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95882)))))
            (if (macro-length-mismatch-exception? _exn90477_)
                (macro-length-mismatch-exception-arguments _exn90477_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95881
                              (let ()
                                (declare (not safe))
                                (cons _exn90477_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95881)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90471_))
            (let ((_e90474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90471_ 'exception))))
              (if (macro-length-mismatch-exception? _e90474_)
                  (macro-length-mismatch-exception-procedure _e90474_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95884
                                (let ()
                                  (declare (not safe))
                                  (cons _e90474_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95884)))))
            (if (macro-length-mismatch-exception? _exn90471_)
                (macro-length-mismatch-exception-procedure _exn90471_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95883
                              (let ()
                                (declare (not safe))
                                (cons _exn90471_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95883)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90467_))
            (let ((_e90469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90467_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90469_))
            (macro-mailbox-receive-timeout-exception? _exn90467_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90463_))
            (let ((_e90465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90463_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90465_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90465_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95886
                                (let ()
                                  (declare (not safe))
                                  (cons _e90465_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95886)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90463_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90463_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95885
                              (let ()
                                (declare (not safe))
                                (cons _exn90463_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95885)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90457_))
            (let ((_e90460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90457_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90460_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90460_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95888
                                (let ()
                                  (declare (not safe))
                                  (cons _e90460_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95888)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90457_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90457_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95887
                              (let ()
                                (declare (not safe))
                                (cons _exn90457_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95887)))))))
    (define module-not-found-exception?
      (lambda (_exn90453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90453_))
            (let ((_e90455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90453_ 'exception))))
              (macro-module-not-found-exception? _e90455_))
            (macro-module-not-found-exception? _exn90453_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90449_))
            (let ((_e90451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90449_ 'exception))))
              (if (macro-module-not-found-exception? _e90451_)
                  (macro-module-not-found-exception-arguments _e90451_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95890
                                (let ()
                                  (declare (not safe))
                                  (cons _e90451_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95890)))))
            (if (macro-module-not-found-exception? _exn90449_)
                (macro-module-not-found-exception-arguments _exn90449_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95889
                              (let ()
                                (declare (not safe))
                                (cons _exn90449_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95889)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90443_))
            (let ((_e90446_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90443_ 'exception))))
              (if (macro-module-not-found-exception? _e90446_)
                  (macro-module-not-found-exception-procedure _e90446_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95892
                                (let ()
                                  (declare (not safe))
                                  (cons _e90446_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95892)))))
            (if (macro-module-not-found-exception? _exn90443_)
                (macro-module-not-found-exception-procedure _exn90443_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95891
                              (let ()
                                (declare (not safe))
                                (cons _exn90443_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95891)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90437_))
            (let ((_e90440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90437_ 'exception))))
              (macro-multiple-c-return-exception? _e90440_))
            (macro-multiple-c-return-exception? _exn90437_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90433_))
            (let ((_e90435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90433_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90435_))
            (macro-no-such-file-or-directory-exception? _exn90433_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90429_))
            (let ((_e90431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90429_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90431_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90431_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95894
                                (let ()
                                  (declare (not safe))
                                  (cons _e90431_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95894)))))
            (if (macro-no-such-file-or-directory-exception? _exn90429_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90429_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95893
                              (let ()
                                (declare (not safe))
                                (cons _exn90429_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95893)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90423_))
            (let ((_e90426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90423_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90426_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90426_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95896
                                (let ()
                                  (declare (not safe))
                                  (cons _e90426_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95896)))))
            (if (macro-no-such-file-or-directory-exception? _exn90423_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90423_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95895
                              (let ()
                                (declare (not safe))
                                (cons _exn90423_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95895)))))))
    (define noncontinuable-exception?
      (lambda (_exn90419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90419_))
            (let ((_e90421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90419_ 'exception))))
              (macro-noncontinuable-exception? _e90421_))
            (macro-noncontinuable-exception? _exn90419_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90413_))
            (let ((_e90416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90413_ 'exception))))
              (if (macro-noncontinuable-exception? _e90416_)
                  (macro-noncontinuable-exception-reason _e90416_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95898
                                (let ()
                                  (declare (not safe))
                                  (cons _e90416_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95898)))))
            (if (macro-noncontinuable-exception? _exn90413_)
                (macro-noncontinuable-exception-reason _exn90413_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95897
                              (let ()
                                (declare (not safe))
                                (cons _exn90413_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95897)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90409_))
            (let ((_e90411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90409_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90411_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90409_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90405_))
            (let ((_e90407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90405_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90407_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90407_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95900
                                (let ()
                                  (declare (not safe))
                                  (cons _e90407_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95900)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90405_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90405_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95899
                              (let ()
                                (declare (not safe))
                                (cons _exn90405_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95899)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90399_))
            (let ((_e90402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90399_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90402_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90402_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95902
                                (let ()
                                  (declare (not safe))
                                  (cons _e90402_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95902)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90399_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90399_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95901
                              (let ()
                                (declare (not safe))
                                (cons _exn90399_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95901)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90395_))
            (let ((_e90397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90395_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90397_))
            (macro-nonprocedure-operator-exception? _exn90395_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90391_))
            (let ((_e90393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90391_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90393_)
                  (macro-nonprocedure-operator-exception-arguments _e90393_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95904
                                (let ()
                                  (declare (not safe))
                                  (cons _e90393_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95904)))))
            (if (macro-nonprocedure-operator-exception? _exn90391_)
                (macro-nonprocedure-operator-exception-arguments _exn90391_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95903
                              (let ()
                                (declare (not safe))
                                (cons _exn90391_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95903)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90387_))
            (let ((_e90389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90387_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90389_)
                  (macro-nonprocedure-operator-exception-code _e90389_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95906
                                (let ()
                                  (declare (not safe))
                                  (cons _e90389_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95906)))))
            (if (macro-nonprocedure-operator-exception? _exn90387_)
                (macro-nonprocedure-operator-exception-code _exn90387_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95905
                              (let ()
                                (declare (not safe))
                                (cons _exn90387_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95905)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90383_))
            (let ((_e90385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90383_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90385_)
                  (macro-nonprocedure-operator-exception-operator _e90385_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95908
                                (let ()
                                  (declare (not safe))
                                  (cons _e90385_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95908)))))
            (if (macro-nonprocedure-operator-exception? _exn90383_)
                (macro-nonprocedure-operator-exception-operator _exn90383_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95907
                              (let ()
                                (declare (not safe))
                                (cons _exn90383_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95907)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90377_))
            (let ((_e90380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90377_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90380_)
                  (macro-nonprocedure-operator-exception-rte _e90380_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95910
                                (let ()
                                  (declare (not safe))
                                  (cons _e90380_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95910)))))
            (if (macro-nonprocedure-operator-exception? _exn90377_)
                (macro-nonprocedure-operator-exception-rte _exn90377_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95909
                              (let ()
                                (declare (not safe))
                                (cons _exn90377_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95909)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90373_))
            (let ((_e90375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90373_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90375_))
            (macro-not-in-compilation-context-exception? _exn90373_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90369_))
            (let ((_e90371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90369_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90371_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90371_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95912
                                (let ()
                                  (declare (not safe))
                                  (cons _e90371_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95912)))))
            (if (macro-not-in-compilation-context-exception? _exn90369_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90369_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95911
                              (let ()
                                (declare (not safe))
                                (cons _exn90369_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95911)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90363_))
            (let ((_e90366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90363_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90366_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90366_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95914
                                (let ()
                                  (declare (not safe))
                                  (cons _e90366_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95914)))))
            (if (macro-not-in-compilation-context-exception? _exn90363_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90363_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95913
                              (let ()
                                (declare (not safe))
                                (cons _exn90363_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95913)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90359_))
            (let ((_e90361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90359_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90361_))
            (macro-number-of-arguments-limit-exception? _exn90359_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90355_))
            (let ((_e90357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90355_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90357_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90357_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95916
                                (let ()
                                  (declare (not safe))
                                  (cons _e90357_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95916)))))
            (if (macro-number-of-arguments-limit-exception? _exn90355_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90355_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95915
                              (let ()
                                (declare (not safe))
                                (cons _exn90355_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95915)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90349_))
            (let ((_e90352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90349_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90352_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90352_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95918
                                (let ()
                                  (declare (not safe))
                                  (cons _e90352_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95918)))))
            (if (macro-number-of-arguments-limit-exception? _exn90349_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90349_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95917
                              (let ()
                                (declare (not safe))
                                (cons _exn90349_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95917)))))))
    (define os-exception?
      (lambda (_exn90345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90345_))
            (let ((_e90347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90345_ 'exception))))
              (macro-os-exception? _e90347_))
            (macro-os-exception? _exn90345_))))
    (define os-exception-arguments
      (lambda (_exn90341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90341_))
            (let ((_e90343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90341_ 'exception))))
              (if (macro-os-exception? _e90343_)
                  (macro-os-exception-arguments _e90343_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95920
                                (let ()
                                  (declare (not safe))
                                  (cons _e90343_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95920)))))
            (if (macro-os-exception? _exn90341_)
                (macro-os-exception-arguments _exn90341_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95919
                              (let ()
                                (declare (not safe))
                                (cons _exn90341_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95919)))))))
    (define os-exception-code
      (lambda (_exn90337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90337_))
            (let ((_e90339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90337_ 'exception))))
              (if (macro-os-exception? _e90339_)
                  (macro-os-exception-code _e90339_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95922
                                (let ()
                                  (declare (not safe))
                                  (cons _e90339_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95922)))))
            (if (macro-os-exception? _exn90337_)
                (macro-os-exception-code _exn90337_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95921
                              (let ()
                                (declare (not safe))
                                (cons _exn90337_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95921)))))))
    (define os-exception-message
      (lambda (_exn90333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90333_))
            (let ((_e90335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90333_ 'exception))))
              (if (macro-os-exception? _e90335_)
                  (macro-os-exception-message _e90335_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95924
                                (let ()
                                  (declare (not safe))
                                  (cons _e90335_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95924)))))
            (if (macro-os-exception? _exn90333_)
                (macro-os-exception-message _exn90333_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95923
                              (let ()
                                (declare (not safe))
                                (cons _exn90333_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95923)))))))
    (define os-exception-procedure
      (lambda (_exn90327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90327_))
            (let ((_e90330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90327_ 'exception))))
              (if (macro-os-exception? _e90330_)
                  (macro-os-exception-procedure _e90330_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95926
                                (let ()
                                  (declare (not safe))
                                  (cons _e90330_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95926)))))
            (if (macro-os-exception? _exn90327_)
                (macro-os-exception-procedure _exn90327_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95925
                              (let ()
                                (declare (not safe))
                                (cons _exn90327_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95925)))))))
    (define permission-denied-exception?
      (lambda (_exn90323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90323_))
            (let ((_e90325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90323_ 'exception))))
              (macro-permission-denied-exception? _e90325_))
            (macro-permission-denied-exception? _exn90323_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90319_))
            (let ((_e90321_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90319_ 'exception))))
              (if (macro-permission-denied-exception? _e90321_)
                  (macro-permission-denied-exception-arguments _e90321_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95928
                                (let ()
                                  (declare (not safe))
                                  (cons _e90321_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95928)))))
            (if (macro-permission-denied-exception? _exn90319_)
                (macro-permission-denied-exception-arguments _exn90319_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95927
                              (let ()
                                (declare (not safe))
                                (cons _exn90319_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95927)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90313_))
            (let ((_e90316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90313_ 'exception))))
              (if (macro-permission-denied-exception? _e90316_)
                  (macro-permission-denied-exception-procedure _e90316_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95930
                                (let ()
                                  (declare (not safe))
                                  (cons _e90316_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95930)))))
            (if (macro-permission-denied-exception? _exn90313_)
                (macro-permission-denied-exception-procedure _exn90313_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95929
                              (let ()
                                (declare (not safe))
                                (cons _exn90313_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95929)))))))
    (define range-exception?
      (lambda (_exn90309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90309_))
            (let ((_e90311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90309_ 'exception))))
              (macro-range-exception? _e90311_))
            (macro-range-exception? _exn90309_))))
    (define range-exception-arg-id
      (lambda (_exn90305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90305_))
            (let ((_e90307_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90305_ 'exception))))
              (if (macro-range-exception? _e90307_)
                  (macro-range-exception-arg-id _e90307_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95932
                                (let ()
                                  (declare (not safe))
                                  (cons _e90307_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95932)))))
            (if (macro-range-exception? _exn90305_)
                (macro-range-exception-arg-id _exn90305_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95931
                              (let ()
                                (declare (not safe))
                                (cons _exn90305_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95931)))))))
    (define range-exception-arguments
      (lambda (_exn90301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90301_))
            (let ((_e90303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90301_ 'exception))))
              (if (macro-range-exception? _e90303_)
                  (macro-range-exception-arguments _e90303_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95934
                                (let ()
                                  (declare (not safe))
                                  (cons _e90303_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95934)))))
            (if (macro-range-exception? _exn90301_)
                (macro-range-exception-arguments _exn90301_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95933
                              (let ()
                                (declare (not safe))
                                (cons _exn90301_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95933)))))))
    (define range-exception-procedure
      (lambda (_exn90295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90295_))
            (let ((_e90298_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90295_ 'exception))))
              (if (macro-range-exception? _e90298_)
                  (macro-range-exception-procedure _e90298_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95936
                                (let ()
                                  (declare (not safe))
                                  (cons _e90298_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95936)))))
            (if (macro-range-exception? _exn90295_)
                (macro-range-exception-procedure _exn90295_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95935
                              (let ()
                                (declare (not safe))
                                (cons _exn90295_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95935)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90291_))
            (let ((_e90293_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90291_ 'exception))))
              (macro-rpc-remote-error-exception? _e90293_))
            (macro-rpc-remote-error-exception? _exn90291_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90287_))
            (let ((_e90289_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90287_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90289_)
                  (macro-rpc-remote-error-exception-arguments _e90289_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95938
                                (let ()
                                  (declare (not safe))
                                  (cons _e90289_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95938)))))
            (if (macro-rpc-remote-error-exception? _exn90287_)
                (macro-rpc-remote-error-exception-arguments _exn90287_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95937
                              (let ()
                                (declare (not safe))
                                (cons _exn90287_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95937)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90283_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90283_))
            (let ((_e90285_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90283_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90285_)
                  (macro-rpc-remote-error-exception-message _e90285_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95940
                                (let ()
                                  (declare (not safe))
                                  (cons _e90285_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95940)))))
            (if (macro-rpc-remote-error-exception? _exn90283_)
                (macro-rpc-remote-error-exception-message _exn90283_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95939
                              (let ()
                                (declare (not safe))
                                (cons _exn90283_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95939)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90277_))
            (let ((_e90280_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90277_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90280_)
                  (macro-rpc-remote-error-exception-procedure _e90280_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95942
                                (let ()
                                  (declare (not safe))
                                  (cons _e90280_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95942)))))
            (if (macro-rpc-remote-error-exception? _exn90277_)
                (macro-rpc-remote-error-exception-procedure _exn90277_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95941
                              (let ()
                                (declare (not safe))
                                (cons _exn90277_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95941)))))))
    (define scheduler-exception?
      (lambda (_exn90273_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90273_))
            (let ((_e90275_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90273_ 'exception))))
              (macro-scheduler-exception? _e90275_))
            (macro-scheduler-exception? _exn90273_))))
    (define scheduler-exception-reason
      (lambda (_exn90267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90267_))
            (let ((_e90270_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90267_ 'exception))))
              (if (macro-scheduler-exception? _e90270_)
                  (macro-scheduler-exception-reason _e90270_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95944
                                (let ()
                                  (declare (not safe))
                                  (cons _e90270_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95944)))))
            (if (macro-scheduler-exception? _exn90267_)
                (macro-scheduler-exception-reason _exn90267_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95943
                              (let ()
                                (declare (not safe))
                                (cons _exn90267_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95943)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90263_))
            (let ((_e90265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90263_ 'exception))))
              (macro-sfun-conversion-exception? _e90265_))
            (macro-sfun-conversion-exception? _exn90263_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90259_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90259_))
            (let ((_e90261_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90259_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90261_)
                  (macro-sfun-conversion-exception-arguments _e90261_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95946
                                (let ()
                                  (declare (not safe))
                                  (cons _e90261_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95946)))))
            (if (macro-sfun-conversion-exception? _exn90259_)
                (macro-sfun-conversion-exception-arguments _exn90259_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95945
                              (let ()
                                (declare (not safe))
                                (cons _exn90259_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95945)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90255_))
            (let ((_e90257_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90255_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90257_)
                  (macro-sfun-conversion-exception-code _e90257_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95948
                                (let ()
                                  (declare (not safe))
                                  (cons _e90257_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95948)))))
            (if (macro-sfun-conversion-exception? _exn90255_)
                (macro-sfun-conversion-exception-code _exn90255_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95947
                              (let ()
                                (declare (not safe))
                                (cons _exn90255_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95947)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90251_))
            (let ((_e90253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90251_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90253_)
                  (macro-sfun-conversion-exception-message _e90253_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95950
                                (let ()
                                  (declare (not safe))
                                  (cons _e90253_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95950)))))
            (if (macro-sfun-conversion-exception? _exn90251_)
                (macro-sfun-conversion-exception-message _exn90251_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95949
                              (let ()
                                (declare (not safe))
                                (cons _exn90251_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95949)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90245_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90245_))
            (let ((_e90248_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90245_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90248_)
                  (macro-sfun-conversion-exception-procedure _e90248_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95952
                                (let ()
                                  (declare (not safe))
                                  (cons _e90248_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95952)))))
            (if (macro-sfun-conversion-exception? _exn90245_)
                (macro-sfun-conversion-exception-procedure _exn90245_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95951
                              (let ()
                                (declare (not safe))
                                (cons _exn90245_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95951)))))))
    (define stack-overflow-exception?
      (lambda (_exn90239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90239_))
            (let ((_e90242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90239_ 'exception))))
              (macro-stack-overflow-exception? _e90242_))
            (macro-stack-overflow-exception? _exn90239_))))
    (define started-thread-exception?
      (lambda (_exn90235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90235_))
            (let ((_e90237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90235_ 'exception))))
              (macro-started-thread-exception? _e90237_))
            (macro-started-thread-exception? _exn90235_))))
    (define started-thread-exception-arguments
      (lambda (_exn90231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90231_))
            (let ((_e90233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90231_ 'exception))))
              (if (macro-started-thread-exception? _e90233_)
                  (macro-started-thread-exception-arguments _e90233_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95954
                                (let ()
                                  (declare (not safe))
                                  (cons _e90233_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95954)))))
            (if (macro-started-thread-exception? _exn90231_)
                (macro-started-thread-exception-arguments _exn90231_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95953
                              (let ()
                                (declare (not safe))
                                (cons _exn90231_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95953)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90225_))
            (let ((_e90228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90225_ 'exception))))
              (if (macro-started-thread-exception? _e90228_)
                  (macro-started-thread-exception-procedure _e90228_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95956
                                (let ()
                                  (declare (not safe))
                                  (cons _e90228_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95956)))))
            (if (macro-started-thread-exception? _exn90225_)
                (macro-started-thread-exception-procedure _exn90225_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95955
                              (let ()
                                (declare (not safe))
                                (cons _exn90225_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95955)))))))
    (define terminated-thread-exception?
      (lambda (_exn90221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90221_))
            (let ((_e90223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90221_ 'exception))))
              (macro-terminated-thread-exception? _e90223_))
            (macro-terminated-thread-exception? _exn90221_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90217_))
            (let ((_e90219_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90217_ 'exception))))
              (if (macro-terminated-thread-exception? _e90219_)
                  (macro-terminated-thread-exception-arguments _e90219_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95958
                                (let ()
                                  (declare (not safe))
                                  (cons _e90219_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95958)))))
            (if (macro-terminated-thread-exception? _exn90217_)
                (macro-terminated-thread-exception-arguments _exn90217_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95957
                              (let ()
                                (declare (not safe))
                                (cons _exn90217_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95957)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90211_))
            (let ((_e90214_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90211_ 'exception))))
              (if (macro-terminated-thread-exception? _e90214_)
                  (macro-terminated-thread-exception-procedure _e90214_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95960
                                (let ()
                                  (declare (not safe))
                                  (cons _e90214_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95960)))))
            (if (macro-terminated-thread-exception? _exn90211_)
                (macro-terminated-thread-exception-procedure _exn90211_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95959
                              (let ()
                                (declare (not safe))
                                (cons _exn90211_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95959)))))))
    (define type-exception?
      (lambda (_exn90207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90207_))
            (let ((_e90209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90207_ 'exception))))
              (macro-type-exception? _e90209_))
            (macro-type-exception? _exn90207_))))
    (define type-exception-arg-id
      (lambda (_exn90203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90203_))
            (let ((_e90205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90203_ 'exception))))
              (if (macro-type-exception? _e90205_)
                  (macro-type-exception-arg-id _e90205_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95962
                                (let ()
                                  (declare (not safe))
                                  (cons _e90205_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95962)))))
            (if (macro-type-exception? _exn90203_)
                (macro-type-exception-arg-id _exn90203_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95961
                              (let ()
                                (declare (not safe))
                                (cons _exn90203_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95961)))))))
    (define type-exception-arguments
      (lambda (_exn90199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90199_))
            (let ((_e90201_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90199_ 'exception))))
              (if (macro-type-exception? _e90201_)
                  (macro-type-exception-arguments _e90201_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95964
                                (let ()
                                  (declare (not safe))
                                  (cons _e90201_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95964)))))
            (if (macro-type-exception? _exn90199_)
                (macro-type-exception-arguments _exn90199_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95963
                              (let ()
                                (declare (not safe))
                                (cons _exn90199_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95963)))))))
    (define type-exception-procedure
      (lambda (_exn90195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90195_))
            (let ((_e90197_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90195_ 'exception))))
              (if (macro-type-exception? _e90197_)
                  (macro-type-exception-procedure _e90197_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95966
                                (let ()
                                  (declare (not safe))
                                  (cons _e90197_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95966)))))
            (if (macro-type-exception? _exn90195_)
                (macro-type-exception-procedure _exn90195_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95965
                              (let ()
                                (declare (not safe))
                                (cons _exn90195_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95965)))))))
    (define type-exception-type-id
      (lambda (_exn90189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90189_))
            (let ((_e90192_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90189_ 'exception))))
              (if (macro-type-exception? _e90192_)
                  (macro-type-exception-type-id _e90192_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95968
                                (let ()
                                  (declare (not safe))
                                  (cons _e90192_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95968)))))
            (if (macro-type-exception? _exn90189_)
                (macro-type-exception-type-id _exn90189_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95967
                              (let ()
                                (declare (not safe))
                                (cons _exn90189_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95967)))))))
    (define unbound-global-exception?
      (lambda (_exn90185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90185_))
            (let ((_e90187_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90185_ 'exception))))
              (macro-unbound-global-exception? _e90187_))
            (macro-unbound-global-exception? _exn90185_))))
    (define unbound-global-exception-code
      (lambda (_exn90181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90181_))
            (let ((_e90183_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90181_ 'exception))))
              (if (macro-unbound-global-exception? _e90183_)
                  (macro-unbound-global-exception-code _e90183_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95970
                                (let ()
                                  (declare (not safe))
                                  (cons _e90183_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95970)))))
            (if (macro-unbound-global-exception? _exn90181_)
                (macro-unbound-global-exception-code _exn90181_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95969
                              (let ()
                                (declare (not safe))
                                (cons _exn90181_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95969)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90177_))
            (let ((_e90179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90177_ 'exception))))
              (if (macro-unbound-global-exception? _e90179_)
                  (macro-unbound-global-exception-rte _e90179_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95972
                                (let ()
                                  (declare (not safe))
                                  (cons _e90179_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95972)))))
            (if (macro-unbound-global-exception? _exn90177_)
                (macro-unbound-global-exception-rte _exn90177_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95971
                              (let ()
                                (declare (not safe))
                                (cons _exn90177_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95971)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90171_))
            (let ((_e90174_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90171_ 'exception))))
              (if (macro-unbound-global-exception? _e90174_)
                  (macro-unbound-global-exception-variable _e90174_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95974
                                (let ()
                                  (declare (not safe))
                                  (cons _e90174_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95974)))))
            (if (macro-unbound-global-exception? _exn90171_)
                (macro-unbound-global-exception-variable _exn90171_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95973
                              (let ()
                                (declare (not safe))
                                (cons _exn90171_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95973)))))))
    (define unbound-key-exception?
      (lambda (_exn90167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90167_))
            (let ((_e90169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90167_ 'exception))))
              (macro-unbound-key-exception? _e90169_))
            (macro-unbound-key-exception? _exn90167_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90163_))
            (let ((_e90165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90163_ 'exception))))
              (if (macro-unbound-key-exception? _e90165_)
                  (macro-unbound-key-exception-arguments _e90165_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95976
                                (let ()
                                  (declare (not safe))
                                  (cons _e90165_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95976)))))
            (if (macro-unbound-key-exception? _exn90163_)
                (macro-unbound-key-exception-arguments _exn90163_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95975
                              (let ()
                                (declare (not safe))
                                (cons _exn90163_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95975)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90157_))
            (let ((_e90160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90157_ 'exception))))
              (if (macro-unbound-key-exception? _e90160_)
                  (macro-unbound-key-exception-procedure _e90160_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95978
                                (let ()
                                  (declare (not safe))
                                  (cons _e90160_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95978)))))
            (if (macro-unbound-key-exception? _exn90157_)
                (macro-unbound-key-exception-procedure _exn90157_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95977
                              (let ()
                                (declare (not safe))
                                (cons _exn90157_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95977)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90153_))
            (let ((_e90155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90153_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90155_))
            (macro-unbound-os-environment-variable-exception? _exn90153_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90149_))
            (let ((_e90151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90149_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90151_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90151_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95980
                                (let ()
                                  (declare (not safe))
                                  (cons _e90151_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95980)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90149_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90149_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95979
                              (let ()
                                (declare (not safe))
                                (cons _exn90149_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95979)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90143_))
            (let ((_e90146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90143_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90146_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90146_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95982
                                (let ()
                                  (declare (not safe))
                                  (cons _e90146_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95982)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90143_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90143_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95981
                              (let ()
                                (declare (not safe))
                                (cons _exn90143_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95981)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90139_))
            (let ((_e90141_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90139_ 'exception))))
              (macro-unbound-serial-number-exception? _e90141_))
            (macro-unbound-serial-number-exception? _exn90139_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90135_))
            (let ((_e90137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90135_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90137_)
                  (macro-unbound-serial-number-exception-arguments _e90137_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95984
                                (let ()
                                  (declare (not safe))
                                  (cons _e90137_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95984)))))
            (if (macro-unbound-serial-number-exception? _exn90135_)
                (macro-unbound-serial-number-exception-arguments _exn90135_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95983
                              (let ()
                                (declare (not safe))
                                (cons _exn90135_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95983)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90129_))
            (let ((_e90132_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90129_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90132_)
                  (macro-unbound-serial-number-exception-procedure _e90132_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95986
                                (let ()
                                  (declare (not safe))
                                  (cons _e90132_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95986)))))
            (if (macro-unbound-serial-number-exception? _exn90129_)
                (macro-unbound-serial-number-exception-procedure _exn90129_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95985
                              (let ()
                                (declare (not safe))
                                (cons _exn90129_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95985)))))))
    (define uncaught-exception?
      (lambda (_exn90125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90125_))
            (let ((_e90127_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90125_ 'exception))))
              (macro-uncaught-exception? _e90127_))
            (macro-uncaught-exception? _exn90125_))))
    (define uncaught-exception-arguments
      (lambda (_exn90121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90121_))
            (let ((_e90123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90121_ 'exception))))
              (if (macro-uncaught-exception? _e90123_)
                  (macro-uncaught-exception-arguments _e90123_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95988
                                (let ()
                                  (declare (not safe))
                                  (cons _e90123_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95988)))))
            (if (macro-uncaught-exception? _exn90121_)
                (macro-uncaught-exception-arguments _exn90121_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95987
                              (let ()
                                (declare (not safe))
                                (cons _exn90121_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95987)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90117_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90117_ 'exception))))
              (if (macro-uncaught-exception? _e90119_)
                  (macro-uncaught-exception-procedure _e90119_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95990
                                (let ()
                                  (declare (not safe))
                                  (cons _e90119_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95990)))))
            (if (macro-uncaught-exception? _exn90117_)
                (macro-uncaught-exception-procedure _exn90117_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95989
                              (let ()
                                (declare (not safe))
                                (cons _exn90117_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95989)))))))
    (define uncaught-exception-reason
      (lambda (_exn90111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90111_))
            (let ((_e90114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90111_ 'exception))))
              (if (macro-uncaught-exception? _e90114_)
                  (macro-uncaught-exception-reason _e90114_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95992
                                (let ()
                                  (declare (not safe))
                                  (cons _e90114_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95992)))))
            (if (macro-uncaught-exception? _exn90111_)
                (macro-uncaught-exception-reason _exn90111_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95991
                              (let ()
                                (declare (not safe))
                                (cons _exn90111_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95991)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90107_))
            (let ((_e90109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90107_ 'exception))))
              (macro-uninitialized-thread-exception? _e90109_))
            (macro-uninitialized-thread-exception? _exn90107_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90103_))
            (let ((_e90105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90103_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90105_)
                  (macro-uninitialized-thread-exception-arguments _e90105_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95994
                                (let ()
                                  (declare (not safe))
                                  (cons _e90105_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95994)))))
            (if (macro-uninitialized-thread-exception? _exn90103_)
                (macro-uninitialized-thread-exception-arguments _exn90103_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95993
                              (let ()
                                (declare (not safe))
                                (cons _exn90103_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95993)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90097_))
            (let ((_e90100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90097_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90100_)
                  (macro-uninitialized-thread-exception-procedure _e90100_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95996
                                (let ()
                                  (declare (not safe))
                                  (cons _e90100_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95996)))))
            (if (macro-uninitialized-thread-exception? _exn90097_)
                (macro-uninitialized-thread-exception-procedure _exn90097_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95995
                              (let ()
                                (declare (not safe))
                                (cons _exn90097_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95995)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90093_))
            (let ((_e90095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90093_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90095_))
            (macro-unknown-keyword-argument-exception? _exn90093_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90089_))
            (let ((_e90091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90089_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90091_)
                  (macro-unknown-keyword-argument-exception-arguments _e90091_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95998
                                (let ()
                                  (declare (not safe))
                                  (cons _e90091_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95998)))))
            (if (macro-unknown-keyword-argument-exception? _exn90089_)
                (macro-unknown-keyword-argument-exception-arguments _exn90089_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95997
                              (let ()
                                (declare (not safe))
                                (cons _exn90089_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95997)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90083_))
            (let ((_e90086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90083_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90086_)
                  (macro-unknown-keyword-argument-exception-procedure _e90086_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96000
                                (let ()
                                  (declare (not safe))
                                  (cons _e90086_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp96000)))))
            (if (macro-unknown-keyword-argument-exception? _exn90083_)
                (macro-unknown-keyword-argument-exception-procedure _exn90083_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95999
                              (let ()
                                (declare (not safe))
                                (cons _exn90083_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95999)))))))
    (define unterminated-process-exception?
      (lambda (_exn90079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90079_))
            (let ((_e90081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90079_ 'exception))))
              (macro-unterminated-process-exception? _e90081_))
            (macro-unterminated-process-exception? _exn90079_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90075_))
            (let ((_e90077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90075_ 'exception))))
              (if (macro-unterminated-process-exception? _e90077_)
                  (macro-unterminated-process-exception-arguments _e90077_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96002
                                (let ()
                                  (declare (not safe))
                                  (cons _e90077_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp96002)))))
            (if (macro-unterminated-process-exception? _exn90075_)
                (macro-unterminated-process-exception-arguments _exn90075_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96001
                              (let ()
                                (declare (not safe))
                                (cons _exn90075_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp96001)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90069_))
            (let ((_e90072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90069_ 'exception))))
              (if (macro-unterminated-process-exception? _e90072_)
                  (macro-unterminated-process-exception-procedure _e90072_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96004
                                (let ()
                                  (declare (not safe))
                                  (cons _e90072_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp96004)))))
            (if (macro-unterminated-process-exception? _exn90069_)
                (macro-unterminated-process-exception-procedure _exn90069_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96003
                              (let ()
                                (declare (not safe))
                                (cons _exn90069_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp96003)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90065_))
            (let ((_e90067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90065_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90067_))
            (macro-wrong-number-of-arguments-exception? _exn90065_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90061_))
            (let ((_e90063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90061_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90063_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90063_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96006
                                (let ()
                                  (declare (not safe))
                                  (cons _e90063_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp96006)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90061_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90061_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96005
                              (let ()
                                (declare (not safe))
                                (cons _exn90061_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp96005)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90055_))
            (let ((_e90058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90055_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90058_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90058_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96008
                                (let ()
                                  (declare (not safe))
                                  (cons _e90058_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96008)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90055_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90055_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96007
                              (let ()
                                (declare (not safe))
                                (cons _exn90055_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp96007)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90051_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90051_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90053_))
            (macro-wrong-number-of-values-exception? _exn90051_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90047_))
            (let ((_e90049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90047_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90049_)
                  (macro-wrong-number-of-values-exception-code _e90049_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96010
                                (let ()
                                  (declare (not safe))
                                  (cons _e90049_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96010)))))
            (if (macro-wrong-number-of-values-exception? _exn90047_)
                (macro-wrong-number-of-values-exception-code _exn90047_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96009
                              (let ()
                                (declare (not safe))
                                (cons _exn90047_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96009)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90043_))
            (let ((_e90045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90043_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90045_)
                  (macro-wrong-number-of-values-exception-rte _e90045_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96012
                                (let ()
                                  (declare (not safe))
                                  (cons _e90045_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96012)))))
            (if (macro-wrong-number-of-values-exception? _exn90043_)
                (macro-wrong-number-of-values-exception-rte _exn90043_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96011
                              (let ()
                                (declare (not safe))
                                (cons _exn90043_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96011)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90037_))
            (let ((_e90040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90037_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90040_)
                  (macro-wrong-number-of-values-exception-vals _e90040_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96014
                                (let ()
                                  (declare (not safe))
                                  (cons _e90040_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96014)))))
            (if (macro-wrong-number-of-values-exception? _exn90037_)
                (macro-wrong-number-of-values-exception-vals _exn90037_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96013
                              (let ()
                                (declare (not safe))
                                (cons _exn90037_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96013)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90031_))
            (let ((_e90034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90031_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90034_))
            (macro-wrong-processor-c-return-exception? _exn90031_))))))
