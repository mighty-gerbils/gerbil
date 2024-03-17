(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710699090)
  (begin
    (define Exception::t
      (let ((__tmp67807 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp67807
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args67775_ (apply make-instance Exception::t _$args67775_)))
    (define StackTrace::t
      (let ((__tmp67808 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp67808
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args67772_ (apply make-instance StackTrace::t _$args67772_)))
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
      (let ((__tmp67809 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp67809
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args67769_ (apply make-instance Error::t _$args67769_)))
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
      (let ((__tmp67810 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp67810
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args67766_
        (apply make-instance RuntimeException::t _$args67766_)))
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
      (lambda (_exn67761_ _continue67762_)
        (let ((_exn67764_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn67761_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn67764_ _continue67762_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn67757_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn67757_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn67757_ 'continuation))
                '#!void
                (let ((__tmp67811
                       (lambda (_cont67759_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn67757_
                            'continuation
                            _cont67759_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp67811)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn67757_))))
    (define error
      (lambda (_message67754_ . _irritants67755_)
        (let ((__tmp67812
               (let ((__obj67801
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj67801
                  _message67754_
                  'irritants:
                  _irritants67755_)
                 __obj67801)))
          (declare (not safe))
          (raise __tmp67812))))
    (define with-exception-handler
      (lambda (_handler67747_ _thunk67748_)
        (if (let () (declare (not safe)) (procedure? _handler67747_))
            '#!void
            (let ((__tmp67813
                   (let ((__obj67802
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67802
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler67747_ '())))
                     __obj67802)))
              (declare (not safe))
              (raise __tmp67813)))
        (if (let () (declare (not safe)) (procedure? _thunk67748_))
            '#!void
            (let ((__tmp67814
                   (let ((__obj67803
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67803
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk67748_ '())))
                     __obj67803)))
              (declare (not safe))
              (raise __tmp67814)))
        (let ((__tmp67815
               (lambda (_exn67750_)
                 (let ((_exn67752_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn67750_))))
                   (_handler67747_ _exn67752_)))))
          (declare (not safe))
          (##with-exception-handler __tmp67815 _thunk67748_))))
    (define with-catch
      (lambda (_handler67740_ _thunk67741_)
        (if (let () (declare (not safe)) (procedure? _handler67740_))
            '#!void
            (let ((__tmp67816
                   (let ((__obj67804
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67804
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler67740_ '())))
                     __obj67804)))
              (declare (not safe))
              (raise __tmp67816)))
        (if (let () (declare (not safe)) (procedure? _thunk67741_))
            '#!void
            (let ((__tmp67817
                   (let ((__obj67805
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj67805
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk67741_ '())))
                     __obj67805)))
              (declare (not safe))
              (raise __tmp67817)))
        (let ((__tmp67818
               (lambda (_cont67743_)
                 (let ((__tmp67819
                        (lambda (_exn67745_)
                          (let ()
                            (declare (not safe))
                            (##continuation-graft
                             _cont67743_
                             _handler67740_
                             _exn67745_)))))
                   (declare (not safe))
                   (with-exception-handler __tmp67819 _thunk67741_)))))
          (declare (not safe))
          (##continuation-capture __tmp67818))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn67731_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn67731_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn67731_)))
            _exn67731_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn67731_))
                _exn67731_
                (if (macro-exception? _exn67731_)
                    (let ((_rte67736_
                           (let ((__obj67806
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj67806
                                _exn67731_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj67806)))
                      (let ((__tmp67820
                             (lambda (_cont67738_)
                               (let ((__tmp67821
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont67738_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte67736_
                                  'continuation
                                  __tmp67821)))))
                        (declare (not safe))
                        (##continuation-capture __tmp67820))
                      _rte67736_)
                    _exn67731_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj67726_)
        (let ((_$e67728_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj67726_))))
          (if _$e67728_
              _$e67728_
              (let () (declare (not safe)) (error-exception? _obj67726_))))))
    (define error-message
      (lambda (_obj67724_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67724_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67724_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj67724_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj67724_))
                '#f))))
    (define error-irritants
      (lambda (_obj67722_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67722_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67722_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj67722_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj67722_))
                '#f))))
    (define error-trace
      (lambda (_obj67720_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67720_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67720_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e67702_ _port67703_)
        (let ((_$e67705_
               (let ()
                 (declare (not safe))
                 (method-ref _e67702_ 'display-exception))))
          (if _$e67705_
              ((lambda (_f67708_) (_f67708_ _e67702_ _port67703_)) _$e67705_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e67702_ _port67703_))))))
    (define display-exception__0
      (lambda (_e67713_)
        (let ((_port67715_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e67713_ _port67715_))))
    (define display-exception
      (lambda _g67823_
        (let ((_g67822_ (let () (declare (not safe)) (##length _g67823_))))
          (cond ((let () (declare (not safe)) (##fx= _g67822_ 1))
                 (apply (lambda (_e67713_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e67713_)))
                        _g67823_))
                ((let () (declare (not safe)) (##fx= _g67822_ 2))
                 (apply (lambda (_e67717_ _port67718_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e67717_ _port67718_)))
                        _g67823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g67823_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self67691_ _message67692_ . _rest67693_)
        (let ((_message67699_
               (if (let () (declare (not safe)) (string? _message67692_))
                   _message67692_
                   (call-with-output-string
                    '""
                    (lambda (_g6769467696_)
                      (display _message67692_ _g6769467696_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self67691_ 'message _message67699_))
          (apply class-instance-init! _self67691_ _rest67693_))))
    (define Error:::init!::specialize
      (lambda (__klass67777 __method-table67778)
        (let ((__message67779
               (let ((__slot67780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67777 'message))))
                 (if __slot67780
                     __slot67780
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self67691_ _message67692_ . _rest67693_)
            (let ((_message67699_
                   (if (let () (declare (not safe)) (string? _message67692_))
                       _message67692_
                       (call-with-output-string
                        '""
                        (lambda (_g6769467696_)
                          (display _message67692_ _g6769467696_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self67691_
                 _message67699_
                 __message67779
                 __klass67777
                 '#f))
              (apply class-instance-init! _self67691_ _rest67693_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67549_ _port67550_)
        (let ((_tmp-port67552_ (open-output-string))
              (_display-error-newline67553_
               (> (output-port-column _port67550_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67552_))
          (let ((__tmp67824
                 (lambda ()
                   (if _display-error-newline67553_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67556_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67549_ 'where))))
                     (if _$e67556_ (display _$e67556_) (display '"?")))
                   (let ((__tmp67825
                          (let ((__tmp67826 (object-type _self67549_)))
                            (declare (not safe))
                            (##type-name __tmp67826))))
                     (declare (not safe))
                     (display* '" [" __tmp67825 '"]: "))
                   (let ((__tmp67827
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67549_ 'message))))
                     (declare (not safe))
                     (displayln __tmp67827))
                   (let ((_irritants67559_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67549_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67559_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67561_)
                              (write _obj67561_)
                              (write-char '#\space))
                            _irritants67559_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67549_))
                            (dump-stack-trace?))
                       (let ((_cont6756267564_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67549_
                                 'continuation))))
                         (if _cont6756267564_
                             (let ((_cont67567_ _cont6756267564_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67567_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp67824
             current-output-port
             _tmp-port67552_))
          (let ((__tmp67828 (get-output-string _tmp-port67552_)))
            (declare (not safe))
            (##write-string __tmp67828 _port67550_)))))
    (define Error::display-exception::specialize
      (lambda (__klass67781 __method-table67782)
        (let ((__where67783
               (let ((__slot67787
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67781 'where))))
                 (if __slot67787
                     __slot67787
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__message67784
               (let ((__slot67788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67781 'message))))
                 (if __slot67788
                     __slot67788
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__irritants67785
               (let ((__slot67789
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67781 'irritants))))
                 (if __slot67789
                     __slot67789
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation67786
               (let ((__slot67790
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67781 'continuation))))
                 (if __slot67790
                     __slot67790
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67549_ _port67550_)
            (let ((_tmp-port67552_ (open-output-string))
                  (_display-error-newline67553_
                   (> (output-port-column _port67550_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67552_))
              (let ((__tmp67829
                     (lambda ()
                       (if _display-error-newline67553_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67556_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67549_
                                 __where67783
                                 __klass67781
                                 '#f))))
                         (if _$e67556_ (display _$e67556_) (display '"?")))
                       (let ((__tmp67830
                              (let ((__tmp67831 (object-type _self67549_)))
                                (declare (not safe))
                                (##type-name __tmp67831))))
                         (declare (not safe))
                         (display* '" [" __tmp67830 '"]: "))
                       (let ((__tmp67832
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67549_
                                 __message67784
                                 __klass67781
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp67832))
                       (let ((_irritants67559_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67549_
                                 __irritants67785
                                 __klass67781
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67559_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67561_)
                                  (write _obj67561_)
                                  (write-char '#\space))
                                _irritants67559_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67549_))
                                (dump-stack-trace?))
                           (let ((_cont6756267564_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67549_
                                     __continuation67786
                                     __klass67781
                                     '#f))))
                             (if _cont6756267564_
                                 (let ((_cont67567_ _cont6756267564_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67567_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp67829
                 current-output-port
                 _tmp-port67552_))
              (let ((__tmp67833 (get-output-string _tmp-port67552_)))
                (declare (not safe))
                (##write-string __tmp67833 _port67550_)))))))
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
      (lambda (_self67416_ _port67417_)
        (let ((_tmp-port67419_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67419_))
          (let ((__tmp67834
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67416_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp67834 _tmp-port67419_))
          (if (dump-stack-trace?)
              (let ((_cont6742067422_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67416_ 'continuation))))
                (if _cont6742067422_
                    (let ((_cont67425_ _cont6742067422_))
                      (display '"--- continuation backtrace:" _tmp-port67419_)
                      (newline _tmp-port67419_)
                      (display-continuation-backtrace
                       _cont67425_
                       _tmp-port67419_))
                    '#f))
              '#!void)
          (let ((__tmp67835 (get-output-string _tmp-port67419_)))
            (declare (not safe))
            (##write-string __tmp67835 _port67417_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass67791 __method-table67792)
        (let ((__exception67793
               (let ((__slot67795
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67791 'exception))))
                 (if __slot67795
                     __slot67795
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation67794
               (let ((__slot67796
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67791 'continuation))))
                 (if __slot67796
                     __slot67796
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67416_ _port67417_)
            (let ((_tmp-port67419_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67419_))
              (let ((__tmp67836
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67416_
                        __exception67793
                        __klass67791
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp67836 _tmp-port67419_))
              (if (dump-stack-trace?)
                  (let ((_cont6742067422_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67416_
                            __continuation67794
                            __klass67791
                            '#f))))
                    (if _cont6742067422_
                        (let ((_cont67425_ _cont6742067422_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67419_)
                          (newline _tmp-port67419_)
                          (display-continuation-backtrace
                           _cont67425_
                           _tmp-port67419_))
                        '#f))
                  '#!void)
              (let ((__tmp67837 (get-output-string _tmp-port67419_)))
                (declare (not safe))
                (##write-string __tmp67837 _port67417_)))))))
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
      (lambda (_port67288_)
        (if (macro-character-port? _port67288_)
            (let ((_old-width67290_
                   (macro-character-port-output-width _port67288_)))
              (macro-character-port-output-width-set!
               _port67288_
               (lambda (_port67292_) '256))
              _old-width67290_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67285_ _old-width67286_)
        (if (macro-character-port? _port67285_)
            (macro-character-port-output-width-set!
             _port67285_
             _old-width67286_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67283_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67283_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67277_))
            (let ((_e67280_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67277_ 'exception))))
              (macro-abandoned-mutex-exception? _e67280_))
            (macro-abandoned-mutex-exception? _exn67277_))))
    (define cfun-conversion-exception?
      (lambda (_exn67273_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67273_))
            (let ((_e67275_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67273_ 'exception))))
              (macro-cfun-conversion-exception? _e67275_))
            (macro-cfun-conversion-exception? _exn67273_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67269_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67269_))
            (let ((_e67271_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67269_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67271_)
                  (macro-cfun-conversion-exception-arguments _e67271_)
                  (let ((__tmp67840
                         (let ((__tmp67841
                                (let ()
                                  (declare (not safe))
                                  (cons _e67271_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp67841))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67840))))
            (if (macro-cfun-conversion-exception? _exn67269_)
                (macro-cfun-conversion-exception-arguments _exn67269_)
                (let ((__tmp67838
                       (let ((__tmp67839
                              (let ()
                                (declare (not safe))
                                (cons _exn67269_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp67839))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67838))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67265_))
            (let ((_e67267_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67265_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67267_)
                  (macro-cfun-conversion-exception-code _e67267_)
                  (let ((__tmp67844
                         (let ((__tmp67845
                                (let ()
                                  (declare (not safe))
                                  (cons _e67267_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp67845))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67844))))
            (if (macro-cfun-conversion-exception? _exn67265_)
                (macro-cfun-conversion-exception-code _exn67265_)
                (let ((__tmp67842
                       (let ((__tmp67843
                              (let ()
                                (declare (not safe))
                                (cons _exn67265_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp67843))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67842))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67261_))
            (let ((_e67263_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67261_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67263_)
                  (macro-cfun-conversion-exception-message _e67263_)
                  (let ((__tmp67848
                         (let ((__tmp67849
                                (let ()
                                  (declare (not safe))
                                  (cons _e67263_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp67849))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67848))))
            (if (macro-cfun-conversion-exception? _exn67261_)
                (macro-cfun-conversion-exception-message _exn67261_)
                (let ((__tmp67846
                       (let ((__tmp67847
                              (let ()
                                (declare (not safe))
                                (cons _exn67261_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp67847))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67846))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67255_))
            (let ((_e67258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67255_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67258_)
                  (macro-cfun-conversion-exception-procedure _e67258_)
                  (let ((__tmp67852
                         (let ((__tmp67853
                                (let ()
                                  (declare (not safe))
                                  (cons _e67258_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp67853))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67852))))
            (if (macro-cfun-conversion-exception? _exn67255_)
                (macro-cfun-conversion-exception-procedure _exn67255_)
                (let ((__tmp67850
                       (let ((__tmp67851
                              (let ()
                                (declare (not safe))
                                (cons _exn67255_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp67851))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67850))))))
    (define datum-parsing-exception?
      (lambda (_exn67251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67251_))
            (let ((_e67253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67251_ 'exception))))
              (macro-datum-parsing-exception? _e67253_))
            (macro-datum-parsing-exception? _exn67251_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67247_))
            (let ((_e67249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67247_ 'exception))))
              (if (macro-datum-parsing-exception? _e67249_)
                  (macro-datum-parsing-exception-kind _e67249_)
                  (let ((__tmp67856
                         (let ((__tmp67857
                                (let ()
                                  (declare (not safe))
                                  (cons _e67249_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp67857))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67856))))
            (if (macro-datum-parsing-exception? _exn67247_)
                (macro-datum-parsing-exception-kind _exn67247_)
                (let ((__tmp67854
                       (let ((__tmp67855
                              (let ()
                                (declare (not safe))
                                (cons _exn67247_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp67855))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67854))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67243_))
            (let ((_e67245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67243_ 'exception))))
              (if (macro-datum-parsing-exception? _e67245_)
                  (macro-datum-parsing-exception-parameters _e67245_)
                  (let ((__tmp67860
                         (let ((__tmp67861
                                (let ()
                                  (declare (not safe))
                                  (cons _e67245_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp67861))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67860))))
            (if (macro-datum-parsing-exception? _exn67243_)
                (macro-datum-parsing-exception-parameters _exn67243_)
                (let ((__tmp67858
                       (let ((__tmp67859
                              (let ()
                                (declare (not safe))
                                (cons _exn67243_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp67859))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67858))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67237_))
            (let ((_e67240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67237_ 'exception))))
              (if (macro-datum-parsing-exception? _e67240_)
                  (macro-datum-parsing-exception-readenv _e67240_)
                  (let ((__tmp67864
                         (let ((__tmp67865
                                (let ()
                                  (declare (not safe))
                                  (cons _e67240_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp67865))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67864))))
            (if (macro-datum-parsing-exception? _exn67237_)
                (macro-datum-parsing-exception-readenv _exn67237_)
                (let ((__tmp67862
                       (let ((__tmp67863
                              (let ()
                                (declare (not safe))
                                (cons _exn67237_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp67863))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67862))))))
    (define deadlock-exception?
      (lambda (_exn67231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67231_))
            (let ((_e67234_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67231_ 'exception))))
              (macro-deadlock-exception? _e67234_))
            (macro-deadlock-exception? _exn67231_))))
    (define divide-by-zero-exception?
      (lambda (_exn67227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67227_))
            (let ((_e67229_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67227_ 'exception))))
              (macro-divide-by-zero-exception? _e67229_))
            (macro-divide-by-zero-exception? _exn67227_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67223_))
            (let ((_e67225_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67223_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67225_)
                  (macro-divide-by-zero-exception-arguments _e67225_)
                  (let ((__tmp67868
                         (let ((__tmp67869
                                (let ()
                                  (declare (not safe))
                                  (cons _e67225_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp67869))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67868))))
            (if (macro-divide-by-zero-exception? _exn67223_)
                (macro-divide-by-zero-exception-arguments _exn67223_)
                (let ((__tmp67866
                       (let ((__tmp67867
                              (let ()
                                (declare (not safe))
                                (cons _exn67223_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp67867))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67866))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67217_))
            (let ((_e67220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67217_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67220_)
                  (macro-divide-by-zero-exception-procedure _e67220_)
                  (let ((__tmp67872
                         (let ((__tmp67873
                                (let ()
                                  (declare (not safe))
                                  (cons _e67220_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp67873))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67872))))
            (if (macro-divide-by-zero-exception? _exn67217_)
                (macro-divide-by-zero-exception-procedure _exn67217_)
                (let ((__tmp67870
                       (let ((__tmp67871
                              (let ()
                                (declare (not safe))
                                (cons _exn67217_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp67871))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67870))))))
    (define error-exception?
      (lambda (_exn67213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67213_))
            (let ((_e67215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67213_ 'exception))))
              (macro-error-exception? _e67215_))
            (macro-error-exception? _exn67213_))))
    (define error-exception-message
      (lambda (_exn67209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67209_))
            (let ((_e67211_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67209_ 'exception))))
              (if (macro-error-exception? _e67211_)
                  (macro-error-exception-message _e67211_)
                  (let ((__tmp67876
                         (let ((__tmp67877
                                (let ()
                                  (declare (not safe))
                                  (cons _e67211_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp67877))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67876))))
            (if (macro-error-exception? _exn67209_)
                (macro-error-exception-message _exn67209_)
                (let ((__tmp67874
                       (let ((__tmp67875
                              (let ()
                                (declare (not safe))
                                (cons _exn67209_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp67875))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67874))))))
    (define error-exception-parameters
      (lambda (_exn67203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67203_))
            (let ((_e67206_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67203_ 'exception))))
              (if (macro-error-exception? _e67206_)
                  (macro-error-exception-parameters _e67206_)
                  (let ((__tmp67880
                         (let ((__tmp67881
                                (let ()
                                  (declare (not safe))
                                  (cons _e67206_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp67881))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67880))))
            (if (macro-error-exception? _exn67203_)
                (macro-error-exception-parameters _exn67203_)
                (let ((__tmp67878
                       (let ((__tmp67879
                              (let ()
                                (declare (not safe))
                                (cons _exn67203_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp67879))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67878))))))
    (define expression-parsing-exception?
      (lambda (_exn67199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67199_))
            (let ((_e67201_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67199_ 'exception))))
              (macro-expression-parsing-exception? _e67201_))
            (macro-expression-parsing-exception? _exn67199_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67195_))
            (let ((_e67197_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67195_ 'exception))))
              (if (macro-expression-parsing-exception? _e67197_)
                  (macro-expression-parsing-exception-kind _e67197_)
                  (let ((__tmp67884
                         (let ((__tmp67885
                                (let ()
                                  (declare (not safe))
                                  (cons _e67197_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp67885))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67884))))
            (if (macro-expression-parsing-exception? _exn67195_)
                (macro-expression-parsing-exception-kind _exn67195_)
                (let ((__tmp67882
                       (let ((__tmp67883
                              (let ()
                                (declare (not safe))
                                (cons _exn67195_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp67883))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67882))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67191_))
            (let ((_e67193_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67191_ 'exception))))
              (if (macro-expression-parsing-exception? _e67193_)
                  (macro-expression-parsing-exception-parameters _e67193_)
                  (let ((__tmp67888
                         (let ((__tmp67889
                                (let ()
                                  (declare (not safe))
                                  (cons _e67193_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp67889))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67888))))
            (if (macro-expression-parsing-exception? _exn67191_)
                (macro-expression-parsing-exception-parameters _exn67191_)
                (let ((__tmp67886
                       (let ((__tmp67887
                              (let ()
                                (declare (not safe))
                                (cons _exn67191_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp67887))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67886))))))
    (define expression-parsing-exception-source
      (lambda (_exn67185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67185_))
            (let ((_e67188_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67185_ 'exception))))
              (if (macro-expression-parsing-exception? _e67188_)
                  (macro-expression-parsing-exception-source _e67188_)
                  (let ((__tmp67892
                         (let ((__tmp67893
                                (let ()
                                  (declare (not safe))
                                  (cons _e67188_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp67893))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67892))))
            (if (macro-expression-parsing-exception? _exn67185_)
                (macro-expression-parsing-exception-source _exn67185_)
                (let ((__tmp67890
                       (let ((__tmp67891
                              (let ()
                                (declare (not safe))
                                (cons _exn67185_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp67891))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67890))))))
    (define file-exists-exception?
      (lambda (_exn67181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67181_))
            (let ((_e67183_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67181_ 'exception))))
              (macro-file-exists-exception? _e67183_))
            (macro-file-exists-exception? _exn67181_))))
    (define file-exists-exception-arguments
      (lambda (_exn67177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67177_))
            (let ((_e67179_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67177_ 'exception))))
              (if (macro-file-exists-exception? _e67179_)
                  (macro-file-exists-exception-arguments _e67179_)
                  (let ((__tmp67896
                         (let ((__tmp67897
                                (let ()
                                  (declare (not safe))
                                  (cons _e67179_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp67897))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp67896))))
            (if (macro-file-exists-exception? _exn67177_)
                (macro-file-exists-exception-arguments _exn67177_)
                (let ((__tmp67894
                       (let ((__tmp67895
                              (let ()
                                (declare (not safe))
                                (cons _exn67177_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp67895))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp67894))))))
    (define file-exists-exception-procedure
      (lambda (_exn67171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67171_))
            (let ((_e67174_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67171_ 'exception))))
              (if (macro-file-exists-exception? _e67174_)
                  (macro-file-exists-exception-procedure _e67174_)
                  (let ((__tmp67900
                         (let ((__tmp67901
                                (let ()
                                  (declare (not safe))
                                  (cons _e67174_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp67901))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp67900))))
            (if (macro-file-exists-exception? _exn67171_)
                (macro-file-exists-exception-procedure _exn67171_)
                (let ((__tmp67898
                       (let ((__tmp67899
                              (let ()
                                (declare (not safe))
                                (cons _exn67171_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp67899))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp67898))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67167_))
            (let ((_e67169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67167_ 'exception))))
              (macro-fixnum-overflow-exception? _e67169_))
            (macro-fixnum-overflow-exception? _exn67167_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67163_))
            (let ((_e67165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67163_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67165_)
                  (macro-fixnum-overflow-exception-arguments _e67165_)
                  (let ((__tmp67904
                         (let ((__tmp67905
                                (let ()
                                  (declare (not safe))
                                  (cons _e67165_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp67905))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp67904))))
            (if (macro-fixnum-overflow-exception? _exn67163_)
                (macro-fixnum-overflow-exception-arguments _exn67163_)
                (let ((__tmp67902
                       (let ((__tmp67903
                              (let ()
                                (declare (not safe))
                                (cons _exn67163_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp67903))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp67902))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67157_))
            (let ((_e67160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67157_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67160_)
                  (macro-fixnum-overflow-exception-procedure _e67160_)
                  (let ((__tmp67908
                         (let ((__tmp67909
                                (let ()
                                  (declare (not safe))
                                  (cons _e67160_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp67909))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp67908))))
            (if (macro-fixnum-overflow-exception? _exn67157_)
                (macro-fixnum-overflow-exception-procedure _exn67157_)
                (let ((__tmp67906
                       (let ((__tmp67907
                              (let ()
                                (declare (not safe))
                                (cons _exn67157_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp67907))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp67906))))))
    (define heap-overflow-exception?
      (lambda (_exn67151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67151_))
            (let ((_e67154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67151_ 'exception))))
              (macro-heap-overflow-exception? _e67154_))
            (macro-heap-overflow-exception? _exn67151_))))
    (define inactive-thread-exception?
      (lambda (_exn67147_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67147_))
            (let ((_e67149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67147_ 'exception))))
              (macro-inactive-thread-exception? _e67149_))
            (macro-inactive-thread-exception? _exn67147_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67143_))
            (let ((_e67145_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67143_ 'exception))))
              (if (macro-inactive-thread-exception? _e67145_)
                  (macro-inactive-thread-exception-arguments _e67145_)
                  (let ((__tmp67912
                         (let ((__tmp67913
                                (let ()
                                  (declare (not safe))
                                  (cons _e67145_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp67913))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp67912))))
            (if (macro-inactive-thread-exception? _exn67143_)
                (macro-inactive-thread-exception-arguments _exn67143_)
                (let ((__tmp67910
                       (let ((__tmp67911
                              (let ()
                                (declare (not safe))
                                (cons _exn67143_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp67911))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp67910))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67137_))
            (let ((_e67140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67137_ 'exception))))
              (if (macro-inactive-thread-exception? _e67140_)
                  (macro-inactive-thread-exception-procedure _e67140_)
                  (let ((__tmp67916
                         (let ((__tmp67917
                                (let ()
                                  (declare (not safe))
                                  (cons _e67140_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp67917))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp67916))))
            (if (macro-inactive-thread-exception? _exn67137_)
                (macro-inactive-thread-exception-procedure _exn67137_)
                (let ((__tmp67914
                       (let ((__tmp67915
                              (let ()
                                (declare (not safe))
                                (cons _exn67137_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp67915))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp67914))))))
    (define initialized-thread-exception?
      (lambda (_exn67133_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67133_))
            (let ((_e67135_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67133_ 'exception))))
              (macro-initialized-thread-exception? _e67135_))
            (macro-initialized-thread-exception? _exn67133_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67129_))
            (let ((_e67131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67129_ 'exception))))
              (if (macro-initialized-thread-exception? _e67131_)
                  (macro-initialized-thread-exception-arguments _e67131_)
                  (let ((__tmp67920
                         (let ((__tmp67921
                                (let ()
                                  (declare (not safe))
                                  (cons _e67131_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp67921))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp67920))))
            (if (macro-initialized-thread-exception? _exn67129_)
                (macro-initialized-thread-exception-arguments _exn67129_)
                (let ((__tmp67918
                       (let ((__tmp67919
                              (let ()
                                (declare (not safe))
                                (cons _exn67129_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp67919))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp67918))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67123_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67123_))
            (let ((_e67126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67123_ 'exception))))
              (if (macro-initialized-thread-exception? _e67126_)
                  (macro-initialized-thread-exception-procedure _e67126_)
                  (let ((__tmp67924
                         (let ((__tmp67925
                                (let ()
                                  (declare (not safe))
                                  (cons _e67126_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp67925))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp67924))))
            (if (macro-initialized-thread-exception? _exn67123_)
                (macro-initialized-thread-exception-procedure _exn67123_)
                (let ((__tmp67922
                       (let ((__tmp67923
                              (let ()
                                (declare (not safe))
                                (cons _exn67123_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp67923))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp67922))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67119_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67119_))
            (let ((_e67121_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67119_ 'exception))))
              (macro-invalid-hash-number-exception? _e67121_))
            (macro-invalid-hash-number-exception? _exn67119_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67115_))
            (let ((_e67117_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67115_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67117_)
                  (macro-invalid-hash-number-exception-arguments _e67117_)
                  (let ((__tmp67928
                         (let ((__tmp67929
                                (let ()
                                  (declare (not safe))
                                  (cons _e67117_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp67929))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp67928))))
            (if (macro-invalid-hash-number-exception? _exn67115_)
                (macro-invalid-hash-number-exception-arguments _exn67115_)
                (let ((__tmp67926
                       (let ((__tmp67927
                              (let ()
                                (declare (not safe))
                                (cons _exn67115_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp67927))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp67926))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67109_))
            (let ((_e67112_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67109_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67112_)
                  (macro-invalid-hash-number-exception-procedure _e67112_)
                  (let ((__tmp67932
                         (let ((__tmp67933
                                (let ()
                                  (declare (not safe))
                                  (cons _e67112_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp67933))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp67932))))
            (if (macro-invalid-hash-number-exception? _exn67109_)
                (macro-invalid-hash-number-exception-procedure _exn67109_)
                (let ((__tmp67930
                       (let ((__tmp67931
                              (let ()
                                (declare (not safe))
                                (cons _exn67109_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp67931))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp67930))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67105_))
            (let ((_e67107_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67105_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67107_))
            (macro-invalid-utf8-encoding-exception? _exn67105_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67101_))
            (let ((_e67103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67101_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67103_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67103_)
                  (let ((__tmp67936
                         (let ((__tmp67937
                                (let ()
                                  (declare (not safe))
                                  (cons _e67103_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp67937))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp67936))))
            (if (macro-invalid-utf8-encoding-exception? _exn67101_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67101_)
                (let ((__tmp67934
                       (let ((__tmp67935
                              (let ()
                                (declare (not safe))
                                (cons _exn67101_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp67935))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp67934))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67095_))
            (let ((_e67098_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67095_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67098_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67098_)
                  (let ((__tmp67940
                         (let ((__tmp67941
                                (let ()
                                  (declare (not safe))
                                  (cons _e67098_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp67941))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp67940))))
            (if (macro-invalid-utf8-encoding-exception? _exn67095_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67095_)
                (let ((__tmp67938
                       (let ((__tmp67939
                              (let ()
                                (declare (not safe))
                                (cons _exn67095_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp67939))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp67938))))))
    (define join-timeout-exception?
      (lambda (_exn67091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67091_))
            (let ((_e67093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67091_ 'exception))))
              (macro-join-timeout-exception? _e67093_))
            (macro-join-timeout-exception? _exn67091_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67087_))
            (let ((_e67089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67087_ 'exception))))
              (if (macro-join-timeout-exception? _e67089_)
                  (macro-join-timeout-exception-arguments _e67089_)
                  (let ((__tmp67944
                         (let ((__tmp67945
                                (let ()
                                  (declare (not safe))
                                  (cons _e67089_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp67945))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp67944))))
            (if (macro-join-timeout-exception? _exn67087_)
                (macro-join-timeout-exception-arguments _exn67087_)
                (let ((__tmp67942
                       (let ((__tmp67943
                              (let ()
                                (declare (not safe))
                                (cons _exn67087_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp67943))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp67942))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67081_))
            (let ((_e67084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67081_ 'exception))))
              (if (macro-join-timeout-exception? _e67084_)
                  (macro-join-timeout-exception-procedure _e67084_)
                  (let ((__tmp67948
                         (let ((__tmp67949
                                (let ()
                                  (declare (not safe))
                                  (cons _e67084_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp67949))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp67948))))
            (if (macro-join-timeout-exception? _exn67081_)
                (macro-join-timeout-exception-procedure _exn67081_)
                (let ((__tmp67946
                       (let ((__tmp67947
                              (let ()
                                (declare (not safe))
                                (cons _exn67081_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp67947))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp67946))))))
    (define keyword-expected-exception?
      (lambda (_exn67077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67077_))
            (let ((_e67079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67077_ 'exception))))
              (macro-keyword-expected-exception? _e67079_))
            (macro-keyword-expected-exception? _exn67077_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67073_))
            (let ((_e67075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67073_ 'exception))))
              (if (macro-keyword-expected-exception? _e67075_)
                  (macro-keyword-expected-exception-arguments _e67075_)
                  (let ((__tmp67952
                         (let ((__tmp67953
                                (let ()
                                  (declare (not safe))
                                  (cons _e67075_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp67953))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp67952))))
            (if (macro-keyword-expected-exception? _exn67073_)
                (macro-keyword-expected-exception-arguments _exn67073_)
                (let ((__tmp67950
                       (let ((__tmp67951
                              (let ()
                                (declare (not safe))
                                (cons _exn67073_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp67951))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp67950))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67067_))
            (let ((_e67070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67067_ 'exception))))
              (if (macro-keyword-expected-exception? _e67070_)
                  (macro-keyword-expected-exception-procedure _e67070_)
                  (let ((__tmp67956
                         (let ((__tmp67957
                                (let ()
                                  (declare (not safe))
                                  (cons _e67070_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp67957))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp67956))))
            (if (macro-keyword-expected-exception? _exn67067_)
                (macro-keyword-expected-exception-procedure _exn67067_)
                (let ((__tmp67954
                       (let ((__tmp67955
                              (let ()
                                (declare (not safe))
                                (cons _exn67067_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp67955))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp67954))))))
    (define length-mismatch-exception?
      (lambda (_exn67063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67063_))
            (let ((_e67065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67063_ 'exception))))
              (macro-length-mismatch-exception? _e67065_))
            (macro-length-mismatch-exception? _exn67063_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67059_))
            (let ((_e67061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67059_ 'exception))))
              (if (macro-length-mismatch-exception? _e67061_)
                  (macro-length-mismatch-exception-arg-id _e67061_)
                  (let ((__tmp67960
                         (let ((__tmp67961
                                (let ()
                                  (declare (not safe))
                                  (cons _e67061_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp67961))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67960))))
            (if (macro-length-mismatch-exception? _exn67059_)
                (macro-length-mismatch-exception-arg-id _exn67059_)
                (let ((__tmp67958
                       (let ((__tmp67959
                              (let ()
                                (declare (not safe))
                                (cons _exn67059_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp67959))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67958))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67055_))
            (let ((_e67057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67055_ 'exception))))
              (if (macro-length-mismatch-exception? _e67057_)
                  (macro-length-mismatch-exception-arguments _e67057_)
                  (let ((__tmp67964
                         (let ((__tmp67965
                                (let ()
                                  (declare (not safe))
                                  (cons _e67057_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp67965))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67964))))
            (if (macro-length-mismatch-exception? _exn67055_)
                (macro-length-mismatch-exception-arguments _exn67055_)
                (let ((__tmp67962
                       (let ((__tmp67963
                              (let ()
                                (declare (not safe))
                                (cons _exn67055_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp67963))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67962))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67049_))
            (let ((_e67052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67049_ 'exception))))
              (if (macro-length-mismatch-exception? _e67052_)
                  (macro-length-mismatch-exception-procedure _e67052_)
                  (let ((__tmp67968
                         (let ((__tmp67969
                                (let ()
                                  (declare (not safe))
                                  (cons _e67052_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp67969))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67968))))
            (if (macro-length-mismatch-exception? _exn67049_)
                (macro-length-mismatch-exception-procedure _exn67049_)
                (let ((__tmp67966
                       (let ((__tmp67967
                              (let ()
                                (declare (not safe))
                                (cons _exn67049_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp67967))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67966))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67045_))
            (let ((_e67047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67045_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67047_))
            (macro-mailbox-receive-timeout-exception? _exn67045_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67041_))
            (let ((_e67043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67041_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67043_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67043_)
                  (let ((__tmp67972
                         (let ((__tmp67973
                                (let ()
                                  (declare (not safe))
                                  (cons _e67043_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp67973))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp67972))))
            (if (macro-mailbox-receive-timeout-exception? _exn67041_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67041_)
                (let ((__tmp67970
                       (let ((__tmp67971
                              (let ()
                                (declare (not safe))
                                (cons _exn67041_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp67971))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp67970))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67035_))
            (let ((_e67038_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67035_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67038_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67038_)
                  (let ((__tmp67976
                         (let ((__tmp67977
                                (let ()
                                  (declare (not safe))
                                  (cons _e67038_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp67977))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp67976))))
            (if (macro-mailbox-receive-timeout-exception? _exn67035_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67035_)
                (let ((__tmp67974
                       (let ((__tmp67975
                              (let ()
                                (declare (not safe))
                                (cons _exn67035_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp67975))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp67974))))))
    (define module-not-found-exception?
      (lambda (_exn67031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67031_))
            (let ((_e67033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67031_ 'exception))))
              (macro-module-not-found-exception? _e67033_))
            (macro-module-not-found-exception? _exn67031_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67027_))
            (let ((_e67029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67027_ 'exception))))
              (if (macro-module-not-found-exception? _e67029_)
                  (macro-module-not-found-exception-arguments _e67029_)
                  (let ((__tmp67980
                         (let ((__tmp67981
                                (let ()
                                  (declare (not safe))
                                  (cons _e67029_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp67981))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp67980))))
            (if (macro-module-not-found-exception? _exn67027_)
                (macro-module-not-found-exception-arguments _exn67027_)
                (let ((__tmp67978
                       (let ((__tmp67979
                              (let ()
                                (declare (not safe))
                                (cons _exn67027_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp67979))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp67978))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67021_))
            (let ((_e67024_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67021_ 'exception))))
              (if (macro-module-not-found-exception? _e67024_)
                  (macro-module-not-found-exception-procedure _e67024_)
                  (let ((__tmp67984
                         (let ((__tmp67985
                                (let ()
                                  (declare (not safe))
                                  (cons _e67024_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp67985))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp67984))))
            (if (macro-module-not-found-exception? _exn67021_)
                (macro-module-not-found-exception-procedure _exn67021_)
                (let ((__tmp67982
                       (let ((__tmp67983
                              (let ()
                                (declare (not safe))
                                (cons _exn67021_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp67983))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp67982))))))
    (define multiple-c-return-exception?
      (lambda (_exn67015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67015_))
            (let ((_e67018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67015_ 'exception))))
              (macro-multiple-c-return-exception? _e67018_))
            (macro-multiple-c-return-exception? _exn67015_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67011_))
            (let ((_e67013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67011_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67013_))
            (macro-no-such-file-or-directory-exception? _exn67011_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67007_))
            (let ((_e67009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67007_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67009_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67009_)
                  (let ((__tmp67988
                         (let ((__tmp67989
                                (let ()
                                  (declare (not safe))
                                  (cons _e67009_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp67989))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp67988))))
            (if (macro-no-such-file-or-directory-exception? _exn67007_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67007_)
                (let ((__tmp67986
                       (let ((__tmp67987
                              (let ()
                                (declare (not safe))
                                (cons _exn67007_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp67987))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp67986))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67001_))
            (let ((_e67004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67001_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67004_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67004_)
                  (let ((__tmp67992
                         (let ((__tmp67993
                                (let ()
                                  (declare (not safe))
                                  (cons _e67004_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp67993))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp67992))))
            (if (macro-no-such-file-or-directory-exception? _exn67001_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67001_)
                (let ((__tmp67990
                       (let ((__tmp67991
                              (let ()
                                (declare (not safe))
                                (cons _exn67001_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp67991))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp67990))))))
    (define noncontinuable-exception?
      (lambda (_exn66997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66997_))
            (let ((_e66999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66997_ 'exception))))
              (macro-noncontinuable-exception? _e66999_))
            (macro-noncontinuable-exception? _exn66997_))))
    (define noncontinuable-exception-reason
      (lambda (_exn66991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66991_))
            (let ((_e66994_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66991_ 'exception))))
              (if (macro-noncontinuable-exception? _e66994_)
                  (macro-noncontinuable-exception-reason _e66994_)
                  (let ((__tmp67996
                         (let ((__tmp67997
                                (let ()
                                  (declare (not safe))
                                  (cons _e66994_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp67997))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp67996))))
            (if (macro-noncontinuable-exception? _exn66991_)
                (macro-noncontinuable-exception-reason _exn66991_)
                (let ((__tmp67994
                       (let ((__tmp67995
                              (let ()
                                (declare (not safe))
                                (cons _exn66991_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp67995))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp67994))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn66987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66987_))
            (let ((_e66989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66987_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e66989_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn66987_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn66983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66983_))
            (let ((_e66985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66983_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e66985_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e66985_)
                  (let ((__tmp68000
                         (let ((__tmp68001
                                (let ()
                                  (declare (not safe))
                                  (cons _e66985_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp68001))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68000))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn66983_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn66983_)
                (let ((__tmp67998
                       (let ((__tmp67999
                              (let ()
                                (declare (not safe))
                                (cons _exn66983_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp67999))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp67998))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn66977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66977_))
            (let ((_e66980_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66977_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e66980_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e66980_)
                  (let ((__tmp68004
                         (let ((__tmp68005
                                (let ()
                                  (declare (not safe))
                                  (cons _e66980_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp68005))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68004))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn66977_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn66977_)
                (let ((__tmp68002
                       (let ((__tmp68003
                              (let ()
                                (declare (not safe))
                                (cons _exn66977_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp68003))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68002))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn66973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66973_))
            (let ((_e66975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66973_ 'exception))))
              (macro-nonprocedure-operator-exception? _e66975_))
            (macro-nonprocedure-operator-exception? _exn66973_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn66969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66969_))
            (let ((_e66971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66969_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66971_)
                  (macro-nonprocedure-operator-exception-arguments _e66971_)
                  (let ((__tmp68008
                         (let ((__tmp68009
                                (let ()
                                  (declare (not safe))
                                  (cons _e66971_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68009))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68008))))
            (if (macro-nonprocedure-operator-exception? _exn66969_)
                (macro-nonprocedure-operator-exception-arguments _exn66969_)
                (let ((__tmp68006
                       (let ((__tmp68007
                              (let ()
                                (declare (not safe))
                                (cons _exn66969_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68007))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68006))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn66965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66965_))
            (let ((_e66967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66965_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66967_)
                  (macro-nonprocedure-operator-exception-code _e66967_)
                  (let ((__tmp68012
                         (let ((__tmp68013
                                (let ()
                                  (declare (not safe))
                                  (cons _e66967_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68013))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68012))))
            (if (macro-nonprocedure-operator-exception? _exn66965_)
                (macro-nonprocedure-operator-exception-code _exn66965_)
                (let ((__tmp68010
                       (let ((__tmp68011
                              (let ()
                                (declare (not safe))
                                (cons _exn66965_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68011))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68010))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn66961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66961_))
            (let ((_e66963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66961_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66963_)
                  (macro-nonprocedure-operator-exception-operator _e66963_)
                  (let ((__tmp68016
                         (let ((__tmp68017
                                (let ()
                                  (declare (not safe))
                                  (cons _e66963_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68017))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68016))))
            (if (macro-nonprocedure-operator-exception? _exn66961_)
                (macro-nonprocedure-operator-exception-operator _exn66961_)
                (let ((__tmp68014
                       (let ((__tmp68015
                              (let ()
                                (declare (not safe))
                                (cons _exn66961_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68015))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68014))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn66955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66955_))
            (let ((_e66958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66955_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66958_)
                  (macro-nonprocedure-operator-exception-rte _e66958_)
                  (let ((__tmp68020
                         (let ((__tmp68021
                                (let ()
                                  (declare (not safe))
                                  (cons _e66958_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68021))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68020))))
            (if (macro-nonprocedure-operator-exception? _exn66955_)
                (macro-nonprocedure-operator-exception-rte _exn66955_)
                (let ((__tmp68018
                       (let ((__tmp68019
                              (let ()
                                (declare (not safe))
                                (cons _exn66955_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68019))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68018))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn66951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66951_))
            (let ((_e66953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66951_ 'exception))))
              (macro-not-in-compilation-context-exception? _e66953_))
            (macro-not-in-compilation-context-exception? _exn66951_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn66947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66947_))
            (let ((_e66949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66947_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e66949_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e66949_)
                  (let ((__tmp68024
                         (let ((__tmp68025
                                (let ()
                                  (declare (not safe))
                                  (cons _e66949_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68025))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68024))))
            (if (macro-not-in-compilation-context-exception? _exn66947_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn66947_)
                (let ((__tmp68022
                       (let ((__tmp68023
                              (let ()
                                (declare (not safe))
                                (cons _exn66947_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68023))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68022))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn66941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66941_))
            (let ((_e66944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66941_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e66944_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e66944_)
                  (let ((__tmp68028
                         (let ((__tmp68029
                                (let ()
                                  (declare (not safe))
                                  (cons _e66944_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68029))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68028))))
            (if (macro-not-in-compilation-context-exception? _exn66941_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn66941_)
                (let ((__tmp68026
                       (let ((__tmp68027
                              (let ()
                                (declare (not safe))
                                (cons _exn66941_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68027))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68026))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn66937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66937_))
            (let ((_e66939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66937_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e66939_))
            (macro-number-of-arguments-limit-exception? _exn66937_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn66933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66933_))
            (let ((_e66935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66933_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e66935_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e66935_)
                  (let ((__tmp68032
                         (let ((__tmp68033
                                (let ()
                                  (declare (not safe))
                                  (cons _e66935_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68033))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68032))))
            (if (macro-number-of-arguments-limit-exception? _exn66933_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn66933_)
                (let ((__tmp68030
                       (let ((__tmp68031
                              (let ()
                                (declare (not safe))
                                (cons _exn66933_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68031))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68030))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn66927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66927_))
            (let ((_e66930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66927_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e66930_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e66930_)
                  (let ((__tmp68036
                         (let ((__tmp68037
                                (let ()
                                  (declare (not safe))
                                  (cons _e66930_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68037))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68036))))
            (if (macro-number-of-arguments-limit-exception? _exn66927_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn66927_)
                (let ((__tmp68034
                       (let ((__tmp68035
                              (let ()
                                (declare (not safe))
                                (cons _exn66927_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68035))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68034))))))
    (define os-exception?
      (lambda (_exn66923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66923_))
            (let ((_e66925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66923_ 'exception))))
              (macro-os-exception? _e66925_))
            (macro-os-exception? _exn66923_))))
    (define os-exception-arguments
      (lambda (_exn66919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66919_))
            (let ((_e66921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66919_ 'exception))))
              (if (macro-os-exception? _e66921_)
                  (macro-os-exception-arguments _e66921_)
                  (let ((__tmp68040
                         (let ((__tmp68041
                                (let ()
                                  (declare (not safe))
                                  (cons _e66921_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68041))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68040))))
            (if (macro-os-exception? _exn66919_)
                (macro-os-exception-arguments _exn66919_)
                (let ((__tmp68038
                       (let ((__tmp68039
                              (let ()
                                (declare (not safe))
                                (cons _exn66919_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68039))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68038))))))
    (define os-exception-code
      (lambda (_exn66915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66915_))
            (let ((_e66917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66915_ 'exception))))
              (if (macro-os-exception? _e66917_)
                  (macro-os-exception-code _e66917_)
                  (let ((__tmp68044
                         (let ((__tmp68045
                                (let ()
                                  (declare (not safe))
                                  (cons _e66917_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68045))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68044))))
            (if (macro-os-exception? _exn66915_)
                (macro-os-exception-code _exn66915_)
                (let ((__tmp68042
                       (let ((__tmp68043
                              (let ()
                                (declare (not safe))
                                (cons _exn66915_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68043))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68042))))))
    (define os-exception-message
      (lambda (_exn66911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66911_))
            (let ((_e66913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66911_ 'exception))))
              (if (macro-os-exception? _e66913_)
                  (macro-os-exception-message _e66913_)
                  (let ((__tmp68048
                         (let ((__tmp68049
                                (let ()
                                  (declare (not safe))
                                  (cons _e66913_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68049))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68048))))
            (if (macro-os-exception? _exn66911_)
                (macro-os-exception-message _exn66911_)
                (let ((__tmp68046
                       (let ((__tmp68047
                              (let ()
                                (declare (not safe))
                                (cons _exn66911_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68047))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68046))))))
    (define os-exception-procedure
      (lambda (_exn66905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66905_))
            (let ((_e66908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66905_ 'exception))))
              (if (macro-os-exception? _e66908_)
                  (macro-os-exception-procedure _e66908_)
                  (let ((__tmp68052
                         (let ((__tmp68053
                                (let ()
                                  (declare (not safe))
                                  (cons _e66908_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68053))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68052))))
            (if (macro-os-exception? _exn66905_)
                (macro-os-exception-procedure _exn66905_)
                (let ((__tmp68050
                       (let ((__tmp68051
                              (let ()
                                (declare (not safe))
                                (cons _exn66905_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68051))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68050))))))
    (define permission-denied-exception?
      (lambda (_exn66901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66901_))
            (let ((_e66903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66901_ 'exception))))
              (macro-permission-denied-exception? _e66903_))
            (macro-permission-denied-exception? _exn66901_))))
    (define permission-denied-exception-arguments
      (lambda (_exn66897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66897_))
            (let ((_e66899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66897_ 'exception))))
              (if (macro-permission-denied-exception? _e66899_)
                  (macro-permission-denied-exception-arguments _e66899_)
                  (let ((__tmp68056
                         (let ((__tmp68057
                                (let ()
                                  (declare (not safe))
                                  (cons _e66899_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68057))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68056))))
            (if (macro-permission-denied-exception? _exn66897_)
                (macro-permission-denied-exception-arguments _exn66897_)
                (let ((__tmp68054
                       (let ((__tmp68055
                              (let ()
                                (declare (not safe))
                                (cons _exn66897_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68055))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68054))))))
    (define permission-denied-exception-procedure
      (lambda (_exn66891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66891_))
            (let ((_e66894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66891_ 'exception))))
              (if (macro-permission-denied-exception? _e66894_)
                  (macro-permission-denied-exception-procedure _e66894_)
                  (let ((__tmp68060
                         (let ((__tmp68061
                                (let ()
                                  (declare (not safe))
                                  (cons _e66894_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68061))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68060))))
            (if (macro-permission-denied-exception? _exn66891_)
                (macro-permission-denied-exception-procedure _exn66891_)
                (let ((__tmp68058
                       (let ((__tmp68059
                              (let ()
                                (declare (not safe))
                                (cons _exn66891_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68059))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68058))))))
    (define range-exception?
      (lambda (_exn66887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66887_))
            (let ((_e66889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66887_ 'exception))))
              (macro-range-exception? _e66889_))
            (macro-range-exception? _exn66887_))))
    (define range-exception-arg-id
      (lambda (_exn66883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66883_))
            (let ((_e66885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66883_ 'exception))))
              (if (macro-range-exception? _e66885_)
                  (macro-range-exception-arg-id _e66885_)
                  (let ((__tmp68064
                         (let ((__tmp68065
                                (let ()
                                  (declare (not safe))
                                  (cons _e66885_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68065))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68064))))
            (if (macro-range-exception? _exn66883_)
                (macro-range-exception-arg-id _exn66883_)
                (let ((__tmp68062
                       (let ((__tmp68063
                              (let ()
                                (declare (not safe))
                                (cons _exn66883_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68063))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68062))))))
    (define range-exception-arguments
      (lambda (_exn66879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66879_))
            (let ((_e66881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66879_ 'exception))))
              (if (macro-range-exception? _e66881_)
                  (macro-range-exception-arguments _e66881_)
                  (let ((__tmp68068
                         (let ((__tmp68069
                                (let ()
                                  (declare (not safe))
                                  (cons _e66881_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68069))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68068))))
            (if (macro-range-exception? _exn66879_)
                (macro-range-exception-arguments _exn66879_)
                (let ((__tmp68066
                       (let ((__tmp68067
                              (let ()
                                (declare (not safe))
                                (cons _exn66879_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68067))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68066))))))
    (define range-exception-procedure
      (lambda (_exn66873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66873_))
            (let ((_e66876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66873_ 'exception))))
              (if (macro-range-exception? _e66876_)
                  (macro-range-exception-procedure _e66876_)
                  (let ((__tmp68072
                         (let ((__tmp68073
                                (let ()
                                  (declare (not safe))
                                  (cons _e66876_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68073))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68072))))
            (if (macro-range-exception? _exn66873_)
                (macro-range-exception-procedure _exn66873_)
                (let ((__tmp68070
                       (let ((__tmp68071
                              (let ()
                                (declare (not safe))
                                (cons _exn66873_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68071))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68070))))))
    (define rpc-remote-error-exception?
      (lambda (_exn66869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66869_))
            (let ((_e66871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66869_ 'exception))))
              (macro-rpc-remote-error-exception? _e66871_))
            (macro-rpc-remote-error-exception? _exn66869_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn66865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66865_))
            (let ((_e66867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66865_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66867_)
                  (macro-rpc-remote-error-exception-arguments _e66867_)
                  (let ((__tmp68076
                         (let ((__tmp68077
                                (let ()
                                  (declare (not safe))
                                  (cons _e66867_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68077))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68076))))
            (if (macro-rpc-remote-error-exception? _exn66865_)
                (macro-rpc-remote-error-exception-arguments _exn66865_)
                (let ((__tmp68074
                       (let ((__tmp68075
                              (let ()
                                (declare (not safe))
                                (cons _exn66865_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68075))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68074))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn66861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66861_))
            (let ((_e66863_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66861_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66863_)
                  (macro-rpc-remote-error-exception-message _e66863_)
                  (let ((__tmp68080
                         (let ((__tmp68081
                                (let ()
                                  (declare (not safe))
                                  (cons _e66863_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68081))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68080))))
            (if (macro-rpc-remote-error-exception? _exn66861_)
                (macro-rpc-remote-error-exception-message _exn66861_)
                (let ((__tmp68078
                       (let ((__tmp68079
                              (let ()
                                (declare (not safe))
                                (cons _exn66861_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68079))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68078))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn66855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66855_))
            (let ((_e66858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66855_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66858_)
                  (macro-rpc-remote-error-exception-procedure _e66858_)
                  (let ((__tmp68084
                         (let ((__tmp68085
                                (let ()
                                  (declare (not safe))
                                  (cons _e66858_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68085))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68084))))
            (if (macro-rpc-remote-error-exception? _exn66855_)
                (macro-rpc-remote-error-exception-procedure _exn66855_)
                (let ((__tmp68082
                       (let ((__tmp68083
                              (let ()
                                (declare (not safe))
                                (cons _exn66855_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68083))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68082))))))
    (define scheduler-exception?
      (lambda (_exn66851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66851_))
            (let ((_e66853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66851_ 'exception))))
              (macro-scheduler-exception? _e66853_))
            (macro-scheduler-exception? _exn66851_))))
    (define scheduler-exception-reason
      (lambda (_exn66845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66845_))
            (let ((_e66848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66845_ 'exception))))
              (if (macro-scheduler-exception? _e66848_)
                  (macro-scheduler-exception-reason _e66848_)
                  (let ((__tmp68088
                         (let ((__tmp68089
                                (let ()
                                  (declare (not safe))
                                  (cons _e66848_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68089))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68088))))
            (if (macro-scheduler-exception? _exn66845_)
                (macro-scheduler-exception-reason _exn66845_)
                (let ((__tmp68086
                       (let ((__tmp68087
                              (let ()
                                (declare (not safe))
                                (cons _exn66845_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68087))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68086))))))
    (define sfun-conversion-exception?
      (lambda (_exn66841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66841_))
            (let ((_e66843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66841_ 'exception))))
              (macro-sfun-conversion-exception? _e66843_))
            (macro-sfun-conversion-exception? _exn66841_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn66837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66837_))
            (let ((_e66839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66837_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66839_)
                  (macro-sfun-conversion-exception-arguments _e66839_)
                  (let ((__tmp68092
                         (let ((__tmp68093
                                (let ()
                                  (declare (not safe))
                                  (cons _e66839_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68093))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68092))))
            (if (macro-sfun-conversion-exception? _exn66837_)
                (macro-sfun-conversion-exception-arguments _exn66837_)
                (let ((__tmp68090
                       (let ((__tmp68091
                              (let ()
                                (declare (not safe))
                                (cons _exn66837_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68091))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68090))))))
    (define sfun-conversion-exception-code
      (lambda (_exn66833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66833_))
            (let ((_e66835_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66833_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66835_)
                  (macro-sfun-conversion-exception-code _e66835_)
                  (let ((__tmp68096
                         (let ((__tmp68097
                                (let ()
                                  (declare (not safe))
                                  (cons _e66835_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68097))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68096))))
            (if (macro-sfun-conversion-exception? _exn66833_)
                (macro-sfun-conversion-exception-code _exn66833_)
                (let ((__tmp68094
                       (let ((__tmp68095
                              (let ()
                                (declare (not safe))
                                (cons _exn66833_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68095))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68094))))))
    (define sfun-conversion-exception-message
      (lambda (_exn66829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66829_))
            (let ((_e66831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66829_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66831_)
                  (macro-sfun-conversion-exception-message _e66831_)
                  (let ((__tmp68100
                         (let ((__tmp68101
                                (let ()
                                  (declare (not safe))
                                  (cons _e66831_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68101))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68100))))
            (if (macro-sfun-conversion-exception? _exn66829_)
                (macro-sfun-conversion-exception-message _exn66829_)
                (let ((__tmp68098
                       (let ((__tmp68099
                              (let ()
                                (declare (not safe))
                                (cons _exn66829_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68099))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68098))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn66823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66823_))
            (let ((_e66826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66823_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66826_)
                  (macro-sfun-conversion-exception-procedure _e66826_)
                  (let ((__tmp68104
                         (let ((__tmp68105
                                (let ()
                                  (declare (not safe))
                                  (cons _e66826_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68105))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68104))))
            (if (macro-sfun-conversion-exception? _exn66823_)
                (macro-sfun-conversion-exception-procedure _exn66823_)
                (let ((__tmp68102
                       (let ((__tmp68103
                              (let ()
                                (declare (not safe))
                                (cons _exn66823_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68103))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68102))))))
    (define stack-overflow-exception?
      (lambda (_exn66817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66817_))
            (let ((_e66820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66817_ 'exception))))
              (macro-stack-overflow-exception? _e66820_))
            (macro-stack-overflow-exception? _exn66817_))))
    (define started-thread-exception?
      (lambda (_exn66813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66813_))
            (let ((_e66815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66813_ 'exception))))
              (macro-started-thread-exception? _e66815_))
            (macro-started-thread-exception? _exn66813_))))
    (define started-thread-exception-arguments
      (lambda (_exn66809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66809_))
            (let ((_e66811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66809_ 'exception))))
              (if (macro-started-thread-exception? _e66811_)
                  (macro-started-thread-exception-arguments _e66811_)
                  (let ((__tmp68108
                         (let ((__tmp68109
                                (let ()
                                  (declare (not safe))
                                  (cons _e66811_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68109))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68108))))
            (if (macro-started-thread-exception? _exn66809_)
                (macro-started-thread-exception-arguments _exn66809_)
                (let ((__tmp68106
                       (let ((__tmp68107
                              (let ()
                                (declare (not safe))
                                (cons _exn66809_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68107))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68106))))))
    (define started-thread-exception-procedure
      (lambda (_exn66803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66803_))
            (let ((_e66806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66803_ 'exception))))
              (if (macro-started-thread-exception? _e66806_)
                  (macro-started-thread-exception-procedure _e66806_)
                  (let ((__tmp68112
                         (let ((__tmp68113
                                (let ()
                                  (declare (not safe))
                                  (cons _e66806_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68113))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68112))))
            (if (macro-started-thread-exception? _exn66803_)
                (macro-started-thread-exception-procedure _exn66803_)
                (let ((__tmp68110
                       (let ((__tmp68111
                              (let ()
                                (declare (not safe))
                                (cons _exn66803_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68111))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68110))))))
    (define terminated-thread-exception?
      (lambda (_exn66799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66799_))
            (let ((_e66801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66799_ 'exception))))
              (macro-terminated-thread-exception? _e66801_))
            (macro-terminated-thread-exception? _exn66799_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn66795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66795_))
            (let ((_e66797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66795_ 'exception))))
              (if (macro-terminated-thread-exception? _e66797_)
                  (macro-terminated-thread-exception-arguments _e66797_)
                  (let ((__tmp68116
                         (let ((__tmp68117
                                (let ()
                                  (declare (not safe))
                                  (cons _e66797_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68117))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68116))))
            (if (macro-terminated-thread-exception? _exn66795_)
                (macro-terminated-thread-exception-arguments _exn66795_)
                (let ((__tmp68114
                       (let ((__tmp68115
                              (let ()
                                (declare (not safe))
                                (cons _exn66795_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68115))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68114))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn66789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66789_))
            (let ((_e66792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66789_ 'exception))))
              (if (macro-terminated-thread-exception? _e66792_)
                  (macro-terminated-thread-exception-procedure _e66792_)
                  (let ((__tmp68120
                         (let ((__tmp68121
                                (let ()
                                  (declare (not safe))
                                  (cons _e66792_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68121))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68120))))
            (if (macro-terminated-thread-exception? _exn66789_)
                (macro-terminated-thread-exception-procedure _exn66789_)
                (let ((__tmp68118
                       (let ((__tmp68119
                              (let ()
                                (declare (not safe))
                                (cons _exn66789_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68119))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68118))))))
    (define type-exception?
      (lambda (_exn66785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66785_))
            (let ((_e66787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66785_ 'exception))))
              (macro-type-exception? _e66787_))
            (macro-type-exception? _exn66785_))))
    (define type-exception-arg-id
      (lambda (_exn66781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66781_))
            (let ((_e66783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66781_ 'exception))))
              (if (macro-type-exception? _e66783_)
                  (macro-type-exception-arg-id _e66783_)
                  (let ((__tmp68124
                         (let ((__tmp68125
                                (let ()
                                  (declare (not safe))
                                  (cons _e66783_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68125))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68124))))
            (if (macro-type-exception? _exn66781_)
                (macro-type-exception-arg-id _exn66781_)
                (let ((__tmp68122
                       (let ((__tmp68123
                              (let ()
                                (declare (not safe))
                                (cons _exn66781_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68123))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68122))))))
    (define type-exception-arguments
      (lambda (_exn66777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66777_))
            (let ((_e66779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66777_ 'exception))))
              (if (macro-type-exception? _e66779_)
                  (macro-type-exception-arguments _e66779_)
                  (let ((__tmp68128
                         (let ((__tmp68129
                                (let ()
                                  (declare (not safe))
                                  (cons _e66779_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68129))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68128))))
            (if (macro-type-exception? _exn66777_)
                (macro-type-exception-arguments _exn66777_)
                (let ((__tmp68126
                       (let ((__tmp68127
                              (let ()
                                (declare (not safe))
                                (cons _exn66777_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68127))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68126))))))
    (define type-exception-procedure
      (lambda (_exn66773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66773_))
            (let ((_e66775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66773_ 'exception))))
              (if (macro-type-exception? _e66775_)
                  (macro-type-exception-procedure _e66775_)
                  (let ((__tmp68132
                         (let ((__tmp68133
                                (let ()
                                  (declare (not safe))
                                  (cons _e66775_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68133))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68132))))
            (if (macro-type-exception? _exn66773_)
                (macro-type-exception-procedure _exn66773_)
                (let ((__tmp68130
                       (let ((__tmp68131
                              (let ()
                                (declare (not safe))
                                (cons _exn66773_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68131))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68130))))))
    (define type-exception-type-id
      (lambda (_exn66767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66767_))
            (let ((_e66770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66767_ 'exception))))
              (if (macro-type-exception? _e66770_)
                  (macro-type-exception-type-id _e66770_)
                  (let ((__tmp68136
                         (let ((__tmp68137
                                (let ()
                                  (declare (not safe))
                                  (cons _e66770_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68137))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68136))))
            (if (macro-type-exception? _exn66767_)
                (macro-type-exception-type-id _exn66767_)
                (let ((__tmp68134
                       (let ((__tmp68135
                              (let ()
                                (declare (not safe))
                                (cons _exn66767_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68135))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68134))))))
    (define unbound-global-exception?
      (lambda (_exn66763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66763_))
            (let ((_e66765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66763_ 'exception))))
              (macro-unbound-global-exception? _e66765_))
            (macro-unbound-global-exception? _exn66763_))))
    (define unbound-global-exception-code
      (lambda (_exn66759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66759_))
            (let ((_e66761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66759_ 'exception))))
              (if (macro-unbound-global-exception? _e66761_)
                  (macro-unbound-global-exception-code _e66761_)
                  (let ((__tmp68140
                         (let ((__tmp68141
                                (let ()
                                  (declare (not safe))
                                  (cons _e66761_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68141))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68140))))
            (if (macro-unbound-global-exception? _exn66759_)
                (macro-unbound-global-exception-code _exn66759_)
                (let ((__tmp68138
                       (let ((__tmp68139
                              (let ()
                                (declare (not safe))
                                (cons _exn66759_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68139))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68138))))))
    (define unbound-global-exception-rte
      (lambda (_exn66755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66755_))
            (let ((_e66757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66755_ 'exception))))
              (if (macro-unbound-global-exception? _e66757_)
                  (macro-unbound-global-exception-rte _e66757_)
                  (let ((__tmp68144
                         (let ((__tmp68145
                                (let ()
                                  (declare (not safe))
                                  (cons _e66757_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68145))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68144))))
            (if (macro-unbound-global-exception? _exn66755_)
                (macro-unbound-global-exception-rte _exn66755_)
                (let ((__tmp68142
                       (let ((__tmp68143
                              (let ()
                                (declare (not safe))
                                (cons _exn66755_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68143))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68142))))))
    (define unbound-global-exception-variable
      (lambda (_exn66749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66749_))
            (let ((_e66752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66749_ 'exception))))
              (if (macro-unbound-global-exception? _e66752_)
                  (macro-unbound-global-exception-variable _e66752_)
                  (let ((__tmp68148
                         (let ((__tmp68149
                                (let ()
                                  (declare (not safe))
                                  (cons _e66752_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68149))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68148))))
            (if (macro-unbound-global-exception? _exn66749_)
                (macro-unbound-global-exception-variable _exn66749_)
                (let ((__tmp68146
                       (let ((__tmp68147
                              (let ()
                                (declare (not safe))
                                (cons _exn66749_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68147))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68146))))))
    (define unbound-key-exception?
      (lambda (_exn66745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66745_))
            (let ((_e66747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66745_ 'exception))))
              (macro-unbound-key-exception? _e66747_))
            (macro-unbound-key-exception? _exn66745_))))
    (define unbound-key-exception-arguments
      (lambda (_exn66741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66741_))
            (let ((_e66743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66741_ 'exception))))
              (if (macro-unbound-key-exception? _e66743_)
                  (macro-unbound-key-exception-arguments _e66743_)
                  (let ((__tmp68152
                         (let ((__tmp68153
                                (let ()
                                  (declare (not safe))
                                  (cons _e66743_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68153))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68152))))
            (if (macro-unbound-key-exception? _exn66741_)
                (macro-unbound-key-exception-arguments _exn66741_)
                (let ((__tmp68150
                       (let ((__tmp68151
                              (let ()
                                (declare (not safe))
                                (cons _exn66741_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68151))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68150))))))
    (define unbound-key-exception-procedure
      (lambda (_exn66735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66735_))
            (let ((_e66738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66735_ 'exception))))
              (if (macro-unbound-key-exception? _e66738_)
                  (macro-unbound-key-exception-procedure _e66738_)
                  (let ((__tmp68156
                         (let ((__tmp68157
                                (let ()
                                  (declare (not safe))
                                  (cons _e66738_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68157))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68156))))
            (if (macro-unbound-key-exception? _exn66735_)
                (macro-unbound-key-exception-procedure _exn66735_)
                (let ((__tmp68154
                       (let ((__tmp68155
                              (let ()
                                (declare (not safe))
                                (cons _exn66735_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68155))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68154))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn66731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66731_))
            (let ((_e66733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66731_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e66733_))
            (macro-unbound-os-environment-variable-exception? _exn66731_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn66727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66727_))
            (let ((_e66729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66727_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e66729_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e66729_)
                  (let ((__tmp68160
                         (let ((__tmp68161
                                (let ()
                                  (declare (not safe))
                                  (cons _e66729_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68161))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68160))))
            (if (macro-unbound-os-environment-variable-exception? _exn66727_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn66727_)
                (let ((__tmp68158
                       (let ((__tmp68159
                              (let ()
                                (declare (not safe))
                                (cons _exn66727_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68159))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68158))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn66721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66721_))
            (let ((_e66724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66721_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e66724_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e66724_)
                  (let ((__tmp68164
                         (let ((__tmp68165
                                (let ()
                                  (declare (not safe))
                                  (cons _e66724_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68165))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68164))))
            (if (macro-unbound-os-environment-variable-exception? _exn66721_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn66721_)
                (let ((__tmp68162
                       (let ((__tmp68163
                              (let ()
                                (declare (not safe))
                                (cons _exn66721_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68163))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68162))))))
    (define unbound-serial-number-exception?
      (lambda (_exn66717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66717_))
            (let ((_e66719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66717_ 'exception))))
              (macro-unbound-serial-number-exception? _e66719_))
            (macro-unbound-serial-number-exception? _exn66717_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn66713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66713_))
            (let ((_e66715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66713_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e66715_)
                  (macro-unbound-serial-number-exception-arguments _e66715_)
                  (let ((__tmp68168
                         (let ((__tmp68169
                                (let ()
                                  (declare (not safe))
                                  (cons _e66715_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68169))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68168))))
            (if (macro-unbound-serial-number-exception? _exn66713_)
                (macro-unbound-serial-number-exception-arguments _exn66713_)
                (let ((__tmp68166
                       (let ((__tmp68167
                              (let ()
                                (declare (not safe))
                                (cons _exn66713_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68167))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68166))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn66707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66707_))
            (let ((_e66710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66707_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e66710_)
                  (macro-unbound-serial-number-exception-procedure _e66710_)
                  (let ((__tmp68172
                         (let ((__tmp68173
                                (let ()
                                  (declare (not safe))
                                  (cons _e66710_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68173))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68172))))
            (if (macro-unbound-serial-number-exception? _exn66707_)
                (macro-unbound-serial-number-exception-procedure _exn66707_)
                (let ((__tmp68170
                       (let ((__tmp68171
                              (let ()
                                (declare (not safe))
                                (cons _exn66707_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68171))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68170))))))
    (define uncaught-exception?
      (lambda (_exn66703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66703_))
            (let ((_e66705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66703_ 'exception))))
              (macro-uncaught-exception? _e66705_))
            (macro-uncaught-exception? _exn66703_))))
    (define uncaught-exception-arguments
      (lambda (_exn66699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66699_))
            (let ((_e66701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66699_ 'exception))))
              (if (macro-uncaught-exception? _e66701_)
                  (macro-uncaught-exception-arguments _e66701_)
                  (let ((__tmp68176
                         (let ((__tmp68177
                                (let ()
                                  (declare (not safe))
                                  (cons _e66701_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68177))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68176))))
            (if (macro-uncaught-exception? _exn66699_)
                (macro-uncaught-exception-arguments _exn66699_)
                (let ((__tmp68174
                       (let ((__tmp68175
                              (let ()
                                (declare (not safe))
                                (cons _exn66699_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68175))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68174))))))
    (define uncaught-exception-procedure
      (lambda (_exn66695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66695_))
            (let ((_e66697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66695_ 'exception))))
              (if (macro-uncaught-exception? _e66697_)
                  (macro-uncaught-exception-procedure _e66697_)
                  (let ((__tmp68180
                         (let ((__tmp68181
                                (let ()
                                  (declare (not safe))
                                  (cons _e66697_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68181))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68180))))
            (if (macro-uncaught-exception? _exn66695_)
                (macro-uncaught-exception-procedure _exn66695_)
                (let ((__tmp68178
                       (let ((__tmp68179
                              (let ()
                                (declare (not safe))
                                (cons _exn66695_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68179))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68178))))))
    (define uncaught-exception-reason
      (lambda (_exn66689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66689_))
            (let ((_e66692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66689_ 'exception))))
              (if (macro-uncaught-exception? _e66692_)
                  (macro-uncaught-exception-reason _e66692_)
                  (let ((__tmp68184
                         (let ((__tmp68185
                                (let ()
                                  (declare (not safe))
                                  (cons _e66692_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68185))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68184))))
            (if (macro-uncaught-exception? _exn66689_)
                (macro-uncaught-exception-reason _exn66689_)
                (let ((__tmp68182
                       (let ((__tmp68183
                              (let ()
                                (declare (not safe))
                                (cons _exn66689_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68183))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68182))))))
    (define uninitialized-thread-exception?
      (lambda (_exn66685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66685_))
            (let ((_e66687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66685_ 'exception))))
              (macro-uninitialized-thread-exception? _e66687_))
            (macro-uninitialized-thread-exception? _exn66685_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn66681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66681_))
            (let ((_e66683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66681_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e66683_)
                  (macro-uninitialized-thread-exception-arguments _e66683_)
                  (let ((__tmp68188
                         (let ((__tmp68189
                                (let ()
                                  (declare (not safe))
                                  (cons _e66683_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68189))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68188))))
            (if (macro-uninitialized-thread-exception? _exn66681_)
                (macro-uninitialized-thread-exception-arguments _exn66681_)
                (let ((__tmp68186
                       (let ((__tmp68187
                              (let ()
                                (declare (not safe))
                                (cons _exn66681_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68187))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68186))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn66675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66675_))
            (let ((_e66678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66675_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e66678_)
                  (macro-uninitialized-thread-exception-procedure _e66678_)
                  (let ((__tmp68192
                         (let ((__tmp68193
                                (let ()
                                  (declare (not safe))
                                  (cons _e66678_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68193))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68192))))
            (if (macro-uninitialized-thread-exception? _exn66675_)
                (macro-uninitialized-thread-exception-procedure _exn66675_)
                (let ((__tmp68190
                       (let ((__tmp68191
                              (let ()
                                (declare (not safe))
                                (cons _exn66675_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68191))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68190))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn66671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66671_))
            (let ((_e66673_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66671_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e66673_))
            (macro-unknown-keyword-argument-exception? _exn66671_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn66667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66667_))
            (let ((_e66669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66667_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e66669_)
                  (macro-unknown-keyword-argument-exception-arguments _e66669_)
                  (let ((__tmp68196
                         (let ((__tmp68197
                                (let ()
                                  (declare (not safe))
                                  (cons _e66669_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68197))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68196))))
            (if (macro-unknown-keyword-argument-exception? _exn66667_)
                (macro-unknown-keyword-argument-exception-arguments _exn66667_)
                (let ((__tmp68194
                       (let ((__tmp68195
                              (let ()
                                (declare (not safe))
                                (cons _exn66667_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68195))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68194))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn66661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66661_))
            (let ((_e66664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66661_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e66664_)
                  (macro-unknown-keyword-argument-exception-procedure _e66664_)
                  (let ((__tmp68200
                         (let ((__tmp68201
                                (let ()
                                  (declare (not safe))
                                  (cons _e66664_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68201))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68200))))
            (if (macro-unknown-keyword-argument-exception? _exn66661_)
                (macro-unknown-keyword-argument-exception-procedure _exn66661_)
                (let ((__tmp68198
                       (let ((__tmp68199
                              (let ()
                                (declare (not safe))
                                (cons _exn66661_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68199))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68198))))))
    (define unterminated-process-exception?
      (lambda (_exn66657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66657_))
            (let ((_e66659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66657_ 'exception))))
              (macro-unterminated-process-exception? _e66659_))
            (macro-unterminated-process-exception? _exn66657_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn66653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66653_))
            (let ((_e66655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66653_ 'exception))))
              (if (macro-unterminated-process-exception? _e66655_)
                  (macro-unterminated-process-exception-arguments _e66655_)
                  (let ((__tmp68204
                         (let ((__tmp68205
                                (let ()
                                  (declare (not safe))
                                  (cons _e66655_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68205))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68204))))
            (if (macro-unterminated-process-exception? _exn66653_)
                (macro-unterminated-process-exception-arguments _exn66653_)
                (let ((__tmp68202
                       (let ((__tmp68203
                              (let ()
                                (declare (not safe))
                                (cons _exn66653_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68203))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68202))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn66647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66647_))
            (let ((_e66650_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66647_ 'exception))))
              (if (macro-unterminated-process-exception? _e66650_)
                  (macro-unterminated-process-exception-procedure _e66650_)
                  (let ((__tmp68208
                         (let ((__tmp68209
                                (let ()
                                  (declare (not safe))
                                  (cons _e66650_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68209))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68208))))
            (if (macro-unterminated-process-exception? _exn66647_)
                (macro-unterminated-process-exception-procedure _exn66647_)
                (let ((__tmp68206
                       (let ((__tmp68207
                              (let ()
                                (declare (not safe))
                                (cons _exn66647_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68207))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68206))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn66643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66643_))
            (let ((_e66645_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66643_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e66645_))
            (macro-wrong-number-of-arguments-exception? _exn66643_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn66639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66639_))
            (let ((_e66641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66639_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66641_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e66641_)
                  (let ((__tmp68212
                         (let ((__tmp68213
                                (let ()
                                  (declare (not safe))
                                  (cons _e66641_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68213))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68212))))
            (if (macro-wrong-number-of-arguments-exception? _exn66639_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn66639_)
                (let ((__tmp68210
                       (let ((__tmp68211
                              (let ()
                                (declare (not safe))
                                (cons _exn66639_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68211))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68210))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn66633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66633_))
            (let ((_e66636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66633_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66636_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e66636_)
                  (let ((__tmp68216
                         (let ((__tmp68217
                                (let ()
                                  (declare (not safe))
                                  (cons _e66636_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68217))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68216))))
            (if (macro-wrong-number-of-arguments-exception? _exn66633_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn66633_)
                (let ((__tmp68214
                       (let ((__tmp68215
                              (let ()
                                (declare (not safe))
                                (cons _exn66633_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68215))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68214))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn66629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66629_))
            (let ((_e66631_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66629_ 'exception))))
              (macro-wrong-number-of-values-exception? _e66631_))
            (macro-wrong-number-of-values-exception? _exn66629_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn66625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66625_))
            (let ((_e66627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66625_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66627_)
                  (macro-wrong-number-of-values-exception-code _e66627_)
                  (let ((__tmp68220
                         (let ((__tmp68221
                                (let ()
                                  (declare (not safe))
                                  (cons _e66627_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68221))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68220))))
            (if (macro-wrong-number-of-values-exception? _exn66625_)
                (macro-wrong-number-of-values-exception-code _exn66625_)
                (let ((__tmp68218
                       (let ((__tmp68219
                              (let ()
                                (declare (not safe))
                                (cons _exn66625_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68219))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68218))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn66621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66621_))
            (let ((_e66623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66621_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66623_)
                  (macro-wrong-number-of-values-exception-rte _e66623_)
                  (let ((__tmp68224
                         (let ((__tmp68225
                                (let ()
                                  (declare (not safe))
                                  (cons _e66623_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68225))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68224))))
            (if (macro-wrong-number-of-values-exception? _exn66621_)
                (macro-wrong-number-of-values-exception-rte _exn66621_)
                (let ((__tmp68222
                       (let ((__tmp68223
                              (let ()
                                (declare (not safe))
                                (cons _exn66621_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68223))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68222))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn66615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66615_))
            (let ((_e66618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66615_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66618_)
                  (macro-wrong-number-of-values-exception-vals _e66618_)
                  (let ((__tmp68228
                         (let ((__tmp68229
                                (let ()
                                  (declare (not safe))
                                  (cons _e66618_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68229))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68228))))
            (if (macro-wrong-number-of-values-exception? _exn66615_)
                (macro-wrong-number-of-values-exception-vals _exn66615_)
                (let ((__tmp68226
                       (let ((__tmp68227
                              (let ()
                                (declare (not safe))
                                (cons _exn66615_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68227))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68226))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn66609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66609_))
            (let ((_e66612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66609_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e66612_))
            (macro-wrong-processor-c-return-exception? _exn66609_))))))
