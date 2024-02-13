(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707841977)
  (begin
    (define Exception::t
      (let ((__tmp97175 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp97175
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args92578_ (apply make-instance Exception::t _$args92578_)))
    (define StackTrace::t
      (let ((__tmp97176 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp97176
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args92575_ (apply make-instance StackTrace::t _$args92575_)))
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
      (let ((__tmp97177 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp97177
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args92572_ (apply make-instance Error::t _$args92572_)))
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
      (let ((__tmp97178 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp97178
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args92569_
        (apply make-instance RuntimeException::t _$args92569_)))
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
      (lambda (_exn92564_ _continue92565_)
        (let ((_exn92567_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn92564_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn92567_ _continue92565_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn92560_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn92560_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn92560_ 'continuation))
                '#!void
                (let ((__tmp97179
                       (lambda (_cont92562_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn92560_
                            'continuation
                            _cont92562_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp97179)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn92560_))))
    (define error
      (lambda (_message92557_ . _irritants92558_)
        (raise (let ((__obj97169
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj97169
                  _message92557_
                  'irritants:
                  _irritants92558_)
                 __obj97169))))
    (define with-exception-handler
      (lambda (_handler92550_ _thunk92551_)
        (if (let () (declare (not safe)) (procedure? _handler92550_))
            '#!void
            (raise (let ((__obj97170
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97170
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92550_ '())))
                     __obj97170)))
        (if (let () (declare (not safe)) (procedure? _thunk92551_))
            '#!void
            (raise (let ((__obj97171
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97171
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92551_ '())))
                     __obj97171)))
        (let ((__tmp97180
               (lambda (_exn92553_)
                 (let ((_exn92555_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn92553_))))
                   (_handler92550_ _exn92555_)))))
          (declare (not safe))
          (##with-exception-handler __tmp97180 _thunk92551_))))
    (define with-catch
      (lambda (_handler92543_ _thunk92544_)
        (if (let () (declare (not safe)) (procedure? _handler92543_))
            '#!void
            (raise (let ((__obj97172
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97172
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92543_ '())))
                     __obj97172)))
        (if (let () (declare (not safe)) (procedure? _thunk92544_))
            '#!void
            (raise (let ((__obj97173
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97173
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92544_ '())))
                     __obj97173)))
        (let ((__tmp97181
               (lambda (_cont92546_)
                 (with-exception-handler
                  (lambda (_exn92548_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont92546_
                       _handler92543_
                       _exn92548_)))
                  _thunk92544_))))
          (declare (not safe))
          (##continuation-capture __tmp97181))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn92534_)
        (if (or (heap-overflow-exception? _exn92534_)
                (stack-overflow-exception? _exn92534_))
            _exn92534_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn92534_))
                _exn92534_
                (if (macro-exception? _exn92534_)
                    (let ((_rte92539_
                           (let ((__obj97174
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj97174
                                _exn92534_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj97174)))
                      (let ((__tmp97182
                             (lambda (_cont92541_)
                               (let ((__tmp97183
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont92541_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte92539_
                                  'continuation
                                  __tmp97183)))))
                        (declare (not safe))
                        (##continuation-capture __tmp97182))
                      _rte92539_)
                    _exn92534_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj92529_)
        (let ((_$e92531_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj92529_))))
          (if _$e92531_ _$e92531_ (error-exception? _obj92529_)))))
    (define error-message
      (lambda (_obj92527_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92527_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92527_ 'message))
            (if (error-exception? _obj92527_)
                (error-exception-message _obj92527_)
                '#f))))
    (define error-irritants
      (lambda (_obj92525_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92525_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92525_ 'irritants))
            (if (error-exception? _obj92525_)
                (error-exception-parameters _obj92525_)
                '#f))))
    (define error-trace
      (lambda (_obj92523_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92523_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92523_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e92505_ _port92506_)
        (let ((_$e92508_
               (let ()
                 (declare (not safe))
                 (method-ref _e92505_ 'display-exception))))
          (if _$e92508_
              ((lambda (_f92511_) (_f92511_ _e92505_ _port92506_)) _$e92508_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e92505_ _port92506_))))))
    (define display-exception__0
      (lambda (_e92516_)
        (let ((_port92518_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e92516_ _port92518_))))
    (define display-exception
      (lambda _g97185_
        (let ((_g97184_ (let () (declare (not safe)) (##length _g97185_))))
          (cond ((let () (declare (not safe)) (##fx= _g97184_ 1))
                 (apply (lambda (_e92516_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e92516_)))
                        _g97185_))
                ((let () (declare (not safe)) (##fx= _g97184_ 2))
                 (apply (lambda (_e92520_ _port92521_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e92520_ _port92521_)))
                        _g97185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g97185_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self92494_ _message92495_ . _rest92496_)
        (let ((_message92502_
               (if (let () (declare (not safe)) (string? _message92495_))
                   _message92495_
                   (call-with-output-string
                    '""
                    (lambda (_g9249792499_)
                      (display _message92495_ _g9249792499_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self92494_ 'message _message92502_))
          (apply class-instance-init! _self92494_ _rest92496_))))
    (define Error:::init!::specialize
      (lambda (__t97148)
        (let ((__message97149
               (let ((__tmp97150
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97148 'message))))
                 (if __tmp97150 __tmp97150 (error '"Unknown slot" 'message)))))
          (lambda (_self92494_ _message92495_ . _rest92496_)
            (let ((_message92502_
                   (if (let () (declare (not safe)) (string? _message92495_))
                       _message92495_
                       (call-with-output-string
                        '""
                        (lambda (_g9249792499_)
                          (display _message92495_ _g9249792499_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self92494_
                 _message92502_
                 __message97149
                 __t97148
                 '#f))
              (apply class-instance-init! _self92494_ _rest92496_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self92352_ _port92353_)
        (let ((_tmp-port92355_ (open-output-string))
              (_display-error-newline92356_
               (> (output-port-column _port92353_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92355_))
          (let ((__tmp97186
                 (lambda ()
                   (if _display-error-newline92356_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e92359_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92352_ 'where))))
                     (if _$e92359_ (display _$e92359_) (display '"?")))
                   (let ((__tmp97187
                          (let ((__tmp97188
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self92352_))))
                            (declare (not safe))
                            (##type-name __tmp97188))))
                     (declare (not safe))
                     (display* '" [" __tmp97187 '"]: "))
                   (let ((__tmp97189
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92352_ 'message))))
                     (declare (not safe))
                     (displayln __tmp97189))
                   (let ((_irritants92362_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92352_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants92362_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj92364_)
                              (write _obj92364_)
                              (write-char '#\space))
                            _irritants92362_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self92352_))
                            (dump-stack-trace?))
                       (let ((_cont9236592367_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self92352_
                                 'continuation))))
                         (if _cont9236592367_
                             (let ((_cont92370_ _cont9236592367_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont92370_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp97186
             current-output-port
             _tmp-port92355_))
          (let ((__tmp97190 (get-output-string _tmp-port92355_)))
            (declare (not safe))
            (##write-string __tmp97190 _port92353_)))))
    (define Error::display-exception::specialize
      (lambda (__t97151)
        (let ((__where97152
               (let ((__tmp97156
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97151 'where))))
                 (if __tmp97156 __tmp97156 (error '"Unknown slot" 'where))))
              (__continuation97153
               (let ((__tmp97157
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97151 'continuation))))
                 (if __tmp97157
                     __tmp97157
                     (error '"Unknown slot" 'continuation))))
              (__irritants97154
               (let ((__tmp97158
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97151 'irritants))))
                 (if __tmp97158
                     __tmp97158
                     (error '"Unknown slot" 'irritants))))
              (__message97155
               (let ((__tmp97159
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97151 'message))))
                 (if __tmp97159 __tmp97159 (error '"Unknown slot" 'message)))))
          (lambda (_self92352_ _port92353_)
            (let ((_tmp-port92355_ (open-output-string))
                  (_display-error-newline92356_
                   (> (output-port-column _port92353_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92355_))
              (let ((__tmp97191
                     (lambda ()
                       (if _display-error-newline92356_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e92359_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92352_
                                 __where97152
                                 __t97151
                                 '#f))))
                         (if _$e92359_ (display _$e92359_) (display '"?")))
                       (let ((__tmp97192
                              (let ((__tmp97193
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self92352_))))
                                (declare (not safe))
                                (##type-name __tmp97193))))
                         (declare (not safe))
                         (display* '" [" __tmp97192 '"]: "))
                       (let ((__tmp97194
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92352_
                                 __message97155
                                 __t97151
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp97194))
                       (let ((_irritants92362_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92352_
                                 __irritants97154
                                 __t97151
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants92362_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj92364_)
                                  (write _obj92364_)
                                  (write-char '#\space))
                                _irritants92362_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self92352_))
                                (dump-stack-trace?))
                           (let ((_cont9236592367_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self92352_
                                     __continuation97153
                                     __t97151
                                     '#f))))
                             (if _cont9236592367_
                                 (let ((_cont92370_ _cont9236592367_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont92370_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp97191
                 current-output-port
                 _tmp-port92355_))
              (let ((__tmp97195 (get-output-string _tmp-port92355_)))
                (declare (not safe))
                (##write-string __tmp97195 _port92353_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self92219_ _port92220_)
        (let ((_tmp-port92222_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92222_))
          (let ((__tmp97196
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self92219_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp97196 _tmp-port92222_))
          (if (dump-stack-trace?)
              (let ((_cont9222392225_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self92219_ 'continuation))))
                (if _cont9222392225_
                    (let ((_cont92228_ _cont9222392225_))
                      (display '"--- continuation backtrace:" _tmp-port92222_)
                      (newline _tmp-port92222_)
                      (display-continuation-backtrace
                       _cont92228_
                       _tmp-port92222_))
                    '#f))
              '#!void)
          (let ((__tmp97197 (get-output-string _tmp-port92222_)))
            (declare (not safe))
            (##write-string __tmp97197 _port92220_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t97160)
        (let ((__exception97161
               (let ((__tmp97163
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97160 'exception))))
                 (if __tmp97163
                     __tmp97163
                     (error '"Unknown slot" 'exception))))
              (__continuation97162
               (let ((__tmp97164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97160 'continuation))))
                 (if __tmp97164
                     __tmp97164
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self92219_ _port92220_)
            (let ((_tmp-port92222_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92222_))
              (let ((__tmp97198
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self92219_
                        __exception97161
                        __t97160
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp97198 _tmp-port92222_))
              (if (dump-stack-trace?)
                  (let ((_cont9222392225_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self92219_
                            __continuation97162
                            __t97160
                            '#f))))
                    (if _cont9222392225_
                        (let ((_cont92228_ _cont9222392225_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port92222_)
                          (newline _tmp-port92222_)
                          (display-continuation-backtrace
                           _cont92228_
                           _tmp-port92222_))
                        '#f))
                  '#!void)
              (let ((__tmp97199 (get-output-string _tmp-port92222_)))
                (declare (not safe))
                (##write-string __tmp97199 _port92220_)))))))
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
      (lambda (_port92091_)
        (if (macro-character-port? _port92091_)
            (let ((_old-width92093_
                   (macro-character-port-output-width _port92091_)))
              (macro-character-port-output-width-set!
               _port92091_
               (lambda (_port92095_) '256))
              _old-width92093_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port92088_ _old-width92089_)
        (if (macro-character-port? _port92088_)
            (macro-character-port-output-width-set!
             _port92088_
             _old-width92089_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e92086_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e92086_))))
    (define abandoned-mutex-exception?
      (lambda (_exn92080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92080_))
            (let ((_e92083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92080_ 'exception))))
              (macro-abandoned-mutex-exception? _e92083_))
            (macro-abandoned-mutex-exception? _exn92080_))))
    (define cfun-conversion-exception?
      (lambda (_exn92076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92076_))
            (let ((_e92078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92076_ 'exception))))
              (macro-cfun-conversion-exception? _e92078_))
            (macro-cfun-conversion-exception? _exn92076_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn92072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92072_))
            (let ((_e92074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92072_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92074_)
                  (macro-cfun-conversion-exception-arguments _e92074_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97201
                                (let ()
                                  (declare (not safe))
                                  (cons _e92074_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp97201)))))
            (if (macro-cfun-conversion-exception? _exn92072_)
                (macro-cfun-conversion-exception-arguments _exn92072_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97200
                              (let ()
                                (declare (not safe))
                                (cons _exn92072_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp97200)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn92068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92068_))
            (let ((_e92070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92068_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92070_)
                  (macro-cfun-conversion-exception-code _e92070_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97203
                                (let ()
                                  (declare (not safe))
                                  (cons _e92070_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp97203)))))
            (if (macro-cfun-conversion-exception? _exn92068_)
                (macro-cfun-conversion-exception-code _exn92068_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97202
                              (let ()
                                (declare (not safe))
                                (cons _exn92068_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp97202)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn92064_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92064_))
            (let ((_e92066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92064_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92066_)
                  (macro-cfun-conversion-exception-message _e92066_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97205
                                (let ()
                                  (declare (not safe))
                                  (cons _e92066_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp97205)))))
            (if (macro-cfun-conversion-exception? _exn92064_)
                (macro-cfun-conversion-exception-message _exn92064_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97204
                              (let ()
                                (declare (not safe))
                                (cons _exn92064_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp97204)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn92058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92058_))
            (let ((_e92061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92058_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92061_)
                  (macro-cfun-conversion-exception-procedure _e92061_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97207
                                (let ()
                                  (declare (not safe))
                                  (cons _e92061_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp97207)))))
            (if (macro-cfun-conversion-exception? _exn92058_)
                (macro-cfun-conversion-exception-procedure _exn92058_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97206
                              (let ()
                                (declare (not safe))
                                (cons _exn92058_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp97206)))))))
    (define datum-parsing-exception?
      (lambda (_exn92054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92054_))
            (let ((_e92056_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92054_ 'exception))))
              (macro-datum-parsing-exception? _e92056_))
            (macro-datum-parsing-exception? _exn92054_))))
    (define datum-parsing-exception-kind
      (lambda (_exn92050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92050_))
            (let ((_e92052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92050_ 'exception))))
              (if (macro-datum-parsing-exception? _e92052_)
                  (macro-datum-parsing-exception-kind _e92052_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97209
                                (let ()
                                  (declare (not safe))
                                  (cons _e92052_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp97209)))))
            (if (macro-datum-parsing-exception? _exn92050_)
                (macro-datum-parsing-exception-kind _exn92050_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97208
                              (let ()
                                (declare (not safe))
                                (cons _exn92050_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp97208)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn92046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92046_))
            (let ((_e92048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92046_ 'exception))))
              (if (macro-datum-parsing-exception? _e92048_)
                  (macro-datum-parsing-exception-parameters _e92048_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97211
                                (let ()
                                  (declare (not safe))
                                  (cons _e92048_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp97211)))))
            (if (macro-datum-parsing-exception? _exn92046_)
                (macro-datum-parsing-exception-parameters _exn92046_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97210
                              (let ()
                                (declare (not safe))
                                (cons _exn92046_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp97210)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn92040_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92040_))
            (let ((_e92043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92040_ 'exception))))
              (if (macro-datum-parsing-exception? _e92043_)
                  (macro-datum-parsing-exception-readenv _e92043_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97213
                                (let ()
                                  (declare (not safe))
                                  (cons _e92043_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp97213)))))
            (if (macro-datum-parsing-exception? _exn92040_)
                (macro-datum-parsing-exception-readenv _exn92040_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97212
                              (let ()
                                (declare (not safe))
                                (cons _exn92040_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp97212)))))))
    (define deadlock-exception?
      (lambda (_exn92034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92034_))
            (let ((_e92037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92034_ 'exception))))
              (macro-deadlock-exception? _e92037_))
            (macro-deadlock-exception? _exn92034_))))
    (define divide-by-zero-exception?
      (lambda (_exn92030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92030_))
            (let ((_e92032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92030_ 'exception))))
              (macro-divide-by-zero-exception? _e92032_))
            (macro-divide-by-zero-exception? _exn92030_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn92026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92026_))
            (let ((_e92028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92026_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92028_)
                  (macro-divide-by-zero-exception-arguments _e92028_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97215
                                (let ()
                                  (declare (not safe))
                                  (cons _e92028_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp97215)))))
            (if (macro-divide-by-zero-exception? _exn92026_)
                (macro-divide-by-zero-exception-arguments _exn92026_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97214
                              (let ()
                                (declare (not safe))
                                (cons _exn92026_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp97214)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn92020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92020_))
            (let ((_e92023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92020_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92023_)
                  (macro-divide-by-zero-exception-procedure _e92023_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97217
                                (let ()
                                  (declare (not safe))
                                  (cons _e92023_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp97217)))))
            (if (macro-divide-by-zero-exception? _exn92020_)
                (macro-divide-by-zero-exception-procedure _exn92020_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97216
                              (let ()
                                (declare (not safe))
                                (cons _exn92020_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp97216)))))))
    (define error-exception?
      (lambda (_exn92016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92016_))
            (let ((_e92018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92016_ 'exception))))
              (macro-error-exception? _e92018_))
            (macro-error-exception? _exn92016_))))
    (define error-exception-message
      (lambda (_exn92012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92012_))
            (let ((_e92014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92012_ 'exception))))
              (if (macro-error-exception? _e92014_)
                  (macro-error-exception-message _e92014_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97219
                                (let ()
                                  (declare (not safe))
                                  (cons _e92014_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp97219)))))
            (if (macro-error-exception? _exn92012_)
                (macro-error-exception-message _exn92012_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97218
                              (let ()
                                (declare (not safe))
                                (cons _exn92012_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp97218)))))))
    (define error-exception-parameters
      (lambda (_exn92006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92006_))
            (let ((_e92009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92006_ 'exception))))
              (if (macro-error-exception? _e92009_)
                  (macro-error-exception-parameters _e92009_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97221
                                (let ()
                                  (declare (not safe))
                                  (cons _e92009_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp97221)))))
            (if (macro-error-exception? _exn92006_)
                (macro-error-exception-parameters _exn92006_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97220
                              (let ()
                                (declare (not safe))
                                (cons _exn92006_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp97220)))))))
    (define expression-parsing-exception?
      (lambda (_exn92002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92002_))
            (let ((_e92004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92002_ 'exception))))
              (macro-expression-parsing-exception? _e92004_))
            (macro-expression-parsing-exception? _exn92002_))))
    (define expression-parsing-exception-kind
      (lambda (_exn91998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91998_))
            (let ((_e92000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91998_ 'exception))))
              (if (macro-expression-parsing-exception? _e92000_)
                  (macro-expression-parsing-exception-kind _e92000_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97223
                                (let ()
                                  (declare (not safe))
                                  (cons _e92000_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp97223)))))
            (if (macro-expression-parsing-exception? _exn91998_)
                (macro-expression-parsing-exception-kind _exn91998_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97222
                              (let ()
                                (declare (not safe))
                                (cons _exn91998_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp97222)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91994_))
            (let ((_e91996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91994_ 'exception))))
              (if (macro-expression-parsing-exception? _e91996_)
                  (macro-expression-parsing-exception-parameters _e91996_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97225
                                (let ()
                                  (declare (not safe))
                                  (cons _e91996_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp97225)))))
            (if (macro-expression-parsing-exception? _exn91994_)
                (macro-expression-parsing-exception-parameters _exn91994_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97224
                              (let ()
                                (declare (not safe))
                                (cons _exn91994_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp97224)))))))
    (define expression-parsing-exception-source
      (lambda (_exn91988_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91988_))
            (let ((_e91991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91988_ 'exception))))
              (if (macro-expression-parsing-exception? _e91991_)
                  (macro-expression-parsing-exception-source _e91991_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97227
                                (let ()
                                  (declare (not safe))
                                  (cons _e91991_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp97227)))))
            (if (macro-expression-parsing-exception? _exn91988_)
                (macro-expression-parsing-exception-source _exn91988_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97226
                              (let ()
                                (declare (not safe))
                                (cons _exn91988_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp97226)))))))
    (define file-exists-exception?
      (lambda (_exn91984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91984_))
            (let ((_e91986_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91984_ 'exception))))
              (macro-file-exists-exception? _e91986_))
            (macro-file-exists-exception? _exn91984_))))
    (define file-exists-exception-arguments
      (lambda (_exn91980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91980_))
            (let ((_e91982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91980_ 'exception))))
              (if (macro-file-exists-exception? _e91982_)
                  (macro-file-exists-exception-arguments _e91982_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97229
                                (let ()
                                  (declare (not safe))
                                  (cons _e91982_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp97229)))))
            (if (macro-file-exists-exception? _exn91980_)
                (macro-file-exists-exception-arguments _exn91980_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97228
                              (let ()
                                (declare (not safe))
                                (cons _exn91980_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp97228)))))))
    (define file-exists-exception-procedure
      (lambda (_exn91974_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91974_))
            (let ((_e91977_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91974_ 'exception))))
              (if (macro-file-exists-exception? _e91977_)
                  (macro-file-exists-exception-procedure _e91977_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97231
                                (let ()
                                  (declare (not safe))
                                  (cons _e91977_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp97231)))))
            (if (macro-file-exists-exception? _exn91974_)
                (macro-file-exists-exception-procedure _exn91974_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97230
                              (let ()
                                (declare (not safe))
                                (cons _exn91974_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp97230)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn91970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91970_))
            (let ((_e91972_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91970_ 'exception))))
              (macro-fixnum-overflow-exception? _e91972_))
            (macro-fixnum-overflow-exception? _exn91970_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn91966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91966_))
            (let ((_e91968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91966_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91968_)
                  (macro-fixnum-overflow-exception-arguments _e91968_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97233
                                (let ()
                                  (declare (not safe))
                                  (cons _e91968_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp97233)))))
            (if (macro-fixnum-overflow-exception? _exn91966_)
                (macro-fixnum-overflow-exception-arguments _exn91966_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97232
                              (let ()
                                (declare (not safe))
                                (cons _exn91966_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp97232)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn91960_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91960_))
            (let ((_e91963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91960_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91963_)
                  (macro-fixnum-overflow-exception-procedure _e91963_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97235
                                (let ()
                                  (declare (not safe))
                                  (cons _e91963_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp97235)))))
            (if (macro-fixnum-overflow-exception? _exn91960_)
                (macro-fixnum-overflow-exception-procedure _exn91960_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97234
                              (let ()
                                (declare (not safe))
                                (cons _exn91960_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp97234)))))))
    (define heap-overflow-exception?
      (lambda (_exn91954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91954_))
            (let ((_e91957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91954_ 'exception))))
              (macro-heap-overflow-exception? _e91957_))
            (macro-heap-overflow-exception? _exn91954_))))
    (define inactive-thread-exception?
      (lambda (_exn91950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91950_))
            (let ((_e91952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91950_ 'exception))))
              (macro-inactive-thread-exception? _e91952_))
            (macro-inactive-thread-exception? _exn91950_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn91946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91946_))
            (let ((_e91948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91946_ 'exception))))
              (if (macro-inactive-thread-exception? _e91948_)
                  (macro-inactive-thread-exception-arguments _e91948_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97237
                                (let ()
                                  (declare (not safe))
                                  (cons _e91948_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp97237)))))
            (if (macro-inactive-thread-exception? _exn91946_)
                (macro-inactive-thread-exception-arguments _exn91946_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97236
                              (let ()
                                (declare (not safe))
                                (cons _exn91946_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp97236)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn91940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91940_))
            (let ((_e91943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91940_ 'exception))))
              (if (macro-inactive-thread-exception? _e91943_)
                  (macro-inactive-thread-exception-procedure _e91943_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97239
                                (let ()
                                  (declare (not safe))
                                  (cons _e91943_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp97239)))))
            (if (macro-inactive-thread-exception? _exn91940_)
                (macro-inactive-thread-exception-procedure _exn91940_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97238
                              (let ()
                                (declare (not safe))
                                (cons _exn91940_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp97238)))))))
    (define initialized-thread-exception?
      (lambda (_exn91936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91936_))
            (let ((_e91938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91936_ 'exception))))
              (macro-initialized-thread-exception? _e91938_))
            (macro-initialized-thread-exception? _exn91936_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn91932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91932_))
            (let ((_e91934_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91932_ 'exception))))
              (if (macro-initialized-thread-exception? _e91934_)
                  (macro-initialized-thread-exception-arguments _e91934_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97241
                                (let ()
                                  (declare (not safe))
                                  (cons _e91934_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp97241)))))
            (if (macro-initialized-thread-exception? _exn91932_)
                (macro-initialized-thread-exception-arguments _exn91932_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97240
                              (let ()
                                (declare (not safe))
                                (cons _exn91932_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp97240)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn91926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91926_))
            (let ((_e91929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91926_ 'exception))))
              (if (macro-initialized-thread-exception? _e91929_)
                  (macro-initialized-thread-exception-procedure _e91929_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97243
                                (let ()
                                  (declare (not safe))
                                  (cons _e91929_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp97243)))))
            (if (macro-initialized-thread-exception? _exn91926_)
                (macro-initialized-thread-exception-procedure _exn91926_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97242
                              (let ()
                                (declare (not safe))
                                (cons _exn91926_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp97242)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn91922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91922_))
            (let ((_e91924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91922_ 'exception))))
              (macro-invalid-hash-number-exception? _e91924_))
            (macro-invalid-hash-number-exception? _exn91922_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn91918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91918_))
            (let ((_e91920_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91918_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91920_)
                  (macro-invalid-hash-number-exception-arguments _e91920_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97245
                                (let ()
                                  (declare (not safe))
                                  (cons _e91920_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp97245)))))
            (if (macro-invalid-hash-number-exception? _exn91918_)
                (macro-invalid-hash-number-exception-arguments _exn91918_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97244
                              (let ()
                                (declare (not safe))
                                (cons _exn91918_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp97244)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn91912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91912_))
            (let ((_e91915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91912_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91915_)
                  (macro-invalid-hash-number-exception-procedure _e91915_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97247
                                (let ()
                                  (declare (not safe))
                                  (cons _e91915_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp97247)))))
            (if (macro-invalid-hash-number-exception? _exn91912_)
                (macro-invalid-hash-number-exception-procedure _exn91912_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97246
                              (let ()
                                (declare (not safe))
                                (cons _exn91912_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp97246)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn91908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91908_))
            (let ((_e91910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91908_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e91910_))
            (macro-invalid-utf8-encoding-exception? _exn91908_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn91904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91904_))
            (let ((_e91906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91904_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91906_)
                  (macro-invalid-utf8-encoding-exception-arguments _e91906_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97249
                                (let ()
                                  (declare (not safe))
                                  (cons _e91906_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp97249)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91904_)
                (macro-invalid-utf8-encoding-exception-arguments _exn91904_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97248
                              (let ()
                                (declare (not safe))
                                (cons _exn91904_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp97248)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn91898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91898_))
            (let ((_e91901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91898_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91901_)
                  (macro-invalid-utf8-encoding-exception-procedure _e91901_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97251
                                (let ()
                                  (declare (not safe))
                                  (cons _e91901_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp97251)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91898_)
                (macro-invalid-utf8-encoding-exception-procedure _exn91898_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97250
                              (let ()
                                (declare (not safe))
                                (cons _exn91898_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp97250)))))))
    (define join-timeout-exception?
      (lambda (_exn91894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91894_))
            (let ((_e91896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91894_ 'exception))))
              (macro-join-timeout-exception? _e91896_))
            (macro-join-timeout-exception? _exn91894_))))
    (define join-timeout-exception-arguments
      (lambda (_exn91890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91890_))
            (let ((_e91892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91890_ 'exception))))
              (if (macro-join-timeout-exception? _e91892_)
                  (macro-join-timeout-exception-arguments _e91892_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97253
                                (let ()
                                  (declare (not safe))
                                  (cons _e91892_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp97253)))))
            (if (macro-join-timeout-exception? _exn91890_)
                (macro-join-timeout-exception-arguments _exn91890_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97252
                              (let ()
                                (declare (not safe))
                                (cons _exn91890_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp97252)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn91884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91884_))
            (let ((_e91887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91884_ 'exception))))
              (if (macro-join-timeout-exception? _e91887_)
                  (macro-join-timeout-exception-procedure _e91887_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97255
                                (let ()
                                  (declare (not safe))
                                  (cons _e91887_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp97255)))))
            (if (macro-join-timeout-exception? _exn91884_)
                (macro-join-timeout-exception-procedure _exn91884_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97254
                              (let ()
                                (declare (not safe))
                                (cons _exn91884_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp97254)))))))
    (define keyword-expected-exception?
      (lambda (_exn91880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91880_))
            (let ((_e91882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91880_ 'exception))))
              (macro-keyword-expected-exception? _e91882_))
            (macro-keyword-expected-exception? _exn91880_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn91876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91876_))
            (let ((_e91878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91876_ 'exception))))
              (if (macro-keyword-expected-exception? _e91878_)
                  (macro-keyword-expected-exception-arguments _e91878_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97257
                                (let ()
                                  (declare (not safe))
                                  (cons _e91878_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp97257)))))
            (if (macro-keyword-expected-exception? _exn91876_)
                (macro-keyword-expected-exception-arguments _exn91876_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97256
                              (let ()
                                (declare (not safe))
                                (cons _exn91876_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp97256)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn91870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91870_))
            (let ((_e91873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91870_ 'exception))))
              (if (macro-keyword-expected-exception? _e91873_)
                  (macro-keyword-expected-exception-procedure _e91873_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97259
                                (let ()
                                  (declare (not safe))
                                  (cons _e91873_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp97259)))))
            (if (macro-keyword-expected-exception? _exn91870_)
                (macro-keyword-expected-exception-procedure _exn91870_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97258
                              (let ()
                                (declare (not safe))
                                (cons _exn91870_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp97258)))))))
    (define length-mismatch-exception?
      (lambda (_exn91866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91866_))
            (let ((_e91868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91866_ 'exception))))
              (macro-length-mismatch-exception? _e91868_))
            (macro-length-mismatch-exception? _exn91866_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn91862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91862_))
            (let ((_e91864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91862_ 'exception))))
              (if (macro-length-mismatch-exception? _e91864_)
                  (macro-length-mismatch-exception-arg-id _e91864_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97261
                                (let ()
                                  (declare (not safe))
                                  (cons _e91864_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp97261)))))
            (if (macro-length-mismatch-exception? _exn91862_)
                (macro-length-mismatch-exception-arg-id _exn91862_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97260
                              (let ()
                                (declare (not safe))
                                (cons _exn91862_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp97260)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn91858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91858_))
            (let ((_e91860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91858_ 'exception))))
              (if (macro-length-mismatch-exception? _e91860_)
                  (macro-length-mismatch-exception-arguments _e91860_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97263
                                (let ()
                                  (declare (not safe))
                                  (cons _e91860_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp97263)))))
            (if (macro-length-mismatch-exception? _exn91858_)
                (macro-length-mismatch-exception-arguments _exn91858_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97262
                              (let ()
                                (declare (not safe))
                                (cons _exn91858_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp97262)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn91852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91852_))
            (let ((_e91855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91852_ 'exception))))
              (if (macro-length-mismatch-exception? _e91855_)
                  (macro-length-mismatch-exception-procedure _e91855_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97265
                                (let ()
                                  (declare (not safe))
                                  (cons _e91855_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp97265)))))
            (if (macro-length-mismatch-exception? _exn91852_)
                (macro-length-mismatch-exception-procedure _exn91852_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97264
                              (let ()
                                (declare (not safe))
                                (cons _exn91852_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp97264)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn91848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91848_))
            (let ((_e91850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91848_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e91850_))
            (macro-mailbox-receive-timeout-exception? _exn91848_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn91844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91844_))
            (let ((_e91846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91844_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91846_)
                  (macro-mailbox-receive-timeout-exception-arguments _e91846_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97267
                                (let ()
                                  (declare (not safe))
                                  (cons _e91846_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp97267)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91844_)
                (macro-mailbox-receive-timeout-exception-arguments _exn91844_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97266
                              (let ()
                                (declare (not safe))
                                (cons _exn91844_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp97266)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn91838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91838_))
            (let ((_e91841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91838_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91841_)
                  (macro-mailbox-receive-timeout-exception-procedure _e91841_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97269
                                (let ()
                                  (declare (not safe))
                                  (cons _e91841_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp97269)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91838_)
                (macro-mailbox-receive-timeout-exception-procedure _exn91838_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97268
                              (let ()
                                (declare (not safe))
                                (cons _exn91838_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp97268)))))))
    (define module-not-found-exception?
      (lambda (_exn91834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91834_))
            (let ((_e91836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91834_ 'exception))))
              (macro-module-not-found-exception? _e91836_))
            (macro-module-not-found-exception? _exn91834_))))
    (define module-not-found-exception-arguments
      (lambda (_exn91830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91830_))
            (let ((_e91832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91830_ 'exception))))
              (if (macro-module-not-found-exception? _e91832_)
                  (macro-module-not-found-exception-arguments _e91832_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97271
                                (let ()
                                  (declare (not safe))
                                  (cons _e91832_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp97271)))))
            (if (macro-module-not-found-exception? _exn91830_)
                (macro-module-not-found-exception-arguments _exn91830_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97270
                              (let ()
                                (declare (not safe))
                                (cons _exn91830_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp97270)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn91824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91824_))
            (let ((_e91827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91824_ 'exception))))
              (if (macro-module-not-found-exception? _e91827_)
                  (macro-module-not-found-exception-procedure _e91827_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97273
                                (let ()
                                  (declare (not safe))
                                  (cons _e91827_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp97273)))))
            (if (macro-module-not-found-exception? _exn91824_)
                (macro-module-not-found-exception-procedure _exn91824_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97272
                              (let ()
                                (declare (not safe))
                                (cons _exn91824_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp97272)))))))
    (define multiple-c-return-exception?
      (lambda (_exn91818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91818_))
            (let ((_e91821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91818_ 'exception))))
              (macro-multiple-c-return-exception? _e91821_))
            (macro-multiple-c-return-exception? _exn91818_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn91814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91814_))
            (let ((_e91816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91814_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e91816_))
            (macro-no-such-file-or-directory-exception? _exn91814_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn91810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91810_))
            (let ((_e91812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91810_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91812_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e91812_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97275
                                (let ()
                                  (declare (not safe))
                                  (cons _e91812_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp97275)))))
            (if (macro-no-such-file-or-directory-exception? _exn91810_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn91810_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97274
                              (let ()
                                (declare (not safe))
                                (cons _exn91810_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp97274)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn91804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91804_))
            (let ((_e91807_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91804_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91807_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e91807_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97277
                                (let ()
                                  (declare (not safe))
                                  (cons _e91807_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp97277)))))
            (if (macro-no-such-file-or-directory-exception? _exn91804_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn91804_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97276
                              (let ()
                                (declare (not safe))
                                (cons _exn91804_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp97276)))))))
    (define noncontinuable-exception?
      (lambda (_exn91800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91800_))
            (let ((_e91802_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91800_ 'exception))))
              (macro-noncontinuable-exception? _e91802_))
            (macro-noncontinuable-exception? _exn91800_))))
    (define noncontinuable-exception-reason
      (lambda (_exn91794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91794_))
            (let ((_e91797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91794_ 'exception))))
              (if (macro-noncontinuable-exception? _e91797_)
                  (macro-noncontinuable-exception-reason _e91797_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp97279
                                (let ()
                                  (declare (not safe))
                                  (cons _e91797_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp97279)))))
            (if (macro-noncontinuable-exception? _exn91794_)
                (macro-noncontinuable-exception-reason _exn91794_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp97278
                              (let ()
                                (declare (not safe))
                                (cons _exn91794_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp97278)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn91790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91790_))
            (let ((_e91792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91790_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e91792_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn91790_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn91786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91786_))
            (let ((_e91788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91786_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91788_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e91788_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97281
                                (let ()
                                  (declare (not safe))
                                  (cons _e91788_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp97281)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91786_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn91786_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97280
                              (let ()
                                (declare (not safe))
                                (cons _exn91786_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp97280)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn91780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91780_))
            (let ((_e91783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91780_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91783_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e91783_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97283
                                (let ()
                                  (declare (not safe))
                                  (cons _e91783_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp97283)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91780_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn91780_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97282
                              (let ()
                                (declare (not safe))
                                (cons _exn91780_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp97282)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn91776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91776_))
            (let ((_e91778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91776_ 'exception))))
              (macro-nonprocedure-operator-exception? _e91778_))
            (macro-nonprocedure-operator-exception? _exn91776_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn91772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91772_))
            (let ((_e91774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91772_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91774_)
                  (macro-nonprocedure-operator-exception-arguments _e91774_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97285
                                (let ()
                                  (declare (not safe))
                                  (cons _e91774_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp97285)))))
            (if (macro-nonprocedure-operator-exception? _exn91772_)
                (macro-nonprocedure-operator-exception-arguments _exn91772_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97284
                              (let ()
                                (declare (not safe))
                                (cons _exn91772_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp97284)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn91768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91768_))
            (let ((_e91770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91768_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91770_)
                  (macro-nonprocedure-operator-exception-code _e91770_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97287
                                (let ()
                                  (declare (not safe))
                                  (cons _e91770_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp97287)))))
            (if (macro-nonprocedure-operator-exception? _exn91768_)
                (macro-nonprocedure-operator-exception-code _exn91768_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97286
                              (let ()
                                (declare (not safe))
                                (cons _exn91768_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp97286)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn91764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91764_))
            (let ((_e91766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91764_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91766_)
                  (macro-nonprocedure-operator-exception-operator _e91766_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97289
                                (let ()
                                  (declare (not safe))
                                  (cons _e91766_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp97289)))))
            (if (macro-nonprocedure-operator-exception? _exn91764_)
                (macro-nonprocedure-operator-exception-operator _exn91764_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97288
                              (let ()
                                (declare (not safe))
                                (cons _exn91764_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp97288)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn91758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91758_))
            (let ((_e91761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91758_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91761_)
                  (macro-nonprocedure-operator-exception-rte _e91761_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97291
                                (let ()
                                  (declare (not safe))
                                  (cons _e91761_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp97291)))))
            (if (macro-nonprocedure-operator-exception? _exn91758_)
                (macro-nonprocedure-operator-exception-rte _exn91758_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97290
                              (let ()
                                (declare (not safe))
                                (cons _exn91758_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp97290)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn91754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91754_))
            (let ((_e91756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91754_ 'exception))))
              (macro-not-in-compilation-context-exception? _e91756_))
            (macro-not-in-compilation-context-exception? _exn91754_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn91750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91750_))
            (let ((_e91752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91750_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91752_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e91752_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97293
                                (let ()
                                  (declare (not safe))
                                  (cons _e91752_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp97293)))))
            (if (macro-not-in-compilation-context-exception? _exn91750_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn91750_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97292
                              (let ()
                                (declare (not safe))
                                (cons _exn91750_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp97292)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn91744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91744_))
            (let ((_e91747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91744_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91747_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e91747_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97295
                                (let ()
                                  (declare (not safe))
                                  (cons _e91747_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp97295)))))
            (if (macro-not-in-compilation-context-exception? _exn91744_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn91744_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97294
                              (let ()
                                (declare (not safe))
                                (cons _exn91744_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp97294)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn91740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91740_))
            (let ((_e91742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91740_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e91742_))
            (macro-number-of-arguments-limit-exception? _exn91740_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn91736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91736_))
            (let ((_e91738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91736_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91738_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e91738_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97297
                                (let ()
                                  (declare (not safe))
                                  (cons _e91738_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp97297)))))
            (if (macro-number-of-arguments-limit-exception? _exn91736_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn91736_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97296
                              (let ()
                                (declare (not safe))
                                (cons _exn91736_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp97296)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn91730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91730_))
            (let ((_e91733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91730_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91733_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e91733_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97299
                                (let ()
                                  (declare (not safe))
                                  (cons _e91733_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp97299)))))
            (if (macro-number-of-arguments-limit-exception? _exn91730_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn91730_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97298
                              (let ()
                                (declare (not safe))
                                (cons _exn91730_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp97298)))))))
    (define os-exception?
      (lambda (_exn91726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91726_))
            (let ((_e91728_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91726_ 'exception))))
              (macro-os-exception? _e91728_))
            (macro-os-exception? _exn91726_))))
    (define os-exception-arguments
      (lambda (_exn91722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91722_))
            (let ((_e91724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91722_ 'exception))))
              (if (macro-os-exception? _e91724_)
                  (macro-os-exception-arguments _e91724_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97301
                                (let ()
                                  (declare (not safe))
                                  (cons _e91724_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp97301)))))
            (if (macro-os-exception? _exn91722_)
                (macro-os-exception-arguments _exn91722_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97300
                              (let ()
                                (declare (not safe))
                                (cons _exn91722_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp97300)))))))
    (define os-exception-code
      (lambda (_exn91718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91718_))
            (let ((_e91720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91718_ 'exception))))
              (if (macro-os-exception? _e91720_)
                  (macro-os-exception-code _e91720_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97303
                                (let ()
                                  (declare (not safe))
                                  (cons _e91720_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp97303)))))
            (if (macro-os-exception? _exn91718_)
                (macro-os-exception-code _exn91718_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97302
                              (let ()
                                (declare (not safe))
                                (cons _exn91718_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp97302)))))))
    (define os-exception-message
      (lambda (_exn91714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91714_))
            (let ((_e91716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91714_ 'exception))))
              (if (macro-os-exception? _e91716_)
                  (macro-os-exception-message _e91716_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97305
                                (let ()
                                  (declare (not safe))
                                  (cons _e91716_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp97305)))))
            (if (macro-os-exception? _exn91714_)
                (macro-os-exception-message _exn91714_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97304
                              (let ()
                                (declare (not safe))
                                (cons _exn91714_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp97304)))))))
    (define os-exception-procedure
      (lambda (_exn91708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91708_))
            (let ((_e91711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91708_ 'exception))))
              (if (macro-os-exception? _e91711_)
                  (macro-os-exception-procedure _e91711_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97307
                                (let ()
                                  (declare (not safe))
                                  (cons _e91711_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp97307)))))
            (if (macro-os-exception? _exn91708_)
                (macro-os-exception-procedure _exn91708_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97306
                              (let ()
                                (declare (not safe))
                                (cons _exn91708_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp97306)))))))
    (define permission-denied-exception?
      (lambda (_exn91704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91704_))
            (let ((_e91706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91704_ 'exception))))
              (macro-permission-denied-exception? _e91706_))
            (macro-permission-denied-exception? _exn91704_))))
    (define permission-denied-exception-arguments
      (lambda (_exn91700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91700_))
            (let ((_e91702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91700_ 'exception))))
              (if (macro-permission-denied-exception? _e91702_)
                  (macro-permission-denied-exception-arguments _e91702_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97309
                                (let ()
                                  (declare (not safe))
                                  (cons _e91702_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp97309)))))
            (if (macro-permission-denied-exception? _exn91700_)
                (macro-permission-denied-exception-arguments _exn91700_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97308
                              (let ()
                                (declare (not safe))
                                (cons _exn91700_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp97308)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn91694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91694_))
            (let ((_e91697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91694_ 'exception))))
              (if (macro-permission-denied-exception? _e91697_)
                  (macro-permission-denied-exception-procedure _e91697_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97311
                                (let ()
                                  (declare (not safe))
                                  (cons _e91697_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp97311)))))
            (if (macro-permission-denied-exception? _exn91694_)
                (macro-permission-denied-exception-procedure _exn91694_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97310
                              (let ()
                                (declare (not safe))
                                (cons _exn91694_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp97310)))))))
    (define range-exception?
      (lambda (_exn91690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91690_))
            (let ((_e91692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91690_ 'exception))))
              (macro-range-exception? _e91692_))
            (macro-range-exception? _exn91690_))))
    (define range-exception-arg-id
      (lambda (_exn91686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91686_))
            (let ((_e91688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91686_ 'exception))))
              (if (macro-range-exception? _e91688_)
                  (macro-range-exception-arg-id _e91688_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97313
                                (let ()
                                  (declare (not safe))
                                  (cons _e91688_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp97313)))))
            (if (macro-range-exception? _exn91686_)
                (macro-range-exception-arg-id _exn91686_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97312
                              (let ()
                                (declare (not safe))
                                (cons _exn91686_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp97312)))))))
    (define range-exception-arguments
      (lambda (_exn91682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91682_))
            (let ((_e91684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91682_ 'exception))))
              (if (macro-range-exception? _e91684_)
                  (macro-range-exception-arguments _e91684_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97315
                                (let ()
                                  (declare (not safe))
                                  (cons _e91684_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp97315)))))
            (if (macro-range-exception? _exn91682_)
                (macro-range-exception-arguments _exn91682_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97314
                              (let ()
                                (declare (not safe))
                                (cons _exn91682_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp97314)))))))
    (define range-exception-procedure
      (lambda (_exn91676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91676_))
            (let ((_e91679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91676_ 'exception))))
              (if (macro-range-exception? _e91679_)
                  (macro-range-exception-procedure _e91679_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97317
                                (let ()
                                  (declare (not safe))
                                  (cons _e91679_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp97317)))))
            (if (macro-range-exception? _exn91676_)
                (macro-range-exception-procedure _exn91676_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97316
                              (let ()
                                (declare (not safe))
                                (cons _exn91676_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp97316)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn91672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91672_))
            (let ((_e91674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91672_ 'exception))))
              (macro-rpc-remote-error-exception? _e91674_))
            (macro-rpc-remote-error-exception? _exn91672_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn91668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91668_))
            (let ((_e91670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91668_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91670_)
                  (macro-rpc-remote-error-exception-arguments _e91670_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97319
                                (let ()
                                  (declare (not safe))
                                  (cons _e91670_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp97319)))))
            (if (macro-rpc-remote-error-exception? _exn91668_)
                (macro-rpc-remote-error-exception-arguments _exn91668_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97318
                              (let ()
                                (declare (not safe))
                                (cons _exn91668_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp97318)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn91664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91664_))
            (let ((_e91666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91664_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91666_)
                  (macro-rpc-remote-error-exception-message _e91666_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97321
                                (let ()
                                  (declare (not safe))
                                  (cons _e91666_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp97321)))))
            (if (macro-rpc-remote-error-exception? _exn91664_)
                (macro-rpc-remote-error-exception-message _exn91664_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97320
                              (let ()
                                (declare (not safe))
                                (cons _exn91664_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp97320)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn91658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91658_))
            (let ((_e91661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91658_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91661_)
                  (macro-rpc-remote-error-exception-procedure _e91661_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97323
                                (let ()
                                  (declare (not safe))
                                  (cons _e91661_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp97323)))))
            (if (macro-rpc-remote-error-exception? _exn91658_)
                (macro-rpc-remote-error-exception-procedure _exn91658_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97322
                              (let ()
                                (declare (not safe))
                                (cons _exn91658_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp97322)))))))
    (define scheduler-exception?
      (lambda (_exn91654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91654_))
            (let ((_e91656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91654_ 'exception))))
              (macro-scheduler-exception? _e91656_))
            (macro-scheduler-exception? _exn91654_))))
    (define scheduler-exception-reason
      (lambda (_exn91648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91648_))
            (let ((_e91651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91648_ 'exception))))
              (if (macro-scheduler-exception? _e91651_)
                  (macro-scheduler-exception-reason _e91651_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp97325
                                (let ()
                                  (declare (not safe))
                                  (cons _e91651_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp97325)))))
            (if (macro-scheduler-exception? _exn91648_)
                (macro-scheduler-exception-reason _exn91648_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp97324
                              (let ()
                                (declare (not safe))
                                (cons _exn91648_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp97324)))))))
    (define sfun-conversion-exception?
      (lambda (_exn91644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91644_))
            (let ((_e91646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91644_ 'exception))))
              (macro-sfun-conversion-exception? _e91646_))
            (macro-sfun-conversion-exception? _exn91644_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn91640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91640_))
            (let ((_e91642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91640_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91642_)
                  (macro-sfun-conversion-exception-arguments _e91642_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97327
                                (let ()
                                  (declare (not safe))
                                  (cons _e91642_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp97327)))))
            (if (macro-sfun-conversion-exception? _exn91640_)
                (macro-sfun-conversion-exception-arguments _exn91640_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97326
                              (let ()
                                (declare (not safe))
                                (cons _exn91640_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp97326)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn91636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91636_))
            (let ((_e91638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91636_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91638_)
                  (macro-sfun-conversion-exception-code _e91638_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97329
                                (let ()
                                  (declare (not safe))
                                  (cons _e91638_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp97329)))))
            (if (macro-sfun-conversion-exception? _exn91636_)
                (macro-sfun-conversion-exception-code _exn91636_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97328
                              (let ()
                                (declare (not safe))
                                (cons _exn91636_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp97328)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn91632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91632_))
            (let ((_e91634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91632_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91634_)
                  (macro-sfun-conversion-exception-message _e91634_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97331
                                (let ()
                                  (declare (not safe))
                                  (cons _e91634_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp97331)))))
            (if (macro-sfun-conversion-exception? _exn91632_)
                (macro-sfun-conversion-exception-message _exn91632_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97330
                              (let ()
                                (declare (not safe))
                                (cons _exn91632_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp97330)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn91626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91626_))
            (let ((_e91629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91626_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91629_)
                  (macro-sfun-conversion-exception-procedure _e91629_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97333
                                (let ()
                                  (declare (not safe))
                                  (cons _e91629_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp97333)))))
            (if (macro-sfun-conversion-exception? _exn91626_)
                (macro-sfun-conversion-exception-procedure _exn91626_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97332
                              (let ()
                                (declare (not safe))
                                (cons _exn91626_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp97332)))))))
    (define stack-overflow-exception?
      (lambda (_exn91620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91620_))
            (let ((_e91623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91620_ 'exception))))
              (macro-stack-overflow-exception? _e91623_))
            (macro-stack-overflow-exception? _exn91620_))))
    (define started-thread-exception?
      (lambda (_exn91616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91616_))
            (let ((_e91618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91616_ 'exception))))
              (macro-started-thread-exception? _e91618_))
            (macro-started-thread-exception? _exn91616_))))
    (define started-thread-exception-arguments
      (lambda (_exn91612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91612_))
            (let ((_e91614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91612_ 'exception))))
              (if (macro-started-thread-exception? _e91614_)
                  (macro-started-thread-exception-arguments _e91614_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97335
                                (let ()
                                  (declare (not safe))
                                  (cons _e91614_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp97335)))))
            (if (macro-started-thread-exception? _exn91612_)
                (macro-started-thread-exception-arguments _exn91612_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97334
                              (let ()
                                (declare (not safe))
                                (cons _exn91612_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp97334)))))))
    (define started-thread-exception-procedure
      (lambda (_exn91606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91606_))
            (let ((_e91609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91606_ 'exception))))
              (if (macro-started-thread-exception? _e91609_)
                  (macro-started-thread-exception-procedure _e91609_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97337
                                (let ()
                                  (declare (not safe))
                                  (cons _e91609_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp97337)))))
            (if (macro-started-thread-exception? _exn91606_)
                (macro-started-thread-exception-procedure _exn91606_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97336
                              (let ()
                                (declare (not safe))
                                (cons _exn91606_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp97336)))))))
    (define terminated-thread-exception?
      (lambda (_exn91602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91602_))
            (let ((_e91604_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91602_ 'exception))))
              (macro-terminated-thread-exception? _e91604_))
            (macro-terminated-thread-exception? _exn91602_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn91598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91598_))
            (let ((_e91600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91598_ 'exception))))
              (if (macro-terminated-thread-exception? _e91600_)
                  (macro-terminated-thread-exception-arguments _e91600_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97339
                                (let ()
                                  (declare (not safe))
                                  (cons _e91600_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp97339)))))
            (if (macro-terminated-thread-exception? _exn91598_)
                (macro-terminated-thread-exception-arguments _exn91598_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97338
                              (let ()
                                (declare (not safe))
                                (cons _exn91598_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp97338)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn91592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91592_))
            (let ((_e91595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91592_ 'exception))))
              (if (macro-terminated-thread-exception? _e91595_)
                  (macro-terminated-thread-exception-procedure _e91595_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97341
                                (let ()
                                  (declare (not safe))
                                  (cons _e91595_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp97341)))))
            (if (macro-terminated-thread-exception? _exn91592_)
                (macro-terminated-thread-exception-procedure _exn91592_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97340
                              (let ()
                                (declare (not safe))
                                (cons _exn91592_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp97340)))))))
    (define type-exception?
      (lambda (_exn91588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91588_))
            (let ((_e91590_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91588_ 'exception))))
              (macro-type-exception? _e91590_))
            (macro-type-exception? _exn91588_))))
    (define type-exception-arg-id
      (lambda (_exn91584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91584_))
            (let ((_e91586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91584_ 'exception))))
              (if (macro-type-exception? _e91586_)
                  (macro-type-exception-arg-id _e91586_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97343
                                (let ()
                                  (declare (not safe))
                                  (cons _e91586_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp97343)))))
            (if (macro-type-exception? _exn91584_)
                (macro-type-exception-arg-id _exn91584_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97342
                              (let ()
                                (declare (not safe))
                                (cons _exn91584_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp97342)))))))
    (define type-exception-arguments
      (lambda (_exn91580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91580_))
            (let ((_e91582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91580_ 'exception))))
              (if (macro-type-exception? _e91582_)
                  (macro-type-exception-arguments _e91582_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97345
                                (let ()
                                  (declare (not safe))
                                  (cons _e91582_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp97345)))))
            (if (macro-type-exception? _exn91580_)
                (macro-type-exception-arguments _exn91580_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97344
                              (let ()
                                (declare (not safe))
                                (cons _exn91580_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp97344)))))))
    (define type-exception-procedure
      (lambda (_exn91576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91576_))
            (let ((_e91578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91576_ 'exception))))
              (if (macro-type-exception? _e91578_)
                  (macro-type-exception-procedure _e91578_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97347
                                (let ()
                                  (declare (not safe))
                                  (cons _e91578_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp97347)))))
            (if (macro-type-exception? _exn91576_)
                (macro-type-exception-procedure _exn91576_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97346
                              (let ()
                                (declare (not safe))
                                (cons _exn91576_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp97346)))))))
    (define type-exception-type-id
      (lambda (_exn91570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91570_))
            (let ((_e91573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91570_ 'exception))))
              (if (macro-type-exception? _e91573_)
                  (macro-type-exception-type-id _e91573_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97349
                                (let ()
                                  (declare (not safe))
                                  (cons _e91573_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp97349)))))
            (if (macro-type-exception? _exn91570_)
                (macro-type-exception-type-id _exn91570_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97348
                              (let ()
                                (declare (not safe))
                                (cons _exn91570_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp97348)))))))
    (define unbound-global-exception?
      (lambda (_exn91566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91566_))
            (let ((_e91568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91566_ 'exception))))
              (macro-unbound-global-exception? _e91568_))
            (macro-unbound-global-exception? _exn91566_))))
    (define unbound-global-exception-code
      (lambda (_exn91562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91562_))
            (let ((_e91564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91562_ 'exception))))
              (if (macro-unbound-global-exception? _e91564_)
                  (macro-unbound-global-exception-code _e91564_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97351
                                (let ()
                                  (declare (not safe))
                                  (cons _e91564_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp97351)))))
            (if (macro-unbound-global-exception? _exn91562_)
                (macro-unbound-global-exception-code _exn91562_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97350
                              (let ()
                                (declare (not safe))
                                (cons _exn91562_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp97350)))))))
    (define unbound-global-exception-rte
      (lambda (_exn91558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91558_))
            (let ((_e91560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91558_ 'exception))))
              (if (macro-unbound-global-exception? _e91560_)
                  (macro-unbound-global-exception-rte _e91560_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97353
                                (let ()
                                  (declare (not safe))
                                  (cons _e91560_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp97353)))))
            (if (macro-unbound-global-exception? _exn91558_)
                (macro-unbound-global-exception-rte _exn91558_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97352
                              (let ()
                                (declare (not safe))
                                (cons _exn91558_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp97352)))))))
    (define unbound-global-exception-variable
      (lambda (_exn91552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91552_))
            (let ((_e91555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91552_ 'exception))))
              (if (macro-unbound-global-exception? _e91555_)
                  (macro-unbound-global-exception-variable _e91555_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97355
                                (let ()
                                  (declare (not safe))
                                  (cons _e91555_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp97355)))))
            (if (macro-unbound-global-exception? _exn91552_)
                (macro-unbound-global-exception-variable _exn91552_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97354
                              (let ()
                                (declare (not safe))
                                (cons _exn91552_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp97354)))))))
    (define unbound-key-exception?
      (lambda (_exn91548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91548_))
            (let ((_e91550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91548_ 'exception))))
              (macro-unbound-key-exception? _e91550_))
            (macro-unbound-key-exception? _exn91548_))))
    (define unbound-key-exception-arguments
      (lambda (_exn91544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91544_))
            (let ((_e91546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91544_ 'exception))))
              (if (macro-unbound-key-exception? _e91546_)
                  (macro-unbound-key-exception-arguments _e91546_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97357
                                (let ()
                                  (declare (not safe))
                                  (cons _e91546_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp97357)))))
            (if (macro-unbound-key-exception? _exn91544_)
                (macro-unbound-key-exception-arguments _exn91544_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97356
                              (let ()
                                (declare (not safe))
                                (cons _exn91544_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp97356)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn91538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91538_))
            (let ((_e91541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91538_ 'exception))))
              (if (macro-unbound-key-exception? _e91541_)
                  (macro-unbound-key-exception-procedure _e91541_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97359
                                (let ()
                                  (declare (not safe))
                                  (cons _e91541_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp97359)))))
            (if (macro-unbound-key-exception? _exn91538_)
                (macro-unbound-key-exception-procedure _exn91538_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97358
                              (let ()
                                (declare (not safe))
                                (cons _exn91538_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp97358)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn91534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91534_))
            (let ((_e91536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91534_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e91536_))
            (macro-unbound-os-environment-variable-exception? _exn91534_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn91530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91530_))
            (let ((_e91532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91530_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91532_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e91532_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97361
                                (let ()
                                  (declare (not safe))
                                  (cons _e91532_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp97361)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91530_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn91530_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97360
                              (let ()
                                (declare (not safe))
                                (cons _exn91530_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp97360)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn91524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91524_))
            (let ((_e91527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91524_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91527_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e91527_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97363
                                (let ()
                                  (declare (not safe))
                                  (cons _e91527_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp97363)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91524_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn91524_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97362
                              (let ()
                                (declare (not safe))
                                (cons _exn91524_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp97362)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn91520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91520_))
            (let ((_e91522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91520_ 'exception))))
              (macro-unbound-serial-number-exception? _e91522_))
            (macro-unbound-serial-number-exception? _exn91520_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn91516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91516_))
            (let ((_e91518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91516_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91518_)
                  (macro-unbound-serial-number-exception-arguments _e91518_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97365
                                (let ()
                                  (declare (not safe))
                                  (cons _e91518_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp97365)))))
            (if (macro-unbound-serial-number-exception? _exn91516_)
                (macro-unbound-serial-number-exception-arguments _exn91516_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97364
                              (let ()
                                (declare (not safe))
                                (cons _exn91516_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp97364)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn91510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91510_))
            (let ((_e91513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91510_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91513_)
                  (macro-unbound-serial-number-exception-procedure _e91513_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97367
                                (let ()
                                  (declare (not safe))
                                  (cons _e91513_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp97367)))))
            (if (macro-unbound-serial-number-exception? _exn91510_)
                (macro-unbound-serial-number-exception-procedure _exn91510_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97366
                              (let ()
                                (declare (not safe))
                                (cons _exn91510_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp97366)))))))
    (define uncaught-exception?
      (lambda (_exn91506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91506_))
            (let ((_e91508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91506_ 'exception))))
              (macro-uncaught-exception? _e91508_))
            (macro-uncaught-exception? _exn91506_))))
    (define uncaught-exception-arguments
      (lambda (_exn91502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91502_))
            (let ((_e91504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91502_ 'exception))))
              (if (macro-uncaught-exception? _e91504_)
                  (macro-uncaught-exception-arguments _e91504_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97369
                                (let ()
                                  (declare (not safe))
                                  (cons _e91504_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp97369)))))
            (if (macro-uncaught-exception? _exn91502_)
                (macro-uncaught-exception-arguments _exn91502_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97368
                              (let ()
                                (declare (not safe))
                                (cons _exn91502_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp97368)))))))
    (define uncaught-exception-procedure
      (lambda (_exn91498_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91498_))
            (let ((_e91500_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91498_ 'exception))))
              (if (macro-uncaught-exception? _e91500_)
                  (macro-uncaught-exception-procedure _e91500_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97371
                                (let ()
                                  (declare (not safe))
                                  (cons _e91500_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp97371)))))
            (if (macro-uncaught-exception? _exn91498_)
                (macro-uncaught-exception-procedure _exn91498_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97370
                              (let ()
                                (declare (not safe))
                                (cons _exn91498_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp97370)))))))
    (define uncaught-exception-reason
      (lambda (_exn91492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91492_))
            (let ((_e91495_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91492_ 'exception))))
              (if (macro-uncaught-exception? _e91495_)
                  (macro-uncaught-exception-reason _e91495_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97373
                                (let ()
                                  (declare (not safe))
                                  (cons _e91495_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp97373)))))
            (if (macro-uncaught-exception? _exn91492_)
                (macro-uncaught-exception-reason _exn91492_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97372
                              (let ()
                                (declare (not safe))
                                (cons _exn91492_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp97372)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn91488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91488_))
            (let ((_e91490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91488_ 'exception))))
              (macro-uninitialized-thread-exception? _e91490_))
            (macro-uninitialized-thread-exception? _exn91488_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn91484_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91484_))
            (let ((_e91486_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91484_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91486_)
                  (macro-uninitialized-thread-exception-arguments _e91486_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97375
                                (let ()
                                  (declare (not safe))
                                  (cons _e91486_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp97375)))))
            (if (macro-uninitialized-thread-exception? _exn91484_)
                (macro-uninitialized-thread-exception-arguments _exn91484_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97374
                              (let ()
                                (declare (not safe))
                                (cons _exn91484_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp97374)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn91478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91478_))
            (let ((_e91481_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91478_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91481_)
                  (macro-uninitialized-thread-exception-procedure _e91481_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97377
                                (let ()
                                  (declare (not safe))
                                  (cons _e91481_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp97377)))))
            (if (macro-uninitialized-thread-exception? _exn91478_)
                (macro-uninitialized-thread-exception-procedure _exn91478_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97376
                              (let ()
                                (declare (not safe))
                                (cons _exn91478_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp97376)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn91474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91474_))
            (let ((_e91476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91474_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e91476_))
            (macro-unknown-keyword-argument-exception? _exn91474_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn91470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91470_))
            (let ((_e91472_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91470_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91472_)
                  (macro-unknown-keyword-argument-exception-arguments _e91472_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97379
                                (let ()
                                  (declare (not safe))
                                  (cons _e91472_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp97379)))))
            (if (macro-unknown-keyword-argument-exception? _exn91470_)
                (macro-unknown-keyword-argument-exception-arguments _exn91470_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97378
                              (let ()
                                (declare (not safe))
                                (cons _exn91470_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp97378)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn91464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91464_))
            (let ((_e91467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91464_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91467_)
                  (macro-unknown-keyword-argument-exception-procedure _e91467_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97381
                                (let ()
                                  (declare (not safe))
                                  (cons _e91467_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp97381)))))
            (if (macro-unknown-keyword-argument-exception? _exn91464_)
                (macro-unknown-keyword-argument-exception-procedure _exn91464_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97380
                              (let ()
                                (declare (not safe))
                                (cons _exn91464_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp97380)))))))
    (define unterminated-process-exception?
      (lambda (_exn91460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91460_))
            (let ((_e91462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91460_ 'exception))))
              (macro-unterminated-process-exception? _e91462_))
            (macro-unterminated-process-exception? _exn91460_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn91456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91456_))
            (let ((_e91458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91456_ 'exception))))
              (if (macro-unterminated-process-exception? _e91458_)
                  (macro-unterminated-process-exception-arguments _e91458_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97383
                                (let ()
                                  (declare (not safe))
                                  (cons _e91458_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp97383)))))
            (if (macro-unterminated-process-exception? _exn91456_)
                (macro-unterminated-process-exception-arguments _exn91456_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97382
                              (let ()
                                (declare (not safe))
                                (cons _exn91456_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp97382)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn91450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91450_))
            (let ((_e91453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91450_ 'exception))))
              (if (macro-unterminated-process-exception? _e91453_)
                  (macro-unterminated-process-exception-procedure _e91453_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97385
                                (let ()
                                  (declare (not safe))
                                  (cons _e91453_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp97385)))))
            (if (macro-unterminated-process-exception? _exn91450_)
                (macro-unterminated-process-exception-procedure _exn91450_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97384
                              (let ()
                                (declare (not safe))
                                (cons _exn91450_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp97384)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn91446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91446_))
            (let ((_e91448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91446_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e91448_))
            (macro-wrong-number-of-arguments-exception? _exn91446_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn91442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91442_))
            (let ((_e91444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91442_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91444_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e91444_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97387
                                (let ()
                                  (declare (not safe))
                                  (cons _e91444_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp97387)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91442_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn91442_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97386
                              (let ()
                                (declare (not safe))
                                (cons _exn91442_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp97386)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn91436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91436_))
            (let ((_e91439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91436_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91439_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e91439_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97389
                                (let ()
                                  (declare (not safe))
                                  (cons _e91439_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp97389)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91436_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn91436_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97388
                              (let ()
                                (declare (not safe))
                                (cons _exn91436_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp97388)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn91432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91432_))
            (let ((_e91434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91432_ 'exception))))
              (macro-wrong-number-of-values-exception? _e91434_))
            (macro-wrong-number-of-values-exception? _exn91432_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn91428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91428_))
            (let ((_e91430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91428_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91430_)
                  (macro-wrong-number-of-values-exception-code _e91430_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97391
                                (let ()
                                  (declare (not safe))
                                  (cons _e91430_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp97391)))))
            (if (macro-wrong-number-of-values-exception? _exn91428_)
                (macro-wrong-number-of-values-exception-code _exn91428_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97390
                              (let ()
                                (declare (not safe))
                                (cons _exn91428_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp97390)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn91424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91424_))
            (let ((_e91426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91424_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91426_)
                  (macro-wrong-number-of-values-exception-rte _e91426_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97393
                                (let ()
                                  (declare (not safe))
                                  (cons _e91426_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp97393)))))
            (if (macro-wrong-number-of-values-exception? _exn91424_)
                (macro-wrong-number-of-values-exception-rte _exn91424_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97392
                              (let ()
                                (declare (not safe))
                                (cons _exn91424_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp97392)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn91418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91418_))
            (let ((_e91421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91418_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91421_)
                  (macro-wrong-number-of-values-exception-vals _e91421_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97395
                                (let ()
                                  (declare (not safe))
                                  (cons _e91421_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp97395)))))
            (if (macro-wrong-number-of-values-exception? _exn91418_)
                (macro-wrong-number-of-values-exception-vals _exn91418_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97394
                              (let ()
                                (declare (not safe))
                                (cons _exn91418_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp97394)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn91412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91412_))
            (let ((_e91415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91412_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e91415_))
            (macro-wrong-processor-c-return-exception? _exn91412_))))))
