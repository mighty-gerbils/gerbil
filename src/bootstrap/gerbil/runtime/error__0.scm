(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707847726)
  (begin
    (define Exception::t
      (let ((__tmp97180 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp97180
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args92583_ (apply make-instance Exception::t _$args92583_)))
    (define StackTrace::t
      (let ((__tmp97181 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp97181
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args92580_ (apply make-instance StackTrace::t _$args92580_)))
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
      (let ((__tmp97182 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp97182
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args92577_ (apply make-instance Error::t _$args92577_)))
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
      (let ((__tmp97183 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp97183
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args92574_
        (apply make-instance RuntimeException::t _$args92574_)))
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
      (lambda (_exn92569_ _continue92570_)
        (let ((_exn92572_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn92569_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn92572_ _continue92570_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn92565_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn92565_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn92565_ 'continuation))
                '#!void
                (let ((__tmp97184
                       (lambda (_cont92567_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn92565_
                            'continuation
                            _cont92567_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp97184)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn92565_))))
    (define error
      (lambda (_message92562_ . _irritants92563_)
        (raise (let ((__obj97174
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj97174
                  _message92562_
                  'irritants:
                  _irritants92563_)
                 __obj97174))))
    (define with-exception-handler
      (lambda (_handler92555_ _thunk92556_)
        (if (let () (declare (not safe)) (procedure? _handler92555_))
            '#!void
            (raise (let ((__obj97175
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97175
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92555_ '())))
                     __obj97175)))
        (if (let () (declare (not safe)) (procedure? _thunk92556_))
            '#!void
            (raise (let ((__obj97176
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97176
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92556_ '())))
                     __obj97176)))
        (let ((__tmp97185
               (lambda (_exn92558_)
                 (let ((_exn92560_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn92558_))))
                   (_handler92555_ _exn92560_)))))
          (declare (not safe))
          (##with-exception-handler __tmp97185 _thunk92556_))))
    (define with-catch
      (lambda (_handler92548_ _thunk92549_)
        (if (let () (declare (not safe)) (procedure? _handler92548_))
            '#!void
            (raise (let ((__obj97177
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97177
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92548_ '())))
                     __obj97177)))
        (if (let () (declare (not safe)) (procedure? _thunk92549_))
            '#!void
            (raise (let ((__obj97178
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97178
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92549_ '())))
                     __obj97178)))
        (let ((__tmp97186
               (lambda (_cont92551_)
                 (with-exception-handler
                  (lambda (_exn92553_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont92551_
                       _handler92548_
                       _exn92553_)))
                  _thunk92549_))))
          (declare (not safe))
          (##continuation-capture __tmp97186))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn92539_)
        (if (or (heap-overflow-exception? _exn92539_)
                (stack-overflow-exception? _exn92539_))
            _exn92539_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn92539_))
                _exn92539_
                (if (macro-exception? _exn92539_)
                    (let ((_rte92544_
                           (let ((__obj97179
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj97179
                                _exn92539_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj97179)))
                      (let ((__tmp97187
                             (lambda (_cont92546_)
                               (let ((__tmp97188
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont92546_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte92544_
                                  'continuation
                                  __tmp97188)))))
                        (declare (not safe))
                        (##continuation-capture __tmp97187))
                      _rte92544_)
                    _exn92539_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj92534_)
        (let ((_$e92536_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj92534_))))
          (if _$e92536_ _$e92536_ (error-exception? _obj92534_)))))
    (define error-message
      (lambda (_obj92532_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92532_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92532_ 'message))
            (if (error-exception? _obj92532_)
                (error-exception-message _obj92532_)
                '#f))))
    (define error-irritants
      (lambda (_obj92530_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92530_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92530_ 'irritants))
            (if (error-exception? _obj92530_)
                (error-exception-parameters _obj92530_)
                '#f))))
    (define error-trace
      (lambda (_obj92528_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92528_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92528_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e92510_ _port92511_)
        (let ((_$e92513_
               (let ()
                 (declare (not safe))
                 (method-ref _e92510_ 'display-exception))))
          (if _$e92513_
              ((lambda (_f92516_) (_f92516_ _e92510_ _port92511_)) _$e92513_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e92510_ _port92511_))))))
    (define display-exception__0
      (lambda (_e92521_)
        (let ((_port92523_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e92521_ _port92523_))))
    (define display-exception
      (lambda _g97190_
        (let ((_g97189_ (let () (declare (not safe)) (##length _g97190_))))
          (cond ((let () (declare (not safe)) (##fx= _g97189_ 1))
                 (apply (lambda (_e92521_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e92521_)))
                        _g97190_))
                ((let () (declare (not safe)) (##fx= _g97189_ 2))
                 (apply (lambda (_e92525_ _port92526_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e92525_ _port92526_)))
                        _g97190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g97190_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self92499_ _message92500_ . _rest92501_)
        (let ((_message92507_
               (if (let () (declare (not safe)) (string? _message92500_))
                   _message92500_
                   (call-with-output-string
                    '""
                    (lambda (_g9250292504_)
                      (display _message92500_ _g9250292504_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self92499_ 'message _message92507_))
          (apply class-instance-init! _self92499_ _rest92501_))))
    (define Error:::init!::specialize
      (lambda (__t97153)
        (let ((__message97154
               (let ((__tmp97155
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97153 'message))))
                 (if __tmp97155 __tmp97155 (error '"Unknown slot" 'message)))))
          (lambda (_self92499_ _message92500_ . _rest92501_)
            (let ((_message92507_
                   (if (let () (declare (not safe)) (string? _message92500_))
                       _message92500_
                       (call-with-output-string
                        '""
                        (lambda (_g9250292504_)
                          (display _message92500_ _g9250292504_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self92499_
                 _message92507_
                 __message97154
                 __t97153
                 '#f))
              (apply class-instance-init! _self92499_ _rest92501_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self92357_ _port92358_)
        (let ((_tmp-port92360_ (open-output-string))
              (_display-error-newline92361_
               (> (output-port-column _port92358_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92360_))
          (let ((__tmp97191
                 (lambda ()
                   (if _display-error-newline92361_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e92364_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92357_ 'where))))
                     (if _$e92364_ (display _$e92364_) (display '"?")))
                   (let ((__tmp97192
                          (let ((__tmp97193
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self92357_))))
                            (declare (not safe))
                            (##type-name __tmp97193))))
                     (declare (not safe))
                     (display* '" [" __tmp97192 '"]: "))
                   (let ((__tmp97194
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92357_ 'message))))
                     (declare (not safe))
                     (displayln __tmp97194))
                   (let ((_irritants92367_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92357_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants92367_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj92369_)
                              (write _obj92369_)
                              (write-char '#\space))
                            _irritants92367_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self92357_))
                            (dump-stack-trace?))
                       (let ((_cont9237092372_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self92357_
                                 'continuation))))
                         (if _cont9237092372_
                             (let ((_cont92375_ _cont9237092372_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont92375_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp97191
             current-output-port
             _tmp-port92360_))
          (let ((__tmp97195 (get-output-string _tmp-port92360_)))
            (declare (not safe))
            (##write-string __tmp97195 _port92358_)))))
    (define Error::display-exception::specialize
      (lambda (__t97156)
        (let ((__message97157
               (let ((__tmp97161
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97156 'message))))
                 (if __tmp97161 __tmp97161 (error '"Unknown slot" 'message))))
              (__irritants97158
               (let ((__tmp97162
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97156 'irritants))))
                 (if __tmp97162
                     __tmp97162
                     (error '"Unknown slot" 'irritants))))
              (__where97159
               (let ((__tmp97163
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97156 'where))))
                 (if __tmp97163 __tmp97163 (error '"Unknown slot" 'where))))
              (__continuation97160
               (let ((__tmp97164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97156 'continuation))))
                 (if __tmp97164
                     __tmp97164
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self92357_ _port92358_)
            (let ((_tmp-port92360_ (open-output-string))
                  (_display-error-newline92361_
                   (> (output-port-column _port92358_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92360_))
              (let ((__tmp97196
                     (lambda ()
                       (if _display-error-newline92361_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e92364_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92357_
                                 __where97159
                                 __t97156
                                 '#f))))
                         (if _$e92364_ (display _$e92364_) (display '"?")))
                       (let ((__tmp97197
                              (let ((__tmp97198
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self92357_))))
                                (declare (not safe))
                                (##type-name __tmp97198))))
                         (declare (not safe))
                         (display* '" [" __tmp97197 '"]: "))
                       (let ((__tmp97199
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92357_
                                 __message97157
                                 __t97156
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp97199))
                       (let ((_irritants92367_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92357_
                                 __irritants97158
                                 __t97156
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants92367_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj92369_)
                                  (write _obj92369_)
                                  (write-char '#\space))
                                _irritants92367_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self92357_))
                                (dump-stack-trace?))
                           (let ((_cont9237092372_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self92357_
                                     __continuation97160
                                     __t97156
                                     '#f))))
                             (if _cont9237092372_
                                 (let ((_cont92375_ _cont9237092372_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont92375_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp97196
                 current-output-port
                 _tmp-port92360_))
              (let ((__tmp97200 (get-output-string _tmp-port92360_)))
                (declare (not safe))
                (##write-string __tmp97200 _port92358_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self92224_ _port92225_)
        (let ((_tmp-port92227_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92227_))
          (let ((__tmp97201
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self92224_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp97201 _tmp-port92227_))
          (if (dump-stack-trace?)
              (let ((_cont9222892230_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self92224_ 'continuation))))
                (if _cont9222892230_
                    (let ((_cont92233_ _cont9222892230_))
                      (display '"--- continuation backtrace:" _tmp-port92227_)
                      (newline _tmp-port92227_)
                      (display-continuation-backtrace
                       _cont92233_
                       _tmp-port92227_))
                    '#f))
              '#!void)
          (let ((__tmp97202 (get-output-string _tmp-port92227_)))
            (declare (not safe))
            (##write-string __tmp97202 _port92225_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t97165)
        (let ((__continuation97166
               (let ((__tmp97168
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97165 'continuation))))
                 (if __tmp97168
                     __tmp97168
                     (error '"Unknown slot" 'continuation))))
              (__exception97167
               (let ((__tmp97169
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97165 'exception))))
                 (if __tmp97169
                     __tmp97169
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self92224_ _port92225_)
            (let ((_tmp-port92227_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92227_))
              (let ((__tmp97203
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self92224_
                        __exception97167
                        __t97165
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp97203 _tmp-port92227_))
              (if (dump-stack-trace?)
                  (let ((_cont9222892230_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self92224_
                            __continuation97166
                            __t97165
                            '#f))))
                    (if _cont9222892230_
                        (let ((_cont92233_ _cont9222892230_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port92227_)
                          (newline _tmp-port92227_)
                          (display-continuation-backtrace
                           _cont92233_
                           _tmp-port92227_))
                        '#f))
                  '#!void)
              (let ((__tmp97204 (get-output-string _tmp-port92227_)))
                (declare (not safe))
                (##write-string __tmp97204 _port92225_)))))))
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
      (lambda (_port92096_)
        (if (macro-character-port? _port92096_)
            (let ((_old-width92098_
                   (macro-character-port-output-width _port92096_)))
              (macro-character-port-output-width-set!
               _port92096_
               (lambda (_port92100_) '256))
              _old-width92098_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port92093_ _old-width92094_)
        (if (macro-character-port? _port92093_)
            (macro-character-port-output-width-set!
             _port92093_
             _old-width92094_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e92091_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e92091_))))
    (define abandoned-mutex-exception?
      (lambda (_exn92085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92085_))
            (let ((_e92088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92085_ 'exception))))
              (macro-abandoned-mutex-exception? _e92088_))
            (macro-abandoned-mutex-exception? _exn92085_))))
    (define cfun-conversion-exception?
      (lambda (_exn92081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92081_))
            (let ((_e92083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92081_ 'exception))))
              (macro-cfun-conversion-exception? _e92083_))
            (macro-cfun-conversion-exception? _exn92081_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn92077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92077_))
            (let ((_e92079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92077_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92079_)
                  (macro-cfun-conversion-exception-arguments _e92079_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97206
                                (let ()
                                  (declare (not safe))
                                  (cons _e92079_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp97206)))))
            (if (macro-cfun-conversion-exception? _exn92077_)
                (macro-cfun-conversion-exception-arguments _exn92077_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97205
                              (let ()
                                (declare (not safe))
                                (cons _exn92077_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp97205)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn92073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92073_))
            (let ((_e92075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92073_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92075_)
                  (macro-cfun-conversion-exception-code _e92075_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97208
                                (let ()
                                  (declare (not safe))
                                  (cons _e92075_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp97208)))))
            (if (macro-cfun-conversion-exception? _exn92073_)
                (macro-cfun-conversion-exception-code _exn92073_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97207
                              (let ()
                                (declare (not safe))
                                (cons _exn92073_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp97207)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn92069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92069_))
            (let ((_e92071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92069_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92071_)
                  (macro-cfun-conversion-exception-message _e92071_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97210
                                (let ()
                                  (declare (not safe))
                                  (cons _e92071_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp97210)))))
            (if (macro-cfun-conversion-exception? _exn92069_)
                (macro-cfun-conversion-exception-message _exn92069_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97209
                              (let ()
                                (declare (not safe))
                                (cons _exn92069_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp97209)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn92063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92063_))
            (let ((_e92066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92063_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92066_)
                  (macro-cfun-conversion-exception-procedure _e92066_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97212
                                (let ()
                                  (declare (not safe))
                                  (cons _e92066_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp97212)))))
            (if (macro-cfun-conversion-exception? _exn92063_)
                (macro-cfun-conversion-exception-procedure _exn92063_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97211
                              (let ()
                                (declare (not safe))
                                (cons _exn92063_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp97211)))))))
    (define datum-parsing-exception?
      (lambda (_exn92059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92059_))
            (let ((_e92061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92059_ 'exception))))
              (macro-datum-parsing-exception? _e92061_))
            (macro-datum-parsing-exception? _exn92059_))))
    (define datum-parsing-exception-kind
      (lambda (_exn92055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92055_))
            (let ((_e92057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92055_ 'exception))))
              (if (macro-datum-parsing-exception? _e92057_)
                  (macro-datum-parsing-exception-kind _e92057_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97214
                                (let ()
                                  (declare (not safe))
                                  (cons _e92057_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp97214)))))
            (if (macro-datum-parsing-exception? _exn92055_)
                (macro-datum-parsing-exception-kind _exn92055_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97213
                              (let ()
                                (declare (not safe))
                                (cons _exn92055_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp97213)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn92051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92051_))
            (let ((_e92053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92051_ 'exception))))
              (if (macro-datum-parsing-exception? _e92053_)
                  (macro-datum-parsing-exception-parameters _e92053_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97216
                                (let ()
                                  (declare (not safe))
                                  (cons _e92053_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp97216)))))
            (if (macro-datum-parsing-exception? _exn92051_)
                (macro-datum-parsing-exception-parameters _exn92051_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97215
                              (let ()
                                (declare (not safe))
                                (cons _exn92051_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp97215)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn92045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92045_))
            (let ((_e92048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92045_ 'exception))))
              (if (macro-datum-parsing-exception? _e92048_)
                  (macro-datum-parsing-exception-readenv _e92048_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97218
                                (let ()
                                  (declare (not safe))
                                  (cons _e92048_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp97218)))))
            (if (macro-datum-parsing-exception? _exn92045_)
                (macro-datum-parsing-exception-readenv _exn92045_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97217
                              (let ()
                                (declare (not safe))
                                (cons _exn92045_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp97217)))))))
    (define deadlock-exception?
      (lambda (_exn92039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92039_))
            (let ((_e92042_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92039_ 'exception))))
              (macro-deadlock-exception? _e92042_))
            (macro-deadlock-exception? _exn92039_))))
    (define divide-by-zero-exception?
      (lambda (_exn92035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92035_))
            (let ((_e92037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92035_ 'exception))))
              (macro-divide-by-zero-exception? _e92037_))
            (macro-divide-by-zero-exception? _exn92035_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn92031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92031_))
            (let ((_e92033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92031_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92033_)
                  (macro-divide-by-zero-exception-arguments _e92033_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97220
                                (let ()
                                  (declare (not safe))
                                  (cons _e92033_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp97220)))))
            (if (macro-divide-by-zero-exception? _exn92031_)
                (macro-divide-by-zero-exception-arguments _exn92031_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97219
                              (let ()
                                (declare (not safe))
                                (cons _exn92031_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp97219)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn92025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92025_))
            (let ((_e92028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92025_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92028_)
                  (macro-divide-by-zero-exception-procedure _e92028_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97222
                                (let ()
                                  (declare (not safe))
                                  (cons _e92028_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp97222)))))
            (if (macro-divide-by-zero-exception? _exn92025_)
                (macro-divide-by-zero-exception-procedure _exn92025_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97221
                              (let ()
                                (declare (not safe))
                                (cons _exn92025_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp97221)))))))
    (define error-exception?
      (lambda (_exn92021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92021_))
            (let ((_e92023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92021_ 'exception))))
              (macro-error-exception? _e92023_))
            (macro-error-exception? _exn92021_))))
    (define error-exception-message
      (lambda (_exn92017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92017_))
            (let ((_e92019_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92017_ 'exception))))
              (if (macro-error-exception? _e92019_)
                  (macro-error-exception-message _e92019_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97224
                                (let ()
                                  (declare (not safe))
                                  (cons _e92019_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp97224)))))
            (if (macro-error-exception? _exn92017_)
                (macro-error-exception-message _exn92017_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97223
                              (let ()
                                (declare (not safe))
                                (cons _exn92017_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp97223)))))))
    (define error-exception-parameters
      (lambda (_exn92011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92011_))
            (let ((_e92014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92011_ 'exception))))
              (if (macro-error-exception? _e92014_)
                  (macro-error-exception-parameters _e92014_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97226
                                (let ()
                                  (declare (not safe))
                                  (cons _e92014_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp97226)))))
            (if (macro-error-exception? _exn92011_)
                (macro-error-exception-parameters _exn92011_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97225
                              (let ()
                                (declare (not safe))
                                (cons _exn92011_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp97225)))))))
    (define expression-parsing-exception?
      (lambda (_exn92007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92007_))
            (let ((_e92009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92007_ 'exception))))
              (macro-expression-parsing-exception? _e92009_))
            (macro-expression-parsing-exception? _exn92007_))))
    (define expression-parsing-exception-kind
      (lambda (_exn92003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92003_))
            (let ((_e92005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92003_ 'exception))))
              (if (macro-expression-parsing-exception? _e92005_)
                  (macro-expression-parsing-exception-kind _e92005_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97228
                                (let ()
                                  (declare (not safe))
                                  (cons _e92005_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp97228)))))
            (if (macro-expression-parsing-exception? _exn92003_)
                (macro-expression-parsing-exception-kind _exn92003_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97227
                              (let ()
                                (declare (not safe))
                                (cons _exn92003_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp97227)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91999_))
            (let ((_e92001_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91999_ 'exception))))
              (if (macro-expression-parsing-exception? _e92001_)
                  (macro-expression-parsing-exception-parameters _e92001_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97230
                                (let ()
                                  (declare (not safe))
                                  (cons _e92001_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp97230)))))
            (if (macro-expression-parsing-exception? _exn91999_)
                (macro-expression-parsing-exception-parameters _exn91999_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97229
                              (let ()
                                (declare (not safe))
                                (cons _exn91999_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp97229)))))))
    (define expression-parsing-exception-source
      (lambda (_exn91993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91993_))
            (let ((_e91996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91993_ 'exception))))
              (if (macro-expression-parsing-exception? _e91996_)
                  (macro-expression-parsing-exception-source _e91996_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97232
                                (let ()
                                  (declare (not safe))
                                  (cons _e91996_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp97232)))))
            (if (macro-expression-parsing-exception? _exn91993_)
                (macro-expression-parsing-exception-source _exn91993_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97231
                              (let ()
                                (declare (not safe))
                                (cons _exn91993_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp97231)))))))
    (define file-exists-exception?
      (lambda (_exn91989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91989_))
            (let ((_e91991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91989_ 'exception))))
              (macro-file-exists-exception? _e91991_))
            (macro-file-exists-exception? _exn91989_))))
    (define file-exists-exception-arguments
      (lambda (_exn91985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91985_))
            (let ((_e91987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91985_ 'exception))))
              (if (macro-file-exists-exception? _e91987_)
                  (macro-file-exists-exception-arguments _e91987_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97234
                                (let ()
                                  (declare (not safe))
                                  (cons _e91987_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp97234)))))
            (if (macro-file-exists-exception? _exn91985_)
                (macro-file-exists-exception-arguments _exn91985_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97233
                              (let ()
                                (declare (not safe))
                                (cons _exn91985_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp97233)))))))
    (define file-exists-exception-procedure
      (lambda (_exn91979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91979_))
            (let ((_e91982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91979_ 'exception))))
              (if (macro-file-exists-exception? _e91982_)
                  (macro-file-exists-exception-procedure _e91982_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97236
                                (let ()
                                  (declare (not safe))
                                  (cons _e91982_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp97236)))))
            (if (macro-file-exists-exception? _exn91979_)
                (macro-file-exists-exception-procedure _exn91979_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97235
                              (let ()
                                (declare (not safe))
                                (cons _exn91979_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp97235)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn91975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91975_))
            (let ((_e91977_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91975_ 'exception))))
              (macro-fixnum-overflow-exception? _e91977_))
            (macro-fixnum-overflow-exception? _exn91975_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn91971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91971_))
            (let ((_e91973_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91971_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91973_)
                  (macro-fixnum-overflow-exception-arguments _e91973_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97238
                                (let ()
                                  (declare (not safe))
                                  (cons _e91973_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp97238)))))
            (if (macro-fixnum-overflow-exception? _exn91971_)
                (macro-fixnum-overflow-exception-arguments _exn91971_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97237
                              (let ()
                                (declare (not safe))
                                (cons _exn91971_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp97237)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn91965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91965_))
            (let ((_e91968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91965_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91968_)
                  (macro-fixnum-overflow-exception-procedure _e91968_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97240
                                (let ()
                                  (declare (not safe))
                                  (cons _e91968_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp97240)))))
            (if (macro-fixnum-overflow-exception? _exn91965_)
                (macro-fixnum-overflow-exception-procedure _exn91965_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97239
                              (let ()
                                (declare (not safe))
                                (cons _exn91965_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp97239)))))))
    (define heap-overflow-exception?
      (lambda (_exn91959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91959_))
            (let ((_e91962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91959_ 'exception))))
              (macro-heap-overflow-exception? _e91962_))
            (macro-heap-overflow-exception? _exn91959_))))
    (define inactive-thread-exception?
      (lambda (_exn91955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91955_))
            (let ((_e91957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91955_ 'exception))))
              (macro-inactive-thread-exception? _e91957_))
            (macro-inactive-thread-exception? _exn91955_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn91951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91951_))
            (let ((_e91953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91951_ 'exception))))
              (if (macro-inactive-thread-exception? _e91953_)
                  (macro-inactive-thread-exception-arguments _e91953_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97242
                                (let ()
                                  (declare (not safe))
                                  (cons _e91953_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp97242)))))
            (if (macro-inactive-thread-exception? _exn91951_)
                (macro-inactive-thread-exception-arguments _exn91951_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97241
                              (let ()
                                (declare (not safe))
                                (cons _exn91951_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp97241)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn91945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91945_))
            (let ((_e91948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91945_ 'exception))))
              (if (macro-inactive-thread-exception? _e91948_)
                  (macro-inactive-thread-exception-procedure _e91948_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97244
                                (let ()
                                  (declare (not safe))
                                  (cons _e91948_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp97244)))))
            (if (macro-inactive-thread-exception? _exn91945_)
                (macro-inactive-thread-exception-procedure _exn91945_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97243
                              (let ()
                                (declare (not safe))
                                (cons _exn91945_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp97243)))))))
    (define initialized-thread-exception?
      (lambda (_exn91941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91941_))
            (let ((_e91943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91941_ 'exception))))
              (macro-initialized-thread-exception? _e91943_))
            (macro-initialized-thread-exception? _exn91941_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn91937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91937_))
            (let ((_e91939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91937_ 'exception))))
              (if (macro-initialized-thread-exception? _e91939_)
                  (macro-initialized-thread-exception-arguments _e91939_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97246
                                (let ()
                                  (declare (not safe))
                                  (cons _e91939_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp97246)))))
            (if (macro-initialized-thread-exception? _exn91937_)
                (macro-initialized-thread-exception-arguments _exn91937_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97245
                              (let ()
                                (declare (not safe))
                                (cons _exn91937_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp97245)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn91931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91931_))
            (let ((_e91934_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91931_ 'exception))))
              (if (macro-initialized-thread-exception? _e91934_)
                  (macro-initialized-thread-exception-procedure _e91934_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97248
                                (let ()
                                  (declare (not safe))
                                  (cons _e91934_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp97248)))))
            (if (macro-initialized-thread-exception? _exn91931_)
                (macro-initialized-thread-exception-procedure _exn91931_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97247
                              (let ()
                                (declare (not safe))
                                (cons _exn91931_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp97247)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn91927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91927_))
            (let ((_e91929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91927_ 'exception))))
              (macro-invalid-hash-number-exception? _e91929_))
            (macro-invalid-hash-number-exception? _exn91927_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn91923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91923_))
            (let ((_e91925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91923_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91925_)
                  (macro-invalid-hash-number-exception-arguments _e91925_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97250
                                (let ()
                                  (declare (not safe))
                                  (cons _e91925_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp97250)))))
            (if (macro-invalid-hash-number-exception? _exn91923_)
                (macro-invalid-hash-number-exception-arguments _exn91923_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97249
                              (let ()
                                (declare (not safe))
                                (cons _exn91923_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp97249)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn91917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91917_))
            (let ((_e91920_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91917_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91920_)
                  (macro-invalid-hash-number-exception-procedure _e91920_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97252
                                (let ()
                                  (declare (not safe))
                                  (cons _e91920_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp97252)))))
            (if (macro-invalid-hash-number-exception? _exn91917_)
                (macro-invalid-hash-number-exception-procedure _exn91917_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97251
                              (let ()
                                (declare (not safe))
                                (cons _exn91917_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp97251)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn91913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91913_))
            (let ((_e91915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91913_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e91915_))
            (macro-invalid-utf8-encoding-exception? _exn91913_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn91909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91909_))
            (let ((_e91911_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91909_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91911_)
                  (macro-invalid-utf8-encoding-exception-arguments _e91911_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97254
                                (let ()
                                  (declare (not safe))
                                  (cons _e91911_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp97254)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91909_)
                (macro-invalid-utf8-encoding-exception-arguments _exn91909_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97253
                              (let ()
                                (declare (not safe))
                                (cons _exn91909_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp97253)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn91903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91903_))
            (let ((_e91906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91903_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91906_)
                  (macro-invalid-utf8-encoding-exception-procedure _e91906_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97256
                                (let ()
                                  (declare (not safe))
                                  (cons _e91906_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp97256)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91903_)
                (macro-invalid-utf8-encoding-exception-procedure _exn91903_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97255
                              (let ()
                                (declare (not safe))
                                (cons _exn91903_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp97255)))))))
    (define join-timeout-exception?
      (lambda (_exn91899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91899_))
            (let ((_e91901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91899_ 'exception))))
              (macro-join-timeout-exception? _e91901_))
            (macro-join-timeout-exception? _exn91899_))))
    (define join-timeout-exception-arguments
      (lambda (_exn91895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91895_))
            (let ((_e91897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91895_ 'exception))))
              (if (macro-join-timeout-exception? _e91897_)
                  (macro-join-timeout-exception-arguments _e91897_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97258
                                (let ()
                                  (declare (not safe))
                                  (cons _e91897_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp97258)))))
            (if (macro-join-timeout-exception? _exn91895_)
                (macro-join-timeout-exception-arguments _exn91895_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97257
                              (let ()
                                (declare (not safe))
                                (cons _exn91895_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp97257)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn91889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91889_))
            (let ((_e91892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91889_ 'exception))))
              (if (macro-join-timeout-exception? _e91892_)
                  (macro-join-timeout-exception-procedure _e91892_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97260
                                (let ()
                                  (declare (not safe))
                                  (cons _e91892_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp97260)))))
            (if (macro-join-timeout-exception? _exn91889_)
                (macro-join-timeout-exception-procedure _exn91889_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97259
                              (let ()
                                (declare (not safe))
                                (cons _exn91889_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp97259)))))))
    (define keyword-expected-exception?
      (lambda (_exn91885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91885_))
            (let ((_e91887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91885_ 'exception))))
              (macro-keyword-expected-exception? _e91887_))
            (macro-keyword-expected-exception? _exn91885_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn91881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91881_))
            (let ((_e91883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91881_ 'exception))))
              (if (macro-keyword-expected-exception? _e91883_)
                  (macro-keyword-expected-exception-arguments _e91883_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97262
                                (let ()
                                  (declare (not safe))
                                  (cons _e91883_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp97262)))))
            (if (macro-keyword-expected-exception? _exn91881_)
                (macro-keyword-expected-exception-arguments _exn91881_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97261
                              (let ()
                                (declare (not safe))
                                (cons _exn91881_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp97261)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn91875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91875_))
            (let ((_e91878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91875_ 'exception))))
              (if (macro-keyword-expected-exception? _e91878_)
                  (macro-keyword-expected-exception-procedure _e91878_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97264
                                (let ()
                                  (declare (not safe))
                                  (cons _e91878_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp97264)))))
            (if (macro-keyword-expected-exception? _exn91875_)
                (macro-keyword-expected-exception-procedure _exn91875_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97263
                              (let ()
                                (declare (not safe))
                                (cons _exn91875_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp97263)))))))
    (define length-mismatch-exception?
      (lambda (_exn91871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91871_))
            (let ((_e91873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91871_ 'exception))))
              (macro-length-mismatch-exception? _e91873_))
            (macro-length-mismatch-exception? _exn91871_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn91867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91867_))
            (let ((_e91869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91867_ 'exception))))
              (if (macro-length-mismatch-exception? _e91869_)
                  (macro-length-mismatch-exception-arg-id _e91869_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97266
                                (let ()
                                  (declare (not safe))
                                  (cons _e91869_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp97266)))))
            (if (macro-length-mismatch-exception? _exn91867_)
                (macro-length-mismatch-exception-arg-id _exn91867_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97265
                              (let ()
                                (declare (not safe))
                                (cons _exn91867_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp97265)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn91863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91863_))
            (let ((_e91865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91863_ 'exception))))
              (if (macro-length-mismatch-exception? _e91865_)
                  (macro-length-mismatch-exception-arguments _e91865_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97268
                                (let ()
                                  (declare (not safe))
                                  (cons _e91865_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp97268)))))
            (if (macro-length-mismatch-exception? _exn91863_)
                (macro-length-mismatch-exception-arguments _exn91863_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97267
                              (let ()
                                (declare (not safe))
                                (cons _exn91863_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp97267)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn91857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91857_))
            (let ((_e91860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91857_ 'exception))))
              (if (macro-length-mismatch-exception? _e91860_)
                  (macro-length-mismatch-exception-procedure _e91860_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97270
                                (let ()
                                  (declare (not safe))
                                  (cons _e91860_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp97270)))))
            (if (macro-length-mismatch-exception? _exn91857_)
                (macro-length-mismatch-exception-procedure _exn91857_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97269
                              (let ()
                                (declare (not safe))
                                (cons _exn91857_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp97269)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn91853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91853_))
            (let ((_e91855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91853_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e91855_))
            (macro-mailbox-receive-timeout-exception? _exn91853_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn91849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91849_))
            (let ((_e91851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91849_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91851_)
                  (macro-mailbox-receive-timeout-exception-arguments _e91851_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97272
                                (let ()
                                  (declare (not safe))
                                  (cons _e91851_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp97272)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91849_)
                (macro-mailbox-receive-timeout-exception-arguments _exn91849_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97271
                              (let ()
                                (declare (not safe))
                                (cons _exn91849_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp97271)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn91843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91843_))
            (let ((_e91846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91843_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91846_)
                  (macro-mailbox-receive-timeout-exception-procedure _e91846_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97274
                                (let ()
                                  (declare (not safe))
                                  (cons _e91846_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp97274)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91843_)
                (macro-mailbox-receive-timeout-exception-procedure _exn91843_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97273
                              (let ()
                                (declare (not safe))
                                (cons _exn91843_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp97273)))))))
    (define module-not-found-exception?
      (lambda (_exn91839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91839_))
            (let ((_e91841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91839_ 'exception))))
              (macro-module-not-found-exception? _e91841_))
            (macro-module-not-found-exception? _exn91839_))))
    (define module-not-found-exception-arguments
      (lambda (_exn91835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91835_))
            (let ((_e91837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91835_ 'exception))))
              (if (macro-module-not-found-exception? _e91837_)
                  (macro-module-not-found-exception-arguments _e91837_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97276
                                (let ()
                                  (declare (not safe))
                                  (cons _e91837_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp97276)))))
            (if (macro-module-not-found-exception? _exn91835_)
                (macro-module-not-found-exception-arguments _exn91835_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97275
                              (let ()
                                (declare (not safe))
                                (cons _exn91835_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp97275)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn91829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91829_))
            (let ((_e91832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91829_ 'exception))))
              (if (macro-module-not-found-exception? _e91832_)
                  (macro-module-not-found-exception-procedure _e91832_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97278
                                (let ()
                                  (declare (not safe))
                                  (cons _e91832_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp97278)))))
            (if (macro-module-not-found-exception? _exn91829_)
                (macro-module-not-found-exception-procedure _exn91829_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97277
                              (let ()
                                (declare (not safe))
                                (cons _exn91829_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp97277)))))))
    (define multiple-c-return-exception?
      (lambda (_exn91823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91823_))
            (let ((_e91826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91823_ 'exception))))
              (macro-multiple-c-return-exception? _e91826_))
            (macro-multiple-c-return-exception? _exn91823_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn91819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91819_))
            (let ((_e91821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91819_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e91821_))
            (macro-no-such-file-or-directory-exception? _exn91819_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn91815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91815_))
            (let ((_e91817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91815_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91817_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e91817_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97280
                                (let ()
                                  (declare (not safe))
                                  (cons _e91817_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp97280)))))
            (if (macro-no-such-file-or-directory-exception? _exn91815_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn91815_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97279
                              (let ()
                                (declare (not safe))
                                (cons _exn91815_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp97279)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn91809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91809_))
            (let ((_e91812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91809_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91812_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e91812_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97282
                                (let ()
                                  (declare (not safe))
                                  (cons _e91812_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp97282)))))
            (if (macro-no-such-file-or-directory-exception? _exn91809_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn91809_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97281
                              (let ()
                                (declare (not safe))
                                (cons _exn91809_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp97281)))))))
    (define noncontinuable-exception?
      (lambda (_exn91805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91805_))
            (let ((_e91807_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91805_ 'exception))))
              (macro-noncontinuable-exception? _e91807_))
            (macro-noncontinuable-exception? _exn91805_))))
    (define noncontinuable-exception-reason
      (lambda (_exn91799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91799_))
            (let ((_e91802_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91799_ 'exception))))
              (if (macro-noncontinuable-exception? _e91802_)
                  (macro-noncontinuable-exception-reason _e91802_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp97284
                                (let ()
                                  (declare (not safe))
                                  (cons _e91802_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp97284)))))
            (if (macro-noncontinuable-exception? _exn91799_)
                (macro-noncontinuable-exception-reason _exn91799_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp97283
                              (let ()
                                (declare (not safe))
                                (cons _exn91799_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp97283)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn91795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91795_))
            (let ((_e91797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91795_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e91797_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn91795_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn91791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91791_))
            (let ((_e91793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91791_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91793_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e91793_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97286
                                (let ()
                                  (declare (not safe))
                                  (cons _e91793_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp97286)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91791_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn91791_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97285
                              (let ()
                                (declare (not safe))
                                (cons _exn91791_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp97285)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn91785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91785_))
            (let ((_e91788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91785_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91788_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e91788_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97288
                                (let ()
                                  (declare (not safe))
                                  (cons _e91788_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp97288)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91785_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn91785_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97287
                              (let ()
                                (declare (not safe))
                                (cons _exn91785_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp97287)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn91781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91781_))
            (let ((_e91783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91781_ 'exception))))
              (macro-nonprocedure-operator-exception? _e91783_))
            (macro-nonprocedure-operator-exception? _exn91781_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn91777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91777_))
            (let ((_e91779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91777_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91779_)
                  (macro-nonprocedure-operator-exception-arguments _e91779_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97290
                                (let ()
                                  (declare (not safe))
                                  (cons _e91779_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp97290)))))
            (if (macro-nonprocedure-operator-exception? _exn91777_)
                (macro-nonprocedure-operator-exception-arguments _exn91777_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97289
                              (let ()
                                (declare (not safe))
                                (cons _exn91777_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp97289)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn91773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91773_))
            (let ((_e91775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91773_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91775_)
                  (macro-nonprocedure-operator-exception-code _e91775_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97292
                                (let ()
                                  (declare (not safe))
                                  (cons _e91775_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp97292)))))
            (if (macro-nonprocedure-operator-exception? _exn91773_)
                (macro-nonprocedure-operator-exception-code _exn91773_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97291
                              (let ()
                                (declare (not safe))
                                (cons _exn91773_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp97291)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn91769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91769_))
            (let ((_e91771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91769_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91771_)
                  (macro-nonprocedure-operator-exception-operator _e91771_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97294
                                (let ()
                                  (declare (not safe))
                                  (cons _e91771_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp97294)))))
            (if (macro-nonprocedure-operator-exception? _exn91769_)
                (macro-nonprocedure-operator-exception-operator _exn91769_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97293
                              (let ()
                                (declare (not safe))
                                (cons _exn91769_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp97293)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn91763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91763_))
            (let ((_e91766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91763_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91766_)
                  (macro-nonprocedure-operator-exception-rte _e91766_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97296
                                (let ()
                                  (declare (not safe))
                                  (cons _e91766_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp97296)))))
            (if (macro-nonprocedure-operator-exception? _exn91763_)
                (macro-nonprocedure-operator-exception-rte _exn91763_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97295
                              (let ()
                                (declare (not safe))
                                (cons _exn91763_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp97295)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn91759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91759_))
            (let ((_e91761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91759_ 'exception))))
              (macro-not-in-compilation-context-exception? _e91761_))
            (macro-not-in-compilation-context-exception? _exn91759_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn91755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91755_))
            (let ((_e91757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91755_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91757_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e91757_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97298
                                (let ()
                                  (declare (not safe))
                                  (cons _e91757_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp97298)))))
            (if (macro-not-in-compilation-context-exception? _exn91755_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn91755_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97297
                              (let ()
                                (declare (not safe))
                                (cons _exn91755_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp97297)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn91749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91749_))
            (let ((_e91752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91749_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91752_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e91752_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97300
                                (let ()
                                  (declare (not safe))
                                  (cons _e91752_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp97300)))))
            (if (macro-not-in-compilation-context-exception? _exn91749_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn91749_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97299
                              (let ()
                                (declare (not safe))
                                (cons _exn91749_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp97299)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn91745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91745_))
            (let ((_e91747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91745_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e91747_))
            (macro-number-of-arguments-limit-exception? _exn91745_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn91741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91741_))
            (let ((_e91743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91741_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91743_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e91743_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97302
                                (let ()
                                  (declare (not safe))
                                  (cons _e91743_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp97302)))))
            (if (macro-number-of-arguments-limit-exception? _exn91741_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn91741_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97301
                              (let ()
                                (declare (not safe))
                                (cons _exn91741_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp97301)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn91735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91735_))
            (let ((_e91738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91735_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91738_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e91738_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97304
                                (let ()
                                  (declare (not safe))
                                  (cons _e91738_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp97304)))))
            (if (macro-number-of-arguments-limit-exception? _exn91735_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn91735_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97303
                              (let ()
                                (declare (not safe))
                                (cons _exn91735_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp97303)))))))
    (define os-exception?
      (lambda (_exn91731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91731_))
            (let ((_e91733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91731_ 'exception))))
              (macro-os-exception? _e91733_))
            (macro-os-exception? _exn91731_))))
    (define os-exception-arguments
      (lambda (_exn91727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91727_))
            (let ((_e91729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91727_ 'exception))))
              (if (macro-os-exception? _e91729_)
                  (macro-os-exception-arguments _e91729_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97306
                                (let ()
                                  (declare (not safe))
                                  (cons _e91729_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp97306)))))
            (if (macro-os-exception? _exn91727_)
                (macro-os-exception-arguments _exn91727_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97305
                              (let ()
                                (declare (not safe))
                                (cons _exn91727_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp97305)))))))
    (define os-exception-code
      (lambda (_exn91723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91723_))
            (let ((_e91725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91723_ 'exception))))
              (if (macro-os-exception? _e91725_)
                  (macro-os-exception-code _e91725_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97308
                                (let ()
                                  (declare (not safe))
                                  (cons _e91725_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp97308)))))
            (if (macro-os-exception? _exn91723_)
                (macro-os-exception-code _exn91723_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97307
                              (let ()
                                (declare (not safe))
                                (cons _exn91723_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp97307)))))))
    (define os-exception-message
      (lambda (_exn91719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91719_))
            (let ((_e91721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91719_ 'exception))))
              (if (macro-os-exception? _e91721_)
                  (macro-os-exception-message _e91721_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97310
                                (let ()
                                  (declare (not safe))
                                  (cons _e91721_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp97310)))))
            (if (macro-os-exception? _exn91719_)
                (macro-os-exception-message _exn91719_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97309
                              (let ()
                                (declare (not safe))
                                (cons _exn91719_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp97309)))))))
    (define os-exception-procedure
      (lambda (_exn91713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91713_))
            (let ((_e91716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91713_ 'exception))))
              (if (macro-os-exception? _e91716_)
                  (macro-os-exception-procedure _e91716_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97312
                                (let ()
                                  (declare (not safe))
                                  (cons _e91716_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp97312)))))
            (if (macro-os-exception? _exn91713_)
                (macro-os-exception-procedure _exn91713_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97311
                              (let ()
                                (declare (not safe))
                                (cons _exn91713_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp97311)))))))
    (define permission-denied-exception?
      (lambda (_exn91709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91709_))
            (let ((_e91711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91709_ 'exception))))
              (macro-permission-denied-exception? _e91711_))
            (macro-permission-denied-exception? _exn91709_))))
    (define permission-denied-exception-arguments
      (lambda (_exn91705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91705_))
            (let ((_e91707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91705_ 'exception))))
              (if (macro-permission-denied-exception? _e91707_)
                  (macro-permission-denied-exception-arguments _e91707_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97314
                                (let ()
                                  (declare (not safe))
                                  (cons _e91707_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp97314)))))
            (if (macro-permission-denied-exception? _exn91705_)
                (macro-permission-denied-exception-arguments _exn91705_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97313
                              (let ()
                                (declare (not safe))
                                (cons _exn91705_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp97313)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn91699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91699_))
            (let ((_e91702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91699_ 'exception))))
              (if (macro-permission-denied-exception? _e91702_)
                  (macro-permission-denied-exception-procedure _e91702_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97316
                                (let ()
                                  (declare (not safe))
                                  (cons _e91702_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp97316)))))
            (if (macro-permission-denied-exception? _exn91699_)
                (macro-permission-denied-exception-procedure _exn91699_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97315
                              (let ()
                                (declare (not safe))
                                (cons _exn91699_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp97315)))))))
    (define range-exception?
      (lambda (_exn91695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91695_))
            (let ((_e91697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91695_ 'exception))))
              (macro-range-exception? _e91697_))
            (macro-range-exception? _exn91695_))))
    (define range-exception-arg-id
      (lambda (_exn91691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91691_))
            (let ((_e91693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91691_ 'exception))))
              (if (macro-range-exception? _e91693_)
                  (macro-range-exception-arg-id _e91693_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97318
                                (let ()
                                  (declare (not safe))
                                  (cons _e91693_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp97318)))))
            (if (macro-range-exception? _exn91691_)
                (macro-range-exception-arg-id _exn91691_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97317
                              (let ()
                                (declare (not safe))
                                (cons _exn91691_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp97317)))))))
    (define range-exception-arguments
      (lambda (_exn91687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91687_))
            (let ((_e91689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91687_ 'exception))))
              (if (macro-range-exception? _e91689_)
                  (macro-range-exception-arguments _e91689_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97320
                                (let ()
                                  (declare (not safe))
                                  (cons _e91689_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp97320)))))
            (if (macro-range-exception? _exn91687_)
                (macro-range-exception-arguments _exn91687_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97319
                              (let ()
                                (declare (not safe))
                                (cons _exn91687_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp97319)))))))
    (define range-exception-procedure
      (lambda (_exn91681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91681_))
            (let ((_e91684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91681_ 'exception))))
              (if (macro-range-exception? _e91684_)
                  (macro-range-exception-procedure _e91684_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97322
                                (let ()
                                  (declare (not safe))
                                  (cons _e91684_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp97322)))))
            (if (macro-range-exception? _exn91681_)
                (macro-range-exception-procedure _exn91681_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97321
                              (let ()
                                (declare (not safe))
                                (cons _exn91681_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp97321)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn91677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91677_))
            (let ((_e91679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91677_ 'exception))))
              (macro-rpc-remote-error-exception? _e91679_))
            (macro-rpc-remote-error-exception? _exn91677_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn91673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91673_))
            (let ((_e91675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91673_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91675_)
                  (macro-rpc-remote-error-exception-arguments _e91675_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97324
                                (let ()
                                  (declare (not safe))
                                  (cons _e91675_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp97324)))))
            (if (macro-rpc-remote-error-exception? _exn91673_)
                (macro-rpc-remote-error-exception-arguments _exn91673_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97323
                              (let ()
                                (declare (not safe))
                                (cons _exn91673_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp97323)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn91669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91669_))
            (let ((_e91671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91669_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91671_)
                  (macro-rpc-remote-error-exception-message _e91671_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97326
                                (let ()
                                  (declare (not safe))
                                  (cons _e91671_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp97326)))))
            (if (macro-rpc-remote-error-exception? _exn91669_)
                (macro-rpc-remote-error-exception-message _exn91669_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97325
                              (let ()
                                (declare (not safe))
                                (cons _exn91669_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp97325)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn91663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91663_))
            (let ((_e91666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91663_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91666_)
                  (macro-rpc-remote-error-exception-procedure _e91666_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97328
                                (let ()
                                  (declare (not safe))
                                  (cons _e91666_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp97328)))))
            (if (macro-rpc-remote-error-exception? _exn91663_)
                (macro-rpc-remote-error-exception-procedure _exn91663_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97327
                              (let ()
                                (declare (not safe))
                                (cons _exn91663_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp97327)))))))
    (define scheduler-exception?
      (lambda (_exn91659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91659_))
            (let ((_e91661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91659_ 'exception))))
              (macro-scheduler-exception? _e91661_))
            (macro-scheduler-exception? _exn91659_))))
    (define scheduler-exception-reason
      (lambda (_exn91653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91653_))
            (let ((_e91656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91653_ 'exception))))
              (if (macro-scheduler-exception? _e91656_)
                  (macro-scheduler-exception-reason _e91656_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp97330
                                (let ()
                                  (declare (not safe))
                                  (cons _e91656_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp97330)))))
            (if (macro-scheduler-exception? _exn91653_)
                (macro-scheduler-exception-reason _exn91653_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp97329
                              (let ()
                                (declare (not safe))
                                (cons _exn91653_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp97329)))))))
    (define sfun-conversion-exception?
      (lambda (_exn91649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91649_))
            (let ((_e91651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91649_ 'exception))))
              (macro-sfun-conversion-exception? _e91651_))
            (macro-sfun-conversion-exception? _exn91649_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn91645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91645_))
            (let ((_e91647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91645_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91647_)
                  (macro-sfun-conversion-exception-arguments _e91647_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97332
                                (let ()
                                  (declare (not safe))
                                  (cons _e91647_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp97332)))))
            (if (macro-sfun-conversion-exception? _exn91645_)
                (macro-sfun-conversion-exception-arguments _exn91645_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97331
                              (let ()
                                (declare (not safe))
                                (cons _exn91645_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp97331)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn91641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91641_))
            (let ((_e91643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91641_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91643_)
                  (macro-sfun-conversion-exception-code _e91643_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97334
                                (let ()
                                  (declare (not safe))
                                  (cons _e91643_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp97334)))))
            (if (macro-sfun-conversion-exception? _exn91641_)
                (macro-sfun-conversion-exception-code _exn91641_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97333
                              (let ()
                                (declare (not safe))
                                (cons _exn91641_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp97333)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn91637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91637_))
            (let ((_e91639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91637_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91639_)
                  (macro-sfun-conversion-exception-message _e91639_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97336
                                (let ()
                                  (declare (not safe))
                                  (cons _e91639_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp97336)))))
            (if (macro-sfun-conversion-exception? _exn91637_)
                (macro-sfun-conversion-exception-message _exn91637_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97335
                              (let ()
                                (declare (not safe))
                                (cons _exn91637_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp97335)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn91631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91631_))
            (let ((_e91634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91631_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91634_)
                  (macro-sfun-conversion-exception-procedure _e91634_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97338
                                (let ()
                                  (declare (not safe))
                                  (cons _e91634_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp97338)))))
            (if (macro-sfun-conversion-exception? _exn91631_)
                (macro-sfun-conversion-exception-procedure _exn91631_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97337
                              (let ()
                                (declare (not safe))
                                (cons _exn91631_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp97337)))))))
    (define stack-overflow-exception?
      (lambda (_exn91625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91625_))
            (let ((_e91628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91625_ 'exception))))
              (macro-stack-overflow-exception? _e91628_))
            (macro-stack-overflow-exception? _exn91625_))))
    (define started-thread-exception?
      (lambda (_exn91621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91621_))
            (let ((_e91623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91621_ 'exception))))
              (macro-started-thread-exception? _e91623_))
            (macro-started-thread-exception? _exn91621_))))
    (define started-thread-exception-arguments
      (lambda (_exn91617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91617_))
            (let ((_e91619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91617_ 'exception))))
              (if (macro-started-thread-exception? _e91619_)
                  (macro-started-thread-exception-arguments _e91619_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97340
                                (let ()
                                  (declare (not safe))
                                  (cons _e91619_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp97340)))))
            (if (macro-started-thread-exception? _exn91617_)
                (macro-started-thread-exception-arguments _exn91617_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97339
                              (let ()
                                (declare (not safe))
                                (cons _exn91617_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp97339)))))))
    (define started-thread-exception-procedure
      (lambda (_exn91611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91611_))
            (let ((_e91614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91611_ 'exception))))
              (if (macro-started-thread-exception? _e91614_)
                  (macro-started-thread-exception-procedure _e91614_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97342
                                (let ()
                                  (declare (not safe))
                                  (cons _e91614_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp97342)))))
            (if (macro-started-thread-exception? _exn91611_)
                (macro-started-thread-exception-procedure _exn91611_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97341
                              (let ()
                                (declare (not safe))
                                (cons _exn91611_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp97341)))))))
    (define terminated-thread-exception?
      (lambda (_exn91607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91607_))
            (let ((_e91609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91607_ 'exception))))
              (macro-terminated-thread-exception? _e91609_))
            (macro-terminated-thread-exception? _exn91607_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn91603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91603_))
            (let ((_e91605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91603_ 'exception))))
              (if (macro-terminated-thread-exception? _e91605_)
                  (macro-terminated-thread-exception-arguments _e91605_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97344
                                (let ()
                                  (declare (not safe))
                                  (cons _e91605_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp97344)))))
            (if (macro-terminated-thread-exception? _exn91603_)
                (macro-terminated-thread-exception-arguments _exn91603_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97343
                              (let ()
                                (declare (not safe))
                                (cons _exn91603_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp97343)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn91597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91597_))
            (let ((_e91600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91597_ 'exception))))
              (if (macro-terminated-thread-exception? _e91600_)
                  (macro-terminated-thread-exception-procedure _e91600_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97346
                                (let ()
                                  (declare (not safe))
                                  (cons _e91600_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp97346)))))
            (if (macro-terminated-thread-exception? _exn91597_)
                (macro-terminated-thread-exception-procedure _exn91597_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97345
                              (let ()
                                (declare (not safe))
                                (cons _exn91597_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp97345)))))))
    (define type-exception?
      (lambda (_exn91593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91593_))
            (let ((_e91595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91593_ 'exception))))
              (macro-type-exception? _e91595_))
            (macro-type-exception? _exn91593_))))
    (define type-exception-arg-id
      (lambda (_exn91589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91589_))
            (let ((_e91591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91589_ 'exception))))
              (if (macro-type-exception? _e91591_)
                  (macro-type-exception-arg-id _e91591_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97348
                                (let ()
                                  (declare (not safe))
                                  (cons _e91591_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp97348)))))
            (if (macro-type-exception? _exn91589_)
                (macro-type-exception-arg-id _exn91589_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97347
                              (let ()
                                (declare (not safe))
                                (cons _exn91589_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp97347)))))))
    (define type-exception-arguments
      (lambda (_exn91585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91585_))
            (let ((_e91587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91585_ 'exception))))
              (if (macro-type-exception? _e91587_)
                  (macro-type-exception-arguments _e91587_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97350
                                (let ()
                                  (declare (not safe))
                                  (cons _e91587_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp97350)))))
            (if (macro-type-exception? _exn91585_)
                (macro-type-exception-arguments _exn91585_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97349
                              (let ()
                                (declare (not safe))
                                (cons _exn91585_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp97349)))))))
    (define type-exception-procedure
      (lambda (_exn91581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91581_))
            (let ((_e91583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91581_ 'exception))))
              (if (macro-type-exception? _e91583_)
                  (macro-type-exception-procedure _e91583_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97352
                                (let ()
                                  (declare (not safe))
                                  (cons _e91583_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp97352)))))
            (if (macro-type-exception? _exn91581_)
                (macro-type-exception-procedure _exn91581_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97351
                              (let ()
                                (declare (not safe))
                                (cons _exn91581_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp97351)))))))
    (define type-exception-type-id
      (lambda (_exn91575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91575_))
            (let ((_e91578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91575_ 'exception))))
              (if (macro-type-exception? _e91578_)
                  (macro-type-exception-type-id _e91578_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97354
                                (let ()
                                  (declare (not safe))
                                  (cons _e91578_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp97354)))))
            (if (macro-type-exception? _exn91575_)
                (macro-type-exception-type-id _exn91575_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97353
                              (let ()
                                (declare (not safe))
                                (cons _exn91575_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp97353)))))))
    (define unbound-global-exception?
      (lambda (_exn91571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91571_))
            (let ((_e91573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91571_ 'exception))))
              (macro-unbound-global-exception? _e91573_))
            (macro-unbound-global-exception? _exn91571_))))
    (define unbound-global-exception-code
      (lambda (_exn91567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91567_))
            (let ((_e91569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91567_ 'exception))))
              (if (macro-unbound-global-exception? _e91569_)
                  (macro-unbound-global-exception-code _e91569_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97356
                                (let ()
                                  (declare (not safe))
                                  (cons _e91569_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp97356)))))
            (if (macro-unbound-global-exception? _exn91567_)
                (macro-unbound-global-exception-code _exn91567_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97355
                              (let ()
                                (declare (not safe))
                                (cons _exn91567_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp97355)))))))
    (define unbound-global-exception-rte
      (lambda (_exn91563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91563_))
            (let ((_e91565_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91563_ 'exception))))
              (if (macro-unbound-global-exception? _e91565_)
                  (macro-unbound-global-exception-rte _e91565_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97358
                                (let ()
                                  (declare (not safe))
                                  (cons _e91565_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp97358)))))
            (if (macro-unbound-global-exception? _exn91563_)
                (macro-unbound-global-exception-rte _exn91563_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97357
                              (let ()
                                (declare (not safe))
                                (cons _exn91563_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp97357)))))))
    (define unbound-global-exception-variable
      (lambda (_exn91557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91557_))
            (let ((_e91560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91557_ 'exception))))
              (if (macro-unbound-global-exception? _e91560_)
                  (macro-unbound-global-exception-variable _e91560_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97360
                                (let ()
                                  (declare (not safe))
                                  (cons _e91560_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp97360)))))
            (if (macro-unbound-global-exception? _exn91557_)
                (macro-unbound-global-exception-variable _exn91557_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97359
                              (let ()
                                (declare (not safe))
                                (cons _exn91557_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp97359)))))))
    (define unbound-key-exception?
      (lambda (_exn91553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91553_))
            (let ((_e91555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91553_ 'exception))))
              (macro-unbound-key-exception? _e91555_))
            (macro-unbound-key-exception? _exn91553_))))
    (define unbound-key-exception-arguments
      (lambda (_exn91549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91549_))
            (let ((_e91551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91549_ 'exception))))
              (if (macro-unbound-key-exception? _e91551_)
                  (macro-unbound-key-exception-arguments _e91551_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97362
                                (let ()
                                  (declare (not safe))
                                  (cons _e91551_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp97362)))))
            (if (macro-unbound-key-exception? _exn91549_)
                (macro-unbound-key-exception-arguments _exn91549_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97361
                              (let ()
                                (declare (not safe))
                                (cons _exn91549_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp97361)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn91543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91543_))
            (let ((_e91546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91543_ 'exception))))
              (if (macro-unbound-key-exception? _e91546_)
                  (macro-unbound-key-exception-procedure _e91546_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97364
                                (let ()
                                  (declare (not safe))
                                  (cons _e91546_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp97364)))))
            (if (macro-unbound-key-exception? _exn91543_)
                (macro-unbound-key-exception-procedure _exn91543_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97363
                              (let ()
                                (declare (not safe))
                                (cons _exn91543_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp97363)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn91539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91539_))
            (let ((_e91541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91539_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e91541_))
            (macro-unbound-os-environment-variable-exception? _exn91539_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn91535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91535_))
            (let ((_e91537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91535_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91537_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e91537_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97366
                                (let ()
                                  (declare (not safe))
                                  (cons _e91537_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp97366)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91535_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn91535_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97365
                              (let ()
                                (declare (not safe))
                                (cons _exn91535_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp97365)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn91529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91529_))
            (let ((_e91532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91529_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91532_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e91532_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97368
                                (let ()
                                  (declare (not safe))
                                  (cons _e91532_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp97368)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91529_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn91529_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97367
                              (let ()
                                (declare (not safe))
                                (cons _exn91529_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp97367)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn91525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91525_))
            (let ((_e91527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91525_ 'exception))))
              (macro-unbound-serial-number-exception? _e91527_))
            (macro-unbound-serial-number-exception? _exn91525_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn91521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91521_))
            (let ((_e91523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91521_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91523_)
                  (macro-unbound-serial-number-exception-arguments _e91523_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97370
                                (let ()
                                  (declare (not safe))
                                  (cons _e91523_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp97370)))))
            (if (macro-unbound-serial-number-exception? _exn91521_)
                (macro-unbound-serial-number-exception-arguments _exn91521_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97369
                              (let ()
                                (declare (not safe))
                                (cons _exn91521_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp97369)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn91515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91515_))
            (let ((_e91518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91515_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91518_)
                  (macro-unbound-serial-number-exception-procedure _e91518_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97372
                                (let ()
                                  (declare (not safe))
                                  (cons _e91518_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp97372)))))
            (if (macro-unbound-serial-number-exception? _exn91515_)
                (macro-unbound-serial-number-exception-procedure _exn91515_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97371
                              (let ()
                                (declare (not safe))
                                (cons _exn91515_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp97371)))))))
    (define uncaught-exception?
      (lambda (_exn91511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91511_))
            (let ((_e91513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91511_ 'exception))))
              (macro-uncaught-exception? _e91513_))
            (macro-uncaught-exception? _exn91511_))))
    (define uncaught-exception-arguments
      (lambda (_exn91507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91507_))
            (let ((_e91509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91507_ 'exception))))
              (if (macro-uncaught-exception? _e91509_)
                  (macro-uncaught-exception-arguments _e91509_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97374
                                (let ()
                                  (declare (not safe))
                                  (cons _e91509_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp97374)))))
            (if (macro-uncaught-exception? _exn91507_)
                (macro-uncaught-exception-arguments _exn91507_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97373
                              (let ()
                                (declare (not safe))
                                (cons _exn91507_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp97373)))))))
    (define uncaught-exception-procedure
      (lambda (_exn91503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91503_))
            (let ((_e91505_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91503_ 'exception))))
              (if (macro-uncaught-exception? _e91505_)
                  (macro-uncaught-exception-procedure _e91505_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97376
                                (let ()
                                  (declare (not safe))
                                  (cons _e91505_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp97376)))))
            (if (macro-uncaught-exception? _exn91503_)
                (macro-uncaught-exception-procedure _exn91503_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97375
                              (let ()
                                (declare (not safe))
                                (cons _exn91503_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp97375)))))))
    (define uncaught-exception-reason
      (lambda (_exn91497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91497_))
            (let ((_e91500_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91497_ 'exception))))
              (if (macro-uncaught-exception? _e91500_)
                  (macro-uncaught-exception-reason _e91500_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97378
                                (let ()
                                  (declare (not safe))
                                  (cons _e91500_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp97378)))))
            (if (macro-uncaught-exception? _exn91497_)
                (macro-uncaught-exception-reason _exn91497_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97377
                              (let ()
                                (declare (not safe))
                                (cons _exn91497_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp97377)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn91493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91493_))
            (let ((_e91495_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91493_ 'exception))))
              (macro-uninitialized-thread-exception? _e91495_))
            (macro-uninitialized-thread-exception? _exn91493_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn91489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91489_))
            (let ((_e91491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91489_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91491_)
                  (macro-uninitialized-thread-exception-arguments _e91491_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97380
                                (let ()
                                  (declare (not safe))
                                  (cons _e91491_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp97380)))))
            (if (macro-uninitialized-thread-exception? _exn91489_)
                (macro-uninitialized-thread-exception-arguments _exn91489_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97379
                              (let ()
                                (declare (not safe))
                                (cons _exn91489_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp97379)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn91483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91483_))
            (let ((_e91486_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91483_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91486_)
                  (macro-uninitialized-thread-exception-procedure _e91486_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97382
                                (let ()
                                  (declare (not safe))
                                  (cons _e91486_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp97382)))))
            (if (macro-uninitialized-thread-exception? _exn91483_)
                (macro-uninitialized-thread-exception-procedure _exn91483_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97381
                              (let ()
                                (declare (not safe))
                                (cons _exn91483_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp97381)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn91479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91479_))
            (let ((_e91481_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91479_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e91481_))
            (macro-unknown-keyword-argument-exception? _exn91479_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn91475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91475_))
            (let ((_e91477_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91475_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91477_)
                  (macro-unknown-keyword-argument-exception-arguments _e91477_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97384
                                (let ()
                                  (declare (not safe))
                                  (cons _e91477_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp97384)))))
            (if (macro-unknown-keyword-argument-exception? _exn91475_)
                (macro-unknown-keyword-argument-exception-arguments _exn91475_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97383
                              (let ()
                                (declare (not safe))
                                (cons _exn91475_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp97383)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn91469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91469_))
            (let ((_e91472_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91469_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91472_)
                  (macro-unknown-keyword-argument-exception-procedure _e91472_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97386
                                (let ()
                                  (declare (not safe))
                                  (cons _e91472_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp97386)))))
            (if (macro-unknown-keyword-argument-exception? _exn91469_)
                (macro-unknown-keyword-argument-exception-procedure _exn91469_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97385
                              (let ()
                                (declare (not safe))
                                (cons _exn91469_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp97385)))))))
    (define unterminated-process-exception?
      (lambda (_exn91465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91465_))
            (let ((_e91467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91465_ 'exception))))
              (macro-unterminated-process-exception? _e91467_))
            (macro-unterminated-process-exception? _exn91465_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn91461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91461_))
            (let ((_e91463_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91461_ 'exception))))
              (if (macro-unterminated-process-exception? _e91463_)
                  (macro-unterminated-process-exception-arguments _e91463_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97388
                                (let ()
                                  (declare (not safe))
                                  (cons _e91463_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp97388)))))
            (if (macro-unterminated-process-exception? _exn91461_)
                (macro-unterminated-process-exception-arguments _exn91461_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97387
                              (let ()
                                (declare (not safe))
                                (cons _exn91461_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp97387)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn91455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91455_))
            (let ((_e91458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91455_ 'exception))))
              (if (macro-unterminated-process-exception? _e91458_)
                  (macro-unterminated-process-exception-procedure _e91458_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97390
                                (let ()
                                  (declare (not safe))
                                  (cons _e91458_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp97390)))))
            (if (macro-unterminated-process-exception? _exn91455_)
                (macro-unterminated-process-exception-procedure _exn91455_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97389
                              (let ()
                                (declare (not safe))
                                (cons _exn91455_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp97389)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn91451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91451_))
            (let ((_e91453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91451_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e91453_))
            (macro-wrong-number-of-arguments-exception? _exn91451_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn91447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91447_))
            (let ((_e91449_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91447_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91449_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e91449_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97392
                                (let ()
                                  (declare (not safe))
                                  (cons _e91449_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp97392)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91447_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn91447_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97391
                              (let ()
                                (declare (not safe))
                                (cons _exn91447_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp97391)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn91441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91441_))
            (let ((_e91444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91441_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91444_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e91444_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97394
                                (let ()
                                  (declare (not safe))
                                  (cons _e91444_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp97394)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91441_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn91441_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97393
                              (let ()
                                (declare (not safe))
                                (cons _exn91441_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp97393)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn91437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91437_))
            (let ((_e91439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91437_ 'exception))))
              (macro-wrong-number-of-values-exception? _e91439_))
            (macro-wrong-number-of-values-exception? _exn91437_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn91433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91433_))
            (let ((_e91435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91433_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91435_)
                  (macro-wrong-number-of-values-exception-code _e91435_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97396
                                (let ()
                                  (declare (not safe))
                                  (cons _e91435_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp97396)))))
            (if (macro-wrong-number-of-values-exception? _exn91433_)
                (macro-wrong-number-of-values-exception-code _exn91433_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97395
                              (let ()
                                (declare (not safe))
                                (cons _exn91433_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp97395)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn91429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91429_))
            (let ((_e91431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91429_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91431_)
                  (macro-wrong-number-of-values-exception-rte _e91431_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97398
                                (let ()
                                  (declare (not safe))
                                  (cons _e91431_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp97398)))))
            (if (macro-wrong-number-of-values-exception? _exn91429_)
                (macro-wrong-number-of-values-exception-rte _exn91429_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97397
                              (let ()
                                (declare (not safe))
                                (cons _exn91429_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp97397)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn91423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91423_))
            (let ((_e91426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91423_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91426_)
                  (macro-wrong-number-of-values-exception-vals _e91426_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97400
                                (let ()
                                  (declare (not safe))
                                  (cons _e91426_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp97400)))))
            (if (macro-wrong-number-of-values-exception? _exn91423_)
                (macro-wrong-number-of-values-exception-vals _exn91423_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97399
                              (let ()
                                (declare (not safe))
                                (cons _exn91423_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp97399)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn91417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91417_))
            (let ((_e91420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91417_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e91420_))
            (macro-wrong-processor-c-return-exception? _exn91417_))))))
