(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710632268)
  (begin
    (define Exception::t
      (let ((__tmp67800 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp67800
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args67768_ (apply make-instance Exception::t _$args67768_)))
    (define StackTrace::t
      (let ((__tmp67801 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp67801
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args67765_ (apply make-instance StackTrace::t _$args67765_)))
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
      (let ((__tmp67802 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp67802
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args67762_ (apply make-instance Error::t _$args67762_)))
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
      (let ((__tmp67803 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp67803
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args67759_
        (apply make-instance RuntimeException::t _$args67759_)))
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
      (lambda (_exn67754_ _continue67755_)
        (let ((_exn67757_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn67754_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn67757_ _continue67755_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn67750_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn67750_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn67750_ 'continuation))
                '#!void
                (let ((__tmp67804
                       (lambda (_cont67752_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn67750_
                            'continuation
                            _cont67752_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp67804)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn67750_))))
    (define error
      (lambda (_message67747_ . _irritants67748_)
        (let ((__tmp67805
               (let ((__obj67794
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj67794
                  _message67747_
                  'irritants:
                  _irritants67748_)
                 __obj67794)))
          (declare (not safe))
          (raise __tmp67805))))
    (define with-exception-handler
      (lambda (_handler67740_ _thunk67741_)
        (if (let () (declare (not safe)) (procedure? _handler67740_))
            '#!void
            (let ((__tmp67806
                   (let ((__obj67795
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67795
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler67740_ '())))
                     __obj67795)))
              (declare (not safe))
              (raise __tmp67806)))
        (if (let () (declare (not safe)) (procedure? _thunk67741_))
            '#!void
            (let ((__tmp67807
                   (let ((__obj67796
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67796
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk67741_ '())))
                     __obj67796)))
              (declare (not safe))
              (raise __tmp67807)))
        (let ((__tmp67808
               (lambda (_exn67743_)
                 (let ((_exn67745_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn67743_))))
                   (_handler67740_ _exn67745_)))))
          (declare (not safe))
          (##with-exception-handler __tmp67808 _thunk67741_))))
    (define with-catch
      (lambda (_handler67733_ _thunk67734_)
        (if (let () (declare (not safe)) (procedure? _handler67733_))
            '#!void
            (let ((__tmp67809
                   (let ((__obj67797
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67797
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler67733_ '())))
                     __obj67797)))
              (declare (not safe))
              (raise __tmp67809)))
        (if (let () (declare (not safe)) (procedure? _thunk67734_))
            '#!void
            (let ((__tmp67810
                   (let ((__obj67798
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67798
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk67734_ '())))
                     __obj67798)))
              (declare (not safe))
              (raise __tmp67810)))
        (let ((__tmp67811
               (lambda (_cont67736_)
                 (let ((__tmp67812
                        (lambda (_exn67738_)
                          (let ()
                            (declare (not safe))
                            (##continuation-graft
                             _cont67736_
                             _handler67733_
                             _exn67738_)))))
                   (declare (not safe))
                   (with-exception-handler __tmp67812 _thunk67734_)))))
          (declare (not safe))
          (##continuation-capture __tmp67811))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn67724_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn67724_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn67724_)))
            _exn67724_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn67724_))
                _exn67724_
                (if (macro-exception? _exn67724_)
                    (let ((_rte67729_
                           (let ((__obj67799
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj67799
                                _exn67724_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj67799)))
                      (let ((__tmp67813
                             (lambda (_cont67731_)
                               (let ((__tmp67814
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont67731_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte67729_
                                  'continuation
                                  __tmp67814)))))
                        (declare (not safe))
                        (##continuation-capture __tmp67813))
                      _rte67729_)
                    _exn67724_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj67719_)
        (let ((_$e67721_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj67719_))))
          (if _$e67721_
              _$e67721_
              (let () (declare (not safe)) (error-exception? _obj67719_))))))
    (define error-message
      (lambda (_obj67717_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67717_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67717_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj67717_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj67717_))
                '#f))))
    (define error-irritants
      (lambda (_obj67715_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67715_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67715_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj67715_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj67715_))
                '#f))))
    (define error-trace
      (lambda (_obj67713_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67713_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67713_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e67695_ _port67696_)
        (let ((_$e67698_
               (let ()
                 (declare (not safe))
                 (method-ref _e67695_ 'display-exception))))
          (if _$e67698_
              ((lambda (_f67701_) (_f67701_ _e67695_ _port67696_)) _$e67698_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e67695_ _port67696_))))))
    (define display-exception__0
      (lambda (_e67706_)
        (let ((_port67708_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e67706_ _port67708_))))
    (define display-exception
      (lambda _g67816_
        (let ((_g67815_ (let () (declare (not safe)) (##length _g67816_))))
          (cond ((let () (declare (not safe)) (##fx= _g67815_ 1))
                 (apply (lambda (_e67706_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e67706_)))
                        _g67816_))
                ((let () (declare (not safe)) (##fx= _g67815_ 2))
                 (apply (lambda (_e67710_ _port67711_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e67710_ _port67711_)))
                        _g67816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g67816_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self67684_ _message67685_ . _rest67686_)
        (let ((_message67692_
               (if (let () (declare (not safe)) (string? _message67685_))
                   _message67685_
                   (call-with-output-string
                    '""
                    (lambda (_g6768767689_)
                      (display _message67685_ _g6768767689_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self67684_ 'message _message67692_))
          (apply class-instance-init! _self67684_ _rest67686_))))
    (define Error:::init!::specialize
      (lambda (__klass67770 __method-table67771)
        (let ((__message67772
               (let ((__slot67773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67770 'message))))
                 (if __slot67773
                     __slot67773
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self67684_ _message67685_ . _rest67686_)
            (let ((_message67692_
                   (if (let () (declare (not safe)) (string? _message67685_))
                       _message67685_
                       (call-with-output-string
                        '""
                        (lambda (_g6768767689_)
                          (display _message67685_ _g6768767689_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self67684_
                 _message67692_
                 __message67772
                 __klass67770
                 '#f))
              (apply class-instance-init! _self67684_ _rest67686_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67542_ _port67543_)
        (let ((_tmp-port67545_ (open-output-string))
              (_display-error-newline67546_
               (> (output-port-column _port67543_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67545_))
          (let ((__tmp67817
                 (lambda ()
                   (if _display-error-newline67546_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67549_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67542_ 'where))))
                     (if _$e67549_ (display _$e67549_) (display '"?")))
                   (let ((__tmp67818
                          (let ((__tmp67819 (object-type _self67542_)))
                            (declare (not safe))
                            (##type-name __tmp67819))))
                     (declare (not safe))
                     (display* '" [" __tmp67818 '"]: "))
                   (let ((__tmp67820
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67542_ 'message))))
                     (declare (not safe))
                     (displayln __tmp67820))
                   (let ((_irritants67552_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67542_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67552_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67554_)
                              (write _obj67554_)
                              (write-char '#\space))
                            _irritants67552_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67542_))
                            (dump-stack-trace?))
                       (let ((_cont6755567557_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67542_
                                 'continuation))))
                         (if _cont6755567557_
                             (let ((_cont67560_ _cont6755567557_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67560_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp67817
             current-output-port
             _tmp-port67545_))
          (let ((__tmp67821 (get-output-string _tmp-port67545_)))
            (declare (not safe))
            (##write-string __tmp67821 _port67543_)))))
    (define Error::display-exception::specialize
      (lambda (__klass67774 __method-table67775)
        (let ((__message67776
               (let ((__slot67780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67774 'message))))
                 (if __slot67780
                     __slot67780
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__irritants67777
               (let ((__slot67781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67774 'irritants))))
                 (if __slot67781
                     __slot67781
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation67778
               (let ((__slot67782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67774 'continuation))))
                 (if __slot67782
                     __slot67782
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where67779
               (let ((__slot67783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67774 'where))))
                 (if __slot67783
                     __slot67783
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where))))))
          (lambda (_self67542_ _port67543_)
            (let ((_tmp-port67545_ (open-output-string))
                  (_display-error-newline67546_
                   (> (output-port-column _port67543_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67545_))
              (let ((__tmp67822
                     (lambda ()
                       (if _display-error-newline67546_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67549_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67542_
                                 __where67779
                                 __klass67774
                                 '#f))))
                         (if _$e67549_ (display _$e67549_) (display '"?")))
                       (let ((__tmp67823
                              (let ((__tmp67824 (object-type _self67542_)))
                                (declare (not safe))
                                (##type-name __tmp67824))))
                         (declare (not safe))
                         (display* '" [" __tmp67823 '"]: "))
                       (let ((__tmp67825
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67542_
                                 __message67776
                                 __klass67774
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp67825))
                       (let ((_irritants67552_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67542_
                                 __irritants67777
                                 __klass67774
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67552_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67554_)
                                  (write _obj67554_)
                                  (write-char '#\space))
                                _irritants67552_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67542_))
                                (dump-stack-trace?))
                           (let ((_cont6755567557_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67542_
                                     __continuation67778
                                     __klass67774
                                     '#f))))
                             (if _cont6755567557_
                                 (let ((_cont67560_ _cont6755567557_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67560_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp67822
                 current-output-port
                 _tmp-port67545_))
              (let ((__tmp67826 (get-output-string _tmp-port67545_)))
                (declare (not safe))
                (##write-string __tmp67826 _port67543_)))))))
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
      (lambda (_self67409_ _port67410_)
        (let ((_tmp-port67412_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67412_))
          (let ((__tmp67827
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67409_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp67827 _tmp-port67412_))
          (if (dump-stack-trace?)
              (let ((_cont6741367415_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67409_ 'continuation))))
                (if _cont6741367415_
                    (let ((_cont67418_ _cont6741367415_))
                      (display '"--- continuation backtrace:" _tmp-port67412_)
                      (newline _tmp-port67412_)
                      (display-continuation-backtrace
                       _cont67418_
                       _tmp-port67412_))
                    '#f))
              '#!void)
          (let ((__tmp67828 (get-output-string _tmp-port67412_)))
            (declare (not safe))
            (##write-string __tmp67828 _port67410_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass67784 __method-table67785)
        (let ((__continuation67786
               (let ((__slot67788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67784 'continuation))))
                 (if __slot67788
                     __slot67788
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception67787
               (let ((__slot67789
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67784 'exception))))
                 (if __slot67789
                     __slot67789
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self67409_ _port67410_)
            (let ((_tmp-port67412_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67412_))
              (let ((__tmp67829
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67409_
                        __exception67787
                        __klass67784
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp67829 _tmp-port67412_))
              (if (dump-stack-trace?)
                  (let ((_cont6741367415_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67409_
                            __continuation67786
                            __klass67784
                            '#f))))
                    (if _cont6741367415_
                        (let ((_cont67418_ _cont6741367415_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67412_)
                          (newline _tmp-port67412_)
                          (display-continuation-backtrace
                           _cont67418_
                           _tmp-port67412_))
                        '#f))
                  '#!void)
              (let ((__tmp67830 (get-output-string _tmp-port67412_)))
                (declare (not safe))
                (##write-string __tmp67830 _port67410_)))))))
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
      (lambda (_port67281_)
        (if (macro-character-port? _port67281_)
            (let ((_old-width67283_
                   (macro-character-port-output-width _port67281_)))
              (macro-character-port-output-width-set!
               _port67281_
               (lambda (_port67285_) '256))
              _old-width67283_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67278_ _old-width67279_)
        (if (macro-character-port? _port67278_)
            (macro-character-port-output-width-set!
             _port67278_
             _old-width67279_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67276_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67276_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67270_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67270_))
            (let ((_e67273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67270_ 'exception))))
              (macro-abandoned-mutex-exception? _e67273_))
            (macro-abandoned-mutex-exception? _exn67270_))))
    (define cfun-conversion-exception?
      (lambda (_exn67266_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67266_))
            (let ((_e67268_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67266_ 'exception))))
              (macro-cfun-conversion-exception? _e67268_))
            (macro-cfun-conversion-exception? _exn67266_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67262_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67262_))
            (let ((_e67264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67262_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67264_)
                  (macro-cfun-conversion-exception-arguments _e67264_)
                  (let ((__tmp67833
                         (let ((__tmp67834
                                (let ()
                                  (declare (not safe))
                                  (cons _e67264_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp67834))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67833))))
            (if (macro-cfun-conversion-exception? _exn67262_)
                (macro-cfun-conversion-exception-arguments _exn67262_)
                (let ((__tmp67831
                       (let ((__tmp67832
                              (let ()
                                (declare (not safe))
                                (cons _exn67262_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp67832))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67831))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67258_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67258_))
            (let ((_e67260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67258_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67260_)
                  (macro-cfun-conversion-exception-code _e67260_)
                  (let ((__tmp67837
                         (let ((__tmp67838
                                (let ()
                                  (declare (not safe))
                                  (cons _e67260_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp67838))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67837))))
            (if (macro-cfun-conversion-exception? _exn67258_)
                (macro-cfun-conversion-exception-code _exn67258_)
                (let ((__tmp67835
                       (let ((__tmp67836
                              (let ()
                                (declare (not safe))
                                (cons _exn67258_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp67836))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67835))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67254_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67254_))
            (let ((_e67256_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67254_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67256_)
                  (macro-cfun-conversion-exception-message _e67256_)
                  (let ((__tmp67841
                         (let ((__tmp67842
                                (let ()
                                  (declare (not safe))
                                  (cons _e67256_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp67842))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67841))))
            (if (macro-cfun-conversion-exception? _exn67254_)
                (macro-cfun-conversion-exception-message _exn67254_)
                (let ((__tmp67839
                       (let ((__tmp67840
                              (let ()
                                (declare (not safe))
                                (cons _exn67254_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp67840))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67839))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67248_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67248_))
            (let ((_e67251_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67248_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67251_)
                  (macro-cfun-conversion-exception-procedure _e67251_)
                  (let ((__tmp67845
                         (let ((__tmp67846
                                (let ()
                                  (declare (not safe))
                                  (cons _e67251_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp67846))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67845))))
            (if (macro-cfun-conversion-exception? _exn67248_)
                (macro-cfun-conversion-exception-procedure _exn67248_)
                (let ((__tmp67843
                       (let ((__tmp67844
                              (let ()
                                (declare (not safe))
                                (cons _exn67248_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp67844))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67843))))))
    (define datum-parsing-exception?
      (lambda (_exn67244_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67244_))
            (let ((_e67246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67244_ 'exception))))
              (macro-datum-parsing-exception? _e67246_))
            (macro-datum-parsing-exception? _exn67244_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67240_))
            (let ((_e67242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67240_ 'exception))))
              (if (macro-datum-parsing-exception? _e67242_)
                  (macro-datum-parsing-exception-kind _e67242_)
                  (let ((__tmp67849
                         (let ((__tmp67850
                                (let ()
                                  (declare (not safe))
                                  (cons _e67242_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp67850))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67849))))
            (if (macro-datum-parsing-exception? _exn67240_)
                (macro-datum-parsing-exception-kind _exn67240_)
                (let ((__tmp67847
                       (let ((__tmp67848
                              (let ()
                                (declare (not safe))
                                (cons _exn67240_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp67848))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67847))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67236_))
            (let ((_e67238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67236_ 'exception))))
              (if (macro-datum-parsing-exception? _e67238_)
                  (macro-datum-parsing-exception-parameters _e67238_)
                  (let ((__tmp67853
                         (let ((__tmp67854
                                (let ()
                                  (declare (not safe))
                                  (cons _e67238_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp67854))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67853))))
            (if (macro-datum-parsing-exception? _exn67236_)
                (macro-datum-parsing-exception-parameters _exn67236_)
                (let ((__tmp67851
                       (let ((__tmp67852
                              (let ()
                                (declare (not safe))
                                (cons _exn67236_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp67852))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67851))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67230_))
            (let ((_e67233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67230_ 'exception))))
              (if (macro-datum-parsing-exception? _e67233_)
                  (macro-datum-parsing-exception-readenv _e67233_)
                  (let ((__tmp67857
                         (let ((__tmp67858
                                (let ()
                                  (declare (not safe))
                                  (cons _e67233_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp67858))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67857))))
            (if (macro-datum-parsing-exception? _exn67230_)
                (macro-datum-parsing-exception-readenv _exn67230_)
                (let ((__tmp67855
                       (let ((__tmp67856
                              (let ()
                                (declare (not safe))
                                (cons _exn67230_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp67856))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67855))))))
    (define deadlock-exception?
      (lambda (_exn67224_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67224_))
            (let ((_e67227_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67224_ 'exception))))
              (macro-deadlock-exception? _e67227_))
            (macro-deadlock-exception? _exn67224_))))
    (define divide-by-zero-exception?
      (lambda (_exn67220_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67220_))
            (let ((_e67222_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67220_ 'exception))))
              (macro-divide-by-zero-exception? _e67222_))
            (macro-divide-by-zero-exception? _exn67220_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67216_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67216_))
            (let ((_e67218_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67216_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67218_)
                  (macro-divide-by-zero-exception-arguments _e67218_)
                  (let ((__tmp67861
                         (let ((__tmp67862
                                (let ()
                                  (declare (not safe))
                                  (cons _e67218_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp67862))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67861))))
            (if (macro-divide-by-zero-exception? _exn67216_)
                (macro-divide-by-zero-exception-arguments _exn67216_)
                (let ((__tmp67859
                       (let ((__tmp67860
                              (let ()
                                (declare (not safe))
                                (cons _exn67216_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp67860))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67859))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67210_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67210_))
            (let ((_e67213_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67210_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67213_)
                  (macro-divide-by-zero-exception-procedure _e67213_)
                  (let ((__tmp67865
                         (let ((__tmp67866
                                (let ()
                                  (declare (not safe))
                                  (cons _e67213_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp67866))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67865))))
            (if (macro-divide-by-zero-exception? _exn67210_)
                (macro-divide-by-zero-exception-procedure _exn67210_)
                (let ((__tmp67863
                       (let ((__tmp67864
                              (let ()
                                (declare (not safe))
                                (cons _exn67210_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp67864))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67863))))))
    (define error-exception?
      (lambda (_exn67206_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67206_))
            (let ((_e67208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67206_ 'exception))))
              (macro-error-exception? _e67208_))
            (macro-error-exception? _exn67206_))))
    (define error-exception-message
      (lambda (_exn67202_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67202_))
            (let ((_e67204_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67202_ 'exception))))
              (if (macro-error-exception? _e67204_)
                  (macro-error-exception-message _e67204_)
                  (let ((__tmp67869
                         (let ((__tmp67870
                                (let ()
                                  (declare (not safe))
                                  (cons _e67204_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp67870))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67869))))
            (if (macro-error-exception? _exn67202_)
                (macro-error-exception-message _exn67202_)
                (let ((__tmp67867
                       (let ((__tmp67868
                              (let ()
                                (declare (not safe))
                                (cons _exn67202_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp67868))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67867))))))
    (define error-exception-parameters
      (lambda (_exn67196_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67196_))
            (let ((_e67199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67196_ 'exception))))
              (if (macro-error-exception? _e67199_)
                  (macro-error-exception-parameters _e67199_)
                  (let ((__tmp67873
                         (let ((__tmp67874
                                (let ()
                                  (declare (not safe))
                                  (cons _e67199_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp67874))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67873))))
            (if (macro-error-exception? _exn67196_)
                (macro-error-exception-parameters _exn67196_)
                (let ((__tmp67871
                       (let ((__tmp67872
                              (let ()
                                (declare (not safe))
                                (cons _exn67196_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp67872))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67871))))))
    (define expression-parsing-exception?
      (lambda (_exn67192_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67192_))
            (let ((_e67194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67192_ 'exception))))
              (macro-expression-parsing-exception? _e67194_))
            (macro-expression-parsing-exception? _exn67192_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67188_))
            (let ((_e67190_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67188_ 'exception))))
              (if (macro-expression-parsing-exception? _e67190_)
                  (macro-expression-parsing-exception-kind _e67190_)
                  (let ((__tmp67877
                         (let ((__tmp67878
                                (let ()
                                  (declare (not safe))
                                  (cons _e67190_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp67878))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67877))))
            (if (macro-expression-parsing-exception? _exn67188_)
                (macro-expression-parsing-exception-kind _exn67188_)
                (let ((__tmp67875
                       (let ((__tmp67876
                              (let ()
                                (declare (not safe))
                                (cons _exn67188_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp67876))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67875))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67184_))
            (let ((_e67186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67184_ 'exception))))
              (if (macro-expression-parsing-exception? _e67186_)
                  (macro-expression-parsing-exception-parameters _e67186_)
                  (let ((__tmp67881
                         (let ((__tmp67882
                                (let ()
                                  (declare (not safe))
                                  (cons _e67186_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp67882))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67881))))
            (if (macro-expression-parsing-exception? _exn67184_)
                (macro-expression-parsing-exception-parameters _exn67184_)
                (let ((__tmp67879
                       (let ((__tmp67880
                              (let ()
                                (declare (not safe))
                                (cons _exn67184_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp67880))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67879))))))
    (define expression-parsing-exception-source
      (lambda (_exn67178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67178_))
            (let ((_e67181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67178_ 'exception))))
              (if (macro-expression-parsing-exception? _e67181_)
                  (macro-expression-parsing-exception-source _e67181_)
                  (let ((__tmp67885
                         (let ((__tmp67886
                                (let ()
                                  (declare (not safe))
                                  (cons _e67181_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp67886))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67885))))
            (if (macro-expression-parsing-exception? _exn67178_)
                (macro-expression-parsing-exception-source _exn67178_)
                (let ((__tmp67883
                       (let ((__tmp67884
                              (let ()
                                (declare (not safe))
                                (cons _exn67178_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp67884))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67883))))))
    (define file-exists-exception?
      (lambda (_exn67174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67174_))
            (let ((_e67176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67174_ 'exception))))
              (macro-file-exists-exception? _e67176_))
            (macro-file-exists-exception? _exn67174_))))
    (define file-exists-exception-arguments
      (lambda (_exn67170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67170_))
            (let ((_e67172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67170_ 'exception))))
              (if (macro-file-exists-exception? _e67172_)
                  (macro-file-exists-exception-arguments _e67172_)
                  (let ((__tmp67889
                         (let ((__tmp67890
                                (let ()
                                  (declare (not safe))
                                  (cons _e67172_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp67890))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp67889))))
            (if (macro-file-exists-exception? _exn67170_)
                (macro-file-exists-exception-arguments _exn67170_)
                (let ((__tmp67887
                       (let ((__tmp67888
                              (let ()
                                (declare (not safe))
                                (cons _exn67170_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp67888))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp67887))))))
    (define file-exists-exception-procedure
      (lambda (_exn67164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67164_))
            (let ((_e67167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67164_ 'exception))))
              (if (macro-file-exists-exception? _e67167_)
                  (macro-file-exists-exception-procedure _e67167_)
                  (let ((__tmp67893
                         (let ((__tmp67894
                                (let ()
                                  (declare (not safe))
                                  (cons _e67167_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp67894))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp67893))))
            (if (macro-file-exists-exception? _exn67164_)
                (macro-file-exists-exception-procedure _exn67164_)
                (let ((__tmp67891
                       (let ((__tmp67892
                              (let ()
                                (declare (not safe))
                                (cons _exn67164_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp67892))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp67891))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67160_))
            (let ((_e67162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67160_ 'exception))))
              (macro-fixnum-overflow-exception? _e67162_))
            (macro-fixnum-overflow-exception? _exn67160_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67156_))
            (let ((_e67158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67156_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67158_)
                  (macro-fixnum-overflow-exception-arguments _e67158_)
                  (let ((__tmp67897
                         (let ((__tmp67898
                                (let ()
                                  (declare (not safe))
                                  (cons _e67158_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp67898))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp67897))))
            (if (macro-fixnum-overflow-exception? _exn67156_)
                (macro-fixnum-overflow-exception-arguments _exn67156_)
                (let ((__tmp67895
                       (let ((__tmp67896
                              (let ()
                                (declare (not safe))
                                (cons _exn67156_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp67896))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp67895))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67150_))
            (let ((_e67153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67150_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67153_)
                  (macro-fixnum-overflow-exception-procedure _e67153_)
                  (let ((__tmp67901
                         (let ((__tmp67902
                                (let ()
                                  (declare (not safe))
                                  (cons _e67153_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp67902))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp67901))))
            (if (macro-fixnum-overflow-exception? _exn67150_)
                (macro-fixnum-overflow-exception-procedure _exn67150_)
                (let ((__tmp67899
                       (let ((__tmp67900
                              (let ()
                                (declare (not safe))
                                (cons _exn67150_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp67900))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp67899))))))
    (define heap-overflow-exception?
      (lambda (_exn67144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67144_))
            (let ((_e67147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67144_ 'exception))))
              (macro-heap-overflow-exception? _e67147_))
            (macro-heap-overflow-exception? _exn67144_))))
    (define inactive-thread-exception?
      (lambda (_exn67140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67140_))
            (let ((_e67142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67140_ 'exception))))
              (macro-inactive-thread-exception? _e67142_))
            (macro-inactive-thread-exception? _exn67140_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67136_))
            (let ((_e67138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67136_ 'exception))))
              (if (macro-inactive-thread-exception? _e67138_)
                  (macro-inactive-thread-exception-arguments _e67138_)
                  (let ((__tmp67905
                         (let ((__tmp67906
                                (let ()
                                  (declare (not safe))
                                  (cons _e67138_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp67906))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp67905))))
            (if (macro-inactive-thread-exception? _exn67136_)
                (macro-inactive-thread-exception-arguments _exn67136_)
                (let ((__tmp67903
                       (let ((__tmp67904
                              (let ()
                                (declare (not safe))
                                (cons _exn67136_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp67904))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp67903))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67130_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67130_))
            (let ((_e67133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67130_ 'exception))))
              (if (macro-inactive-thread-exception? _e67133_)
                  (macro-inactive-thread-exception-procedure _e67133_)
                  (let ((__tmp67909
                         (let ((__tmp67910
                                (let ()
                                  (declare (not safe))
                                  (cons _e67133_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp67910))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp67909))))
            (if (macro-inactive-thread-exception? _exn67130_)
                (macro-inactive-thread-exception-procedure _exn67130_)
                (let ((__tmp67907
                       (let ((__tmp67908
                              (let ()
                                (declare (not safe))
                                (cons _exn67130_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp67908))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp67907))))))
    (define initialized-thread-exception?
      (lambda (_exn67126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67126_))
            (let ((_e67128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67126_ 'exception))))
              (macro-initialized-thread-exception? _e67128_))
            (macro-initialized-thread-exception? _exn67126_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67122_))
            (let ((_e67124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67122_ 'exception))))
              (if (macro-initialized-thread-exception? _e67124_)
                  (macro-initialized-thread-exception-arguments _e67124_)
                  (let ((__tmp67913
                         (let ((__tmp67914
                                (let ()
                                  (declare (not safe))
                                  (cons _e67124_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp67914))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp67913))))
            (if (macro-initialized-thread-exception? _exn67122_)
                (macro-initialized-thread-exception-arguments _exn67122_)
                (let ((__tmp67911
                       (let ((__tmp67912
                              (let ()
                                (declare (not safe))
                                (cons _exn67122_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp67912))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp67911))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67116_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67116_))
            (let ((_e67119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67116_ 'exception))))
              (if (macro-initialized-thread-exception? _e67119_)
                  (macro-initialized-thread-exception-procedure _e67119_)
                  (let ((__tmp67917
                         (let ((__tmp67918
                                (let ()
                                  (declare (not safe))
                                  (cons _e67119_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp67918))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp67917))))
            (if (macro-initialized-thread-exception? _exn67116_)
                (macro-initialized-thread-exception-procedure _exn67116_)
                (let ((__tmp67915
                       (let ((__tmp67916
                              (let ()
                                (declare (not safe))
                                (cons _exn67116_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp67916))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp67915))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67112_))
            (let ((_e67114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67112_ 'exception))))
              (macro-invalid-hash-number-exception? _e67114_))
            (macro-invalid-hash-number-exception? _exn67112_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67108_))
            (let ((_e67110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67108_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67110_)
                  (macro-invalid-hash-number-exception-arguments _e67110_)
                  (let ((__tmp67921
                         (let ((__tmp67922
                                (let ()
                                  (declare (not safe))
                                  (cons _e67110_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp67922))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp67921))))
            (if (macro-invalid-hash-number-exception? _exn67108_)
                (macro-invalid-hash-number-exception-arguments _exn67108_)
                (let ((__tmp67919
                       (let ((__tmp67920
                              (let ()
                                (declare (not safe))
                                (cons _exn67108_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp67920))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp67919))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67102_))
            (let ((_e67105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67102_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67105_)
                  (macro-invalid-hash-number-exception-procedure _e67105_)
                  (let ((__tmp67925
                         (let ((__tmp67926
                                (let ()
                                  (declare (not safe))
                                  (cons _e67105_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp67926))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp67925))))
            (if (macro-invalid-hash-number-exception? _exn67102_)
                (macro-invalid-hash-number-exception-procedure _exn67102_)
                (let ((__tmp67923
                       (let ((__tmp67924
                              (let ()
                                (declare (not safe))
                                (cons _exn67102_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp67924))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp67923))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67098_))
            (let ((_e67100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67098_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67100_))
            (macro-invalid-utf8-encoding-exception? _exn67098_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67094_))
            (let ((_e67096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67094_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67096_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67096_)
                  (let ((__tmp67929
                         (let ((__tmp67930
                                (let ()
                                  (declare (not safe))
                                  (cons _e67096_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp67930))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp67929))))
            (if (macro-invalid-utf8-encoding-exception? _exn67094_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67094_)
                (let ((__tmp67927
                       (let ((__tmp67928
                              (let ()
                                (declare (not safe))
                                (cons _exn67094_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp67928))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp67927))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67088_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67088_))
            (let ((_e67091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67088_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67091_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67091_)
                  (let ((__tmp67933
                         (let ((__tmp67934
                                (let ()
                                  (declare (not safe))
                                  (cons _e67091_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp67934))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp67933))))
            (if (macro-invalid-utf8-encoding-exception? _exn67088_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67088_)
                (let ((__tmp67931
                       (let ((__tmp67932
                              (let ()
                                (declare (not safe))
                                (cons _exn67088_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp67932))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp67931))))))
    (define join-timeout-exception?
      (lambda (_exn67084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67084_))
            (let ((_e67086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67084_ 'exception))))
              (macro-join-timeout-exception? _e67086_))
            (macro-join-timeout-exception? _exn67084_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67080_))
            (let ((_e67082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67080_ 'exception))))
              (if (macro-join-timeout-exception? _e67082_)
                  (macro-join-timeout-exception-arguments _e67082_)
                  (let ((__tmp67937
                         (let ((__tmp67938
                                (let ()
                                  (declare (not safe))
                                  (cons _e67082_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp67938))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp67937))))
            (if (macro-join-timeout-exception? _exn67080_)
                (macro-join-timeout-exception-arguments _exn67080_)
                (let ((__tmp67935
                       (let ((__tmp67936
                              (let ()
                                (declare (not safe))
                                (cons _exn67080_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp67936))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp67935))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67074_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67074_))
            (let ((_e67077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67074_ 'exception))))
              (if (macro-join-timeout-exception? _e67077_)
                  (macro-join-timeout-exception-procedure _e67077_)
                  (let ((__tmp67941
                         (let ((__tmp67942
                                (let ()
                                  (declare (not safe))
                                  (cons _e67077_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp67942))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp67941))))
            (if (macro-join-timeout-exception? _exn67074_)
                (macro-join-timeout-exception-procedure _exn67074_)
                (let ((__tmp67939
                       (let ((__tmp67940
                              (let ()
                                (declare (not safe))
                                (cons _exn67074_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp67940))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp67939))))))
    (define keyword-expected-exception?
      (lambda (_exn67070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67070_))
            (let ((_e67072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67070_ 'exception))))
              (macro-keyword-expected-exception? _e67072_))
            (macro-keyword-expected-exception? _exn67070_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67066_))
            (let ((_e67068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67066_ 'exception))))
              (if (macro-keyword-expected-exception? _e67068_)
                  (macro-keyword-expected-exception-arguments _e67068_)
                  (let ((__tmp67945
                         (let ((__tmp67946
                                (let ()
                                  (declare (not safe))
                                  (cons _e67068_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp67946))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp67945))))
            (if (macro-keyword-expected-exception? _exn67066_)
                (macro-keyword-expected-exception-arguments _exn67066_)
                (let ((__tmp67943
                       (let ((__tmp67944
                              (let ()
                                (declare (not safe))
                                (cons _exn67066_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp67944))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp67943))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67060_))
            (let ((_e67063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67060_ 'exception))))
              (if (macro-keyword-expected-exception? _e67063_)
                  (macro-keyword-expected-exception-procedure _e67063_)
                  (let ((__tmp67949
                         (let ((__tmp67950
                                (let ()
                                  (declare (not safe))
                                  (cons _e67063_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp67950))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp67949))))
            (if (macro-keyword-expected-exception? _exn67060_)
                (macro-keyword-expected-exception-procedure _exn67060_)
                (let ((__tmp67947
                       (let ((__tmp67948
                              (let ()
                                (declare (not safe))
                                (cons _exn67060_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp67948))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp67947))))))
    (define length-mismatch-exception?
      (lambda (_exn67056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67056_))
            (let ((_e67058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67056_ 'exception))))
              (macro-length-mismatch-exception? _e67058_))
            (macro-length-mismatch-exception? _exn67056_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67052_))
            (let ((_e67054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67052_ 'exception))))
              (if (macro-length-mismatch-exception? _e67054_)
                  (macro-length-mismatch-exception-arg-id _e67054_)
                  (let ((__tmp67953
                         (let ((__tmp67954
                                (let ()
                                  (declare (not safe))
                                  (cons _e67054_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp67954))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67953))))
            (if (macro-length-mismatch-exception? _exn67052_)
                (macro-length-mismatch-exception-arg-id _exn67052_)
                (let ((__tmp67951
                       (let ((__tmp67952
                              (let ()
                                (declare (not safe))
                                (cons _exn67052_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp67952))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67951))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67048_))
            (let ((_e67050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67048_ 'exception))))
              (if (macro-length-mismatch-exception? _e67050_)
                  (macro-length-mismatch-exception-arguments _e67050_)
                  (let ((__tmp67957
                         (let ((__tmp67958
                                (let ()
                                  (declare (not safe))
                                  (cons _e67050_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp67958))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67957))))
            (if (macro-length-mismatch-exception? _exn67048_)
                (macro-length-mismatch-exception-arguments _exn67048_)
                (let ((__tmp67955
                       (let ((__tmp67956
                              (let ()
                                (declare (not safe))
                                (cons _exn67048_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp67956))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67955))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67042_))
            (let ((_e67045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67042_ 'exception))))
              (if (macro-length-mismatch-exception? _e67045_)
                  (macro-length-mismatch-exception-procedure _e67045_)
                  (let ((__tmp67961
                         (let ((__tmp67962
                                (let ()
                                  (declare (not safe))
                                  (cons _e67045_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp67962))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67961))))
            (if (macro-length-mismatch-exception? _exn67042_)
                (macro-length-mismatch-exception-procedure _exn67042_)
                (let ((__tmp67959
                       (let ((__tmp67960
                              (let ()
                                (declare (not safe))
                                (cons _exn67042_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp67960))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67959))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67038_))
            (let ((_e67040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67038_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67040_))
            (macro-mailbox-receive-timeout-exception? _exn67038_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67034_))
            (let ((_e67036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67034_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67036_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67036_)
                  (let ((__tmp67965
                         (let ((__tmp67966
                                (let ()
                                  (declare (not safe))
                                  (cons _e67036_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp67966))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp67965))))
            (if (macro-mailbox-receive-timeout-exception? _exn67034_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67034_)
                (let ((__tmp67963
                       (let ((__tmp67964
                              (let ()
                                (declare (not safe))
                                (cons _exn67034_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp67964))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp67963))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67028_))
            (let ((_e67031_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67028_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67031_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67031_)
                  (let ((__tmp67969
                         (let ((__tmp67970
                                (let ()
                                  (declare (not safe))
                                  (cons _e67031_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp67970))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp67969))))
            (if (macro-mailbox-receive-timeout-exception? _exn67028_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67028_)
                (let ((__tmp67967
                       (let ((__tmp67968
                              (let ()
                                (declare (not safe))
                                (cons _exn67028_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp67968))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp67967))))))
    (define module-not-found-exception?
      (lambda (_exn67024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67024_))
            (let ((_e67026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67024_ 'exception))))
              (macro-module-not-found-exception? _e67026_))
            (macro-module-not-found-exception? _exn67024_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67020_))
            (let ((_e67022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67020_ 'exception))))
              (if (macro-module-not-found-exception? _e67022_)
                  (macro-module-not-found-exception-arguments _e67022_)
                  (let ((__tmp67973
                         (let ((__tmp67974
                                (let ()
                                  (declare (not safe))
                                  (cons _e67022_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp67974))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp67973))))
            (if (macro-module-not-found-exception? _exn67020_)
                (macro-module-not-found-exception-arguments _exn67020_)
                (let ((__tmp67971
                       (let ((__tmp67972
                              (let ()
                                (declare (not safe))
                                (cons _exn67020_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp67972))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp67971))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67014_))
            (let ((_e67017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67014_ 'exception))))
              (if (macro-module-not-found-exception? _e67017_)
                  (macro-module-not-found-exception-procedure _e67017_)
                  (let ((__tmp67977
                         (let ((__tmp67978
                                (let ()
                                  (declare (not safe))
                                  (cons _e67017_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp67978))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp67977))))
            (if (macro-module-not-found-exception? _exn67014_)
                (macro-module-not-found-exception-procedure _exn67014_)
                (let ((__tmp67975
                       (let ((__tmp67976
                              (let ()
                                (declare (not safe))
                                (cons _exn67014_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp67976))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp67975))))))
    (define multiple-c-return-exception?
      (lambda (_exn67008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67008_))
            (let ((_e67011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67008_ 'exception))))
              (macro-multiple-c-return-exception? _e67011_))
            (macro-multiple-c-return-exception? _exn67008_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67004_))
            (let ((_e67006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67004_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67006_))
            (macro-no-such-file-or-directory-exception? _exn67004_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67000_))
            (let ((_e67002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67000_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67002_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67002_)
                  (let ((__tmp67981
                         (let ((__tmp67982
                                (let ()
                                  (declare (not safe))
                                  (cons _e67002_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp67982))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp67981))))
            (if (macro-no-such-file-or-directory-exception? _exn67000_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67000_)
                (let ((__tmp67979
                       (let ((__tmp67980
                              (let ()
                                (declare (not safe))
                                (cons _exn67000_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp67980))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp67979))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn66994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66994_))
            (let ((_e66997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66994_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e66997_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e66997_)
                  (let ((__tmp67985
                         (let ((__tmp67986
                                (let ()
                                  (declare (not safe))
                                  (cons _e66997_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp67986))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp67985))))
            (if (macro-no-such-file-or-directory-exception? _exn66994_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn66994_)
                (let ((__tmp67983
                       (let ((__tmp67984
                              (let ()
                                (declare (not safe))
                                (cons _exn66994_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp67984))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp67983))))))
    (define noncontinuable-exception?
      (lambda (_exn66990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66990_))
            (let ((_e66992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66990_ 'exception))))
              (macro-noncontinuable-exception? _e66992_))
            (macro-noncontinuable-exception? _exn66990_))))
    (define noncontinuable-exception-reason
      (lambda (_exn66984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66984_))
            (let ((_e66987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66984_ 'exception))))
              (if (macro-noncontinuable-exception? _e66987_)
                  (macro-noncontinuable-exception-reason _e66987_)
                  (let ((__tmp67989
                         (let ((__tmp67990
                                (let ()
                                  (declare (not safe))
                                  (cons _e66987_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp67990))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp67989))))
            (if (macro-noncontinuable-exception? _exn66984_)
                (macro-noncontinuable-exception-reason _exn66984_)
                (let ((__tmp67987
                       (let ((__tmp67988
                              (let ()
                                (declare (not safe))
                                (cons _exn66984_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp67988))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp67987))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn66980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66980_))
            (let ((_e66982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66980_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e66982_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn66980_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn66976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66976_))
            (let ((_e66978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66976_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e66978_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e66978_)
                  (let ((__tmp67993
                         (let ((__tmp67994
                                (let ()
                                  (declare (not safe))
                                  (cons _e66978_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp67994))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp67993))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn66976_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn66976_)
                (let ((__tmp67991
                       (let ((__tmp67992
                              (let ()
                                (declare (not safe))
                                (cons _exn66976_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp67992))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp67991))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn66970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66970_))
            (let ((_e66973_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66970_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e66973_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e66973_)
                  (let ((__tmp67997
                         (let ((__tmp67998
                                (let ()
                                  (declare (not safe))
                                  (cons _e66973_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp67998))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp67997))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn66970_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn66970_)
                (let ((__tmp67995
                       (let ((__tmp67996
                              (let ()
                                (declare (not safe))
                                (cons _exn66970_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp67996))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp67995))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn66966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66966_))
            (let ((_e66968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66966_ 'exception))))
              (macro-nonprocedure-operator-exception? _e66968_))
            (macro-nonprocedure-operator-exception? _exn66966_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn66962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66962_))
            (let ((_e66964_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66962_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66964_)
                  (macro-nonprocedure-operator-exception-arguments _e66964_)
                  (let ((__tmp68001
                         (let ((__tmp68002
                                (let ()
                                  (declare (not safe))
                                  (cons _e66964_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68002))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68001))))
            (if (macro-nonprocedure-operator-exception? _exn66962_)
                (macro-nonprocedure-operator-exception-arguments _exn66962_)
                (let ((__tmp67999
                       (let ((__tmp68000
                              (let ()
                                (declare (not safe))
                                (cons _exn66962_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68000))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp67999))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn66958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66958_))
            (let ((_e66960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66958_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66960_)
                  (macro-nonprocedure-operator-exception-code _e66960_)
                  (let ((__tmp68005
                         (let ((__tmp68006
                                (let ()
                                  (declare (not safe))
                                  (cons _e66960_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68006))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68005))))
            (if (macro-nonprocedure-operator-exception? _exn66958_)
                (macro-nonprocedure-operator-exception-code _exn66958_)
                (let ((__tmp68003
                       (let ((__tmp68004
                              (let ()
                                (declare (not safe))
                                (cons _exn66958_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68004))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68003))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn66954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66954_))
            (let ((_e66956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66954_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66956_)
                  (macro-nonprocedure-operator-exception-operator _e66956_)
                  (let ((__tmp68009
                         (let ((__tmp68010
                                (let ()
                                  (declare (not safe))
                                  (cons _e66956_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68010))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68009))))
            (if (macro-nonprocedure-operator-exception? _exn66954_)
                (macro-nonprocedure-operator-exception-operator _exn66954_)
                (let ((__tmp68007
                       (let ((__tmp68008
                              (let ()
                                (declare (not safe))
                                (cons _exn66954_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68008))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68007))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn66948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66948_))
            (let ((_e66951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66948_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66951_)
                  (macro-nonprocedure-operator-exception-rte _e66951_)
                  (let ((__tmp68013
                         (let ((__tmp68014
                                (let ()
                                  (declare (not safe))
                                  (cons _e66951_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68014))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68013))))
            (if (macro-nonprocedure-operator-exception? _exn66948_)
                (macro-nonprocedure-operator-exception-rte _exn66948_)
                (let ((__tmp68011
                       (let ((__tmp68012
                              (let ()
                                (declare (not safe))
                                (cons _exn66948_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68012))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68011))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn66944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66944_))
            (let ((_e66946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66944_ 'exception))))
              (macro-not-in-compilation-context-exception? _e66946_))
            (macro-not-in-compilation-context-exception? _exn66944_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn66940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66940_))
            (let ((_e66942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66940_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e66942_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e66942_)
                  (let ((__tmp68017
                         (let ((__tmp68018
                                (let ()
                                  (declare (not safe))
                                  (cons _e66942_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68018))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68017))))
            (if (macro-not-in-compilation-context-exception? _exn66940_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn66940_)
                (let ((__tmp68015
                       (let ((__tmp68016
                              (let ()
                                (declare (not safe))
                                (cons _exn66940_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68016))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68015))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn66934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66934_))
            (let ((_e66937_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66934_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e66937_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e66937_)
                  (let ((__tmp68021
                         (let ((__tmp68022
                                (let ()
                                  (declare (not safe))
                                  (cons _e66937_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68022))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68021))))
            (if (macro-not-in-compilation-context-exception? _exn66934_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn66934_)
                (let ((__tmp68019
                       (let ((__tmp68020
                              (let ()
                                (declare (not safe))
                                (cons _exn66934_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68020))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68019))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn66930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66930_))
            (let ((_e66932_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66930_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e66932_))
            (macro-number-of-arguments-limit-exception? _exn66930_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn66926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66926_))
            (let ((_e66928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66926_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e66928_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e66928_)
                  (let ((__tmp68025
                         (let ((__tmp68026
                                (let ()
                                  (declare (not safe))
                                  (cons _e66928_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68026))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68025))))
            (if (macro-number-of-arguments-limit-exception? _exn66926_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn66926_)
                (let ((__tmp68023
                       (let ((__tmp68024
                              (let ()
                                (declare (not safe))
                                (cons _exn66926_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68024))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68023))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn66920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66920_))
            (let ((_e66923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66920_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e66923_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e66923_)
                  (let ((__tmp68029
                         (let ((__tmp68030
                                (let ()
                                  (declare (not safe))
                                  (cons _e66923_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68030))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68029))))
            (if (macro-number-of-arguments-limit-exception? _exn66920_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn66920_)
                (let ((__tmp68027
                       (let ((__tmp68028
                              (let ()
                                (declare (not safe))
                                (cons _exn66920_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68028))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68027))))))
    (define os-exception?
      (lambda (_exn66916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66916_))
            (let ((_e66918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66916_ 'exception))))
              (macro-os-exception? _e66918_))
            (macro-os-exception? _exn66916_))))
    (define os-exception-arguments
      (lambda (_exn66912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66912_))
            (let ((_e66914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66912_ 'exception))))
              (if (macro-os-exception? _e66914_)
                  (macro-os-exception-arguments _e66914_)
                  (let ((__tmp68033
                         (let ((__tmp68034
                                (let ()
                                  (declare (not safe))
                                  (cons _e66914_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68034))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68033))))
            (if (macro-os-exception? _exn66912_)
                (macro-os-exception-arguments _exn66912_)
                (let ((__tmp68031
                       (let ((__tmp68032
                              (let ()
                                (declare (not safe))
                                (cons _exn66912_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68032))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68031))))))
    (define os-exception-code
      (lambda (_exn66908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66908_))
            (let ((_e66910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66908_ 'exception))))
              (if (macro-os-exception? _e66910_)
                  (macro-os-exception-code _e66910_)
                  (let ((__tmp68037
                         (let ((__tmp68038
                                (let ()
                                  (declare (not safe))
                                  (cons _e66910_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68038))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68037))))
            (if (macro-os-exception? _exn66908_)
                (macro-os-exception-code _exn66908_)
                (let ((__tmp68035
                       (let ((__tmp68036
                              (let ()
                                (declare (not safe))
                                (cons _exn66908_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68036))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68035))))))
    (define os-exception-message
      (lambda (_exn66904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66904_))
            (let ((_e66906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66904_ 'exception))))
              (if (macro-os-exception? _e66906_)
                  (macro-os-exception-message _e66906_)
                  (let ((__tmp68041
                         (let ((__tmp68042
                                (let ()
                                  (declare (not safe))
                                  (cons _e66906_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68042))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68041))))
            (if (macro-os-exception? _exn66904_)
                (macro-os-exception-message _exn66904_)
                (let ((__tmp68039
                       (let ((__tmp68040
                              (let ()
                                (declare (not safe))
                                (cons _exn66904_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68040))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68039))))))
    (define os-exception-procedure
      (lambda (_exn66898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66898_))
            (let ((_e66901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66898_ 'exception))))
              (if (macro-os-exception? _e66901_)
                  (macro-os-exception-procedure _e66901_)
                  (let ((__tmp68045
                         (let ((__tmp68046
                                (let ()
                                  (declare (not safe))
                                  (cons _e66901_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68046))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68045))))
            (if (macro-os-exception? _exn66898_)
                (macro-os-exception-procedure _exn66898_)
                (let ((__tmp68043
                       (let ((__tmp68044
                              (let ()
                                (declare (not safe))
                                (cons _exn66898_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68044))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68043))))))
    (define permission-denied-exception?
      (lambda (_exn66894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66894_))
            (let ((_e66896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66894_ 'exception))))
              (macro-permission-denied-exception? _e66896_))
            (macro-permission-denied-exception? _exn66894_))))
    (define permission-denied-exception-arguments
      (lambda (_exn66890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66890_))
            (let ((_e66892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66890_ 'exception))))
              (if (macro-permission-denied-exception? _e66892_)
                  (macro-permission-denied-exception-arguments _e66892_)
                  (let ((__tmp68049
                         (let ((__tmp68050
                                (let ()
                                  (declare (not safe))
                                  (cons _e66892_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68050))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68049))))
            (if (macro-permission-denied-exception? _exn66890_)
                (macro-permission-denied-exception-arguments _exn66890_)
                (let ((__tmp68047
                       (let ((__tmp68048
                              (let ()
                                (declare (not safe))
                                (cons _exn66890_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68048))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68047))))))
    (define permission-denied-exception-procedure
      (lambda (_exn66884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66884_))
            (let ((_e66887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66884_ 'exception))))
              (if (macro-permission-denied-exception? _e66887_)
                  (macro-permission-denied-exception-procedure _e66887_)
                  (let ((__tmp68053
                         (let ((__tmp68054
                                (let ()
                                  (declare (not safe))
                                  (cons _e66887_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68054))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68053))))
            (if (macro-permission-denied-exception? _exn66884_)
                (macro-permission-denied-exception-procedure _exn66884_)
                (let ((__tmp68051
                       (let ((__tmp68052
                              (let ()
                                (declare (not safe))
                                (cons _exn66884_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68052))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68051))))))
    (define range-exception?
      (lambda (_exn66880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66880_))
            (let ((_e66882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66880_ 'exception))))
              (macro-range-exception? _e66882_))
            (macro-range-exception? _exn66880_))))
    (define range-exception-arg-id
      (lambda (_exn66876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66876_))
            (let ((_e66878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66876_ 'exception))))
              (if (macro-range-exception? _e66878_)
                  (macro-range-exception-arg-id _e66878_)
                  (let ((__tmp68057
                         (let ((__tmp68058
                                (let ()
                                  (declare (not safe))
                                  (cons _e66878_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68058))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68057))))
            (if (macro-range-exception? _exn66876_)
                (macro-range-exception-arg-id _exn66876_)
                (let ((__tmp68055
                       (let ((__tmp68056
                              (let ()
                                (declare (not safe))
                                (cons _exn66876_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68056))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68055))))))
    (define range-exception-arguments
      (lambda (_exn66872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66872_))
            (let ((_e66874_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66872_ 'exception))))
              (if (macro-range-exception? _e66874_)
                  (macro-range-exception-arguments _e66874_)
                  (let ((__tmp68061
                         (let ((__tmp68062
                                (let ()
                                  (declare (not safe))
                                  (cons _e66874_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68062))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68061))))
            (if (macro-range-exception? _exn66872_)
                (macro-range-exception-arguments _exn66872_)
                (let ((__tmp68059
                       (let ((__tmp68060
                              (let ()
                                (declare (not safe))
                                (cons _exn66872_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68060))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68059))))))
    (define range-exception-procedure
      (lambda (_exn66866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66866_))
            (let ((_e66869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66866_ 'exception))))
              (if (macro-range-exception? _e66869_)
                  (macro-range-exception-procedure _e66869_)
                  (let ((__tmp68065
                         (let ((__tmp68066
                                (let ()
                                  (declare (not safe))
                                  (cons _e66869_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68066))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68065))))
            (if (macro-range-exception? _exn66866_)
                (macro-range-exception-procedure _exn66866_)
                (let ((__tmp68063
                       (let ((__tmp68064
                              (let ()
                                (declare (not safe))
                                (cons _exn66866_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68064))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68063))))))
    (define rpc-remote-error-exception?
      (lambda (_exn66862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66862_))
            (let ((_e66864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66862_ 'exception))))
              (macro-rpc-remote-error-exception? _e66864_))
            (macro-rpc-remote-error-exception? _exn66862_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn66858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66858_))
            (let ((_e66860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66858_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66860_)
                  (macro-rpc-remote-error-exception-arguments _e66860_)
                  (let ((__tmp68069
                         (let ((__tmp68070
                                (let ()
                                  (declare (not safe))
                                  (cons _e66860_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68070))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68069))))
            (if (macro-rpc-remote-error-exception? _exn66858_)
                (macro-rpc-remote-error-exception-arguments _exn66858_)
                (let ((__tmp68067
                       (let ((__tmp68068
                              (let ()
                                (declare (not safe))
                                (cons _exn66858_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68068))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68067))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn66854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66854_))
            (let ((_e66856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66854_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66856_)
                  (macro-rpc-remote-error-exception-message _e66856_)
                  (let ((__tmp68073
                         (let ((__tmp68074
                                (let ()
                                  (declare (not safe))
                                  (cons _e66856_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68074))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68073))))
            (if (macro-rpc-remote-error-exception? _exn66854_)
                (macro-rpc-remote-error-exception-message _exn66854_)
                (let ((__tmp68071
                       (let ((__tmp68072
                              (let ()
                                (declare (not safe))
                                (cons _exn66854_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68072))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68071))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn66848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66848_))
            (let ((_e66851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66848_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66851_)
                  (macro-rpc-remote-error-exception-procedure _e66851_)
                  (let ((__tmp68077
                         (let ((__tmp68078
                                (let ()
                                  (declare (not safe))
                                  (cons _e66851_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68078))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68077))))
            (if (macro-rpc-remote-error-exception? _exn66848_)
                (macro-rpc-remote-error-exception-procedure _exn66848_)
                (let ((__tmp68075
                       (let ((__tmp68076
                              (let ()
                                (declare (not safe))
                                (cons _exn66848_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68076))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68075))))))
    (define scheduler-exception?
      (lambda (_exn66844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66844_))
            (let ((_e66846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66844_ 'exception))))
              (macro-scheduler-exception? _e66846_))
            (macro-scheduler-exception? _exn66844_))))
    (define scheduler-exception-reason
      (lambda (_exn66838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66838_))
            (let ((_e66841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66838_ 'exception))))
              (if (macro-scheduler-exception? _e66841_)
                  (macro-scheduler-exception-reason _e66841_)
                  (let ((__tmp68081
                         (let ((__tmp68082
                                (let ()
                                  (declare (not safe))
                                  (cons _e66841_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68082))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68081))))
            (if (macro-scheduler-exception? _exn66838_)
                (macro-scheduler-exception-reason _exn66838_)
                (let ((__tmp68079
                       (let ((__tmp68080
                              (let ()
                                (declare (not safe))
                                (cons _exn66838_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68080))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68079))))))
    (define sfun-conversion-exception?
      (lambda (_exn66834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66834_))
            (let ((_e66836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66834_ 'exception))))
              (macro-sfun-conversion-exception? _e66836_))
            (macro-sfun-conversion-exception? _exn66834_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn66830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66830_))
            (let ((_e66832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66830_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66832_)
                  (macro-sfun-conversion-exception-arguments _e66832_)
                  (let ((__tmp68085
                         (let ((__tmp68086
                                (let ()
                                  (declare (not safe))
                                  (cons _e66832_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68086))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68085))))
            (if (macro-sfun-conversion-exception? _exn66830_)
                (macro-sfun-conversion-exception-arguments _exn66830_)
                (let ((__tmp68083
                       (let ((__tmp68084
                              (let ()
                                (declare (not safe))
                                (cons _exn66830_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68084))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68083))))))
    (define sfun-conversion-exception-code
      (lambda (_exn66826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66826_))
            (let ((_e66828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66826_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66828_)
                  (macro-sfun-conversion-exception-code _e66828_)
                  (let ((__tmp68089
                         (let ((__tmp68090
                                (let ()
                                  (declare (not safe))
                                  (cons _e66828_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68090))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68089))))
            (if (macro-sfun-conversion-exception? _exn66826_)
                (macro-sfun-conversion-exception-code _exn66826_)
                (let ((__tmp68087
                       (let ((__tmp68088
                              (let ()
                                (declare (not safe))
                                (cons _exn66826_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68088))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68087))))))
    (define sfun-conversion-exception-message
      (lambda (_exn66822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66822_))
            (let ((_e66824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66822_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66824_)
                  (macro-sfun-conversion-exception-message _e66824_)
                  (let ((__tmp68093
                         (let ((__tmp68094
                                (let ()
                                  (declare (not safe))
                                  (cons _e66824_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68094))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68093))))
            (if (macro-sfun-conversion-exception? _exn66822_)
                (macro-sfun-conversion-exception-message _exn66822_)
                (let ((__tmp68091
                       (let ((__tmp68092
                              (let ()
                                (declare (not safe))
                                (cons _exn66822_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68092))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68091))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn66816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66816_))
            (let ((_e66819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66816_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66819_)
                  (macro-sfun-conversion-exception-procedure _e66819_)
                  (let ((__tmp68097
                         (let ((__tmp68098
                                (let ()
                                  (declare (not safe))
                                  (cons _e66819_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68098))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68097))))
            (if (macro-sfun-conversion-exception? _exn66816_)
                (macro-sfun-conversion-exception-procedure _exn66816_)
                (let ((__tmp68095
                       (let ((__tmp68096
                              (let ()
                                (declare (not safe))
                                (cons _exn66816_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68096))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68095))))))
    (define stack-overflow-exception?
      (lambda (_exn66810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66810_))
            (let ((_e66813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66810_ 'exception))))
              (macro-stack-overflow-exception? _e66813_))
            (macro-stack-overflow-exception? _exn66810_))))
    (define started-thread-exception?
      (lambda (_exn66806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66806_))
            (let ((_e66808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66806_ 'exception))))
              (macro-started-thread-exception? _e66808_))
            (macro-started-thread-exception? _exn66806_))))
    (define started-thread-exception-arguments
      (lambda (_exn66802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66802_))
            (let ((_e66804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66802_ 'exception))))
              (if (macro-started-thread-exception? _e66804_)
                  (macro-started-thread-exception-arguments _e66804_)
                  (let ((__tmp68101
                         (let ((__tmp68102
                                (let ()
                                  (declare (not safe))
                                  (cons _e66804_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68102))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68101))))
            (if (macro-started-thread-exception? _exn66802_)
                (macro-started-thread-exception-arguments _exn66802_)
                (let ((__tmp68099
                       (let ((__tmp68100
                              (let ()
                                (declare (not safe))
                                (cons _exn66802_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68100))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68099))))))
    (define started-thread-exception-procedure
      (lambda (_exn66796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66796_))
            (let ((_e66799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66796_ 'exception))))
              (if (macro-started-thread-exception? _e66799_)
                  (macro-started-thread-exception-procedure _e66799_)
                  (let ((__tmp68105
                         (let ((__tmp68106
                                (let ()
                                  (declare (not safe))
                                  (cons _e66799_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68106))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68105))))
            (if (macro-started-thread-exception? _exn66796_)
                (macro-started-thread-exception-procedure _exn66796_)
                (let ((__tmp68103
                       (let ((__tmp68104
                              (let ()
                                (declare (not safe))
                                (cons _exn66796_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68104))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68103))))))
    (define terminated-thread-exception?
      (lambda (_exn66792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66792_))
            (let ((_e66794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66792_ 'exception))))
              (macro-terminated-thread-exception? _e66794_))
            (macro-terminated-thread-exception? _exn66792_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn66788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66788_))
            (let ((_e66790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66788_ 'exception))))
              (if (macro-terminated-thread-exception? _e66790_)
                  (macro-terminated-thread-exception-arguments _e66790_)
                  (let ((__tmp68109
                         (let ((__tmp68110
                                (let ()
                                  (declare (not safe))
                                  (cons _e66790_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68110))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68109))))
            (if (macro-terminated-thread-exception? _exn66788_)
                (macro-terminated-thread-exception-arguments _exn66788_)
                (let ((__tmp68107
                       (let ((__tmp68108
                              (let ()
                                (declare (not safe))
                                (cons _exn66788_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68108))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68107))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn66782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66782_))
            (let ((_e66785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66782_ 'exception))))
              (if (macro-terminated-thread-exception? _e66785_)
                  (macro-terminated-thread-exception-procedure _e66785_)
                  (let ((__tmp68113
                         (let ((__tmp68114
                                (let ()
                                  (declare (not safe))
                                  (cons _e66785_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68114))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68113))))
            (if (macro-terminated-thread-exception? _exn66782_)
                (macro-terminated-thread-exception-procedure _exn66782_)
                (let ((__tmp68111
                       (let ((__tmp68112
                              (let ()
                                (declare (not safe))
                                (cons _exn66782_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68112))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68111))))))
    (define type-exception?
      (lambda (_exn66778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66778_))
            (let ((_e66780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66778_ 'exception))))
              (macro-type-exception? _e66780_))
            (macro-type-exception? _exn66778_))))
    (define type-exception-arg-id
      (lambda (_exn66774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66774_))
            (let ((_e66776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66774_ 'exception))))
              (if (macro-type-exception? _e66776_)
                  (macro-type-exception-arg-id _e66776_)
                  (let ((__tmp68117
                         (let ((__tmp68118
                                (let ()
                                  (declare (not safe))
                                  (cons _e66776_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68118))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68117))))
            (if (macro-type-exception? _exn66774_)
                (macro-type-exception-arg-id _exn66774_)
                (let ((__tmp68115
                       (let ((__tmp68116
                              (let ()
                                (declare (not safe))
                                (cons _exn66774_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68116))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68115))))))
    (define type-exception-arguments
      (lambda (_exn66770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66770_))
            (let ((_e66772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66770_ 'exception))))
              (if (macro-type-exception? _e66772_)
                  (macro-type-exception-arguments _e66772_)
                  (let ((__tmp68121
                         (let ((__tmp68122
                                (let ()
                                  (declare (not safe))
                                  (cons _e66772_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68122))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68121))))
            (if (macro-type-exception? _exn66770_)
                (macro-type-exception-arguments _exn66770_)
                (let ((__tmp68119
                       (let ((__tmp68120
                              (let ()
                                (declare (not safe))
                                (cons _exn66770_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68120))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68119))))))
    (define type-exception-procedure
      (lambda (_exn66766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66766_))
            (let ((_e66768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66766_ 'exception))))
              (if (macro-type-exception? _e66768_)
                  (macro-type-exception-procedure _e66768_)
                  (let ((__tmp68125
                         (let ((__tmp68126
                                (let ()
                                  (declare (not safe))
                                  (cons _e66768_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68126))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68125))))
            (if (macro-type-exception? _exn66766_)
                (macro-type-exception-procedure _exn66766_)
                (let ((__tmp68123
                       (let ((__tmp68124
                              (let ()
                                (declare (not safe))
                                (cons _exn66766_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68124))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68123))))))
    (define type-exception-type-id
      (lambda (_exn66760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66760_))
            (let ((_e66763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66760_ 'exception))))
              (if (macro-type-exception? _e66763_)
                  (macro-type-exception-type-id _e66763_)
                  (let ((__tmp68129
                         (let ((__tmp68130
                                (let ()
                                  (declare (not safe))
                                  (cons _e66763_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68130))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68129))))
            (if (macro-type-exception? _exn66760_)
                (macro-type-exception-type-id _exn66760_)
                (let ((__tmp68127
                       (let ((__tmp68128
                              (let ()
                                (declare (not safe))
                                (cons _exn66760_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68128))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68127))))))
    (define unbound-global-exception?
      (lambda (_exn66756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66756_))
            (let ((_e66758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66756_ 'exception))))
              (macro-unbound-global-exception? _e66758_))
            (macro-unbound-global-exception? _exn66756_))))
    (define unbound-global-exception-code
      (lambda (_exn66752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66752_))
            (let ((_e66754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66752_ 'exception))))
              (if (macro-unbound-global-exception? _e66754_)
                  (macro-unbound-global-exception-code _e66754_)
                  (let ((__tmp68133
                         (let ((__tmp68134
                                (let ()
                                  (declare (not safe))
                                  (cons _e66754_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68134))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68133))))
            (if (macro-unbound-global-exception? _exn66752_)
                (macro-unbound-global-exception-code _exn66752_)
                (let ((__tmp68131
                       (let ((__tmp68132
                              (let ()
                                (declare (not safe))
                                (cons _exn66752_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68132))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68131))))))
    (define unbound-global-exception-rte
      (lambda (_exn66748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66748_))
            (let ((_e66750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66748_ 'exception))))
              (if (macro-unbound-global-exception? _e66750_)
                  (macro-unbound-global-exception-rte _e66750_)
                  (let ((__tmp68137
                         (let ((__tmp68138
                                (let ()
                                  (declare (not safe))
                                  (cons _e66750_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68138))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68137))))
            (if (macro-unbound-global-exception? _exn66748_)
                (macro-unbound-global-exception-rte _exn66748_)
                (let ((__tmp68135
                       (let ((__tmp68136
                              (let ()
                                (declare (not safe))
                                (cons _exn66748_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68136))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68135))))))
    (define unbound-global-exception-variable
      (lambda (_exn66742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66742_))
            (let ((_e66745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66742_ 'exception))))
              (if (macro-unbound-global-exception? _e66745_)
                  (macro-unbound-global-exception-variable _e66745_)
                  (let ((__tmp68141
                         (let ((__tmp68142
                                (let ()
                                  (declare (not safe))
                                  (cons _e66745_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68142))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68141))))
            (if (macro-unbound-global-exception? _exn66742_)
                (macro-unbound-global-exception-variable _exn66742_)
                (let ((__tmp68139
                       (let ((__tmp68140
                              (let ()
                                (declare (not safe))
                                (cons _exn66742_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68140))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68139))))))
    (define unbound-key-exception?
      (lambda (_exn66738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66738_))
            (let ((_e66740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66738_ 'exception))))
              (macro-unbound-key-exception? _e66740_))
            (macro-unbound-key-exception? _exn66738_))))
    (define unbound-key-exception-arguments
      (lambda (_exn66734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66734_))
            (let ((_e66736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66734_ 'exception))))
              (if (macro-unbound-key-exception? _e66736_)
                  (macro-unbound-key-exception-arguments _e66736_)
                  (let ((__tmp68145
                         (let ((__tmp68146
                                (let ()
                                  (declare (not safe))
                                  (cons _e66736_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68146))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68145))))
            (if (macro-unbound-key-exception? _exn66734_)
                (macro-unbound-key-exception-arguments _exn66734_)
                (let ((__tmp68143
                       (let ((__tmp68144
                              (let ()
                                (declare (not safe))
                                (cons _exn66734_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68144))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68143))))))
    (define unbound-key-exception-procedure
      (lambda (_exn66728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66728_))
            (let ((_e66731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66728_ 'exception))))
              (if (macro-unbound-key-exception? _e66731_)
                  (macro-unbound-key-exception-procedure _e66731_)
                  (let ((__tmp68149
                         (let ((__tmp68150
                                (let ()
                                  (declare (not safe))
                                  (cons _e66731_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68150))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68149))))
            (if (macro-unbound-key-exception? _exn66728_)
                (macro-unbound-key-exception-procedure _exn66728_)
                (let ((__tmp68147
                       (let ((__tmp68148
                              (let ()
                                (declare (not safe))
                                (cons _exn66728_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68148))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68147))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn66724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66724_))
            (let ((_e66726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66724_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e66726_))
            (macro-unbound-os-environment-variable-exception? _exn66724_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn66720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66720_))
            (let ((_e66722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66720_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e66722_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e66722_)
                  (let ((__tmp68153
                         (let ((__tmp68154
                                (let ()
                                  (declare (not safe))
                                  (cons _e66722_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68154))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68153))))
            (if (macro-unbound-os-environment-variable-exception? _exn66720_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn66720_)
                (let ((__tmp68151
                       (let ((__tmp68152
                              (let ()
                                (declare (not safe))
                                (cons _exn66720_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68152))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68151))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn66714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66714_))
            (let ((_e66717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66714_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e66717_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e66717_)
                  (let ((__tmp68157
                         (let ((__tmp68158
                                (let ()
                                  (declare (not safe))
                                  (cons _e66717_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68158))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68157))))
            (if (macro-unbound-os-environment-variable-exception? _exn66714_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn66714_)
                (let ((__tmp68155
                       (let ((__tmp68156
                              (let ()
                                (declare (not safe))
                                (cons _exn66714_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68156))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68155))))))
    (define unbound-serial-number-exception?
      (lambda (_exn66710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66710_))
            (let ((_e66712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66710_ 'exception))))
              (macro-unbound-serial-number-exception? _e66712_))
            (macro-unbound-serial-number-exception? _exn66710_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn66706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66706_))
            (let ((_e66708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66706_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e66708_)
                  (macro-unbound-serial-number-exception-arguments _e66708_)
                  (let ((__tmp68161
                         (let ((__tmp68162
                                (let ()
                                  (declare (not safe))
                                  (cons _e66708_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68162))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68161))))
            (if (macro-unbound-serial-number-exception? _exn66706_)
                (macro-unbound-serial-number-exception-arguments _exn66706_)
                (let ((__tmp68159
                       (let ((__tmp68160
                              (let ()
                                (declare (not safe))
                                (cons _exn66706_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68160))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68159))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn66700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66700_))
            (let ((_e66703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66700_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e66703_)
                  (macro-unbound-serial-number-exception-procedure _e66703_)
                  (let ((__tmp68165
                         (let ((__tmp68166
                                (let ()
                                  (declare (not safe))
                                  (cons _e66703_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68166))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68165))))
            (if (macro-unbound-serial-number-exception? _exn66700_)
                (macro-unbound-serial-number-exception-procedure _exn66700_)
                (let ((__tmp68163
                       (let ((__tmp68164
                              (let ()
                                (declare (not safe))
                                (cons _exn66700_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68164))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68163))))))
    (define uncaught-exception?
      (lambda (_exn66696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66696_))
            (let ((_e66698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66696_ 'exception))))
              (macro-uncaught-exception? _e66698_))
            (macro-uncaught-exception? _exn66696_))))
    (define uncaught-exception-arguments
      (lambda (_exn66692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66692_))
            (let ((_e66694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66692_ 'exception))))
              (if (macro-uncaught-exception? _e66694_)
                  (macro-uncaught-exception-arguments _e66694_)
                  (let ((__tmp68169
                         (let ((__tmp68170
                                (let ()
                                  (declare (not safe))
                                  (cons _e66694_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68170))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68169))))
            (if (macro-uncaught-exception? _exn66692_)
                (macro-uncaught-exception-arguments _exn66692_)
                (let ((__tmp68167
                       (let ((__tmp68168
                              (let ()
                                (declare (not safe))
                                (cons _exn66692_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68168))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68167))))))
    (define uncaught-exception-procedure
      (lambda (_exn66688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66688_))
            (let ((_e66690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66688_ 'exception))))
              (if (macro-uncaught-exception? _e66690_)
                  (macro-uncaught-exception-procedure _e66690_)
                  (let ((__tmp68173
                         (let ((__tmp68174
                                (let ()
                                  (declare (not safe))
                                  (cons _e66690_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68174))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68173))))
            (if (macro-uncaught-exception? _exn66688_)
                (macro-uncaught-exception-procedure _exn66688_)
                (let ((__tmp68171
                       (let ((__tmp68172
                              (let ()
                                (declare (not safe))
                                (cons _exn66688_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68172))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68171))))))
    (define uncaught-exception-reason
      (lambda (_exn66682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66682_))
            (let ((_e66685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66682_ 'exception))))
              (if (macro-uncaught-exception? _e66685_)
                  (macro-uncaught-exception-reason _e66685_)
                  (let ((__tmp68177
                         (let ((__tmp68178
                                (let ()
                                  (declare (not safe))
                                  (cons _e66685_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68178))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68177))))
            (if (macro-uncaught-exception? _exn66682_)
                (macro-uncaught-exception-reason _exn66682_)
                (let ((__tmp68175
                       (let ((__tmp68176
                              (let ()
                                (declare (not safe))
                                (cons _exn66682_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68176))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68175))))))
    (define uninitialized-thread-exception?
      (lambda (_exn66678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66678_))
            (let ((_e66680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66678_ 'exception))))
              (macro-uninitialized-thread-exception? _e66680_))
            (macro-uninitialized-thread-exception? _exn66678_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn66674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66674_))
            (let ((_e66676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66674_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e66676_)
                  (macro-uninitialized-thread-exception-arguments _e66676_)
                  (let ((__tmp68181
                         (let ((__tmp68182
                                (let ()
                                  (declare (not safe))
                                  (cons _e66676_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68182))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68181))))
            (if (macro-uninitialized-thread-exception? _exn66674_)
                (macro-uninitialized-thread-exception-arguments _exn66674_)
                (let ((__tmp68179
                       (let ((__tmp68180
                              (let ()
                                (declare (not safe))
                                (cons _exn66674_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68180))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68179))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn66668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66668_))
            (let ((_e66671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66668_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e66671_)
                  (macro-uninitialized-thread-exception-procedure _e66671_)
                  (let ((__tmp68185
                         (let ((__tmp68186
                                (let ()
                                  (declare (not safe))
                                  (cons _e66671_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68186))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68185))))
            (if (macro-uninitialized-thread-exception? _exn66668_)
                (macro-uninitialized-thread-exception-procedure _exn66668_)
                (let ((__tmp68183
                       (let ((__tmp68184
                              (let ()
                                (declare (not safe))
                                (cons _exn66668_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68184))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68183))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn66664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66664_))
            (let ((_e66666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66664_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e66666_))
            (macro-unknown-keyword-argument-exception? _exn66664_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn66660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66660_))
            (let ((_e66662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66660_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e66662_)
                  (macro-unknown-keyword-argument-exception-arguments _e66662_)
                  (let ((__tmp68189
                         (let ((__tmp68190
                                (let ()
                                  (declare (not safe))
                                  (cons _e66662_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68190))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68189))))
            (if (macro-unknown-keyword-argument-exception? _exn66660_)
                (macro-unknown-keyword-argument-exception-arguments _exn66660_)
                (let ((__tmp68187
                       (let ((__tmp68188
                              (let ()
                                (declare (not safe))
                                (cons _exn66660_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68188))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68187))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn66654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66654_))
            (let ((_e66657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66654_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e66657_)
                  (macro-unknown-keyword-argument-exception-procedure _e66657_)
                  (let ((__tmp68193
                         (let ((__tmp68194
                                (let ()
                                  (declare (not safe))
                                  (cons _e66657_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68194))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68193))))
            (if (macro-unknown-keyword-argument-exception? _exn66654_)
                (macro-unknown-keyword-argument-exception-procedure _exn66654_)
                (let ((__tmp68191
                       (let ((__tmp68192
                              (let ()
                                (declare (not safe))
                                (cons _exn66654_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68192))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68191))))))
    (define unterminated-process-exception?
      (lambda (_exn66650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66650_))
            (let ((_e66652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66650_ 'exception))))
              (macro-unterminated-process-exception? _e66652_))
            (macro-unterminated-process-exception? _exn66650_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn66646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66646_))
            (let ((_e66648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66646_ 'exception))))
              (if (macro-unterminated-process-exception? _e66648_)
                  (macro-unterminated-process-exception-arguments _e66648_)
                  (let ((__tmp68197
                         (let ((__tmp68198
                                (let ()
                                  (declare (not safe))
                                  (cons _e66648_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68198))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68197))))
            (if (macro-unterminated-process-exception? _exn66646_)
                (macro-unterminated-process-exception-arguments _exn66646_)
                (let ((__tmp68195
                       (let ((__tmp68196
                              (let ()
                                (declare (not safe))
                                (cons _exn66646_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68196))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68195))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn66640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66640_))
            (let ((_e66643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66640_ 'exception))))
              (if (macro-unterminated-process-exception? _e66643_)
                  (macro-unterminated-process-exception-procedure _e66643_)
                  (let ((__tmp68201
                         (let ((__tmp68202
                                (let ()
                                  (declare (not safe))
                                  (cons _e66643_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68202))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68201))))
            (if (macro-unterminated-process-exception? _exn66640_)
                (macro-unterminated-process-exception-procedure _exn66640_)
                (let ((__tmp68199
                       (let ((__tmp68200
                              (let ()
                                (declare (not safe))
                                (cons _exn66640_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68200))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68199))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn66636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66636_))
            (let ((_e66638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66636_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e66638_))
            (macro-wrong-number-of-arguments-exception? _exn66636_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn66632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66632_))
            (let ((_e66634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66632_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66634_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e66634_)
                  (let ((__tmp68205
                         (let ((__tmp68206
                                (let ()
                                  (declare (not safe))
                                  (cons _e66634_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68206))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68205))))
            (if (macro-wrong-number-of-arguments-exception? _exn66632_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn66632_)
                (let ((__tmp68203
                       (let ((__tmp68204
                              (let ()
                                (declare (not safe))
                                (cons _exn66632_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68204))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68203))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn66626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66626_))
            (let ((_e66629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66626_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66629_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e66629_)
                  (let ((__tmp68209
                         (let ((__tmp68210
                                (let ()
                                  (declare (not safe))
                                  (cons _e66629_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68210))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68209))))
            (if (macro-wrong-number-of-arguments-exception? _exn66626_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn66626_)
                (let ((__tmp68207
                       (let ((__tmp68208
                              (let ()
                                (declare (not safe))
                                (cons _exn66626_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68208))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68207))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn66622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66622_))
            (let ((_e66624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66622_ 'exception))))
              (macro-wrong-number-of-values-exception? _e66624_))
            (macro-wrong-number-of-values-exception? _exn66622_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn66618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66618_))
            (let ((_e66620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66618_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66620_)
                  (macro-wrong-number-of-values-exception-code _e66620_)
                  (let ((__tmp68213
                         (let ((__tmp68214
                                (let ()
                                  (declare (not safe))
                                  (cons _e66620_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68214))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68213))))
            (if (macro-wrong-number-of-values-exception? _exn66618_)
                (macro-wrong-number-of-values-exception-code _exn66618_)
                (let ((__tmp68211
                       (let ((__tmp68212
                              (let ()
                                (declare (not safe))
                                (cons _exn66618_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68212))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68211))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn66614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66614_))
            (let ((_e66616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66614_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66616_)
                  (macro-wrong-number-of-values-exception-rte _e66616_)
                  (let ((__tmp68217
                         (let ((__tmp68218
                                (let ()
                                  (declare (not safe))
                                  (cons _e66616_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68218))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68217))))
            (if (macro-wrong-number-of-values-exception? _exn66614_)
                (macro-wrong-number-of-values-exception-rte _exn66614_)
                (let ((__tmp68215
                       (let ((__tmp68216
                              (let ()
                                (declare (not safe))
                                (cons _exn66614_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68216))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68215))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn66608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66608_))
            (let ((_e66611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66608_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66611_)
                  (macro-wrong-number-of-values-exception-vals _e66611_)
                  (let ((__tmp68221
                         (let ((__tmp68222
                                (let ()
                                  (declare (not safe))
                                  (cons _e66611_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68222))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68221))))
            (if (macro-wrong-number-of-values-exception? _exn66608_)
                (macro-wrong-number-of-values-exception-vals _exn66608_)
                (let ((__tmp68219
                       (let ((__tmp68220
                              (let ()
                                (declare (not safe))
                                (cons _exn66608_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68220))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68219))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn66602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66602_))
            (let ((_e66605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66602_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e66605_))
            (macro-wrong-processor-c-return-exception? _exn66602_))))))
