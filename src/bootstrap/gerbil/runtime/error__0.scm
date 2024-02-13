(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707846528)
  (begin
    (define Exception::t
      (let ((__tmp97179 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp97179
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args92582_ (apply make-instance Exception::t _$args92582_)))
    (define StackTrace::t
      (let ((__tmp97180 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp97180
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args92579_ (apply make-instance StackTrace::t _$args92579_)))
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
      (let ((__tmp97181 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp97181
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args92576_ (apply make-instance Error::t _$args92576_)))
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
      (let ((__tmp97182 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp97182
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args92573_
        (apply make-instance RuntimeException::t _$args92573_)))
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
      (lambda (_exn92568_ _continue92569_)
        (let ((_exn92571_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn92568_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn92571_ _continue92569_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn92564_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn92564_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn92564_ 'continuation))
                '#!void
                (let ((__tmp97183
                       (lambda (_cont92566_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn92564_
                            'continuation
                            _cont92566_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp97183)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn92564_))))
    (define error
      (lambda (_message92561_ . _irritants92562_)
        (raise (let ((__obj97173
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj97173
                  _message92561_
                  'irritants:
                  _irritants92562_)
                 __obj97173))))
    (define with-exception-handler
      (lambda (_handler92554_ _thunk92555_)
        (if (let () (declare (not safe)) (procedure? _handler92554_))
            '#!void
            (raise (let ((__obj97174
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97174
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92554_ '())))
                     __obj97174)))
        (if (let () (declare (not safe)) (procedure? _thunk92555_))
            '#!void
            (raise (let ((__obj97175
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97175
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92555_ '())))
                     __obj97175)))
        (let ((__tmp97184
               (lambda (_exn92557_)
                 (let ((_exn92559_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn92557_))))
                   (_handler92554_ _exn92559_)))))
          (declare (not safe))
          (##with-exception-handler __tmp97184 _thunk92555_))))
    (define with-catch
      (lambda (_handler92547_ _thunk92548_)
        (if (let () (declare (not safe)) (procedure? _handler92547_))
            '#!void
            (raise (let ((__obj97176
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97176
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92547_ '())))
                     __obj97176)))
        (if (let () (declare (not safe)) (procedure? _thunk92548_))
            '#!void
            (raise (let ((__obj97177
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97177
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92548_ '())))
                     __obj97177)))
        (let ((__tmp97185
               (lambda (_cont92550_)
                 (with-exception-handler
                  (lambda (_exn92552_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont92550_
                       _handler92547_
                       _exn92552_)))
                  _thunk92548_))))
          (declare (not safe))
          (##continuation-capture __tmp97185))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn92538_)
        (if (or (heap-overflow-exception? _exn92538_)
                (stack-overflow-exception? _exn92538_))
            _exn92538_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn92538_))
                _exn92538_
                (if (macro-exception? _exn92538_)
                    (let ((_rte92543_
                           (let ((__obj97178
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj97178
                                _exn92538_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj97178)))
                      (let ((__tmp97186
                             (lambda (_cont92545_)
                               (let ((__tmp97187
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont92545_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte92543_
                                  'continuation
                                  __tmp97187)))))
                        (declare (not safe))
                        (##continuation-capture __tmp97186))
                      _rte92543_)
                    _exn92538_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj92533_)
        (let ((_$e92535_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj92533_))))
          (if _$e92535_ _$e92535_ (error-exception? _obj92533_)))))
    (define error-message
      (lambda (_obj92531_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92531_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92531_ 'message))
            (if (error-exception? _obj92531_)
                (error-exception-message _obj92531_)
                '#f))))
    (define error-irritants
      (lambda (_obj92529_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92529_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92529_ 'irritants))
            (if (error-exception? _obj92529_)
                (error-exception-parameters _obj92529_)
                '#f))))
    (define error-trace
      (lambda (_obj92527_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92527_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92527_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e92509_ _port92510_)
        (let ((_$e92512_
               (let ()
                 (declare (not safe))
                 (method-ref _e92509_ 'display-exception))))
          (if _$e92512_
              ((lambda (_f92515_) (_f92515_ _e92509_ _port92510_)) _$e92512_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e92509_ _port92510_))))))
    (define display-exception__0
      (lambda (_e92520_)
        (let ((_port92522_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e92520_ _port92522_))))
    (define display-exception
      (lambda _g97189_
        (let ((_g97188_ (let () (declare (not safe)) (##length _g97189_))))
          (cond ((let () (declare (not safe)) (##fx= _g97188_ 1))
                 (apply (lambda (_e92520_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e92520_)))
                        _g97189_))
                ((let () (declare (not safe)) (##fx= _g97188_ 2))
                 (apply (lambda (_e92524_ _port92525_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e92524_ _port92525_)))
                        _g97189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g97189_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self92498_ _message92499_ . _rest92500_)
        (let ((_message92506_
               (if (let () (declare (not safe)) (string? _message92499_))
                   _message92499_
                   (call-with-output-string
                    '""
                    (lambda (_g9250192503_)
                      (display _message92499_ _g9250192503_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self92498_ 'message _message92506_))
          (apply class-instance-init! _self92498_ _rest92500_))))
    (define Error:::init!::specialize
      (lambda (__t97152)
        (let ((__message97153
               (let ((__tmp97154
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97152 'message))))
                 (if __tmp97154 __tmp97154 (error '"Unknown slot" 'message)))))
          (lambda (_self92498_ _message92499_ . _rest92500_)
            (let ((_message92506_
                   (if (let () (declare (not safe)) (string? _message92499_))
                       _message92499_
                       (call-with-output-string
                        '""
                        (lambda (_g9250192503_)
                          (display _message92499_ _g9250192503_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self92498_
                 _message92506_
                 __message97153
                 __t97152
                 '#f))
              (apply class-instance-init! _self92498_ _rest92500_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self92356_ _port92357_)
        (let ((_tmp-port92359_ (open-output-string))
              (_display-error-newline92360_
               (> (output-port-column _port92357_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92359_))
          (let ((__tmp97190
                 (lambda ()
                   (if _display-error-newline92360_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e92363_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92356_ 'where))))
                     (if _$e92363_ (display _$e92363_) (display '"?")))
                   (let ((__tmp97191
                          (let ((__tmp97192
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self92356_))))
                            (declare (not safe))
                            (##type-name __tmp97192))))
                     (declare (not safe))
                     (display* '" [" __tmp97191 '"]: "))
                   (let ((__tmp97193
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92356_ 'message))))
                     (declare (not safe))
                     (displayln __tmp97193))
                   (let ((_irritants92366_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92356_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants92366_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj92368_)
                              (write _obj92368_)
                              (write-char '#\space))
                            _irritants92366_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self92356_))
                            (dump-stack-trace?))
                       (let ((_cont9236992371_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self92356_
                                 'continuation))))
                         (if _cont9236992371_
                             (let ((_cont92374_ _cont9236992371_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont92374_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp97190
             current-output-port
             _tmp-port92359_))
          (let ((__tmp97194 (get-output-string _tmp-port92359_)))
            (declare (not safe))
            (##write-string __tmp97194 _port92357_)))))
    (define Error::display-exception::specialize
      (lambda (__t97155)
        (let ((__where97156
               (let ((__tmp97160
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97155 'where))))
                 (if __tmp97160 __tmp97160 (error '"Unknown slot" 'where))))
              (__message97157
               (let ((__tmp97161
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97155 'message))))
                 (if __tmp97161 __tmp97161 (error '"Unknown slot" 'message))))
              (__continuation97158
               (let ((__tmp97162
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97155 'continuation))))
                 (if __tmp97162
                     __tmp97162
                     (error '"Unknown slot" 'continuation))))
              (__irritants97159
               (let ((__tmp97163
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97155 'irritants))))
                 (if __tmp97163
                     __tmp97163
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self92356_ _port92357_)
            (let ((_tmp-port92359_ (open-output-string))
                  (_display-error-newline92360_
                   (> (output-port-column _port92357_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92359_))
              (let ((__tmp97195
                     (lambda ()
                       (if _display-error-newline92360_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e92363_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92356_
                                 __where97156
                                 __t97155
                                 '#f))))
                         (if _$e92363_ (display _$e92363_) (display '"?")))
                       (let ((__tmp97196
                              (let ((__tmp97197
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self92356_))))
                                (declare (not safe))
                                (##type-name __tmp97197))))
                         (declare (not safe))
                         (display* '" [" __tmp97196 '"]: "))
                       (let ((__tmp97198
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92356_
                                 __message97157
                                 __t97155
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp97198))
                       (let ((_irritants92366_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92356_
                                 __irritants97159
                                 __t97155
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants92366_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj92368_)
                                  (write _obj92368_)
                                  (write-char '#\space))
                                _irritants92366_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self92356_))
                                (dump-stack-trace?))
                           (let ((_cont9236992371_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self92356_
                                     __continuation97158
                                     __t97155
                                     '#f))))
                             (if _cont9236992371_
                                 (let ((_cont92374_ _cont9236992371_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont92374_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp97195
                 current-output-port
                 _tmp-port92359_))
              (let ((__tmp97199 (get-output-string _tmp-port92359_)))
                (declare (not safe))
                (##write-string __tmp97199 _port92357_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self92223_ _port92224_)
        (let ((_tmp-port92226_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92226_))
          (let ((__tmp97200
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self92223_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp97200 _tmp-port92226_))
          (if (dump-stack-trace?)
              (let ((_cont9222792229_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self92223_ 'continuation))))
                (if _cont9222792229_
                    (let ((_cont92232_ _cont9222792229_))
                      (display '"--- continuation backtrace:" _tmp-port92226_)
                      (newline _tmp-port92226_)
                      (display-continuation-backtrace
                       _cont92232_
                       _tmp-port92226_))
                    '#f))
              '#!void)
          (let ((__tmp97201 (get-output-string _tmp-port92226_)))
            (declare (not safe))
            (##write-string __tmp97201 _port92224_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t97164)
        (let ((__exception97165
               (let ((__tmp97167
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97164 'exception))))
                 (if __tmp97167
                     __tmp97167
                     (error '"Unknown slot" 'exception))))
              (__continuation97166
               (let ((__tmp97168
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97164 'continuation))))
                 (if __tmp97168
                     __tmp97168
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self92223_ _port92224_)
            (let ((_tmp-port92226_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92226_))
              (let ((__tmp97202
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self92223_
                        __exception97165
                        __t97164
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp97202 _tmp-port92226_))
              (if (dump-stack-trace?)
                  (let ((_cont9222792229_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self92223_
                            __continuation97166
                            __t97164
                            '#f))))
                    (if _cont9222792229_
                        (let ((_cont92232_ _cont9222792229_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port92226_)
                          (newline _tmp-port92226_)
                          (display-continuation-backtrace
                           _cont92232_
                           _tmp-port92226_))
                        '#f))
                  '#!void)
              (let ((__tmp97203 (get-output-string _tmp-port92226_)))
                (declare (not safe))
                (##write-string __tmp97203 _port92224_)))))))
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
      (lambda (_port92095_)
        (if (macro-character-port? _port92095_)
            (let ((_old-width92097_
                   (macro-character-port-output-width _port92095_)))
              (macro-character-port-output-width-set!
               _port92095_
               (lambda (_port92099_) '256))
              _old-width92097_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port92092_ _old-width92093_)
        (if (macro-character-port? _port92092_)
            (macro-character-port-output-width-set!
             _port92092_
             _old-width92093_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e92090_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e92090_))))
    (define abandoned-mutex-exception?
      (lambda (_exn92084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92084_))
            (let ((_e92087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92084_ 'exception))))
              (macro-abandoned-mutex-exception? _e92087_))
            (macro-abandoned-mutex-exception? _exn92084_))))
    (define cfun-conversion-exception?
      (lambda (_exn92080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92080_))
            (let ((_e92082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92080_ 'exception))))
              (macro-cfun-conversion-exception? _e92082_))
            (macro-cfun-conversion-exception? _exn92080_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn92076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92076_))
            (let ((_e92078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92076_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92078_)
                  (macro-cfun-conversion-exception-arguments _e92078_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97205
                                (let ()
                                  (declare (not safe))
                                  (cons _e92078_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp97205)))))
            (if (macro-cfun-conversion-exception? _exn92076_)
                (macro-cfun-conversion-exception-arguments _exn92076_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97204
                              (let ()
                                (declare (not safe))
                                (cons _exn92076_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp97204)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn92072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92072_))
            (let ((_e92074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92072_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92074_)
                  (macro-cfun-conversion-exception-code _e92074_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97207
                                (let ()
                                  (declare (not safe))
                                  (cons _e92074_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp97207)))))
            (if (macro-cfun-conversion-exception? _exn92072_)
                (macro-cfun-conversion-exception-code _exn92072_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97206
                              (let ()
                                (declare (not safe))
                                (cons _exn92072_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp97206)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn92068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92068_))
            (let ((_e92070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92068_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92070_)
                  (macro-cfun-conversion-exception-message _e92070_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97209
                                (let ()
                                  (declare (not safe))
                                  (cons _e92070_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp97209)))))
            (if (macro-cfun-conversion-exception? _exn92068_)
                (macro-cfun-conversion-exception-message _exn92068_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97208
                              (let ()
                                (declare (not safe))
                                (cons _exn92068_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp97208)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn92062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92062_))
            (let ((_e92065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92062_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92065_)
                  (macro-cfun-conversion-exception-procedure _e92065_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97211
                                (let ()
                                  (declare (not safe))
                                  (cons _e92065_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp97211)))))
            (if (macro-cfun-conversion-exception? _exn92062_)
                (macro-cfun-conversion-exception-procedure _exn92062_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97210
                              (let ()
                                (declare (not safe))
                                (cons _exn92062_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp97210)))))))
    (define datum-parsing-exception?
      (lambda (_exn92058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92058_))
            (let ((_e92060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92058_ 'exception))))
              (macro-datum-parsing-exception? _e92060_))
            (macro-datum-parsing-exception? _exn92058_))))
    (define datum-parsing-exception-kind
      (lambda (_exn92054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92054_))
            (let ((_e92056_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92054_ 'exception))))
              (if (macro-datum-parsing-exception? _e92056_)
                  (macro-datum-parsing-exception-kind _e92056_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97213
                                (let ()
                                  (declare (not safe))
                                  (cons _e92056_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp97213)))))
            (if (macro-datum-parsing-exception? _exn92054_)
                (macro-datum-parsing-exception-kind _exn92054_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97212
                              (let ()
                                (declare (not safe))
                                (cons _exn92054_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp97212)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn92050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92050_))
            (let ((_e92052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92050_ 'exception))))
              (if (macro-datum-parsing-exception? _e92052_)
                  (macro-datum-parsing-exception-parameters _e92052_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97215
                                (let ()
                                  (declare (not safe))
                                  (cons _e92052_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp97215)))))
            (if (macro-datum-parsing-exception? _exn92050_)
                (macro-datum-parsing-exception-parameters _exn92050_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97214
                              (let ()
                                (declare (not safe))
                                (cons _exn92050_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp97214)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn92044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92044_))
            (let ((_e92047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92044_ 'exception))))
              (if (macro-datum-parsing-exception? _e92047_)
                  (macro-datum-parsing-exception-readenv _e92047_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97217
                                (let ()
                                  (declare (not safe))
                                  (cons _e92047_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp97217)))))
            (if (macro-datum-parsing-exception? _exn92044_)
                (macro-datum-parsing-exception-readenv _exn92044_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97216
                              (let ()
                                (declare (not safe))
                                (cons _exn92044_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp97216)))))))
    (define deadlock-exception?
      (lambda (_exn92038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92038_))
            (let ((_e92041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92038_ 'exception))))
              (macro-deadlock-exception? _e92041_))
            (macro-deadlock-exception? _exn92038_))))
    (define divide-by-zero-exception?
      (lambda (_exn92034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92034_))
            (let ((_e92036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92034_ 'exception))))
              (macro-divide-by-zero-exception? _e92036_))
            (macro-divide-by-zero-exception? _exn92034_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn92030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92030_))
            (let ((_e92032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92030_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92032_)
                  (macro-divide-by-zero-exception-arguments _e92032_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97219
                                (let ()
                                  (declare (not safe))
                                  (cons _e92032_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp97219)))))
            (if (macro-divide-by-zero-exception? _exn92030_)
                (macro-divide-by-zero-exception-arguments _exn92030_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97218
                              (let ()
                                (declare (not safe))
                                (cons _exn92030_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp97218)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn92024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92024_))
            (let ((_e92027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92024_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92027_)
                  (macro-divide-by-zero-exception-procedure _e92027_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97221
                                (let ()
                                  (declare (not safe))
                                  (cons _e92027_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp97221)))))
            (if (macro-divide-by-zero-exception? _exn92024_)
                (macro-divide-by-zero-exception-procedure _exn92024_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97220
                              (let ()
                                (declare (not safe))
                                (cons _exn92024_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp97220)))))))
    (define error-exception?
      (lambda (_exn92020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92020_))
            (let ((_e92022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92020_ 'exception))))
              (macro-error-exception? _e92022_))
            (macro-error-exception? _exn92020_))))
    (define error-exception-message
      (lambda (_exn92016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92016_))
            (let ((_e92018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92016_ 'exception))))
              (if (macro-error-exception? _e92018_)
                  (macro-error-exception-message _e92018_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97223
                                (let ()
                                  (declare (not safe))
                                  (cons _e92018_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp97223)))))
            (if (macro-error-exception? _exn92016_)
                (macro-error-exception-message _exn92016_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97222
                              (let ()
                                (declare (not safe))
                                (cons _exn92016_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp97222)))))))
    (define error-exception-parameters
      (lambda (_exn92010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92010_))
            (let ((_e92013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92010_ 'exception))))
              (if (macro-error-exception? _e92013_)
                  (macro-error-exception-parameters _e92013_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97225
                                (let ()
                                  (declare (not safe))
                                  (cons _e92013_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp97225)))))
            (if (macro-error-exception? _exn92010_)
                (macro-error-exception-parameters _exn92010_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97224
                              (let ()
                                (declare (not safe))
                                (cons _exn92010_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp97224)))))))
    (define expression-parsing-exception?
      (lambda (_exn92006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92006_))
            (let ((_e92008_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92006_ 'exception))))
              (macro-expression-parsing-exception? _e92008_))
            (macro-expression-parsing-exception? _exn92006_))))
    (define expression-parsing-exception-kind
      (lambda (_exn92002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92002_))
            (let ((_e92004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92002_ 'exception))))
              (if (macro-expression-parsing-exception? _e92004_)
                  (macro-expression-parsing-exception-kind _e92004_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97227
                                (let ()
                                  (declare (not safe))
                                  (cons _e92004_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp97227)))))
            (if (macro-expression-parsing-exception? _exn92002_)
                (macro-expression-parsing-exception-kind _exn92002_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97226
                              (let ()
                                (declare (not safe))
                                (cons _exn92002_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp97226)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91998_))
            (let ((_e92000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91998_ 'exception))))
              (if (macro-expression-parsing-exception? _e92000_)
                  (macro-expression-parsing-exception-parameters _e92000_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97229
                                (let ()
                                  (declare (not safe))
                                  (cons _e92000_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp97229)))))
            (if (macro-expression-parsing-exception? _exn91998_)
                (macro-expression-parsing-exception-parameters _exn91998_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97228
                              (let ()
                                (declare (not safe))
                                (cons _exn91998_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp97228)))))))
    (define expression-parsing-exception-source
      (lambda (_exn91992_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91992_))
            (let ((_e91995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91992_ 'exception))))
              (if (macro-expression-parsing-exception? _e91995_)
                  (macro-expression-parsing-exception-source _e91995_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97231
                                (let ()
                                  (declare (not safe))
                                  (cons _e91995_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp97231)))))
            (if (macro-expression-parsing-exception? _exn91992_)
                (macro-expression-parsing-exception-source _exn91992_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97230
                              (let ()
                                (declare (not safe))
                                (cons _exn91992_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp97230)))))))
    (define file-exists-exception?
      (lambda (_exn91988_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91988_))
            (let ((_e91990_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91988_ 'exception))))
              (macro-file-exists-exception? _e91990_))
            (macro-file-exists-exception? _exn91988_))))
    (define file-exists-exception-arguments
      (lambda (_exn91984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91984_))
            (let ((_e91986_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91984_ 'exception))))
              (if (macro-file-exists-exception? _e91986_)
                  (macro-file-exists-exception-arguments _e91986_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97233
                                (let ()
                                  (declare (not safe))
                                  (cons _e91986_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp97233)))))
            (if (macro-file-exists-exception? _exn91984_)
                (macro-file-exists-exception-arguments _exn91984_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97232
                              (let ()
                                (declare (not safe))
                                (cons _exn91984_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp97232)))))))
    (define file-exists-exception-procedure
      (lambda (_exn91978_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91978_))
            (let ((_e91981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91978_ 'exception))))
              (if (macro-file-exists-exception? _e91981_)
                  (macro-file-exists-exception-procedure _e91981_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97235
                                (let ()
                                  (declare (not safe))
                                  (cons _e91981_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp97235)))))
            (if (macro-file-exists-exception? _exn91978_)
                (macro-file-exists-exception-procedure _exn91978_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97234
                              (let ()
                                (declare (not safe))
                                (cons _exn91978_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp97234)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn91974_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91974_))
            (let ((_e91976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91974_ 'exception))))
              (macro-fixnum-overflow-exception? _e91976_))
            (macro-fixnum-overflow-exception? _exn91974_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn91970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91970_))
            (let ((_e91972_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91970_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91972_)
                  (macro-fixnum-overflow-exception-arguments _e91972_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97237
                                (let ()
                                  (declare (not safe))
                                  (cons _e91972_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp97237)))))
            (if (macro-fixnum-overflow-exception? _exn91970_)
                (macro-fixnum-overflow-exception-arguments _exn91970_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97236
                              (let ()
                                (declare (not safe))
                                (cons _exn91970_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp97236)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn91964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91964_))
            (let ((_e91967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91964_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91967_)
                  (macro-fixnum-overflow-exception-procedure _e91967_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97239
                                (let ()
                                  (declare (not safe))
                                  (cons _e91967_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp97239)))))
            (if (macro-fixnum-overflow-exception? _exn91964_)
                (macro-fixnum-overflow-exception-procedure _exn91964_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97238
                              (let ()
                                (declare (not safe))
                                (cons _exn91964_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp97238)))))))
    (define heap-overflow-exception?
      (lambda (_exn91958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91958_))
            (let ((_e91961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91958_ 'exception))))
              (macro-heap-overflow-exception? _e91961_))
            (macro-heap-overflow-exception? _exn91958_))))
    (define inactive-thread-exception?
      (lambda (_exn91954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91954_))
            (let ((_e91956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91954_ 'exception))))
              (macro-inactive-thread-exception? _e91956_))
            (macro-inactive-thread-exception? _exn91954_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn91950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91950_))
            (let ((_e91952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91950_ 'exception))))
              (if (macro-inactive-thread-exception? _e91952_)
                  (macro-inactive-thread-exception-arguments _e91952_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97241
                                (let ()
                                  (declare (not safe))
                                  (cons _e91952_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp97241)))))
            (if (macro-inactive-thread-exception? _exn91950_)
                (macro-inactive-thread-exception-arguments _exn91950_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97240
                              (let ()
                                (declare (not safe))
                                (cons _exn91950_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp97240)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn91944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91944_))
            (let ((_e91947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91944_ 'exception))))
              (if (macro-inactive-thread-exception? _e91947_)
                  (macro-inactive-thread-exception-procedure _e91947_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97243
                                (let ()
                                  (declare (not safe))
                                  (cons _e91947_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp97243)))))
            (if (macro-inactive-thread-exception? _exn91944_)
                (macro-inactive-thread-exception-procedure _exn91944_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97242
                              (let ()
                                (declare (not safe))
                                (cons _exn91944_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp97242)))))))
    (define initialized-thread-exception?
      (lambda (_exn91940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91940_))
            (let ((_e91942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91940_ 'exception))))
              (macro-initialized-thread-exception? _e91942_))
            (macro-initialized-thread-exception? _exn91940_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn91936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91936_))
            (let ((_e91938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91936_ 'exception))))
              (if (macro-initialized-thread-exception? _e91938_)
                  (macro-initialized-thread-exception-arguments _e91938_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97245
                                (let ()
                                  (declare (not safe))
                                  (cons _e91938_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp97245)))))
            (if (macro-initialized-thread-exception? _exn91936_)
                (macro-initialized-thread-exception-arguments _exn91936_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97244
                              (let ()
                                (declare (not safe))
                                (cons _exn91936_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp97244)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn91930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91930_))
            (let ((_e91933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91930_ 'exception))))
              (if (macro-initialized-thread-exception? _e91933_)
                  (macro-initialized-thread-exception-procedure _e91933_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97247
                                (let ()
                                  (declare (not safe))
                                  (cons _e91933_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp97247)))))
            (if (macro-initialized-thread-exception? _exn91930_)
                (macro-initialized-thread-exception-procedure _exn91930_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97246
                              (let ()
                                (declare (not safe))
                                (cons _exn91930_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp97246)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn91926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91926_))
            (let ((_e91928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91926_ 'exception))))
              (macro-invalid-hash-number-exception? _e91928_))
            (macro-invalid-hash-number-exception? _exn91926_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn91922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91922_))
            (let ((_e91924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91922_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91924_)
                  (macro-invalid-hash-number-exception-arguments _e91924_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97249
                                (let ()
                                  (declare (not safe))
                                  (cons _e91924_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp97249)))))
            (if (macro-invalid-hash-number-exception? _exn91922_)
                (macro-invalid-hash-number-exception-arguments _exn91922_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97248
                              (let ()
                                (declare (not safe))
                                (cons _exn91922_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp97248)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn91916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91916_))
            (let ((_e91919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91916_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91919_)
                  (macro-invalid-hash-number-exception-procedure _e91919_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97251
                                (let ()
                                  (declare (not safe))
                                  (cons _e91919_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp97251)))))
            (if (macro-invalid-hash-number-exception? _exn91916_)
                (macro-invalid-hash-number-exception-procedure _exn91916_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97250
                              (let ()
                                (declare (not safe))
                                (cons _exn91916_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp97250)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn91912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91912_))
            (let ((_e91914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91912_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e91914_))
            (macro-invalid-utf8-encoding-exception? _exn91912_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn91908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91908_))
            (let ((_e91910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91908_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91910_)
                  (macro-invalid-utf8-encoding-exception-arguments _e91910_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97253
                                (let ()
                                  (declare (not safe))
                                  (cons _e91910_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp97253)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91908_)
                (macro-invalid-utf8-encoding-exception-arguments _exn91908_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97252
                              (let ()
                                (declare (not safe))
                                (cons _exn91908_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp97252)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn91902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91902_))
            (let ((_e91905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91902_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91905_)
                  (macro-invalid-utf8-encoding-exception-procedure _e91905_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97255
                                (let ()
                                  (declare (not safe))
                                  (cons _e91905_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp97255)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91902_)
                (macro-invalid-utf8-encoding-exception-procedure _exn91902_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97254
                              (let ()
                                (declare (not safe))
                                (cons _exn91902_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp97254)))))))
    (define join-timeout-exception?
      (lambda (_exn91898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91898_))
            (let ((_e91900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91898_ 'exception))))
              (macro-join-timeout-exception? _e91900_))
            (macro-join-timeout-exception? _exn91898_))))
    (define join-timeout-exception-arguments
      (lambda (_exn91894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91894_))
            (let ((_e91896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91894_ 'exception))))
              (if (macro-join-timeout-exception? _e91896_)
                  (macro-join-timeout-exception-arguments _e91896_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97257
                                (let ()
                                  (declare (not safe))
                                  (cons _e91896_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp97257)))))
            (if (macro-join-timeout-exception? _exn91894_)
                (macro-join-timeout-exception-arguments _exn91894_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97256
                              (let ()
                                (declare (not safe))
                                (cons _exn91894_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp97256)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn91888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91888_))
            (let ((_e91891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91888_ 'exception))))
              (if (macro-join-timeout-exception? _e91891_)
                  (macro-join-timeout-exception-procedure _e91891_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97259
                                (let ()
                                  (declare (not safe))
                                  (cons _e91891_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp97259)))))
            (if (macro-join-timeout-exception? _exn91888_)
                (macro-join-timeout-exception-procedure _exn91888_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97258
                              (let ()
                                (declare (not safe))
                                (cons _exn91888_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp97258)))))))
    (define keyword-expected-exception?
      (lambda (_exn91884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91884_))
            (let ((_e91886_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91884_ 'exception))))
              (macro-keyword-expected-exception? _e91886_))
            (macro-keyword-expected-exception? _exn91884_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn91880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91880_))
            (let ((_e91882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91880_ 'exception))))
              (if (macro-keyword-expected-exception? _e91882_)
                  (macro-keyword-expected-exception-arguments _e91882_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97261
                                (let ()
                                  (declare (not safe))
                                  (cons _e91882_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp97261)))))
            (if (macro-keyword-expected-exception? _exn91880_)
                (macro-keyword-expected-exception-arguments _exn91880_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97260
                              (let ()
                                (declare (not safe))
                                (cons _exn91880_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp97260)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn91874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91874_))
            (let ((_e91877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91874_ 'exception))))
              (if (macro-keyword-expected-exception? _e91877_)
                  (macro-keyword-expected-exception-procedure _e91877_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97263
                                (let ()
                                  (declare (not safe))
                                  (cons _e91877_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp97263)))))
            (if (macro-keyword-expected-exception? _exn91874_)
                (macro-keyword-expected-exception-procedure _exn91874_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97262
                              (let ()
                                (declare (not safe))
                                (cons _exn91874_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp97262)))))))
    (define length-mismatch-exception?
      (lambda (_exn91870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91870_))
            (let ((_e91872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91870_ 'exception))))
              (macro-length-mismatch-exception? _e91872_))
            (macro-length-mismatch-exception? _exn91870_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn91866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91866_))
            (let ((_e91868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91866_ 'exception))))
              (if (macro-length-mismatch-exception? _e91868_)
                  (macro-length-mismatch-exception-arg-id _e91868_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97265
                                (let ()
                                  (declare (not safe))
                                  (cons _e91868_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp97265)))))
            (if (macro-length-mismatch-exception? _exn91866_)
                (macro-length-mismatch-exception-arg-id _exn91866_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97264
                              (let ()
                                (declare (not safe))
                                (cons _exn91866_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp97264)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn91862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91862_))
            (let ((_e91864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91862_ 'exception))))
              (if (macro-length-mismatch-exception? _e91864_)
                  (macro-length-mismatch-exception-arguments _e91864_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97267
                                (let ()
                                  (declare (not safe))
                                  (cons _e91864_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp97267)))))
            (if (macro-length-mismatch-exception? _exn91862_)
                (macro-length-mismatch-exception-arguments _exn91862_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97266
                              (let ()
                                (declare (not safe))
                                (cons _exn91862_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp97266)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn91856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91856_))
            (let ((_e91859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91856_ 'exception))))
              (if (macro-length-mismatch-exception? _e91859_)
                  (macro-length-mismatch-exception-procedure _e91859_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97269
                                (let ()
                                  (declare (not safe))
                                  (cons _e91859_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp97269)))))
            (if (macro-length-mismatch-exception? _exn91856_)
                (macro-length-mismatch-exception-procedure _exn91856_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97268
                              (let ()
                                (declare (not safe))
                                (cons _exn91856_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp97268)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn91852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91852_))
            (let ((_e91854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91852_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e91854_))
            (macro-mailbox-receive-timeout-exception? _exn91852_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn91848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91848_))
            (let ((_e91850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91848_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91850_)
                  (macro-mailbox-receive-timeout-exception-arguments _e91850_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97271
                                (let ()
                                  (declare (not safe))
                                  (cons _e91850_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp97271)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91848_)
                (macro-mailbox-receive-timeout-exception-arguments _exn91848_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97270
                              (let ()
                                (declare (not safe))
                                (cons _exn91848_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp97270)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn91842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91842_))
            (let ((_e91845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91842_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91845_)
                  (macro-mailbox-receive-timeout-exception-procedure _e91845_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97273
                                (let ()
                                  (declare (not safe))
                                  (cons _e91845_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp97273)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91842_)
                (macro-mailbox-receive-timeout-exception-procedure _exn91842_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97272
                              (let ()
                                (declare (not safe))
                                (cons _exn91842_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp97272)))))))
    (define module-not-found-exception?
      (lambda (_exn91838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91838_))
            (let ((_e91840_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91838_ 'exception))))
              (macro-module-not-found-exception? _e91840_))
            (macro-module-not-found-exception? _exn91838_))))
    (define module-not-found-exception-arguments
      (lambda (_exn91834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91834_))
            (let ((_e91836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91834_ 'exception))))
              (if (macro-module-not-found-exception? _e91836_)
                  (macro-module-not-found-exception-arguments _e91836_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97275
                                (let ()
                                  (declare (not safe))
                                  (cons _e91836_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp97275)))))
            (if (macro-module-not-found-exception? _exn91834_)
                (macro-module-not-found-exception-arguments _exn91834_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97274
                              (let ()
                                (declare (not safe))
                                (cons _exn91834_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp97274)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn91828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91828_))
            (let ((_e91831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91828_ 'exception))))
              (if (macro-module-not-found-exception? _e91831_)
                  (macro-module-not-found-exception-procedure _e91831_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97277
                                (let ()
                                  (declare (not safe))
                                  (cons _e91831_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp97277)))))
            (if (macro-module-not-found-exception? _exn91828_)
                (macro-module-not-found-exception-procedure _exn91828_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97276
                              (let ()
                                (declare (not safe))
                                (cons _exn91828_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp97276)))))))
    (define multiple-c-return-exception?
      (lambda (_exn91822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91822_))
            (let ((_e91825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91822_ 'exception))))
              (macro-multiple-c-return-exception? _e91825_))
            (macro-multiple-c-return-exception? _exn91822_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn91818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91818_))
            (let ((_e91820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91818_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e91820_))
            (macro-no-such-file-or-directory-exception? _exn91818_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn91814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91814_))
            (let ((_e91816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91814_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91816_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e91816_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97279
                                (let ()
                                  (declare (not safe))
                                  (cons _e91816_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp97279)))))
            (if (macro-no-such-file-or-directory-exception? _exn91814_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn91814_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97278
                              (let ()
                                (declare (not safe))
                                (cons _exn91814_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp97278)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn91808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91808_))
            (let ((_e91811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91808_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91811_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e91811_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97281
                                (let ()
                                  (declare (not safe))
                                  (cons _e91811_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp97281)))))
            (if (macro-no-such-file-or-directory-exception? _exn91808_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn91808_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97280
                              (let ()
                                (declare (not safe))
                                (cons _exn91808_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp97280)))))))
    (define noncontinuable-exception?
      (lambda (_exn91804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91804_))
            (let ((_e91806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91804_ 'exception))))
              (macro-noncontinuable-exception? _e91806_))
            (macro-noncontinuable-exception? _exn91804_))))
    (define noncontinuable-exception-reason
      (lambda (_exn91798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91798_))
            (let ((_e91801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91798_ 'exception))))
              (if (macro-noncontinuable-exception? _e91801_)
                  (macro-noncontinuable-exception-reason _e91801_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp97283
                                (let ()
                                  (declare (not safe))
                                  (cons _e91801_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp97283)))))
            (if (macro-noncontinuable-exception? _exn91798_)
                (macro-noncontinuable-exception-reason _exn91798_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp97282
                              (let ()
                                (declare (not safe))
                                (cons _exn91798_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp97282)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn91794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91794_))
            (let ((_e91796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91794_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e91796_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn91794_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn91790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91790_))
            (let ((_e91792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91790_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91792_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e91792_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97285
                                (let ()
                                  (declare (not safe))
                                  (cons _e91792_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp97285)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91790_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn91790_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97284
                              (let ()
                                (declare (not safe))
                                (cons _exn91790_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp97284)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn91784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91784_))
            (let ((_e91787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91784_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91787_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e91787_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97287
                                (let ()
                                  (declare (not safe))
                                  (cons _e91787_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp97287)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91784_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn91784_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97286
                              (let ()
                                (declare (not safe))
                                (cons _exn91784_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp97286)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn91780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91780_))
            (let ((_e91782_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91780_ 'exception))))
              (macro-nonprocedure-operator-exception? _e91782_))
            (macro-nonprocedure-operator-exception? _exn91780_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn91776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91776_))
            (let ((_e91778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91776_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91778_)
                  (macro-nonprocedure-operator-exception-arguments _e91778_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97289
                                (let ()
                                  (declare (not safe))
                                  (cons _e91778_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp97289)))))
            (if (macro-nonprocedure-operator-exception? _exn91776_)
                (macro-nonprocedure-operator-exception-arguments _exn91776_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97288
                              (let ()
                                (declare (not safe))
                                (cons _exn91776_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp97288)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn91772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91772_))
            (let ((_e91774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91772_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91774_)
                  (macro-nonprocedure-operator-exception-code _e91774_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97291
                                (let ()
                                  (declare (not safe))
                                  (cons _e91774_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp97291)))))
            (if (macro-nonprocedure-operator-exception? _exn91772_)
                (macro-nonprocedure-operator-exception-code _exn91772_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97290
                              (let ()
                                (declare (not safe))
                                (cons _exn91772_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp97290)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn91768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91768_))
            (let ((_e91770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91768_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91770_)
                  (macro-nonprocedure-operator-exception-operator _e91770_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97293
                                (let ()
                                  (declare (not safe))
                                  (cons _e91770_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp97293)))))
            (if (macro-nonprocedure-operator-exception? _exn91768_)
                (macro-nonprocedure-operator-exception-operator _exn91768_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97292
                              (let ()
                                (declare (not safe))
                                (cons _exn91768_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp97292)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn91762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91762_))
            (let ((_e91765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91762_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91765_)
                  (macro-nonprocedure-operator-exception-rte _e91765_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97295
                                (let ()
                                  (declare (not safe))
                                  (cons _e91765_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp97295)))))
            (if (macro-nonprocedure-operator-exception? _exn91762_)
                (macro-nonprocedure-operator-exception-rte _exn91762_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97294
                              (let ()
                                (declare (not safe))
                                (cons _exn91762_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp97294)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn91758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91758_))
            (let ((_e91760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91758_ 'exception))))
              (macro-not-in-compilation-context-exception? _e91760_))
            (macro-not-in-compilation-context-exception? _exn91758_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn91754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91754_))
            (let ((_e91756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91754_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91756_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e91756_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97297
                                (let ()
                                  (declare (not safe))
                                  (cons _e91756_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp97297)))))
            (if (macro-not-in-compilation-context-exception? _exn91754_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn91754_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97296
                              (let ()
                                (declare (not safe))
                                (cons _exn91754_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp97296)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn91748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91748_))
            (let ((_e91751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91748_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91751_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e91751_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97299
                                (let ()
                                  (declare (not safe))
                                  (cons _e91751_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp97299)))))
            (if (macro-not-in-compilation-context-exception? _exn91748_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn91748_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97298
                              (let ()
                                (declare (not safe))
                                (cons _exn91748_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp97298)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn91744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91744_))
            (let ((_e91746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91744_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e91746_))
            (macro-number-of-arguments-limit-exception? _exn91744_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn91740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91740_))
            (let ((_e91742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91740_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91742_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e91742_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97301
                                (let ()
                                  (declare (not safe))
                                  (cons _e91742_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp97301)))))
            (if (macro-number-of-arguments-limit-exception? _exn91740_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn91740_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97300
                              (let ()
                                (declare (not safe))
                                (cons _exn91740_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp97300)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn91734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91734_))
            (let ((_e91737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91734_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91737_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e91737_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97303
                                (let ()
                                  (declare (not safe))
                                  (cons _e91737_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp97303)))))
            (if (macro-number-of-arguments-limit-exception? _exn91734_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn91734_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97302
                              (let ()
                                (declare (not safe))
                                (cons _exn91734_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp97302)))))))
    (define os-exception?
      (lambda (_exn91730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91730_))
            (let ((_e91732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91730_ 'exception))))
              (macro-os-exception? _e91732_))
            (macro-os-exception? _exn91730_))))
    (define os-exception-arguments
      (lambda (_exn91726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91726_))
            (let ((_e91728_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91726_ 'exception))))
              (if (macro-os-exception? _e91728_)
                  (macro-os-exception-arguments _e91728_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97305
                                (let ()
                                  (declare (not safe))
                                  (cons _e91728_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp97305)))))
            (if (macro-os-exception? _exn91726_)
                (macro-os-exception-arguments _exn91726_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97304
                              (let ()
                                (declare (not safe))
                                (cons _exn91726_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp97304)))))))
    (define os-exception-code
      (lambda (_exn91722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91722_))
            (let ((_e91724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91722_ 'exception))))
              (if (macro-os-exception? _e91724_)
                  (macro-os-exception-code _e91724_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97307
                                (let ()
                                  (declare (not safe))
                                  (cons _e91724_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp97307)))))
            (if (macro-os-exception? _exn91722_)
                (macro-os-exception-code _exn91722_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97306
                              (let ()
                                (declare (not safe))
                                (cons _exn91722_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp97306)))))))
    (define os-exception-message
      (lambda (_exn91718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91718_))
            (let ((_e91720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91718_ 'exception))))
              (if (macro-os-exception? _e91720_)
                  (macro-os-exception-message _e91720_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97309
                                (let ()
                                  (declare (not safe))
                                  (cons _e91720_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp97309)))))
            (if (macro-os-exception? _exn91718_)
                (macro-os-exception-message _exn91718_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97308
                              (let ()
                                (declare (not safe))
                                (cons _exn91718_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp97308)))))))
    (define os-exception-procedure
      (lambda (_exn91712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91712_))
            (let ((_e91715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91712_ 'exception))))
              (if (macro-os-exception? _e91715_)
                  (macro-os-exception-procedure _e91715_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97311
                                (let ()
                                  (declare (not safe))
                                  (cons _e91715_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp97311)))))
            (if (macro-os-exception? _exn91712_)
                (macro-os-exception-procedure _exn91712_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97310
                              (let ()
                                (declare (not safe))
                                (cons _exn91712_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp97310)))))))
    (define permission-denied-exception?
      (lambda (_exn91708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91708_))
            (let ((_e91710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91708_ 'exception))))
              (macro-permission-denied-exception? _e91710_))
            (macro-permission-denied-exception? _exn91708_))))
    (define permission-denied-exception-arguments
      (lambda (_exn91704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91704_))
            (let ((_e91706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91704_ 'exception))))
              (if (macro-permission-denied-exception? _e91706_)
                  (macro-permission-denied-exception-arguments _e91706_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97313
                                (let ()
                                  (declare (not safe))
                                  (cons _e91706_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp97313)))))
            (if (macro-permission-denied-exception? _exn91704_)
                (macro-permission-denied-exception-arguments _exn91704_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97312
                              (let ()
                                (declare (not safe))
                                (cons _exn91704_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp97312)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn91698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91698_))
            (let ((_e91701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91698_ 'exception))))
              (if (macro-permission-denied-exception? _e91701_)
                  (macro-permission-denied-exception-procedure _e91701_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97315
                                (let ()
                                  (declare (not safe))
                                  (cons _e91701_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp97315)))))
            (if (macro-permission-denied-exception? _exn91698_)
                (macro-permission-denied-exception-procedure _exn91698_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97314
                              (let ()
                                (declare (not safe))
                                (cons _exn91698_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp97314)))))))
    (define range-exception?
      (lambda (_exn91694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91694_))
            (let ((_e91696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91694_ 'exception))))
              (macro-range-exception? _e91696_))
            (macro-range-exception? _exn91694_))))
    (define range-exception-arg-id
      (lambda (_exn91690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91690_))
            (let ((_e91692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91690_ 'exception))))
              (if (macro-range-exception? _e91692_)
                  (macro-range-exception-arg-id _e91692_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97317
                                (let ()
                                  (declare (not safe))
                                  (cons _e91692_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp97317)))))
            (if (macro-range-exception? _exn91690_)
                (macro-range-exception-arg-id _exn91690_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97316
                              (let ()
                                (declare (not safe))
                                (cons _exn91690_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp97316)))))))
    (define range-exception-arguments
      (lambda (_exn91686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91686_))
            (let ((_e91688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91686_ 'exception))))
              (if (macro-range-exception? _e91688_)
                  (macro-range-exception-arguments _e91688_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97319
                                (let ()
                                  (declare (not safe))
                                  (cons _e91688_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp97319)))))
            (if (macro-range-exception? _exn91686_)
                (macro-range-exception-arguments _exn91686_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97318
                              (let ()
                                (declare (not safe))
                                (cons _exn91686_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp97318)))))))
    (define range-exception-procedure
      (lambda (_exn91680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91680_))
            (let ((_e91683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91680_ 'exception))))
              (if (macro-range-exception? _e91683_)
                  (macro-range-exception-procedure _e91683_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97321
                                (let ()
                                  (declare (not safe))
                                  (cons _e91683_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp97321)))))
            (if (macro-range-exception? _exn91680_)
                (macro-range-exception-procedure _exn91680_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97320
                              (let ()
                                (declare (not safe))
                                (cons _exn91680_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp97320)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn91676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91676_))
            (let ((_e91678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91676_ 'exception))))
              (macro-rpc-remote-error-exception? _e91678_))
            (macro-rpc-remote-error-exception? _exn91676_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn91672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91672_))
            (let ((_e91674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91672_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91674_)
                  (macro-rpc-remote-error-exception-arguments _e91674_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97323
                                (let ()
                                  (declare (not safe))
                                  (cons _e91674_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp97323)))))
            (if (macro-rpc-remote-error-exception? _exn91672_)
                (macro-rpc-remote-error-exception-arguments _exn91672_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97322
                              (let ()
                                (declare (not safe))
                                (cons _exn91672_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp97322)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn91668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91668_))
            (let ((_e91670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91668_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91670_)
                  (macro-rpc-remote-error-exception-message _e91670_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97325
                                (let ()
                                  (declare (not safe))
                                  (cons _e91670_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp97325)))))
            (if (macro-rpc-remote-error-exception? _exn91668_)
                (macro-rpc-remote-error-exception-message _exn91668_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97324
                              (let ()
                                (declare (not safe))
                                (cons _exn91668_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp97324)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn91662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91662_))
            (let ((_e91665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91662_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91665_)
                  (macro-rpc-remote-error-exception-procedure _e91665_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97327
                                (let ()
                                  (declare (not safe))
                                  (cons _e91665_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp97327)))))
            (if (macro-rpc-remote-error-exception? _exn91662_)
                (macro-rpc-remote-error-exception-procedure _exn91662_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97326
                              (let ()
                                (declare (not safe))
                                (cons _exn91662_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp97326)))))))
    (define scheduler-exception?
      (lambda (_exn91658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91658_))
            (let ((_e91660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91658_ 'exception))))
              (macro-scheduler-exception? _e91660_))
            (macro-scheduler-exception? _exn91658_))))
    (define scheduler-exception-reason
      (lambda (_exn91652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91652_))
            (let ((_e91655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91652_ 'exception))))
              (if (macro-scheduler-exception? _e91655_)
                  (macro-scheduler-exception-reason _e91655_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp97329
                                (let ()
                                  (declare (not safe))
                                  (cons _e91655_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp97329)))))
            (if (macro-scheduler-exception? _exn91652_)
                (macro-scheduler-exception-reason _exn91652_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp97328
                              (let ()
                                (declare (not safe))
                                (cons _exn91652_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp97328)))))))
    (define sfun-conversion-exception?
      (lambda (_exn91648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91648_))
            (let ((_e91650_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91648_ 'exception))))
              (macro-sfun-conversion-exception? _e91650_))
            (macro-sfun-conversion-exception? _exn91648_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn91644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91644_))
            (let ((_e91646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91644_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91646_)
                  (macro-sfun-conversion-exception-arguments _e91646_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97331
                                (let ()
                                  (declare (not safe))
                                  (cons _e91646_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp97331)))))
            (if (macro-sfun-conversion-exception? _exn91644_)
                (macro-sfun-conversion-exception-arguments _exn91644_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97330
                              (let ()
                                (declare (not safe))
                                (cons _exn91644_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp97330)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn91640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91640_))
            (let ((_e91642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91640_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91642_)
                  (macro-sfun-conversion-exception-code _e91642_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97333
                                (let ()
                                  (declare (not safe))
                                  (cons _e91642_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp97333)))))
            (if (macro-sfun-conversion-exception? _exn91640_)
                (macro-sfun-conversion-exception-code _exn91640_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97332
                              (let ()
                                (declare (not safe))
                                (cons _exn91640_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp97332)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn91636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91636_))
            (let ((_e91638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91636_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91638_)
                  (macro-sfun-conversion-exception-message _e91638_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97335
                                (let ()
                                  (declare (not safe))
                                  (cons _e91638_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp97335)))))
            (if (macro-sfun-conversion-exception? _exn91636_)
                (macro-sfun-conversion-exception-message _exn91636_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97334
                              (let ()
                                (declare (not safe))
                                (cons _exn91636_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp97334)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn91630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91630_))
            (let ((_e91633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91630_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91633_)
                  (macro-sfun-conversion-exception-procedure _e91633_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97337
                                (let ()
                                  (declare (not safe))
                                  (cons _e91633_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp97337)))))
            (if (macro-sfun-conversion-exception? _exn91630_)
                (macro-sfun-conversion-exception-procedure _exn91630_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97336
                              (let ()
                                (declare (not safe))
                                (cons _exn91630_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp97336)))))))
    (define stack-overflow-exception?
      (lambda (_exn91624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91624_))
            (let ((_e91627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91624_ 'exception))))
              (macro-stack-overflow-exception? _e91627_))
            (macro-stack-overflow-exception? _exn91624_))))
    (define started-thread-exception?
      (lambda (_exn91620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91620_))
            (let ((_e91622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91620_ 'exception))))
              (macro-started-thread-exception? _e91622_))
            (macro-started-thread-exception? _exn91620_))))
    (define started-thread-exception-arguments
      (lambda (_exn91616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91616_))
            (let ((_e91618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91616_ 'exception))))
              (if (macro-started-thread-exception? _e91618_)
                  (macro-started-thread-exception-arguments _e91618_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97339
                                (let ()
                                  (declare (not safe))
                                  (cons _e91618_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp97339)))))
            (if (macro-started-thread-exception? _exn91616_)
                (macro-started-thread-exception-arguments _exn91616_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97338
                              (let ()
                                (declare (not safe))
                                (cons _exn91616_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp97338)))))))
    (define started-thread-exception-procedure
      (lambda (_exn91610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91610_))
            (let ((_e91613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91610_ 'exception))))
              (if (macro-started-thread-exception? _e91613_)
                  (macro-started-thread-exception-procedure _e91613_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97341
                                (let ()
                                  (declare (not safe))
                                  (cons _e91613_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp97341)))))
            (if (macro-started-thread-exception? _exn91610_)
                (macro-started-thread-exception-procedure _exn91610_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97340
                              (let ()
                                (declare (not safe))
                                (cons _exn91610_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp97340)))))))
    (define terminated-thread-exception?
      (lambda (_exn91606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91606_))
            (let ((_e91608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91606_ 'exception))))
              (macro-terminated-thread-exception? _e91608_))
            (macro-terminated-thread-exception? _exn91606_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn91602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91602_))
            (let ((_e91604_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91602_ 'exception))))
              (if (macro-terminated-thread-exception? _e91604_)
                  (macro-terminated-thread-exception-arguments _e91604_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97343
                                (let ()
                                  (declare (not safe))
                                  (cons _e91604_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp97343)))))
            (if (macro-terminated-thread-exception? _exn91602_)
                (macro-terminated-thread-exception-arguments _exn91602_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97342
                              (let ()
                                (declare (not safe))
                                (cons _exn91602_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp97342)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn91596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91596_))
            (let ((_e91599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91596_ 'exception))))
              (if (macro-terminated-thread-exception? _e91599_)
                  (macro-terminated-thread-exception-procedure _e91599_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97345
                                (let ()
                                  (declare (not safe))
                                  (cons _e91599_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp97345)))))
            (if (macro-terminated-thread-exception? _exn91596_)
                (macro-terminated-thread-exception-procedure _exn91596_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97344
                              (let ()
                                (declare (not safe))
                                (cons _exn91596_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp97344)))))))
    (define type-exception?
      (lambda (_exn91592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91592_))
            (let ((_e91594_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91592_ 'exception))))
              (macro-type-exception? _e91594_))
            (macro-type-exception? _exn91592_))))
    (define type-exception-arg-id
      (lambda (_exn91588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91588_))
            (let ((_e91590_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91588_ 'exception))))
              (if (macro-type-exception? _e91590_)
                  (macro-type-exception-arg-id _e91590_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97347
                                (let ()
                                  (declare (not safe))
                                  (cons _e91590_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp97347)))))
            (if (macro-type-exception? _exn91588_)
                (macro-type-exception-arg-id _exn91588_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97346
                              (let ()
                                (declare (not safe))
                                (cons _exn91588_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp97346)))))))
    (define type-exception-arguments
      (lambda (_exn91584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91584_))
            (let ((_e91586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91584_ 'exception))))
              (if (macro-type-exception? _e91586_)
                  (macro-type-exception-arguments _e91586_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97349
                                (let ()
                                  (declare (not safe))
                                  (cons _e91586_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp97349)))))
            (if (macro-type-exception? _exn91584_)
                (macro-type-exception-arguments _exn91584_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97348
                              (let ()
                                (declare (not safe))
                                (cons _exn91584_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp97348)))))))
    (define type-exception-procedure
      (lambda (_exn91580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91580_))
            (let ((_e91582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91580_ 'exception))))
              (if (macro-type-exception? _e91582_)
                  (macro-type-exception-procedure _e91582_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97351
                                (let ()
                                  (declare (not safe))
                                  (cons _e91582_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp97351)))))
            (if (macro-type-exception? _exn91580_)
                (macro-type-exception-procedure _exn91580_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97350
                              (let ()
                                (declare (not safe))
                                (cons _exn91580_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp97350)))))))
    (define type-exception-type-id
      (lambda (_exn91574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91574_))
            (let ((_e91577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91574_ 'exception))))
              (if (macro-type-exception? _e91577_)
                  (macro-type-exception-type-id _e91577_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97353
                                (let ()
                                  (declare (not safe))
                                  (cons _e91577_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp97353)))))
            (if (macro-type-exception? _exn91574_)
                (macro-type-exception-type-id _exn91574_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97352
                              (let ()
                                (declare (not safe))
                                (cons _exn91574_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp97352)))))))
    (define unbound-global-exception?
      (lambda (_exn91570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91570_))
            (let ((_e91572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91570_ 'exception))))
              (macro-unbound-global-exception? _e91572_))
            (macro-unbound-global-exception? _exn91570_))))
    (define unbound-global-exception-code
      (lambda (_exn91566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91566_))
            (let ((_e91568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91566_ 'exception))))
              (if (macro-unbound-global-exception? _e91568_)
                  (macro-unbound-global-exception-code _e91568_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97355
                                (let ()
                                  (declare (not safe))
                                  (cons _e91568_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp97355)))))
            (if (macro-unbound-global-exception? _exn91566_)
                (macro-unbound-global-exception-code _exn91566_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97354
                              (let ()
                                (declare (not safe))
                                (cons _exn91566_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp97354)))))))
    (define unbound-global-exception-rte
      (lambda (_exn91562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91562_))
            (let ((_e91564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91562_ 'exception))))
              (if (macro-unbound-global-exception? _e91564_)
                  (macro-unbound-global-exception-rte _e91564_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97357
                                (let ()
                                  (declare (not safe))
                                  (cons _e91564_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp97357)))))
            (if (macro-unbound-global-exception? _exn91562_)
                (macro-unbound-global-exception-rte _exn91562_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97356
                              (let ()
                                (declare (not safe))
                                (cons _exn91562_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp97356)))))))
    (define unbound-global-exception-variable
      (lambda (_exn91556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91556_))
            (let ((_e91559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91556_ 'exception))))
              (if (macro-unbound-global-exception? _e91559_)
                  (macro-unbound-global-exception-variable _e91559_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97359
                                (let ()
                                  (declare (not safe))
                                  (cons _e91559_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp97359)))))
            (if (macro-unbound-global-exception? _exn91556_)
                (macro-unbound-global-exception-variable _exn91556_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97358
                              (let ()
                                (declare (not safe))
                                (cons _exn91556_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp97358)))))))
    (define unbound-key-exception?
      (lambda (_exn91552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91552_))
            (let ((_e91554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91552_ 'exception))))
              (macro-unbound-key-exception? _e91554_))
            (macro-unbound-key-exception? _exn91552_))))
    (define unbound-key-exception-arguments
      (lambda (_exn91548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91548_))
            (let ((_e91550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91548_ 'exception))))
              (if (macro-unbound-key-exception? _e91550_)
                  (macro-unbound-key-exception-arguments _e91550_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97361
                                (let ()
                                  (declare (not safe))
                                  (cons _e91550_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp97361)))))
            (if (macro-unbound-key-exception? _exn91548_)
                (macro-unbound-key-exception-arguments _exn91548_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97360
                              (let ()
                                (declare (not safe))
                                (cons _exn91548_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp97360)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn91542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91542_))
            (let ((_e91545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91542_ 'exception))))
              (if (macro-unbound-key-exception? _e91545_)
                  (macro-unbound-key-exception-procedure _e91545_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97363
                                (let ()
                                  (declare (not safe))
                                  (cons _e91545_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp97363)))))
            (if (macro-unbound-key-exception? _exn91542_)
                (macro-unbound-key-exception-procedure _exn91542_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97362
                              (let ()
                                (declare (not safe))
                                (cons _exn91542_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp97362)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn91538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91538_))
            (let ((_e91540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91538_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e91540_))
            (macro-unbound-os-environment-variable-exception? _exn91538_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn91534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91534_))
            (let ((_e91536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91534_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91536_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e91536_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97365
                                (let ()
                                  (declare (not safe))
                                  (cons _e91536_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp97365)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91534_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn91534_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97364
                              (let ()
                                (declare (not safe))
                                (cons _exn91534_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp97364)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn91528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91528_))
            (let ((_e91531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91528_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91531_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e91531_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97367
                                (let ()
                                  (declare (not safe))
                                  (cons _e91531_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp97367)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91528_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn91528_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97366
                              (let ()
                                (declare (not safe))
                                (cons _exn91528_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp97366)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn91524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91524_))
            (let ((_e91526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91524_ 'exception))))
              (macro-unbound-serial-number-exception? _e91526_))
            (macro-unbound-serial-number-exception? _exn91524_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn91520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91520_))
            (let ((_e91522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91520_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91522_)
                  (macro-unbound-serial-number-exception-arguments _e91522_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97369
                                (let ()
                                  (declare (not safe))
                                  (cons _e91522_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp97369)))))
            (if (macro-unbound-serial-number-exception? _exn91520_)
                (macro-unbound-serial-number-exception-arguments _exn91520_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97368
                              (let ()
                                (declare (not safe))
                                (cons _exn91520_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp97368)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn91514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91514_))
            (let ((_e91517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91514_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91517_)
                  (macro-unbound-serial-number-exception-procedure _e91517_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97371
                                (let ()
                                  (declare (not safe))
                                  (cons _e91517_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp97371)))))
            (if (macro-unbound-serial-number-exception? _exn91514_)
                (macro-unbound-serial-number-exception-procedure _exn91514_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97370
                              (let ()
                                (declare (not safe))
                                (cons _exn91514_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp97370)))))))
    (define uncaught-exception?
      (lambda (_exn91510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91510_))
            (let ((_e91512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91510_ 'exception))))
              (macro-uncaught-exception? _e91512_))
            (macro-uncaught-exception? _exn91510_))))
    (define uncaught-exception-arguments
      (lambda (_exn91506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91506_))
            (let ((_e91508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91506_ 'exception))))
              (if (macro-uncaught-exception? _e91508_)
                  (macro-uncaught-exception-arguments _e91508_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97373
                                (let ()
                                  (declare (not safe))
                                  (cons _e91508_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp97373)))))
            (if (macro-uncaught-exception? _exn91506_)
                (macro-uncaught-exception-arguments _exn91506_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97372
                              (let ()
                                (declare (not safe))
                                (cons _exn91506_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp97372)))))))
    (define uncaught-exception-procedure
      (lambda (_exn91502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91502_))
            (let ((_e91504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91502_ 'exception))))
              (if (macro-uncaught-exception? _e91504_)
                  (macro-uncaught-exception-procedure _e91504_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97375
                                (let ()
                                  (declare (not safe))
                                  (cons _e91504_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp97375)))))
            (if (macro-uncaught-exception? _exn91502_)
                (macro-uncaught-exception-procedure _exn91502_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97374
                              (let ()
                                (declare (not safe))
                                (cons _exn91502_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp97374)))))))
    (define uncaught-exception-reason
      (lambda (_exn91496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91496_))
            (let ((_e91499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91496_ 'exception))))
              (if (macro-uncaught-exception? _e91499_)
                  (macro-uncaught-exception-reason _e91499_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97377
                                (let ()
                                  (declare (not safe))
                                  (cons _e91499_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp97377)))))
            (if (macro-uncaught-exception? _exn91496_)
                (macro-uncaught-exception-reason _exn91496_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97376
                              (let ()
                                (declare (not safe))
                                (cons _exn91496_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp97376)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn91492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91492_))
            (let ((_e91494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91492_ 'exception))))
              (macro-uninitialized-thread-exception? _e91494_))
            (macro-uninitialized-thread-exception? _exn91492_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn91488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91488_))
            (let ((_e91490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91488_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91490_)
                  (macro-uninitialized-thread-exception-arguments _e91490_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97379
                                (let ()
                                  (declare (not safe))
                                  (cons _e91490_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp97379)))))
            (if (macro-uninitialized-thread-exception? _exn91488_)
                (macro-uninitialized-thread-exception-arguments _exn91488_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97378
                              (let ()
                                (declare (not safe))
                                (cons _exn91488_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp97378)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn91482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91482_))
            (let ((_e91485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91482_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91485_)
                  (macro-uninitialized-thread-exception-procedure _e91485_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97381
                                (let ()
                                  (declare (not safe))
                                  (cons _e91485_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp97381)))))
            (if (macro-uninitialized-thread-exception? _exn91482_)
                (macro-uninitialized-thread-exception-procedure _exn91482_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97380
                              (let ()
                                (declare (not safe))
                                (cons _exn91482_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp97380)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn91478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91478_))
            (let ((_e91480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91478_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e91480_))
            (macro-unknown-keyword-argument-exception? _exn91478_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn91474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91474_))
            (let ((_e91476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91474_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91476_)
                  (macro-unknown-keyword-argument-exception-arguments _e91476_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97383
                                (let ()
                                  (declare (not safe))
                                  (cons _e91476_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp97383)))))
            (if (macro-unknown-keyword-argument-exception? _exn91474_)
                (macro-unknown-keyword-argument-exception-arguments _exn91474_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97382
                              (let ()
                                (declare (not safe))
                                (cons _exn91474_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp97382)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn91468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91468_))
            (let ((_e91471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91468_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91471_)
                  (macro-unknown-keyword-argument-exception-procedure _e91471_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97385
                                (let ()
                                  (declare (not safe))
                                  (cons _e91471_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp97385)))))
            (if (macro-unknown-keyword-argument-exception? _exn91468_)
                (macro-unknown-keyword-argument-exception-procedure _exn91468_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97384
                              (let ()
                                (declare (not safe))
                                (cons _exn91468_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp97384)))))))
    (define unterminated-process-exception?
      (lambda (_exn91464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91464_))
            (let ((_e91466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91464_ 'exception))))
              (macro-unterminated-process-exception? _e91466_))
            (macro-unterminated-process-exception? _exn91464_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn91460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91460_))
            (let ((_e91462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91460_ 'exception))))
              (if (macro-unterminated-process-exception? _e91462_)
                  (macro-unterminated-process-exception-arguments _e91462_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97387
                                (let ()
                                  (declare (not safe))
                                  (cons _e91462_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp97387)))))
            (if (macro-unterminated-process-exception? _exn91460_)
                (macro-unterminated-process-exception-arguments _exn91460_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97386
                              (let ()
                                (declare (not safe))
                                (cons _exn91460_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp97386)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn91454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91454_))
            (let ((_e91457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91454_ 'exception))))
              (if (macro-unterminated-process-exception? _e91457_)
                  (macro-unterminated-process-exception-procedure _e91457_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97389
                                (let ()
                                  (declare (not safe))
                                  (cons _e91457_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp97389)))))
            (if (macro-unterminated-process-exception? _exn91454_)
                (macro-unterminated-process-exception-procedure _exn91454_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97388
                              (let ()
                                (declare (not safe))
                                (cons _exn91454_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp97388)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn91450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91450_))
            (let ((_e91452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91450_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e91452_))
            (macro-wrong-number-of-arguments-exception? _exn91450_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn91446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91446_))
            (let ((_e91448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91446_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91448_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e91448_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97391
                                (let ()
                                  (declare (not safe))
                                  (cons _e91448_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp97391)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91446_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn91446_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97390
                              (let ()
                                (declare (not safe))
                                (cons _exn91446_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp97390)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn91440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91440_))
            (let ((_e91443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91440_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91443_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e91443_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97393
                                (let ()
                                  (declare (not safe))
                                  (cons _e91443_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp97393)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91440_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn91440_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97392
                              (let ()
                                (declare (not safe))
                                (cons _exn91440_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp97392)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn91436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91436_))
            (let ((_e91438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91436_ 'exception))))
              (macro-wrong-number-of-values-exception? _e91438_))
            (macro-wrong-number-of-values-exception? _exn91436_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn91432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91432_))
            (let ((_e91434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91432_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91434_)
                  (macro-wrong-number-of-values-exception-code _e91434_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97395
                                (let ()
                                  (declare (not safe))
                                  (cons _e91434_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp97395)))))
            (if (macro-wrong-number-of-values-exception? _exn91432_)
                (macro-wrong-number-of-values-exception-code _exn91432_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97394
                              (let ()
                                (declare (not safe))
                                (cons _exn91432_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp97394)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn91428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91428_))
            (let ((_e91430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91428_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91430_)
                  (macro-wrong-number-of-values-exception-rte _e91430_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97397
                                (let ()
                                  (declare (not safe))
                                  (cons _e91430_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp97397)))))
            (if (macro-wrong-number-of-values-exception? _exn91428_)
                (macro-wrong-number-of-values-exception-rte _exn91428_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97396
                              (let ()
                                (declare (not safe))
                                (cons _exn91428_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp97396)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn91422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91422_))
            (let ((_e91425_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91422_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91425_)
                  (macro-wrong-number-of-values-exception-vals _e91425_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97399
                                (let ()
                                  (declare (not safe))
                                  (cons _e91425_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp97399)))))
            (if (macro-wrong-number-of-values-exception? _exn91422_)
                (macro-wrong-number-of-values-exception-vals _exn91422_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97398
                              (let ()
                                (declare (not safe))
                                (cons _exn91422_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp97398)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn91416_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91416_))
            (let ((_e91419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91416_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e91419_))
            (macro-wrong-processor-c-return-exception? _exn91416_))))))
