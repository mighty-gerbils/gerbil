(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707740666)
  (begin
    (define Exception::t
      (let ((__tmp95796 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95796
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91199_ (apply make-instance Exception::t _$args91199_)))
    (define StackTrace::t
      (let ((__tmp95797 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95797
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91196_ (apply make-instance StackTrace::t _$args91196_)))
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
      (let ((__tmp95798 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95798
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91193_ (apply make-instance Error::t _$args91193_)))
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
      (let ((__tmp95799 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95799
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91190_
        (apply make-instance RuntimeException::t _$args91190_)))
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
      (lambda (_exn91185_ _continue91186_)
        (let ((_exn91188_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91185_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91188_ _continue91186_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91181_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91181_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91181_ 'continuation))
                '#!void
                (let ((__tmp95800
                       (lambda (_cont91183_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91181_
                            'continuation
                            _cont91183_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95800)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91181_))))
    (define error
      (lambda (_message91178_ . _irritants91179_)
        (raise (let ((__obj95790
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95790
                  _message91178_
                  'irritants:
                  _irritants91179_)
                 __obj95790))))
    (define with-exception-handler
      (lambda (_handler91171_ _thunk91172_)
        (if (let () (declare (not safe)) (procedure? _handler91171_))
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
                      (let () (declare (not safe)) (cons _handler91171_ '())))
                     __obj95791)))
        (if (let () (declare (not safe)) (procedure? _thunk91172_))
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
                      (let () (declare (not safe)) (cons _thunk91172_ '())))
                     __obj95792)))
        (let ((__tmp95801
               (lambda (_exn91174_)
                 (let ((_exn91176_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91174_))))
                   (_handler91171_ _exn91176_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95801 _thunk91172_))))
    (define with-catch
      (lambda (_handler91164_ _thunk91165_)
        (if (let () (declare (not safe)) (procedure? _handler91164_))
            '#!void
            (raise (let ((__obj95793
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95793
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91164_ '())))
                     __obj95793)))
        (if (let () (declare (not safe)) (procedure? _thunk91165_))
            '#!void
            (raise (let ((__obj95794
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95794
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91165_ '())))
                     __obj95794)))
        (let ((__tmp95802
               (lambda (_cont91167_)
                 (with-exception-handler
                  (lambda (_exn91169_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91167_
                       _handler91164_
                       _exn91169_)))
                  _thunk91165_))))
          (declare (not safe))
          (##continuation-capture __tmp95802))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91155_)
        (if (or (heap-overflow-exception? _exn91155_)
                (stack-overflow-exception? _exn91155_))
            _exn91155_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91155_))
                _exn91155_
                (if (macro-exception? _exn91155_)
                    (let ((_rte91160_
                           (let ((__obj95795
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95795
                                _exn91155_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95795)))
                      (let ((__tmp95803
                             (lambda (_cont91162_)
                               (let ((__tmp95804
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91162_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91160_
                                  'continuation
                                  __tmp95804)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95803))
                      _rte91160_)
                    _exn91155_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91150_)
        (let ((_$e91152_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91150_))))
          (if _$e91152_ _$e91152_ (error-exception? _obj91150_)))))
    (define error-message
      (lambda (_obj91148_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91148_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91148_ 'message))
            (if (error-exception? _obj91148_)
                (error-exception-message _obj91148_)
                '#f))))
    (define error-irritants
      (lambda (_obj91146_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91146_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91146_ 'irritants))
            (if (error-exception? _obj91146_)
                (error-exception-parameters _obj91146_)
                '#f))))
    (define error-trace
      (lambda (_obj91144_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91144_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91144_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91126_ _port91127_)
        (let ((_$e91129_
               (let ()
                 (declare (not safe))
                 (method-ref _e91126_ 'display-exception))))
          (if _$e91129_
              ((lambda (_f91132_) (_f91132_ _e91126_ _port91127_)) _$e91129_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91126_ _port91127_))))))
    (define display-exception__0
      (lambda (_e91137_)
        (let ((_port91139_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91137_ _port91139_))))
    (define display-exception
      (lambda _g95806_
        (let ((_g95805_ (let () (declare (not safe)) (##length _g95806_))))
          (cond ((let () (declare (not safe)) (##fx= _g95805_ 1))
                 (apply (lambda (_e91137_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91137_)))
                        _g95806_))
                ((let () (declare (not safe)) (##fx= _g95805_ 2))
                 (apply (lambda (_e91141_ _port91142_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91141_ _port91142_)))
                        _g95806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95806_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91115_ _message91116_ . _rest91117_)
        (let ((_message91123_
               (if (let () (declare (not safe)) (string? _message91116_))
                   _message91116_
                   (call-with-output-string
                    '""
                    (lambda (_g9111891120_)
                      (display _message91116_ _g9111891120_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91115_ 'message _message91123_))
          (apply class-instance-init! _self91115_ _rest91117_))))
    (define Error:::init!::specialize
      (lambda (__t95769)
        (let ((__message95770
               (let ((__tmp95771
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95769 'message))))
                 (if __tmp95771 __tmp95771 (error '"Unknown slot" 'message)))))
          (lambda (_self91115_ _message91116_ . _rest91117_)
            (let ((_message91123_
                   (if (let () (declare (not safe)) (string? _message91116_))
                       _message91116_
                       (call-with-output-string
                        '""
                        (lambda (_g9111891120_)
                          (display _message91116_ _g9111891120_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91115_
                 _message91123_
                 __message95770
                 __t95769
                 '#f))
              (apply class-instance-init! _self91115_ _rest91117_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90973_ _port90974_)
        (let ((_tmp-port90976_ (open-output-string))
              (_display-error-newline90977_
               (> (output-port-column _port90974_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90976_))
          (let ((__tmp95807
                 (lambda ()
                   (if _display-error-newline90977_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90980_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90973_ 'where))))
                     (if _$e90980_ (display _$e90980_) (display '"?")))
                   (let ((__tmp95808
                          (let ((__tmp95809
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90973_))))
                            (declare (not safe))
                            (##type-name __tmp95809))))
                     (declare (not safe))
                     (display* '" [" __tmp95808 '"]: "))
                   (let ((__tmp95810
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90973_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95810))
                   (let ((_irritants90983_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90973_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90983_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90985_)
                              (write _obj90985_)
                              (write-char '#\space))
                            _irritants90983_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90973_))
                            (dump-stack-trace?))
                       (let ((_cont9098690988_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90973_
                                 'continuation))))
                         (if _cont9098690988_
                             (let ((_cont90991_ _cont9098690988_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90991_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95807
             current-output-port
             _tmp-port90976_))
          (let ((__tmp95811 (get-output-string _tmp-port90976_)))
            (declare (not safe))
            (##write-string __tmp95811 _port90974_)))))
    (define Error::display-exception::specialize
      (lambda (__t95772)
        (let ((__message95773
               (let ((__tmp95777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95772 'message))))
                 (if __tmp95777 __tmp95777 (error '"Unknown slot" 'message))))
              (__irritants95774
               (let ((__tmp95778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95772 'irritants))))
                 (if __tmp95778
                     __tmp95778
                     (error '"Unknown slot" 'irritants))))
              (__where95775
               (let ((__tmp95779
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95772 'where))))
                 (if __tmp95779 __tmp95779 (error '"Unknown slot" 'where))))
              (__continuation95776
               (let ((__tmp95780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95772 'continuation))))
                 (if __tmp95780
                     __tmp95780
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90973_ _port90974_)
            (let ((_tmp-port90976_ (open-output-string))
                  (_display-error-newline90977_
                   (> (output-port-column _port90974_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90976_))
              (let ((__tmp95812
                     (lambda ()
                       (if _display-error-newline90977_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90980_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90973_
                                 __where95775
                                 __t95772
                                 '#f))))
                         (if _$e90980_ (display _$e90980_) (display '"?")))
                       (let ((__tmp95813
                              (let ((__tmp95814
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90973_))))
                                (declare (not safe))
                                (##type-name __tmp95814))))
                         (declare (not safe))
                         (display* '" [" __tmp95813 '"]: "))
                       (let ((__tmp95815
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90973_
                                 __message95773
                                 __t95772
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95815))
                       (let ((_irritants90983_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90973_
                                 __irritants95774
                                 __t95772
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90983_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90985_)
                                  (write _obj90985_)
                                  (write-char '#\space))
                                _irritants90983_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90973_))
                                (dump-stack-trace?))
                           (let ((_cont9098690988_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90973_
                                     __continuation95776
                                     __t95772
                                     '#f))))
                             (if _cont9098690988_
                                 (let ((_cont90991_ _cont9098690988_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90991_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95812
                 current-output-port
                 _tmp-port90976_))
              (let ((__tmp95816 (get-output-string _tmp-port90976_)))
                (declare (not safe))
                (##write-string __tmp95816 _port90974_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90840_ _port90841_)
        (let ((_tmp-port90843_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90843_))
          (let ((__tmp95817
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90840_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95817 _tmp-port90843_))
          (if (dump-stack-trace?)
              (let ((_cont9084490846_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90840_ 'continuation))))
                (if _cont9084490846_
                    (let ((_cont90849_ _cont9084490846_))
                      (display '"--- continuation backtrace:" _tmp-port90843_)
                      (newline _tmp-port90843_)
                      (display-continuation-backtrace
                       _cont90849_
                       _tmp-port90843_))
                    '#f))
              '#!void)
          (let ((__tmp95818 (get-output-string _tmp-port90843_)))
            (declare (not safe))
            (##write-string __tmp95818 _port90841_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95781)
        (let ((__exception95782
               (let ((__tmp95784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95781 'exception))))
                 (if __tmp95784
                     __tmp95784
                     (error '"Unknown slot" 'exception))))
              (__continuation95783
               (let ((__tmp95785
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95781 'continuation))))
                 (if __tmp95785
                     __tmp95785
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90840_ _port90841_)
            (let ((_tmp-port90843_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90843_))
              (let ((__tmp95819
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90840_
                        __exception95782
                        __t95781
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95819 _tmp-port90843_))
              (if (dump-stack-trace?)
                  (let ((_cont9084490846_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90840_
                            __continuation95783
                            __t95781
                            '#f))))
                    (if _cont9084490846_
                        (let ((_cont90849_ _cont9084490846_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90843_)
                          (newline _tmp-port90843_)
                          (display-continuation-backtrace
                           _cont90849_
                           _tmp-port90843_))
                        '#f))
                  '#!void)
              (let ((__tmp95820 (get-output-string _tmp-port90843_)))
                (declare (not safe))
                (##write-string __tmp95820 _port90841_)))))))
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
      (lambda (_port90712_)
        (if (macro-character-port? _port90712_)
            (let ((_old-width90714_
                   (macro-character-port-output-width _port90712_)))
              (macro-character-port-output-width-set!
               _port90712_
               (lambda (_port90716_) '256))
              _old-width90714_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90709_ _old-width90710_)
        (if (macro-character-port? _port90709_)
            (macro-character-port-output-width-set!
             _port90709_
             _old-width90710_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90707_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90707_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90701_))
            (let ((_e90704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90701_ 'exception))))
              (macro-abandoned-mutex-exception? _e90704_))
            (macro-abandoned-mutex-exception? _exn90701_))))
    (define cfun-conversion-exception?
      (lambda (_exn90697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90697_))
            (let ((_e90699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90697_ 'exception))))
              (macro-cfun-conversion-exception? _e90699_))
            (macro-cfun-conversion-exception? _exn90697_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90693_))
            (let ((_e90695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90693_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90695_)
                  (macro-cfun-conversion-exception-arguments _e90695_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95822
                                (let ()
                                  (declare (not safe))
                                  (cons _e90695_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95822)))))
            (if (macro-cfun-conversion-exception? _exn90693_)
                (macro-cfun-conversion-exception-arguments _exn90693_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95821
                              (let ()
                                (declare (not safe))
                                (cons _exn90693_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95821)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90689_))
            (let ((_e90691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90689_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90691_)
                  (macro-cfun-conversion-exception-code _e90691_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95824
                                (let ()
                                  (declare (not safe))
                                  (cons _e90691_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95824)))))
            (if (macro-cfun-conversion-exception? _exn90689_)
                (macro-cfun-conversion-exception-code _exn90689_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95823
                              (let ()
                                (declare (not safe))
                                (cons _exn90689_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95823)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90685_))
            (let ((_e90687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90685_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90687_)
                  (macro-cfun-conversion-exception-message _e90687_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95826
                                (let ()
                                  (declare (not safe))
                                  (cons _e90687_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95826)))))
            (if (macro-cfun-conversion-exception? _exn90685_)
                (macro-cfun-conversion-exception-message _exn90685_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95825
                              (let ()
                                (declare (not safe))
                                (cons _exn90685_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95825)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90679_))
            (let ((_e90682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90679_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90682_)
                  (macro-cfun-conversion-exception-procedure _e90682_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95828
                                (let ()
                                  (declare (not safe))
                                  (cons _e90682_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95828)))))
            (if (macro-cfun-conversion-exception? _exn90679_)
                (macro-cfun-conversion-exception-procedure _exn90679_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95827
                              (let ()
                                (declare (not safe))
                                (cons _exn90679_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95827)))))))
    (define datum-parsing-exception?
      (lambda (_exn90675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90675_))
            (let ((_e90677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90675_ 'exception))))
              (macro-datum-parsing-exception? _e90677_))
            (macro-datum-parsing-exception? _exn90675_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90671_))
            (let ((_e90673_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90671_ 'exception))))
              (if (macro-datum-parsing-exception? _e90673_)
                  (macro-datum-parsing-exception-kind _e90673_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95830
                                (let ()
                                  (declare (not safe))
                                  (cons _e90673_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95830)))))
            (if (macro-datum-parsing-exception? _exn90671_)
                (macro-datum-parsing-exception-kind _exn90671_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95829
                              (let ()
                                (declare (not safe))
                                (cons _exn90671_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95829)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90667_))
            (let ((_e90669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90667_ 'exception))))
              (if (macro-datum-parsing-exception? _e90669_)
                  (macro-datum-parsing-exception-parameters _e90669_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95832
                                (let ()
                                  (declare (not safe))
                                  (cons _e90669_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95832)))))
            (if (macro-datum-parsing-exception? _exn90667_)
                (macro-datum-parsing-exception-parameters _exn90667_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95831
                              (let ()
                                (declare (not safe))
                                (cons _exn90667_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95831)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90661_))
            (let ((_e90664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90661_ 'exception))))
              (if (macro-datum-parsing-exception? _e90664_)
                  (macro-datum-parsing-exception-readenv _e90664_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95834
                                (let ()
                                  (declare (not safe))
                                  (cons _e90664_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95834)))))
            (if (macro-datum-parsing-exception? _exn90661_)
                (macro-datum-parsing-exception-readenv _exn90661_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95833
                              (let ()
                                (declare (not safe))
                                (cons _exn90661_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95833)))))))
    (define deadlock-exception?
      (lambda (_exn90655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90655_))
            (let ((_e90658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90655_ 'exception))))
              (macro-deadlock-exception? _e90658_))
            (macro-deadlock-exception? _exn90655_))))
    (define divide-by-zero-exception?
      (lambda (_exn90651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90651_))
            (let ((_e90653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90651_ 'exception))))
              (macro-divide-by-zero-exception? _e90653_))
            (macro-divide-by-zero-exception? _exn90651_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90647_))
            (let ((_e90649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90647_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90649_)
                  (macro-divide-by-zero-exception-arguments _e90649_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95836
                                (let ()
                                  (declare (not safe))
                                  (cons _e90649_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95836)))))
            (if (macro-divide-by-zero-exception? _exn90647_)
                (macro-divide-by-zero-exception-arguments _exn90647_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95835
                              (let ()
                                (declare (not safe))
                                (cons _exn90647_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95835)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90641_))
            (let ((_e90644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90641_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90644_)
                  (macro-divide-by-zero-exception-procedure _e90644_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95838
                                (let ()
                                  (declare (not safe))
                                  (cons _e90644_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95838)))))
            (if (macro-divide-by-zero-exception? _exn90641_)
                (macro-divide-by-zero-exception-procedure _exn90641_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95837
                              (let ()
                                (declare (not safe))
                                (cons _exn90641_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95837)))))))
    (define error-exception?
      (lambda (_exn90637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90637_))
            (let ((_e90639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90637_ 'exception))))
              (macro-error-exception? _e90639_))
            (macro-error-exception? _exn90637_))))
    (define error-exception-message
      (lambda (_exn90633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90633_))
            (let ((_e90635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90633_ 'exception))))
              (if (macro-error-exception? _e90635_)
                  (macro-error-exception-message _e90635_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95840
                                (let ()
                                  (declare (not safe))
                                  (cons _e90635_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95840)))))
            (if (macro-error-exception? _exn90633_)
                (macro-error-exception-message _exn90633_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95839
                              (let ()
                                (declare (not safe))
                                (cons _exn90633_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95839)))))))
    (define error-exception-parameters
      (lambda (_exn90627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90627_))
            (let ((_e90630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90627_ 'exception))))
              (if (macro-error-exception? _e90630_)
                  (macro-error-exception-parameters _e90630_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95842
                                (let ()
                                  (declare (not safe))
                                  (cons _e90630_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95842)))))
            (if (macro-error-exception? _exn90627_)
                (macro-error-exception-parameters _exn90627_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95841
                              (let ()
                                (declare (not safe))
                                (cons _exn90627_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95841)))))))
    (define expression-parsing-exception?
      (lambda (_exn90623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90623_))
            (let ((_e90625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90623_ 'exception))))
              (macro-expression-parsing-exception? _e90625_))
            (macro-expression-parsing-exception? _exn90623_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90619_))
            (let ((_e90621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90619_ 'exception))))
              (if (macro-expression-parsing-exception? _e90621_)
                  (macro-expression-parsing-exception-kind _e90621_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95844
                                (let ()
                                  (declare (not safe))
                                  (cons _e90621_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95844)))))
            (if (macro-expression-parsing-exception? _exn90619_)
                (macro-expression-parsing-exception-kind _exn90619_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95843
                              (let ()
                                (declare (not safe))
                                (cons _exn90619_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95843)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90615_))
            (let ((_e90617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90615_ 'exception))))
              (if (macro-expression-parsing-exception? _e90617_)
                  (macro-expression-parsing-exception-parameters _e90617_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95846
                                (let ()
                                  (declare (not safe))
                                  (cons _e90617_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95846)))))
            (if (macro-expression-parsing-exception? _exn90615_)
                (macro-expression-parsing-exception-parameters _exn90615_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95845
                              (let ()
                                (declare (not safe))
                                (cons _exn90615_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95845)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90609_))
            (let ((_e90612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90609_ 'exception))))
              (if (macro-expression-parsing-exception? _e90612_)
                  (macro-expression-parsing-exception-source _e90612_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95848
                                (let ()
                                  (declare (not safe))
                                  (cons _e90612_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95848)))))
            (if (macro-expression-parsing-exception? _exn90609_)
                (macro-expression-parsing-exception-source _exn90609_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95847
                              (let ()
                                (declare (not safe))
                                (cons _exn90609_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95847)))))))
    (define file-exists-exception?
      (lambda (_exn90605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90605_))
            (let ((_e90607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90605_ 'exception))))
              (macro-file-exists-exception? _e90607_))
            (macro-file-exists-exception? _exn90605_))))
    (define file-exists-exception-arguments
      (lambda (_exn90601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90601_))
            (let ((_e90603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90601_ 'exception))))
              (if (macro-file-exists-exception? _e90603_)
                  (macro-file-exists-exception-arguments _e90603_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95850
                                (let ()
                                  (declare (not safe))
                                  (cons _e90603_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95850)))))
            (if (macro-file-exists-exception? _exn90601_)
                (macro-file-exists-exception-arguments _exn90601_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95849
                              (let ()
                                (declare (not safe))
                                (cons _exn90601_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95849)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90595_))
            (let ((_e90598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90595_ 'exception))))
              (if (macro-file-exists-exception? _e90598_)
                  (macro-file-exists-exception-procedure _e90598_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95852
                                (let ()
                                  (declare (not safe))
                                  (cons _e90598_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95852)))))
            (if (macro-file-exists-exception? _exn90595_)
                (macro-file-exists-exception-procedure _exn90595_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95851
                              (let ()
                                (declare (not safe))
                                (cons _exn90595_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95851)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90591_))
            (let ((_e90593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90591_ 'exception))))
              (macro-fixnum-overflow-exception? _e90593_))
            (macro-fixnum-overflow-exception? _exn90591_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90587_))
            (let ((_e90589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90587_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90589_)
                  (macro-fixnum-overflow-exception-arguments _e90589_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95854
                                (let ()
                                  (declare (not safe))
                                  (cons _e90589_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95854)))))
            (if (macro-fixnum-overflow-exception? _exn90587_)
                (macro-fixnum-overflow-exception-arguments _exn90587_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95853
                              (let ()
                                (declare (not safe))
                                (cons _exn90587_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95853)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90581_))
            (let ((_e90584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90581_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90584_)
                  (macro-fixnum-overflow-exception-procedure _e90584_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95856
                                (let ()
                                  (declare (not safe))
                                  (cons _e90584_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95856)))))
            (if (macro-fixnum-overflow-exception? _exn90581_)
                (macro-fixnum-overflow-exception-procedure _exn90581_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95855
                              (let ()
                                (declare (not safe))
                                (cons _exn90581_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95855)))))))
    (define heap-overflow-exception?
      (lambda (_exn90575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90575_))
            (let ((_e90578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90575_ 'exception))))
              (macro-heap-overflow-exception? _e90578_))
            (macro-heap-overflow-exception? _exn90575_))))
    (define inactive-thread-exception?
      (lambda (_exn90571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90571_))
            (let ((_e90573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90571_ 'exception))))
              (macro-inactive-thread-exception? _e90573_))
            (macro-inactive-thread-exception? _exn90571_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90567_))
            (let ((_e90569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90567_ 'exception))))
              (if (macro-inactive-thread-exception? _e90569_)
                  (macro-inactive-thread-exception-arguments _e90569_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95858
                                (let ()
                                  (declare (not safe))
                                  (cons _e90569_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95858)))))
            (if (macro-inactive-thread-exception? _exn90567_)
                (macro-inactive-thread-exception-arguments _exn90567_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95857
                              (let ()
                                (declare (not safe))
                                (cons _exn90567_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95857)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90561_))
            (let ((_e90564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90561_ 'exception))))
              (if (macro-inactive-thread-exception? _e90564_)
                  (macro-inactive-thread-exception-procedure _e90564_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95860
                                (let ()
                                  (declare (not safe))
                                  (cons _e90564_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95860)))))
            (if (macro-inactive-thread-exception? _exn90561_)
                (macro-inactive-thread-exception-procedure _exn90561_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95859
                              (let ()
                                (declare (not safe))
                                (cons _exn90561_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95859)))))))
    (define initialized-thread-exception?
      (lambda (_exn90557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90557_))
            (let ((_e90559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90557_ 'exception))))
              (macro-initialized-thread-exception? _e90559_))
            (macro-initialized-thread-exception? _exn90557_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90553_))
            (let ((_e90555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90553_ 'exception))))
              (if (macro-initialized-thread-exception? _e90555_)
                  (macro-initialized-thread-exception-arguments _e90555_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95862
                                (let ()
                                  (declare (not safe))
                                  (cons _e90555_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95862)))))
            (if (macro-initialized-thread-exception? _exn90553_)
                (macro-initialized-thread-exception-arguments _exn90553_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95861
                              (let ()
                                (declare (not safe))
                                (cons _exn90553_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95861)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90547_))
            (let ((_e90550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90547_ 'exception))))
              (if (macro-initialized-thread-exception? _e90550_)
                  (macro-initialized-thread-exception-procedure _e90550_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95864
                                (let ()
                                  (declare (not safe))
                                  (cons _e90550_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95864)))))
            (if (macro-initialized-thread-exception? _exn90547_)
                (macro-initialized-thread-exception-procedure _exn90547_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95863
                              (let ()
                                (declare (not safe))
                                (cons _exn90547_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95863)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90543_))
            (let ((_e90545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90543_ 'exception))))
              (macro-invalid-hash-number-exception? _e90545_))
            (macro-invalid-hash-number-exception? _exn90543_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90539_))
            (let ((_e90541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90539_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90541_)
                  (macro-invalid-hash-number-exception-arguments _e90541_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95866
                                (let ()
                                  (declare (not safe))
                                  (cons _e90541_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95866)))))
            (if (macro-invalid-hash-number-exception? _exn90539_)
                (macro-invalid-hash-number-exception-arguments _exn90539_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95865
                              (let ()
                                (declare (not safe))
                                (cons _exn90539_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95865)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90533_))
            (let ((_e90536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90533_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90536_)
                  (macro-invalid-hash-number-exception-procedure _e90536_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95868
                                (let ()
                                  (declare (not safe))
                                  (cons _e90536_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95868)))))
            (if (macro-invalid-hash-number-exception? _exn90533_)
                (macro-invalid-hash-number-exception-procedure _exn90533_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95867
                              (let ()
                                (declare (not safe))
                                (cons _exn90533_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95867)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90529_))
            (let ((_e90531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90529_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90531_))
            (macro-invalid-utf8-encoding-exception? _exn90529_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90525_))
            (let ((_e90527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90525_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90527_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90527_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95870
                                (let ()
                                  (declare (not safe))
                                  (cons _e90527_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95870)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90525_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90525_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95869
                              (let ()
                                (declare (not safe))
                                (cons _exn90525_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95869)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90519_))
            (let ((_e90522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90519_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90522_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90522_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95872
                                (let ()
                                  (declare (not safe))
                                  (cons _e90522_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95872)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90519_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90519_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95871
                              (let ()
                                (declare (not safe))
                                (cons _exn90519_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95871)))))))
    (define join-timeout-exception?
      (lambda (_exn90515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90515_))
            (let ((_e90517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90515_ 'exception))))
              (macro-join-timeout-exception? _e90517_))
            (macro-join-timeout-exception? _exn90515_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90511_))
            (let ((_e90513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90511_ 'exception))))
              (if (macro-join-timeout-exception? _e90513_)
                  (macro-join-timeout-exception-arguments _e90513_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95874
                                (let ()
                                  (declare (not safe))
                                  (cons _e90513_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95874)))))
            (if (macro-join-timeout-exception? _exn90511_)
                (macro-join-timeout-exception-arguments _exn90511_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95873
                              (let ()
                                (declare (not safe))
                                (cons _exn90511_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95873)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90505_))
            (let ((_e90508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90505_ 'exception))))
              (if (macro-join-timeout-exception? _e90508_)
                  (macro-join-timeout-exception-procedure _e90508_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95876
                                (let ()
                                  (declare (not safe))
                                  (cons _e90508_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95876)))))
            (if (macro-join-timeout-exception? _exn90505_)
                (macro-join-timeout-exception-procedure _exn90505_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95875
                              (let ()
                                (declare (not safe))
                                (cons _exn90505_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95875)))))))
    (define keyword-expected-exception?
      (lambda (_exn90501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90501_))
            (let ((_e90503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90501_ 'exception))))
              (macro-keyword-expected-exception? _e90503_))
            (macro-keyword-expected-exception? _exn90501_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90497_))
            (let ((_e90499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90497_ 'exception))))
              (if (macro-keyword-expected-exception? _e90499_)
                  (macro-keyword-expected-exception-arguments _e90499_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95878
                                (let ()
                                  (declare (not safe))
                                  (cons _e90499_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95878)))))
            (if (macro-keyword-expected-exception? _exn90497_)
                (macro-keyword-expected-exception-arguments _exn90497_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95877
                              (let ()
                                (declare (not safe))
                                (cons _exn90497_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95877)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90491_))
            (let ((_e90494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90491_ 'exception))))
              (if (macro-keyword-expected-exception? _e90494_)
                  (macro-keyword-expected-exception-procedure _e90494_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95880
                                (let ()
                                  (declare (not safe))
                                  (cons _e90494_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95880)))))
            (if (macro-keyword-expected-exception? _exn90491_)
                (macro-keyword-expected-exception-procedure _exn90491_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95879
                              (let ()
                                (declare (not safe))
                                (cons _exn90491_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95879)))))))
    (define length-mismatch-exception?
      (lambda (_exn90487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90487_))
            (let ((_e90489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90487_ 'exception))))
              (macro-length-mismatch-exception? _e90489_))
            (macro-length-mismatch-exception? _exn90487_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90483_))
            (let ((_e90485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90483_ 'exception))))
              (if (macro-length-mismatch-exception? _e90485_)
                  (macro-length-mismatch-exception-arg-id _e90485_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95882
                                (let ()
                                  (declare (not safe))
                                  (cons _e90485_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95882)))))
            (if (macro-length-mismatch-exception? _exn90483_)
                (macro-length-mismatch-exception-arg-id _exn90483_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95881
                              (let ()
                                (declare (not safe))
                                (cons _exn90483_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95881)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90479_))
            (let ((_e90481_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90479_ 'exception))))
              (if (macro-length-mismatch-exception? _e90481_)
                  (macro-length-mismatch-exception-arguments _e90481_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95884
                                (let ()
                                  (declare (not safe))
                                  (cons _e90481_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95884)))))
            (if (macro-length-mismatch-exception? _exn90479_)
                (macro-length-mismatch-exception-arguments _exn90479_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95883
                              (let ()
                                (declare (not safe))
                                (cons _exn90479_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95883)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90473_))
            (let ((_e90476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90473_ 'exception))))
              (if (macro-length-mismatch-exception? _e90476_)
                  (macro-length-mismatch-exception-procedure _e90476_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95886
                                (let ()
                                  (declare (not safe))
                                  (cons _e90476_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95886)))))
            (if (macro-length-mismatch-exception? _exn90473_)
                (macro-length-mismatch-exception-procedure _exn90473_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95885
                              (let ()
                                (declare (not safe))
                                (cons _exn90473_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95885)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90469_))
            (let ((_e90471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90469_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90471_))
            (macro-mailbox-receive-timeout-exception? _exn90469_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90465_))
            (let ((_e90467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90465_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90467_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90467_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95888
                                (let ()
                                  (declare (not safe))
                                  (cons _e90467_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95888)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90465_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90465_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95887
                              (let ()
                                (declare (not safe))
                                (cons _exn90465_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95887)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90459_))
            (let ((_e90462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90459_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90462_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90462_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95890
                                (let ()
                                  (declare (not safe))
                                  (cons _e90462_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95890)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90459_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90459_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95889
                              (let ()
                                (declare (not safe))
                                (cons _exn90459_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95889)))))))
    (define module-not-found-exception?
      (lambda (_exn90455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90455_))
            (let ((_e90457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90455_ 'exception))))
              (macro-module-not-found-exception? _e90457_))
            (macro-module-not-found-exception? _exn90455_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90451_))
            (let ((_e90453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90451_ 'exception))))
              (if (macro-module-not-found-exception? _e90453_)
                  (macro-module-not-found-exception-arguments _e90453_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95892
                                (let ()
                                  (declare (not safe))
                                  (cons _e90453_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95892)))))
            (if (macro-module-not-found-exception? _exn90451_)
                (macro-module-not-found-exception-arguments _exn90451_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95891
                              (let ()
                                (declare (not safe))
                                (cons _exn90451_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95891)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90445_))
            (let ((_e90448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90445_ 'exception))))
              (if (macro-module-not-found-exception? _e90448_)
                  (macro-module-not-found-exception-procedure _e90448_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95894
                                (let ()
                                  (declare (not safe))
                                  (cons _e90448_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95894)))))
            (if (macro-module-not-found-exception? _exn90445_)
                (macro-module-not-found-exception-procedure _exn90445_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95893
                              (let ()
                                (declare (not safe))
                                (cons _exn90445_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95893)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90439_))
            (let ((_e90442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90439_ 'exception))))
              (macro-multiple-c-return-exception? _e90442_))
            (macro-multiple-c-return-exception? _exn90439_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90435_))
            (let ((_e90437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90435_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90437_))
            (macro-no-such-file-or-directory-exception? _exn90435_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90431_))
            (let ((_e90433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90431_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90433_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90433_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95896
                                (let ()
                                  (declare (not safe))
                                  (cons _e90433_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95896)))))
            (if (macro-no-such-file-or-directory-exception? _exn90431_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90431_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95895
                              (let ()
                                (declare (not safe))
                                (cons _exn90431_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95895)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90425_))
            (let ((_e90428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90425_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90428_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90428_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95898
                                (let ()
                                  (declare (not safe))
                                  (cons _e90428_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95898)))))
            (if (macro-no-such-file-or-directory-exception? _exn90425_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90425_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95897
                              (let ()
                                (declare (not safe))
                                (cons _exn90425_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95897)))))))
    (define noncontinuable-exception?
      (lambda (_exn90421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90421_))
            (let ((_e90423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90421_ 'exception))))
              (macro-noncontinuable-exception? _e90423_))
            (macro-noncontinuable-exception? _exn90421_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90415_))
            (let ((_e90418_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90415_ 'exception))))
              (if (macro-noncontinuable-exception? _e90418_)
                  (macro-noncontinuable-exception-reason _e90418_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95900
                                (let ()
                                  (declare (not safe))
                                  (cons _e90418_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95900)))))
            (if (macro-noncontinuable-exception? _exn90415_)
                (macro-noncontinuable-exception-reason _exn90415_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95899
                              (let ()
                                (declare (not safe))
                                (cons _exn90415_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95899)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90411_))
            (let ((_e90413_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90411_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90413_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90411_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90407_))
            (let ((_e90409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90407_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90409_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90409_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95902
                                (let ()
                                  (declare (not safe))
                                  (cons _e90409_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95902)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90407_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90407_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95901
                              (let ()
                                (declare (not safe))
                                (cons _exn90407_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95901)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90401_))
            (let ((_e90404_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90401_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90404_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90404_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95904
                                (let ()
                                  (declare (not safe))
                                  (cons _e90404_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95904)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90401_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90401_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95903
                              (let ()
                                (declare (not safe))
                                (cons _exn90401_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95903)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90397_))
            (let ((_e90399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90397_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90399_))
            (macro-nonprocedure-operator-exception? _exn90397_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90393_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90393_))
            (let ((_e90395_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90393_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90395_)
                  (macro-nonprocedure-operator-exception-arguments _e90395_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95906
                                (let ()
                                  (declare (not safe))
                                  (cons _e90395_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95906)))))
            (if (macro-nonprocedure-operator-exception? _exn90393_)
                (macro-nonprocedure-operator-exception-arguments _exn90393_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95905
                              (let ()
                                (declare (not safe))
                                (cons _exn90393_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95905)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90389_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90389_))
            (let ((_e90391_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90389_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90391_)
                  (macro-nonprocedure-operator-exception-code _e90391_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95908
                                (let ()
                                  (declare (not safe))
                                  (cons _e90391_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95908)))))
            (if (macro-nonprocedure-operator-exception? _exn90389_)
                (macro-nonprocedure-operator-exception-code _exn90389_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95907
                              (let ()
                                (declare (not safe))
                                (cons _exn90389_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95907)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90385_))
            (let ((_e90387_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90385_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90387_)
                  (macro-nonprocedure-operator-exception-operator _e90387_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95910
                                (let ()
                                  (declare (not safe))
                                  (cons _e90387_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95910)))))
            (if (macro-nonprocedure-operator-exception? _exn90385_)
                (macro-nonprocedure-operator-exception-operator _exn90385_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95909
                              (let ()
                                (declare (not safe))
                                (cons _exn90385_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95909)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90379_))
            (let ((_e90382_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90379_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90382_)
                  (macro-nonprocedure-operator-exception-rte _e90382_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95912
                                (let ()
                                  (declare (not safe))
                                  (cons _e90382_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95912)))))
            (if (macro-nonprocedure-operator-exception? _exn90379_)
                (macro-nonprocedure-operator-exception-rte _exn90379_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95911
                              (let ()
                                (declare (not safe))
                                (cons _exn90379_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95911)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90375_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90375_))
            (let ((_e90377_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90375_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90377_))
            (macro-not-in-compilation-context-exception? _exn90375_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90371_))
            (let ((_e90373_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90371_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90373_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90373_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95914
                                (let ()
                                  (declare (not safe))
                                  (cons _e90373_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95914)))))
            (if (macro-not-in-compilation-context-exception? _exn90371_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90371_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95913
                              (let ()
                                (declare (not safe))
                                (cons _exn90371_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95913)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90365_))
            (let ((_e90368_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90365_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90368_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90368_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95916
                                (let ()
                                  (declare (not safe))
                                  (cons _e90368_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95916)))))
            (if (macro-not-in-compilation-context-exception? _exn90365_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90365_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95915
                              (let ()
                                (declare (not safe))
                                (cons _exn90365_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95915)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90361_))
            (let ((_e90363_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90361_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90363_))
            (macro-number-of-arguments-limit-exception? _exn90361_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90357_))
            (let ((_e90359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90357_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90359_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90359_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95918
                                (let ()
                                  (declare (not safe))
                                  (cons _e90359_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95918)))))
            (if (macro-number-of-arguments-limit-exception? _exn90357_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90357_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95917
                              (let ()
                                (declare (not safe))
                                (cons _exn90357_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95917)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90351_))
            (let ((_e90354_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90351_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90354_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90354_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95920
                                (let ()
                                  (declare (not safe))
                                  (cons _e90354_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95920)))))
            (if (macro-number-of-arguments-limit-exception? _exn90351_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90351_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95919
                              (let ()
                                (declare (not safe))
                                (cons _exn90351_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95919)))))))
    (define os-exception?
      (lambda (_exn90347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90347_))
            (let ((_e90349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90347_ 'exception))))
              (macro-os-exception? _e90349_))
            (macro-os-exception? _exn90347_))))
    (define os-exception-arguments
      (lambda (_exn90343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90343_))
            (let ((_e90345_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90343_ 'exception))))
              (if (macro-os-exception? _e90345_)
                  (macro-os-exception-arguments _e90345_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95922
                                (let ()
                                  (declare (not safe))
                                  (cons _e90345_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95922)))))
            (if (macro-os-exception? _exn90343_)
                (macro-os-exception-arguments _exn90343_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95921
                              (let ()
                                (declare (not safe))
                                (cons _exn90343_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95921)))))))
    (define os-exception-code
      (lambda (_exn90339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90339_))
            (let ((_e90341_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90339_ 'exception))))
              (if (macro-os-exception? _e90341_)
                  (macro-os-exception-code _e90341_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95924
                                (let ()
                                  (declare (not safe))
                                  (cons _e90341_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95924)))))
            (if (macro-os-exception? _exn90339_)
                (macro-os-exception-code _exn90339_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95923
                              (let ()
                                (declare (not safe))
                                (cons _exn90339_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95923)))))))
    (define os-exception-message
      (lambda (_exn90335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90335_))
            (let ((_e90337_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90335_ 'exception))))
              (if (macro-os-exception? _e90337_)
                  (macro-os-exception-message _e90337_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95926
                                (let ()
                                  (declare (not safe))
                                  (cons _e90337_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95926)))))
            (if (macro-os-exception? _exn90335_)
                (macro-os-exception-message _exn90335_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95925
                              (let ()
                                (declare (not safe))
                                (cons _exn90335_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95925)))))))
    (define os-exception-procedure
      (lambda (_exn90329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90329_))
            (let ((_e90332_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90329_ 'exception))))
              (if (macro-os-exception? _e90332_)
                  (macro-os-exception-procedure _e90332_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95928
                                (let ()
                                  (declare (not safe))
                                  (cons _e90332_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95928)))))
            (if (macro-os-exception? _exn90329_)
                (macro-os-exception-procedure _exn90329_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95927
                              (let ()
                                (declare (not safe))
                                (cons _exn90329_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95927)))))))
    (define permission-denied-exception?
      (lambda (_exn90325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90325_))
            (let ((_e90327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90325_ 'exception))))
              (macro-permission-denied-exception? _e90327_))
            (macro-permission-denied-exception? _exn90325_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90321_))
            (let ((_e90323_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90321_ 'exception))))
              (if (macro-permission-denied-exception? _e90323_)
                  (macro-permission-denied-exception-arguments _e90323_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95930
                                (let ()
                                  (declare (not safe))
                                  (cons _e90323_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95930)))))
            (if (macro-permission-denied-exception? _exn90321_)
                (macro-permission-denied-exception-arguments _exn90321_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95929
                              (let ()
                                (declare (not safe))
                                (cons _exn90321_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95929)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90315_))
            (let ((_e90318_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90315_ 'exception))))
              (if (macro-permission-denied-exception? _e90318_)
                  (macro-permission-denied-exception-procedure _e90318_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95932
                                (let ()
                                  (declare (not safe))
                                  (cons _e90318_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95932)))))
            (if (macro-permission-denied-exception? _exn90315_)
                (macro-permission-denied-exception-procedure _exn90315_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95931
                              (let ()
                                (declare (not safe))
                                (cons _exn90315_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95931)))))))
    (define range-exception?
      (lambda (_exn90311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90311_))
            (let ((_e90313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90311_ 'exception))))
              (macro-range-exception? _e90313_))
            (macro-range-exception? _exn90311_))))
    (define range-exception-arg-id
      (lambda (_exn90307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90307_))
            (let ((_e90309_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90307_ 'exception))))
              (if (macro-range-exception? _e90309_)
                  (macro-range-exception-arg-id _e90309_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95934
                                (let ()
                                  (declare (not safe))
                                  (cons _e90309_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95934)))))
            (if (macro-range-exception? _exn90307_)
                (macro-range-exception-arg-id _exn90307_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95933
                              (let ()
                                (declare (not safe))
                                (cons _exn90307_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95933)))))))
    (define range-exception-arguments
      (lambda (_exn90303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90303_))
            (let ((_e90305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90303_ 'exception))))
              (if (macro-range-exception? _e90305_)
                  (macro-range-exception-arguments _e90305_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95936
                                (let ()
                                  (declare (not safe))
                                  (cons _e90305_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95936)))))
            (if (macro-range-exception? _exn90303_)
                (macro-range-exception-arguments _exn90303_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95935
                              (let ()
                                (declare (not safe))
                                (cons _exn90303_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95935)))))))
    (define range-exception-procedure
      (lambda (_exn90297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90297_))
            (let ((_e90300_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90297_ 'exception))))
              (if (macro-range-exception? _e90300_)
                  (macro-range-exception-procedure _e90300_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95938
                                (let ()
                                  (declare (not safe))
                                  (cons _e90300_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95938)))))
            (if (macro-range-exception? _exn90297_)
                (macro-range-exception-procedure _exn90297_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95937
                              (let ()
                                (declare (not safe))
                                (cons _exn90297_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95937)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90293_))
            (let ((_e90295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90293_ 'exception))))
              (macro-rpc-remote-error-exception? _e90295_))
            (macro-rpc-remote-error-exception? _exn90293_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90289_))
            (let ((_e90291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90289_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90291_)
                  (macro-rpc-remote-error-exception-arguments _e90291_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95940
                                (let ()
                                  (declare (not safe))
                                  (cons _e90291_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95940)))))
            (if (macro-rpc-remote-error-exception? _exn90289_)
                (macro-rpc-remote-error-exception-arguments _exn90289_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95939
                              (let ()
                                (declare (not safe))
                                (cons _exn90289_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95939)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90285_))
            (let ((_e90287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90285_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90287_)
                  (macro-rpc-remote-error-exception-message _e90287_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95942
                                (let ()
                                  (declare (not safe))
                                  (cons _e90287_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95942)))))
            (if (macro-rpc-remote-error-exception? _exn90285_)
                (macro-rpc-remote-error-exception-message _exn90285_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95941
                              (let ()
                                (declare (not safe))
                                (cons _exn90285_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95941)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90279_))
            (let ((_e90282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90279_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90282_)
                  (macro-rpc-remote-error-exception-procedure _e90282_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95944
                                (let ()
                                  (declare (not safe))
                                  (cons _e90282_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95944)))))
            (if (macro-rpc-remote-error-exception? _exn90279_)
                (macro-rpc-remote-error-exception-procedure _exn90279_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95943
                              (let ()
                                (declare (not safe))
                                (cons _exn90279_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95943)))))))
    (define scheduler-exception?
      (lambda (_exn90275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90275_))
            (let ((_e90277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90275_ 'exception))))
              (macro-scheduler-exception? _e90277_))
            (macro-scheduler-exception? _exn90275_))))
    (define scheduler-exception-reason
      (lambda (_exn90269_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90269_))
            (let ((_e90272_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90269_ 'exception))))
              (if (macro-scheduler-exception? _e90272_)
                  (macro-scheduler-exception-reason _e90272_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95946
                                (let ()
                                  (declare (not safe))
                                  (cons _e90272_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95946)))))
            (if (macro-scheduler-exception? _exn90269_)
                (macro-scheduler-exception-reason _exn90269_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95945
                              (let ()
                                (declare (not safe))
                                (cons _exn90269_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95945)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90265_))
            (let ((_e90267_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90265_ 'exception))))
              (macro-sfun-conversion-exception? _e90267_))
            (macro-sfun-conversion-exception? _exn90265_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90261_))
            (let ((_e90263_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90261_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90263_)
                  (macro-sfun-conversion-exception-arguments _e90263_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95948
                                (let ()
                                  (declare (not safe))
                                  (cons _e90263_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95948)))))
            (if (macro-sfun-conversion-exception? _exn90261_)
                (macro-sfun-conversion-exception-arguments _exn90261_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95947
                              (let ()
                                (declare (not safe))
                                (cons _exn90261_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95947)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90257_))
            (let ((_e90259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90257_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90259_)
                  (macro-sfun-conversion-exception-code _e90259_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95950
                                (let ()
                                  (declare (not safe))
                                  (cons _e90259_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95950)))))
            (if (macro-sfun-conversion-exception? _exn90257_)
                (macro-sfun-conversion-exception-code _exn90257_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95949
                              (let ()
                                (declare (not safe))
                                (cons _exn90257_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95949)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90253_))
            (let ((_e90255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90253_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90255_)
                  (macro-sfun-conversion-exception-message _e90255_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95952
                                (let ()
                                  (declare (not safe))
                                  (cons _e90255_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95952)))))
            (if (macro-sfun-conversion-exception? _exn90253_)
                (macro-sfun-conversion-exception-message _exn90253_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95951
                              (let ()
                                (declare (not safe))
                                (cons _exn90253_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95951)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90247_))
            (let ((_e90250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90247_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90250_)
                  (macro-sfun-conversion-exception-procedure _e90250_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95954
                                (let ()
                                  (declare (not safe))
                                  (cons _e90250_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95954)))))
            (if (macro-sfun-conversion-exception? _exn90247_)
                (macro-sfun-conversion-exception-procedure _exn90247_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95953
                              (let ()
                                (declare (not safe))
                                (cons _exn90247_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95953)))))))
    (define stack-overflow-exception?
      (lambda (_exn90241_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90241_))
            (let ((_e90244_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90241_ 'exception))))
              (macro-stack-overflow-exception? _e90244_))
            (macro-stack-overflow-exception? _exn90241_))))
    (define started-thread-exception?
      (lambda (_exn90237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90237_))
            (let ((_e90239_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90237_ 'exception))))
              (macro-started-thread-exception? _e90239_))
            (macro-started-thread-exception? _exn90237_))))
    (define started-thread-exception-arguments
      (lambda (_exn90233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90233_))
            (let ((_e90235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90233_ 'exception))))
              (if (macro-started-thread-exception? _e90235_)
                  (macro-started-thread-exception-arguments _e90235_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95956
                                (let ()
                                  (declare (not safe))
                                  (cons _e90235_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95956)))))
            (if (macro-started-thread-exception? _exn90233_)
                (macro-started-thread-exception-arguments _exn90233_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95955
                              (let ()
                                (declare (not safe))
                                (cons _exn90233_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95955)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90227_))
            (let ((_e90230_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90227_ 'exception))))
              (if (macro-started-thread-exception? _e90230_)
                  (macro-started-thread-exception-procedure _e90230_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95958
                                (let ()
                                  (declare (not safe))
                                  (cons _e90230_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95958)))))
            (if (macro-started-thread-exception? _exn90227_)
                (macro-started-thread-exception-procedure _exn90227_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95957
                              (let ()
                                (declare (not safe))
                                (cons _exn90227_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95957)))))))
    (define terminated-thread-exception?
      (lambda (_exn90223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90223_))
            (let ((_e90225_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90223_ 'exception))))
              (macro-terminated-thread-exception? _e90225_))
            (macro-terminated-thread-exception? _exn90223_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90219_))
            (let ((_e90221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90219_ 'exception))))
              (if (macro-terminated-thread-exception? _e90221_)
                  (macro-terminated-thread-exception-arguments _e90221_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95960
                                (let ()
                                  (declare (not safe))
                                  (cons _e90221_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95960)))))
            (if (macro-terminated-thread-exception? _exn90219_)
                (macro-terminated-thread-exception-arguments _exn90219_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95959
                              (let ()
                                (declare (not safe))
                                (cons _exn90219_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95959)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90213_))
            (let ((_e90216_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90213_ 'exception))))
              (if (macro-terminated-thread-exception? _e90216_)
                  (macro-terminated-thread-exception-procedure _e90216_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95962
                                (let ()
                                  (declare (not safe))
                                  (cons _e90216_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95962)))))
            (if (macro-terminated-thread-exception? _exn90213_)
                (macro-terminated-thread-exception-procedure _exn90213_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95961
                              (let ()
                                (declare (not safe))
                                (cons _exn90213_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95961)))))))
    (define type-exception?
      (lambda (_exn90209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90209_))
            (let ((_e90211_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90209_ 'exception))))
              (macro-type-exception? _e90211_))
            (macro-type-exception? _exn90209_))))
    (define type-exception-arg-id
      (lambda (_exn90205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90205_))
            (let ((_e90207_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90205_ 'exception))))
              (if (macro-type-exception? _e90207_)
                  (macro-type-exception-arg-id _e90207_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95964
                                (let ()
                                  (declare (not safe))
                                  (cons _e90207_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95964)))))
            (if (macro-type-exception? _exn90205_)
                (macro-type-exception-arg-id _exn90205_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95963
                              (let ()
                                (declare (not safe))
                                (cons _exn90205_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95963)))))))
    (define type-exception-arguments
      (lambda (_exn90201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90201_))
            (let ((_e90203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90201_ 'exception))))
              (if (macro-type-exception? _e90203_)
                  (macro-type-exception-arguments _e90203_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95966
                                (let ()
                                  (declare (not safe))
                                  (cons _e90203_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95966)))))
            (if (macro-type-exception? _exn90201_)
                (macro-type-exception-arguments _exn90201_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95965
                              (let ()
                                (declare (not safe))
                                (cons _exn90201_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95965)))))))
    (define type-exception-procedure
      (lambda (_exn90197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90197_))
            (let ((_e90199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90197_ 'exception))))
              (if (macro-type-exception? _e90199_)
                  (macro-type-exception-procedure _e90199_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95968
                                (let ()
                                  (declare (not safe))
                                  (cons _e90199_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95968)))))
            (if (macro-type-exception? _exn90197_)
                (macro-type-exception-procedure _exn90197_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95967
                              (let ()
                                (declare (not safe))
                                (cons _exn90197_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95967)))))))
    (define type-exception-type-id
      (lambda (_exn90191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90191_))
            (let ((_e90194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90191_ 'exception))))
              (if (macro-type-exception? _e90194_)
                  (macro-type-exception-type-id _e90194_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95970
                                (let ()
                                  (declare (not safe))
                                  (cons _e90194_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95970)))))
            (if (macro-type-exception? _exn90191_)
                (macro-type-exception-type-id _exn90191_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95969
                              (let ()
                                (declare (not safe))
                                (cons _exn90191_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95969)))))))
    (define unbound-global-exception?
      (lambda (_exn90187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90187_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90187_ 'exception))))
              (macro-unbound-global-exception? _e90189_))
            (macro-unbound-global-exception? _exn90187_))))
    (define unbound-global-exception-code
      (lambda (_exn90183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90183_))
            (let ((_e90185_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90183_ 'exception))))
              (if (macro-unbound-global-exception? _e90185_)
                  (macro-unbound-global-exception-code _e90185_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95972
                                (let ()
                                  (declare (not safe))
                                  (cons _e90185_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95972)))))
            (if (macro-unbound-global-exception? _exn90183_)
                (macro-unbound-global-exception-code _exn90183_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95971
                              (let ()
                                (declare (not safe))
                                (cons _exn90183_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95971)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90179_))
            (let ((_e90181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90179_ 'exception))))
              (if (macro-unbound-global-exception? _e90181_)
                  (macro-unbound-global-exception-rte _e90181_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95974
                                (let ()
                                  (declare (not safe))
                                  (cons _e90181_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95974)))))
            (if (macro-unbound-global-exception? _exn90179_)
                (macro-unbound-global-exception-rte _exn90179_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95973
                              (let ()
                                (declare (not safe))
                                (cons _exn90179_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95973)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90173_))
            (let ((_e90176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90173_ 'exception))))
              (if (macro-unbound-global-exception? _e90176_)
                  (macro-unbound-global-exception-variable _e90176_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95976
                                (let ()
                                  (declare (not safe))
                                  (cons _e90176_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95976)))))
            (if (macro-unbound-global-exception? _exn90173_)
                (macro-unbound-global-exception-variable _exn90173_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95975
                              (let ()
                                (declare (not safe))
                                (cons _exn90173_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95975)))))))
    (define unbound-key-exception?
      (lambda (_exn90169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90169_))
            (let ((_e90171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90169_ 'exception))))
              (macro-unbound-key-exception? _e90171_))
            (macro-unbound-key-exception? _exn90169_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90165_))
            (let ((_e90167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90165_ 'exception))))
              (if (macro-unbound-key-exception? _e90167_)
                  (macro-unbound-key-exception-arguments _e90167_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95978
                                (let ()
                                  (declare (not safe))
                                  (cons _e90167_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95978)))))
            (if (macro-unbound-key-exception? _exn90165_)
                (macro-unbound-key-exception-arguments _exn90165_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95977
                              (let ()
                                (declare (not safe))
                                (cons _exn90165_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95977)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90159_))
            (let ((_e90162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90159_ 'exception))))
              (if (macro-unbound-key-exception? _e90162_)
                  (macro-unbound-key-exception-procedure _e90162_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95980
                                (let ()
                                  (declare (not safe))
                                  (cons _e90162_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95980)))))
            (if (macro-unbound-key-exception? _exn90159_)
                (macro-unbound-key-exception-procedure _exn90159_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95979
                              (let ()
                                (declare (not safe))
                                (cons _exn90159_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95979)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90155_))
            (let ((_e90157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90155_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90157_))
            (macro-unbound-os-environment-variable-exception? _exn90155_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90151_))
            (let ((_e90153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90151_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90153_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90153_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95982
                                (let ()
                                  (declare (not safe))
                                  (cons _e90153_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95982)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90151_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90151_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95981
                              (let ()
                                (declare (not safe))
                                (cons _exn90151_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95981)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90145_))
            (let ((_e90148_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90145_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90148_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90148_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95984
                                (let ()
                                  (declare (not safe))
                                  (cons _e90148_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95984)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90145_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90145_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95983
                              (let ()
                                (declare (not safe))
                                (cons _exn90145_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95983)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90141_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90141_ 'exception))))
              (macro-unbound-serial-number-exception? _e90143_))
            (macro-unbound-serial-number-exception? _exn90141_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90137_))
            (let ((_e90139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90137_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90139_)
                  (macro-unbound-serial-number-exception-arguments _e90139_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95986
                                (let ()
                                  (declare (not safe))
                                  (cons _e90139_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95986)))))
            (if (macro-unbound-serial-number-exception? _exn90137_)
                (macro-unbound-serial-number-exception-arguments _exn90137_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95985
                              (let ()
                                (declare (not safe))
                                (cons _exn90137_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95985)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90131_))
            (let ((_e90134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90131_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90134_)
                  (macro-unbound-serial-number-exception-procedure _e90134_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95988
                                (let ()
                                  (declare (not safe))
                                  (cons _e90134_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95988)))))
            (if (macro-unbound-serial-number-exception? _exn90131_)
                (macro-unbound-serial-number-exception-procedure _exn90131_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95987
                              (let ()
                                (declare (not safe))
                                (cons _exn90131_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95987)))))))
    (define uncaught-exception?
      (lambda (_exn90127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90127_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90127_ 'exception))))
              (macro-uncaught-exception? _e90129_))
            (macro-uncaught-exception? _exn90127_))))
    (define uncaught-exception-arguments
      (lambda (_exn90123_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90123_))
            (let ((_e90125_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90123_ 'exception))))
              (if (macro-uncaught-exception? _e90125_)
                  (macro-uncaught-exception-arguments _e90125_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95990
                                (let ()
                                  (declare (not safe))
                                  (cons _e90125_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95990)))))
            (if (macro-uncaught-exception? _exn90123_)
                (macro-uncaught-exception-arguments _exn90123_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95989
                              (let ()
                                (declare (not safe))
                                (cons _exn90123_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95989)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90119_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90119_))
            (let ((_e90121_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90119_ 'exception))))
              (if (macro-uncaught-exception? _e90121_)
                  (macro-uncaught-exception-procedure _e90121_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95992
                                (let ()
                                  (declare (not safe))
                                  (cons _e90121_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95992)))))
            (if (macro-uncaught-exception? _exn90119_)
                (macro-uncaught-exception-procedure _exn90119_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95991
                              (let ()
                                (declare (not safe))
                                (cons _exn90119_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95991)))))))
    (define uncaught-exception-reason
      (lambda (_exn90113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90113_))
            (let ((_e90116_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90113_ 'exception))))
              (if (macro-uncaught-exception? _e90116_)
                  (macro-uncaught-exception-reason _e90116_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95994
                                (let ()
                                  (declare (not safe))
                                  (cons _e90116_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95994)))))
            (if (macro-uncaught-exception? _exn90113_)
                (macro-uncaught-exception-reason _exn90113_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95993
                              (let ()
                                (declare (not safe))
                                (cons _exn90113_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95993)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90109_))
            (let ((_e90111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90109_ 'exception))))
              (macro-uninitialized-thread-exception? _e90111_))
            (macro-uninitialized-thread-exception? _exn90109_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90105_))
            (let ((_e90107_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90105_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90107_)
                  (macro-uninitialized-thread-exception-arguments _e90107_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95996
                                (let ()
                                  (declare (not safe))
                                  (cons _e90107_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95996)))))
            (if (macro-uninitialized-thread-exception? _exn90105_)
                (macro-uninitialized-thread-exception-arguments _exn90105_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95995
                              (let ()
                                (declare (not safe))
                                (cons _exn90105_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95995)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90099_))
            (let ((_e90102_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90099_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90102_)
                  (macro-uninitialized-thread-exception-procedure _e90102_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95998
                                (let ()
                                  (declare (not safe))
                                  (cons _e90102_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95998)))))
            (if (macro-uninitialized-thread-exception? _exn90099_)
                (macro-uninitialized-thread-exception-procedure _exn90099_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95997
                              (let ()
                                (declare (not safe))
                                (cons _exn90099_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95997)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90095_))
            (let ((_e90097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90095_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90097_))
            (macro-unknown-keyword-argument-exception? _exn90095_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90091_))
            (let ((_e90093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90091_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90093_)
                  (macro-unknown-keyword-argument-exception-arguments _e90093_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96000
                                (let ()
                                  (declare (not safe))
                                  (cons _e90093_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp96000)))))
            (if (macro-unknown-keyword-argument-exception? _exn90091_)
                (macro-unknown-keyword-argument-exception-arguments _exn90091_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95999
                              (let ()
                                (declare (not safe))
                                (cons _exn90091_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95999)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90085_))
            (let ((_e90088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90085_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90088_)
                  (macro-unknown-keyword-argument-exception-procedure _e90088_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96002
                                (let ()
                                  (declare (not safe))
                                  (cons _e90088_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp96002)))))
            (if (macro-unknown-keyword-argument-exception? _exn90085_)
                (macro-unknown-keyword-argument-exception-procedure _exn90085_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96001
                              (let ()
                                (declare (not safe))
                                (cons _exn90085_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp96001)))))))
    (define unterminated-process-exception?
      (lambda (_exn90081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90081_))
            (let ((_e90083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90081_ 'exception))))
              (macro-unterminated-process-exception? _e90083_))
            (macro-unterminated-process-exception? _exn90081_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90077_))
            (let ((_e90079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90077_ 'exception))))
              (if (macro-unterminated-process-exception? _e90079_)
                  (macro-unterminated-process-exception-arguments _e90079_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96004
                                (let ()
                                  (declare (not safe))
                                  (cons _e90079_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp96004)))))
            (if (macro-unterminated-process-exception? _exn90077_)
                (macro-unterminated-process-exception-arguments _exn90077_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96003
                              (let ()
                                (declare (not safe))
                                (cons _exn90077_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp96003)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90071_))
            (let ((_e90074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90071_ 'exception))))
              (if (macro-unterminated-process-exception? _e90074_)
                  (macro-unterminated-process-exception-procedure _e90074_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96006
                                (let ()
                                  (declare (not safe))
                                  (cons _e90074_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp96006)))))
            (if (macro-unterminated-process-exception? _exn90071_)
                (macro-unterminated-process-exception-procedure _exn90071_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96005
                              (let ()
                                (declare (not safe))
                                (cons _exn90071_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp96005)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90067_))
            (let ((_e90069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90067_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90069_))
            (macro-wrong-number-of-arguments-exception? _exn90067_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90063_))
            (let ((_e90065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90063_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90065_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90065_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96008
                                (let ()
                                  (declare (not safe))
                                  (cons _e90065_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp96008)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90063_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90063_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96007
                              (let ()
                                (declare (not safe))
                                (cons _exn90063_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp96007)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90057_))
            (let ((_e90060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90057_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90060_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90060_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96010
                                (let ()
                                  (declare (not safe))
                                  (cons _e90060_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96010)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90057_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90057_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96009
                              (let ()
                                (declare (not safe))
                                (cons _exn90057_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp96009)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90053_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90053_))
            (let ((_e90055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90053_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90055_))
            (macro-wrong-number-of-values-exception? _exn90053_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90049_))
            (let ((_e90051_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90049_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90051_)
                  (macro-wrong-number-of-values-exception-code _e90051_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96012
                                (let ()
                                  (declare (not safe))
                                  (cons _e90051_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96012)))))
            (if (macro-wrong-number-of-values-exception? _exn90049_)
                (macro-wrong-number-of-values-exception-code _exn90049_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96011
                              (let ()
                                (declare (not safe))
                                (cons _exn90049_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96011)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90045_))
            (let ((_e90047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90045_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90047_)
                  (macro-wrong-number-of-values-exception-rte _e90047_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96014
                                (let ()
                                  (declare (not safe))
                                  (cons _e90047_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96014)))))
            (if (macro-wrong-number-of-values-exception? _exn90045_)
                (macro-wrong-number-of-values-exception-rte _exn90045_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96013
                              (let ()
                                (declare (not safe))
                                (cons _exn90045_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96013)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90039_))
            (let ((_e90042_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90039_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90042_)
                  (macro-wrong-number-of-values-exception-vals _e90042_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96016
                                (let ()
                                  (declare (not safe))
                                  (cons _e90042_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96016)))))
            (if (macro-wrong-number-of-values-exception? _exn90039_)
                (macro-wrong-number-of-values-exception-vals _exn90039_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96015
                              (let ()
                                (declare (not safe))
                                (cons _exn90039_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96015)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90033_))
            (let ((_e90036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90033_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90036_))
            (macro-wrong-processor-c-return-exception? _exn90033_))))))
