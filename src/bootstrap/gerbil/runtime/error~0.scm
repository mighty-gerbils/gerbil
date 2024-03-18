(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710781148)
  (begin
    (define Exception::t
      (let ((__tmp68201 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp68201
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args68169_ (apply make-instance Exception::t _$args68169_)))
    (define StackTrace::t
      (let ((__tmp68202 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp68202
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args68166_ (apply make-instance StackTrace::t _$args68166_)))
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
      (let ((__tmp68203 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp68203
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args68163_ (apply make-instance Error::t _$args68163_)))
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
      (let ((__tmp68204 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp68204
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args68160_
        (apply make-instance RuntimeException::t _$args68160_)))
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
      (lambda (_exn68155_ _continue68156_)
        (let ((_exn68158_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn68155_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn68158_ _continue68156_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn68151_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn68151_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn68151_ 'continuation))
                '#!void
                (let ((__tmp68205
                       (lambda (_cont68153_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn68151_
                            'continuation
                            _cont68153_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp68205)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn68151_))))
    (define error
      (lambda (_message68148_ . _irritants68149_)
        (raise (let ((__obj68195
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj68195
                  _message68148_
                  'irritants:
                  _irritants68149_)
                 __obj68195))))
    (define with-exception-handler
      (lambda (_handler68141_ _thunk68142_)
        (if (let () (declare (not safe)) (procedure? _handler68141_))
            '#!void
            (raise (let ((__obj68196
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68196
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68141_ '())))
                     __obj68196)))
        (if (let () (declare (not safe)) (procedure? _thunk68142_))
            '#!void
            (raise (let ((__obj68197
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68197
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68142_ '())))
                     __obj68197)))
        (let ((__tmp68206
               (lambda (_exn68144_)
                 (let ((_exn68146_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn68144_))))
                   (_handler68141_ _exn68146_)))))
          (declare (not safe))
          (##with-exception-handler __tmp68206 _thunk68142_))))
    (define with-catch
      (lambda (_handler68134_ _thunk68135_)
        (if (let () (declare (not safe)) (procedure? _handler68134_))
            '#!void
            (raise (let ((__obj68198
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68198
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68134_ '())))
                     __obj68198)))
        (if (let () (declare (not safe)) (procedure? _thunk68135_))
            '#!void
            (raise (let ((__obj68199
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68199
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68135_ '())))
                     __obj68199)))
        (let ((__tmp68207
               (lambda (_cont68137_)
                 (with-exception-handler
                  (lambda (_exn68139_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont68137_
                       _handler68134_
                       _exn68139_)))
                  _thunk68135_))))
          (declare (not safe))
          (##continuation-capture __tmp68207))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn68125_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn68125_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn68125_)))
            _exn68125_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn68125_))
                _exn68125_
                (if (macro-exception? _exn68125_)
                    (let ((_rte68130_
                           (let ((__obj68200
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj68200
                                _exn68125_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj68200)))
                      (let ((__tmp68208
                             (lambda (_cont68132_)
                               (let ((__tmp68209
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont68132_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte68130_
                                  'continuation
                                  __tmp68209)))))
                        (declare (not safe))
                        (##continuation-capture __tmp68208))
                      _rte68130_)
                    _exn68125_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj68120_)
        (let ((_$e68122_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj68120_))))
          (if _$e68122_
              _$e68122_
              (let () (declare (not safe)) (error-exception? _obj68120_))))))
    (define error-message
      (lambda (_obj68118_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68118_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68118_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj68118_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj68118_))
                '#f))))
    (define error-irritants
      (lambda (_obj68116_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68116_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68116_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj68116_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj68116_))
                '#f))))
    (define error-trace
      (lambda (_obj68114_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68114_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68114_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e68096_ _port68097_)
        (let ((_$e68099_
               (let ()
                 (declare (not safe))
                 (method-ref _e68096_ 'display-exception))))
          (if _$e68099_
              ((lambda (_f68102_) (_f68102_ _e68096_ _port68097_)) _$e68099_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e68096_ _port68097_))))))
    (define display-exception__0
      (lambda (_e68107_)
        (let ((_port68109_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e68107_ _port68109_))))
    (define display-exception
      (lambda _g68211_
        (let ((_g68210_ (let () (declare (not safe)) (##length _g68211_))))
          (cond ((let () (declare (not safe)) (##fx= _g68210_ 1))
                 (apply (lambda (_e68107_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e68107_)))
                        _g68211_))
                ((let () (declare (not safe)) (##fx= _g68210_ 2))
                 (apply (lambda (_e68111_ _port68112_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e68111_ _port68112_)))
                        _g68211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g68211_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self68085_ _message68086_ . _rest68087_)
        (let ((_message68093_
               (if (let () (declare (not safe)) (string? _message68086_))
                   _message68086_
                   (call-with-output-string
                    '""
                    (lambda (_g6808868090_)
                      (display _message68086_ _g6808868090_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self68085_ 'message _message68093_))
          (apply class-instance-init! _self68085_ _rest68087_))))
    (define Error:::init!::specialize
      (lambda (__klass68171 __method-table68172)
        (let ((__message68173
               (let ((__slot68174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68171 'message))))
                 (if __slot68174
                     __slot68174
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self68085_ _message68086_ . _rest68087_)
            (let ((_message68093_
                   (if (let () (declare (not safe)) (string? _message68086_))
                       _message68086_
                       (call-with-output-string
                        '""
                        (lambda (_g6808868090_)
                          (display _message68086_ _g6808868090_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self68085_
                 _message68093_
                 __message68173
                 __klass68171
                 '#f))
              (apply class-instance-init! _self68085_ _rest68087_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67943_ _port67944_)
        (let ((_tmp-port67946_ (open-output-string))
              (_display-error-newline67947_
               (> (output-port-column _port67944_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67946_))
          (let ((__tmp68212
                 (lambda ()
                   (if _display-error-newline67947_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67950_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67943_ 'where))))
                     (if _$e67950_ (display _$e67950_) (display '"?")))
                   (let ((__tmp68213
                          (let ((__tmp68214 (object-type _self67943_)))
                            (declare (not safe))
                            (##type-name __tmp68214))))
                     (declare (not safe))
                     (display* '" [" __tmp68213 '"]: "))
                   (let ((__tmp68215
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67943_ 'message))))
                     (declare (not safe))
                     (displayln __tmp68215))
                   (let ((_irritants67953_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67943_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67953_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67955_)
                              (write _obj67955_)
                              (write-char '#\space))
                            _irritants67953_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67943_))
                            (dump-stack-trace?))
                       (let ((_cont6795667958_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67943_
                                 'continuation))))
                         (if _cont6795667958_
                             (let ((_cont67961_ _cont6795667958_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67961_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp68212
             current-output-port
             _tmp-port67946_))
          (let ((__tmp68216 (get-output-string _tmp-port67946_)))
            (declare (not safe))
            (##write-string __tmp68216 _port67944_)))))
    (define Error::display-exception::specialize
      (lambda (__klass68175 __method-table68176)
        (let ((__message68177
               (let ((__slot68181
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68175 'message))))
                 (if __slot68181
                     __slot68181
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where68178
               (let ((__slot68182
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68175 'where))))
                 (if __slot68182
                     __slot68182
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__continuation68179
               (let ((__slot68183
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68175 'continuation))))
                 (if __slot68183
                     __slot68183
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__irritants68180
               (let ((__slot68184
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68175 'irritants))))
                 (if __slot68184
                     __slot68184
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants))))))
          (lambda (_self67943_ _port67944_)
            (let ((_tmp-port67946_ (open-output-string))
                  (_display-error-newline67947_
                   (> (output-port-column _port67944_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67946_))
              (let ((__tmp68217
                     (lambda ()
                       (if _display-error-newline67947_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67950_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67943_
                                 __where68178
                                 __klass68175
                                 '#f))))
                         (if _$e67950_ (display _$e67950_) (display '"?")))
                       (let ((__tmp68218
                              (let ((__tmp68219 (object-type _self67943_)))
                                (declare (not safe))
                                (##type-name __tmp68219))))
                         (declare (not safe))
                         (display* '" [" __tmp68218 '"]: "))
                       (let ((__tmp68220
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67943_
                                 __message68177
                                 __klass68175
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp68220))
                       (let ((_irritants67953_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67943_
                                 __irritants68180
                                 __klass68175
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67953_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67955_)
                                  (write _obj67955_)
                                  (write-char '#\space))
                                _irritants67953_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67943_))
                                (dump-stack-trace?))
                           (let ((_cont6795667958_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67943_
                                     __continuation68179
                                     __klass68175
                                     '#f))))
                             (if _cont6795667958_
                                 (let ((_cont67961_ _cont6795667958_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67961_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp68217
                 current-output-port
                 _tmp-port67946_))
              (let ((__tmp68221 (get-output-string _tmp-port67946_)))
                (declare (not safe))
                (##write-string __tmp68221 _port67944_)))))))
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
      (lambda (_self67810_ _port67811_)
        (let ((_tmp-port67813_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67813_))
          (let ((__tmp68222
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67810_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp68222 _tmp-port67813_))
          (if (dump-stack-trace?)
              (let ((_cont6781467816_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67810_ 'continuation))))
                (if _cont6781467816_
                    (let ((_cont67819_ _cont6781467816_))
                      (display '"--- continuation backtrace:" _tmp-port67813_)
                      (newline _tmp-port67813_)
                      (display-continuation-backtrace
                       _cont67819_
                       _tmp-port67813_))
                    '#f))
              '#!void)
          (let ((__tmp68223 (get-output-string _tmp-port67813_)))
            (declare (not safe))
            (##write-string __tmp68223 _port67811_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass68185 __method-table68186)
        (let ((__exception68187
               (let ((__slot68189
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68185 'exception))))
                 (if __slot68189
                     __slot68189
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation68188
               (let ((__slot68190
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68185 'continuation))))
                 (if __slot68190
                     __slot68190
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67810_ _port67811_)
            (let ((_tmp-port67813_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67813_))
              (let ((__tmp68224
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67810_
                        __exception68187
                        __klass68185
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp68224 _tmp-port67813_))
              (if (dump-stack-trace?)
                  (let ((_cont6781467816_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67810_
                            __continuation68188
                            __klass68185
                            '#f))))
                    (if _cont6781467816_
                        (let ((_cont67819_ _cont6781467816_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67813_)
                          (newline _tmp-port67813_)
                          (display-continuation-backtrace
                           _cont67819_
                           _tmp-port67813_))
                        '#f))
                  '#!void)
              (let ((__tmp68225 (get-output-string _tmp-port67813_)))
                (declare (not safe))
                (##write-string __tmp68225 _port67811_)))))))
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
      (lambda (_port67682_)
        (if (macro-character-port? _port67682_)
            (let ((_old-width67684_
                   (macro-character-port-output-width _port67682_)))
              (macro-character-port-output-width-set!
               _port67682_
               (lambda (_port67686_) '256))
              _old-width67684_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67679_ _old-width67680_)
        (if (macro-character-port? _port67679_)
            (macro-character-port-output-width-set!
             _port67679_
             _old-width67680_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67677_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67677_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67671_))
            (let ((_e67674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67671_ 'exception))))
              (macro-abandoned-mutex-exception? _e67674_))
            (macro-abandoned-mutex-exception? _exn67671_))))
    (define cfun-conversion-exception?
      (lambda (_exn67667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67667_))
            (let ((_e67669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67667_ 'exception))))
              (macro-cfun-conversion-exception? _e67669_))
            (macro-cfun-conversion-exception? _exn67667_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67663_))
            (let ((_e67665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67663_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67665_)
                  (macro-cfun-conversion-exception-arguments _e67665_)
                  (let ((__tmp68228
                         (let ((__tmp68229
                                (let ()
                                  (declare (not safe))
                                  (cons _e67665_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp68229))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68228))))
            (if (macro-cfun-conversion-exception? _exn67663_)
                (macro-cfun-conversion-exception-arguments _exn67663_)
                (let ((__tmp68226
                       (let ((__tmp68227
                              (let ()
                                (declare (not safe))
                                (cons _exn67663_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp68227))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68226))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67659_))
            (let ((_e67661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67659_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67661_)
                  (macro-cfun-conversion-exception-code _e67661_)
                  (let ((__tmp68232
                         (let ((__tmp68233
                                (let ()
                                  (declare (not safe))
                                  (cons _e67661_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp68233))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68232))))
            (if (macro-cfun-conversion-exception? _exn67659_)
                (macro-cfun-conversion-exception-code _exn67659_)
                (let ((__tmp68230
                       (let ((__tmp68231
                              (let ()
                                (declare (not safe))
                                (cons _exn67659_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp68231))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68230))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67655_))
            (let ((_e67657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67655_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67657_)
                  (macro-cfun-conversion-exception-message _e67657_)
                  (let ((__tmp68236
                         (let ((__tmp68237
                                (let ()
                                  (declare (not safe))
                                  (cons _e67657_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp68237))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68236))))
            (if (macro-cfun-conversion-exception? _exn67655_)
                (macro-cfun-conversion-exception-message _exn67655_)
                (let ((__tmp68234
                       (let ((__tmp68235
                              (let ()
                                (declare (not safe))
                                (cons _exn67655_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp68235))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68234))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67649_))
            (let ((_e67652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67649_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67652_)
                  (macro-cfun-conversion-exception-procedure _e67652_)
                  (let ((__tmp68240
                         (let ((__tmp68241
                                (let ()
                                  (declare (not safe))
                                  (cons _e67652_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp68241))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68240))))
            (if (macro-cfun-conversion-exception? _exn67649_)
                (macro-cfun-conversion-exception-procedure _exn67649_)
                (let ((__tmp68238
                       (let ((__tmp68239
                              (let ()
                                (declare (not safe))
                                (cons _exn67649_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp68239))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68238))))))
    (define datum-parsing-exception?
      (lambda (_exn67645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67645_))
            (let ((_e67647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67645_ 'exception))))
              (macro-datum-parsing-exception? _e67647_))
            (macro-datum-parsing-exception? _exn67645_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67641_))
            (let ((_e67643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67641_ 'exception))))
              (if (macro-datum-parsing-exception? _e67643_)
                  (macro-datum-parsing-exception-kind _e67643_)
                  (let ((__tmp68244
                         (let ((__tmp68245
                                (let ()
                                  (declare (not safe))
                                  (cons _e67643_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp68245))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68244))))
            (if (macro-datum-parsing-exception? _exn67641_)
                (macro-datum-parsing-exception-kind _exn67641_)
                (let ((__tmp68242
                       (let ((__tmp68243
                              (let ()
                                (declare (not safe))
                                (cons _exn67641_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp68243))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68242))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67637_))
            (let ((_e67639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67637_ 'exception))))
              (if (macro-datum-parsing-exception? _e67639_)
                  (macro-datum-parsing-exception-parameters _e67639_)
                  (let ((__tmp68248
                         (let ((__tmp68249
                                (let ()
                                  (declare (not safe))
                                  (cons _e67639_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp68249))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68248))))
            (if (macro-datum-parsing-exception? _exn67637_)
                (macro-datum-parsing-exception-parameters _exn67637_)
                (let ((__tmp68246
                       (let ((__tmp68247
                              (let ()
                                (declare (not safe))
                                (cons _exn67637_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp68247))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68246))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67631_))
            (let ((_e67634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67631_ 'exception))))
              (if (macro-datum-parsing-exception? _e67634_)
                  (macro-datum-parsing-exception-readenv _e67634_)
                  (let ((__tmp68252
                         (let ((__tmp68253
                                (let ()
                                  (declare (not safe))
                                  (cons _e67634_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp68253))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68252))))
            (if (macro-datum-parsing-exception? _exn67631_)
                (macro-datum-parsing-exception-readenv _exn67631_)
                (let ((__tmp68250
                       (let ((__tmp68251
                              (let ()
                                (declare (not safe))
                                (cons _exn67631_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp68251))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68250))))))
    (define deadlock-exception?
      (lambda (_exn67625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67625_))
            (let ((_e67628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67625_ 'exception))))
              (macro-deadlock-exception? _e67628_))
            (macro-deadlock-exception? _exn67625_))))
    (define divide-by-zero-exception?
      (lambda (_exn67621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67621_))
            (let ((_e67623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67621_ 'exception))))
              (macro-divide-by-zero-exception? _e67623_))
            (macro-divide-by-zero-exception? _exn67621_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67617_))
            (let ((_e67619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67617_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67619_)
                  (macro-divide-by-zero-exception-arguments _e67619_)
                  (let ((__tmp68256
                         (let ((__tmp68257
                                (let ()
                                  (declare (not safe))
                                  (cons _e67619_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp68257))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68256))))
            (if (macro-divide-by-zero-exception? _exn67617_)
                (macro-divide-by-zero-exception-arguments _exn67617_)
                (let ((__tmp68254
                       (let ((__tmp68255
                              (let ()
                                (declare (not safe))
                                (cons _exn67617_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp68255))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68254))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67611_))
            (let ((_e67614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67611_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67614_)
                  (macro-divide-by-zero-exception-procedure _e67614_)
                  (let ((__tmp68260
                         (let ((__tmp68261
                                (let ()
                                  (declare (not safe))
                                  (cons _e67614_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp68261))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68260))))
            (if (macro-divide-by-zero-exception? _exn67611_)
                (macro-divide-by-zero-exception-procedure _exn67611_)
                (let ((__tmp68258
                       (let ((__tmp68259
                              (let ()
                                (declare (not safe))
                                (cons _exn67611_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp68259))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68258))))))
    (define error-exception?
      (lambda (_exn67607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67607_))
            (let ((_e67609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67607_ 'exception))))
              (macro-error-exception? _e67609_))
            (macro-error-exception? _exn67607_))))
    (define error-exception-message
      (lambda (_exn67603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67603_))
            (let ((_e67605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67603_ 'exception))))
              (if (macro-error-exception? _e67605_)
                  (macro-error-exception-message _e67605_)
                  (let ((__tmp68264
                         (let ((__tmp68265
                                (let ()
                                  (declare (not safe))
                                  (cons _e67605_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp68265))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68264))))
            (if (macro-error-exception? _exn67603_)
                (macro-error-exception-message _exn67603_)
                (let ((__tmp68262
                       (let ((__tmp68263
                              (let ()
                                (declare (not safe))
                                (cons _exn67603_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp68263))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68262))))))
    (define error-exception-parameters
      (lambda (_exn67597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67597_))
            (let ((_e67600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67597_ 'exception))))
              (if (macro-error-exception? _e67600_)
                  (macro-error-exception-parameters _e67600_)
                  (let ((__tmp68268
                         (let ((__tmp68269
                                (let ()
                                  (declare (not safe))
                                  (cons _e67600_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp68269))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68268))))
            (if (macro-error-exception? _exn67597_)
                (macro-error-exception-parameters _exn67597_)
                (let ((__tmp68266
                       (let ((__tmp68267
                              (let ()
                                (declare (not safe))
                                (cons _exn67597_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp68267))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68266))))))
    (define expression-parsing-exception?
      (lambda (_exn67593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67593_))
            (let ((_e67595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67593_ 'exception))))
              (macro-expression-parsing-exception? _e67595_))
            (macro-expression-parsing-exception? _exn67593_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67589_))
            (let ((_e67591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67589_ 'exception))))
              (if (macro-expression-parsing-exception? _e67591_)
                  (macro-expression-parsing-exception-kind _e67591_)
                  (let ((__tmp68272
                         (let ((__tmp68273
                                (let ()
                                  (declare (not safe))
                                  (cons _e67591_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp68273))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68272))))
            (if (macro-expression-parsing-exception? _exn67589_)
                (macro-expression-parsing-exception-kind _exn67589_)
                (let ((__tmp68270
                       (let ((__tmp68271
                              (let ()
                                (declare (not safe))
                                (cons _exn67589_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp68271))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68270))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67585_))
            (let ((_e67587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67585_ 'exception))))
              (if (macro-expression-parsing-exception? _e67587_)
                  (macro-expression-parsing-exception-parameters _e67587_)
                  (let ((__tmp68276
                         (let ((__tmp68277
                                (let ()
                                  (declare (not safe))
                                  (cons _e67587_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp68277))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68276))))
            (if (macro-expression-parsing-exception? _exn67585_)
                (macro-expression-parsing-exception-parameters _exn67585_)
                (let ((__tmp68274
                       (let ((__tmp68275
                              (let ()
                                (declare (not safe))
                                (cons _exn67585_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp68275))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68274))))))
    (define expression-parsing-exception-source
      (lambda (_exn67579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67579_))
            (let ((_e67582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67579_ 'exception))))
              (if (macro-expression-parsing-exception? _e67582_)
                  (macro-expression-parsing-exception-source _e67582_)
                  (let ((__tmp68280
                         (let ((__tmp68281
                                (let ()
                                  (declare (not safe))
                                  (cons _e67582_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp68281))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68280))))
            (if (macro-expression-parsing-exception? _exn67579_)
                (macro-expression-parsing-exception-source _exn67579_)
                (let ((__tmp68278
                       (let ((__tmp68279
                              (let ()
                                (declare (not safe))
                                (cons _exn67579_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp68279))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68278))))))
    (define file-exists-exception?
      (lambda (_exn67575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67575_))
            (let ((_e67577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67575_ 'exception))))
              (macro-file-exists-exception? _e67577_))
            (macro-file-exists-exception? _exn67575_))))
    (define file-exists-exception-arguments
      (lambda (_exn67571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67571_))
            (let ((_e67573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67571_ 'exception))))
              (if (macro-file-exists-exception? _e67573_)
                  (macro-file-exists-exception-arguments _e67573_)
                  (let ((__tmp68284
                         (let ((__tmp68285
                                (let ()
                                  (declare (not safe))
                                  (cons _e67573_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp68285))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68284))))
            (if (macro-file-exists-exception? _exn67571_)
                (macro-file-exists-exception-arguments _exn67571_)
                (let ((__tmp68282
                       (let ((__tmp68283
                              (let ()
                                (declare (not safe))
                                (cons _exn67571_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp68283))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68282))))))
    (define file-exists-exception-procedure
      (lambda (_exn67565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67565_))
            (let ((_e67568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67565_ 'exception))))
              (if (macro-file-exists-exception? _e67568_)
                  (macro-file-exists-exception-procedure _e67568_)
                  (let ((__tmp68288
                         (let ((__tmp68289
                                (let ()
                                  (declare (not safe))
                                  (cons _e67568_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp68289))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68288))))
            (if (macro-file-exists-exception? _exn67565_)
                (macro-file-exists-exception-procedure _exn67565_)
                (let ((__tmp68286
                       (let ((__tmp68287
                              (let ()
                                (declare (not safe))
                                (cons _exn67565_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp68287))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68286))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67561_))
            (let ((_e67563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67561_ 'exception))))
              (macro-fixnum-overflow-exception? _e67563_))
            (macro-fixnum-overflow-exception? _exn67561_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67557_))
            (let ((_e67559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67557_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67559_)
                  (macro-fixnum-overflow-exception-arguments _e67559_)
                  (let ((__tmp68292
                         (let ((__tmp68293
                                (let ()
                                  (declare (not safe))
                                  (cons _e67559_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp68293))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68292))))
            (if (macro-fixnum-overflow-exception? _exn67557_)
                (macro-fixnum-overflow-exception-arguments _exn67557_)
                (let ((__tmp68290
                       (let ((__tmp68291
                              (let ()
                                (declare (not safe))
                                (cons _exn67557_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp68291))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68290))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67551_))
            (let ((_e67554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67551_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67554_)
                  (macro-fixnum-overflow-exception-procedure _e67554_)
                  (let ((__tmp68296
                         (let ((__tmp68297
                                (let ()
                                  (declare (not safe))
                                  (cons _e67554_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp68297))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68296))))
            (if (macro-fixnum-overflow-exception? _exn67551_)
                (macro-fixnum-overflow-exception-procedure _exn67551_)
                (let ((__tmp68294
                       (let ((__tmp68295
                              (let ()
                                (declare (not safe))
                                (cons _exn67551_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp68295))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68294))))))
    (define heap-overflow-exception?
      (lambda (_exn67545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67545_))
            (let ((_e67548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67545_ 'exception))))
              (macro-heap-overflow-exception? _e67548_))
            (macro-heap-overflow-exception? _exn67545_))))
    (define inactive-thread-exception?
      (lambda (_exn67541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67541_))
            (let ((_e67543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67541_ 'exception))))
              (macro-inactive-thread-exception? _e67543_))
            (macro-inactive-thread-exception? _exn67541_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67537_))
            (let ((_e67539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67537_ 'exception))))
              (if (macro-inactive-thread-exception? _e67539_)
                  (macro-inactive-thread-exception-arguments _e67539_)
                  (let ((__tmp68300
                         (let ((__tmp68301
                                (let ()
                                  (declare (not safe))
                                  (cons _e67539_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp68301))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68300))))
            (if (macro-inactive-thread-exception? _exn67537_)
                (macro-inactive-thread-exception-arguments _exn67537_)
                (let ((__tmp68298
                       (let ((__tmp68299
                              (let ()
                                (declare (not safe))
                                (cons _exn67537_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp68299))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68298))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67531_))
            (let ((_e67534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67531_ 'exception))))
              (if (macro-inactive-thread-exception? _e67534_)
                  (macro-inactive-thread-exception-procedure _e67534_)
                  (let ((__tmp68304
                         (let ((__tmp68305
                                (let ()
                                  (declare (not safe))
                                  (cons _e67534_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp68305))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68304))))
            (if (macro-inactive-thread-exception? _exn67531_)
                (macro-inactive-thread-exception-procedure _exn67531_)
                (let ((__tmp68302
                       (let ((__tmp68303
                              (let ()
                                (declare (not safe))
                                (cons _exn67531_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp68303))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68302))))))
    (define initialized-thread-exception?
      (lambda (_exn67527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67527_))
            (let ((_e67529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67527_ 'exception))))
              (macro-initialized-thread-exception? _e67529_))
            (macro-initialized-thread-exception? _exn67527_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67523_))
            (let ((_e67525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67523_ 'exception))))
              (if (macro-initialized-thread-exception? _e67525_)
                  (macro-initialized-thread-exception-arguments _e67525_)
                  (let ((__tmp68308
                         (let ((__tmp68309
                                (let ()
                                  (declare (not safe))
                                  (cons _e67525_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp68309))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68308))))
            (if (macro-initialized-thread-exception? _exn67523_)
                (macro-initialized-thread-exception-arguments _exn67523_)
                (let ((__tmp68306
                       (let ((__tmp68307
                              (let ()
                                (declare (not safe))
                                (cons _exn67523_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp68307))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68306))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67517_))
            (let ((_e67520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67517_ 'exception))))
              (if (macro-initialized-thread-exception? _e67520_)
                  (macro-initialized-thread-exception-procedure _e67520_)
                  (let ((__tmp68312
                         (let ((__tmp68313
                                (let ()
                                  (declare (not safe))
                                  (cons _e67520_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp68313))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68312))))
            (if (macro-initialized-thread-exception? _exn67517_)
                (macro-initialized-thread-exception-procedure _exn67517_)
                (let ((__tmp68310
                       (let ((__tmp68311
                              (let ()
                                (declare (not safe))
                                (cons _exn67517_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp68311))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68310))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67513_))
            (let ((_e67515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67513_ 'exception))))
              (macro-invalid-hash-number-exception? _e67515_))
            (macro-invalid-hash-number-exception? _exn67513_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67509_))
            (let ((_e67511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67509_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67511_)
                  (macro-invalid-hash-number-exception-arguments _e67511_)
                  (let ((__tmp68316
                         (let ((__tmp68317
                                (let ()
                                  (declare (not safe))
                                  (cons _e67511_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp68317))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68316))))
            (if (macro-invalid-hash-number-exception? _exn67509_)
                (macro-invalid-hash-number-exception-arguments _exn67509_)
                (let ((__tmp68314
                       (let ((__tmp68315
                              (let ()
                                (declare (not safe))
                                (cons _exn67509_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp68315))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68314))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67503_))
            (let ((_e67506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67503_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67506_)
                  (macro-invalid-hash-number-exception-procedure _e67506_)
                  (let ((__tmp68320
                         (let ((__tmp68321
                                (let ()
                                  (declare (not safe))
                                  (cons _e67506_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp68321))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68320))))
            (if (macro-invalid-hash-number-exception? _exn67503_)
                (macro-invalid-hash-number-exception-procedure _exn67503_)
                (let ((__tmp68318
                       (let ((__tmp68319
                              (let ()
                                (declare (not safe))
                                (cons _exn67503_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp68319))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68318))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67499_))
            (let ((_e67501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67499_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67501_))
            (macro-invalid-utf8-encoding-exception? _exn67499_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67495_))
            (let ((_e67497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67495_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67497_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67497_)
                  (let ((__tmp68324
                         (let ((__tmp68325
                                (let ()
                                  (declare (not safe))
                                  (cons _e67497_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp68325))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68324))))
            (if (macro-invalid-utf8-encoding-exception? _exn67495_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67495_)
                (let ((__tmp68322
                       (let ((__tmp68323
                              (let ()
                                (declare (not safe))
                                (cons _exn67495_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp68323))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68322))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67489_))
            (let ((_e67492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67489_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67492_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67492_)
                  (let ((__tmp68328
                         (let ((__tmp68329
                                (let ()
                                  (declare (not safe))
                                  (cons _e67492_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp68329))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68328))))
            (if (macro-invalid-utf8-encoding-exception? _exn67489_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67489_)
                (let ((__tmp68326
                       (let ((__tmp68327
                              (let ()
                                (declare (not safe))
                                (cons _exn67489_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp68327))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68326))))))
    (define join-timeout-exception?
      (lambda (_exn67485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67485_))
            (let ((_e67487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67485_ 'exception))))
              (macro-join-timeout-exception? _e67487_))
            (macro-join-timeout-exception? _exn67485_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67481_))
            (let ((_e67483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67481_ 'exception))))
              (if (macro-join-timeout-exception? _e67483_)
                  (macro-join-timeout-exception-arguments _e67483_)
                  (let ((__tmp68332
                         (let ((__tmp68333
                                (let ()
                                  (declare (not safe))
                                  (cons _e67483_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp68333))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68332))))
            (if (macro-join-timeout-exception? _exn67481_)
                (macro-join-timeout-exception-arguments _exn67481_)
                (let ((__tmp68330
                       (let ((__tmp68331
                              (let ()
                                (declare (not safe))
                                (cons _exn67481_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp68331))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68330))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67475_))
            (let ((_e67478_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67475_ 'exception))))
              (if (macro-join-timeout-exception? _e67478_)
                  (macro-join-timeout-exception-procedure _e67478_)
                  (let ((__tmp68336
                         (let ((__tmp68337
                                (let ()
                                  (declare (not safe))
                                  (cons _e67478_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp68337))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68336))))
            (if (macro-join-timeout-exception? _exn67475_)
                (macro-join-timeout-exception-procedure _exn67475_)
                (let ((__tmp68334
                       (let ((__tmp68335
                              (let ()
                                (declare (not safe))
                                (cons _exn67475_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp68335))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68334))))))
    (define keyword-expected-exception?
      (lambda (_exn67471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67471_))
            (let ((_e67473_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67471_ 'exception))))
              (macro-keyword-expected-exception? _e67473_))
            (macro-keyword-expected-exception? _exn67471_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67467_))
            (let ((_e67469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67467_ 'exception))))
              (if (macro-keyword-expected-exception? _e67469_)
                  (macro-keyword-expected-exception-arguments _e67469_)
                  (let ((__tmp68340
                         (let ((__tmp68341
                                (let ()
                                  (declare (not safe))
                                  (cons _e67469_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp68341))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68340))))
            (if (macro-keyword-expected-exception? _exn67467_)
                (macro-keyword-expected-exception-arguments _exn67467_)
                (let ((__tmp68338
                       (let ((__tmp68339
                              (let ()
                                (declare (not safe))
                                (cons _exn67467_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp68339))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68338))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67461_))
            (let ((_e67464_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67461_ 'exception))))
              (if (macro-keyword-expected-exception? _e67464_)
                  (macro-keyword-expected-exception-procedure _e67464_)
                  (let ((__tmp68344
                         (let ((__tmp68345
                                (let ()
                                  (declare (not safe))
                                  (cons _e67464_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp68345))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68344))))
            (if (macro-keyword-expected-exception? _exn67461_)
                (macro-keyword-expected-exception-procedure _exn67461_)
                (let ((__tmp68342
                       (let ((__tmp68343
                              (let ()
                                (declare (not safe))
                                (cons _exn67461_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp68343))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68342))))))
    (define length-mismatch-exception?
      (lambda (_exn67457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67457_))
            (let ((_e67459_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67457_ 'exception))))
              (macro-length-mismatch-exception? _e67459_))
            (macro-length-mismatch-exception? _exn67457_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67453_))
            (let ((_e67455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67453_ 'exception))))
              (if (macro-length-mismatch-exception? _e67455_)
                  (macro-length-mismatch-exception-arg-id _e67455_)
                  (let ((__tmp68348
                         (let ((__tmp68349
                                (let ()
                                  (declare (not safe))
                                  (cons _e67455_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp68349))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68348))))
            (if (macro-length-mismatch-exception? _exn67453_)
                (macro-length-mismatch-exception-arg-id _exn67453_)
                (let ((__tmp68346
                       (let ((__tmp68347
                              (let ()
                                (declare (not safe))
                                (cons _exn67453_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp68347))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68346))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67449_))
            (let ((_e67451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67449_ 'exception))))
              (if (macro-length-mismatch-exception? _e67451_)
                  (macro-length-mismatch-exception-arguments _e67451_)
                  (let ((__tmp68352
                         (let ((__tmp68353
                                (let ()
                                  (declare (not safe))
                                  (cons _e67451_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp68353))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68352))))
            (if (macro-length-mismatch-exception? _exn67449_)
                (macro-length-mismatch-exception-arguments _exn67449_)
                (let ((__tmp68350
                       (let ((__tmp68351
                              (let ()
                                (declare (not safe))
                                (cons _exn67449_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp68351))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68350))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67443_))
            (let ((_e67446_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67443_ 'exception))))
              (if (macro-length-mismatch-exception? _e67446_)
                  (macro-length-mismatch-exception-procedure _e67446_)
                  (let ((__tmp68356
                         (let ((__tmp68357
                                (let ()
                                  (declare (not safe))
                                  (cons _e67446_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp68357))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68356))))
            (if (macro-length-mismatch-exception? _exn67443_)
                (macro-length-mismatch-exception-procedure _exn67443_)
                (let ((__tmp68354
                       (let ((__tmp68355
                              (let ()
                                (declare (not safe))
                                (cons _exn67443_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp68355))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68354))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67439_))
            (let ((_e67441_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67439_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67441_))
            (macro-mailbox-receive-timeout-exception? _exn67439_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67435_))
            (let ((_e67437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67435_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67437_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67437_)
                  (let ((__tmp68360
                         (let ((__tmp68361
                                (let ()
                                  (declare (not safe))
                                  (cons _e67437_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp68361))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68360))))
            (if (macro-mailbox-receive-timeout-exception? _exn67435_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67435_)
                (let ((__tmp68358
                       (let ((__tmp68359
                              (let ()
                                (declare (not safe))
                                (cons _exn67435_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp68359))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68358))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67429_))
            (let ((_e67432_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67429_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67432_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67432_)
                  (let ((__tmp68364
                         (let ((__tmp68365
                                (let ()
                                  (declare (not safe))
                                  (cons _e67432_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp68365))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68364))))
            (if (macro-mailbox-receive-timeout-exception? _exn67429_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67429_)
                (let ((__tmp68362
                       (let ((__tmp68363
                              (let ()
                                (declare (not safe))
                                (cons _exn67429_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp68363))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68362))))))
    (define module-not-found-exception?
      (lambda (_exn67425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67425_))
            (let ((_e67427_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67425_ 'exception))))
              (macro-module-not-found-exception? _e67427_))
            (macro-module-not-found-exception? _exn67425_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67421_))
            (let ((_e67423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67421_ 'exception))))
              (if (macro-module-not-found-exception? _e67423_)
                  (macro-module-not-found-exception-arguments _e67423_)
                  (let ((__tmp68368
                         (let ((__tmp68369
                                (let ()
                                  (declare (not safe))
                                  (cons _e67423_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp68369))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68368))))
            (if (macro-module-not-found-exception? _exn67421_)
                (macro-module-not-found-exception-arguments _exn67421_)
                (let ((__tmp68366
                       (let ((__tmp68367
                              (let ()
                                (declare (not safe))
                                (cons _exn67421_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp68367))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68366))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67415_))
            (let ((_e67418_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67415_ 'exception))))
              (if (macro-module-not-found-exception? _e67418_)
                  (macro-module-not-found-exception-procedure _e67418_)
                  (let ((__tmp68372
                         (let ((__tmp68373
                                (let ()
                                  (declare (not safe))
                                  (cons _e67418_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp68373))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68372))))
            (if (macro-module-not-found-exception? _exn67415_)
                (macro-module-not-found-exception-procedure _exn67415_)
                (let ((__tmp68370
                       (let ((__tmp68371
                              (let ()
                                (declare (not safe))
                                (cons _exn67415_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp68371))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68370))))))
    (define multiple-c-return-exception?
      (lambda (_exn67409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67409_))
            (let ((_e67412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67409_ 'exception))))
              (macro-multiple-c-return-exception? _e67412_))
            (macro-multiple-c-return-exception? _exn67409_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67405_))
            (let ((_e67407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67405_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67407_))
            (macro-no-such-file-or-directory-exception? _exn67405_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67401_))
            (let ((_e67403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67401_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67403_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67403_)
                  (let ((__tmp68376
                         (let ((__tmp68377
                                (let ()
                                  (declare (not safe))
                                  (cons _e67403_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp68377))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68376))))
            (if (macro-no-such-file-or-directory-exception? _exn67401_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67401_)
                (let ((__tmp68374
                       (let ((__tmp68375
                              (let ()
                                (declare (not safe))
                                (cons _exn67401_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp68375))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68374))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67395_))
            (let ((_e67398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67395_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67398_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67398_)
                  (let ((__tmp68380
                         (let ((__tmp68381
                                (let ()
                                  (declare (not safe))
                                  (cons _e67398_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp68381))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68380))))
            (if (macro-no-such-file-or-directory-exception? _exn67395_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67395_)
                (let ((__tmp68378
                       (let ((__tmp68379
                              (let ()
                                (declare (not safe))
                                (cons _exn67395_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp68379))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68378))))))
    (define noncontinuable-exception?
      (lambda (_exn67391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67391_))
            (let ((_e67393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67391_ 'exception))))
              (macro-noncontinuable-exception? _e67393_))
            (macro-noncontinuable-exception? _exn67391_))))
    (define noncontinuable-exception-reason
      (lambda (_exn67385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67385_))
            (let ((_e67388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67385_ 'exception))))
              (if (macro-noncontinuable-exception? _e67388_)
                  (macro-noncontinuable-exception-reason _e67388_)
                  (let ((__tmp68384
                         (let ((__tmp68385
                                (let ()
                                  (declare (not safe))
                                  (cons _e67388_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp68385))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp68384))))
            (if (macro-noncontinuable-exception? _exn67385_)
                (macro-noncontinuable-exception-reason _exn67385_)
                (let ((__tmp68382
                       (let ((__tmp68383
                              (let ()
                                (declare (not safe))
                                (cons _exn67385_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp68383))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp68382))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn67381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67381_))
            (let ((_e67383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67381_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e67383_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn67381_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn67377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67377_))
            (let ((_e67379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67377_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67379_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e67379_)
                  (let ((__tmp68388
                         (let ((__tmp68389
                                (let ()
                                  (declare (not safe))
                                  (cons _e67379_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp68389))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68388))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67377_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn67377_)
                (let ((__tmp68386
                       (let ((__tmp68387
                              (let ()
                                (declare (not safe))
                                (cons _exn67377_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp68387))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68386))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn67371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67371_))
            (let ((_e67374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67371_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67374_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e67374_)
                  (let ((__tmp68392
                         (let ((__tmp68393
                                (let ()
                                  (declare (not safe))
                                  (cons _e67374_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp68393))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68392))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67371_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn67371_)
                (let ((__tmp68390
                       (let ((__tmp68391
                              (let ()
                                (declare (not safe))
                                (cons _exn67371_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp68391))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68390))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn67367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67367_))
            (let ((_e67369_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67367_ 'exception))))
              (macro-nonprocedure-operator-exception? _e67369_))
            (macro-nonprocedure-operator-exception? _exn67367_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn67363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67363_))
            (let ((_e67365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67363_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67365_)
                  (macro-nonprocedure-operator-exception-arguments _e67365_)
                  (let ((__tmp68396
                         (let ((__tmp68397
                                (let ()
                                  (declare (not safe))
                                  (cons _e67365_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68397))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68396))))
            (if (macro-nonprocedure-operator-exception? _exn67363_)
                (macro-nonprocedure-operator-exception-arguments _exn67363_)
                (let ((__tmp68394
                       (let ((__tmp68395
                              (let ()
                                (declare (not safe))
                                (cons _exn67363_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68395))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68394))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn67359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67359_))
            (let ((_e67361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67359_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67361_)
                  (macro-nonprocedure-operator-exception-code _e67361_)
                  (let ((__tmp68400
                         (let ((__tmp68401
                                (let ()
                                  (declare (not safe))
                                  (cons _e67361_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68401))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68400))))
            (if (macro-nonprocedure-operator-exception? _exn67359_)
                (macro-nonprocedure-operator-exception-code _exn67359_)
                (let ((__tmp68398
                       (let ((__tmp68399
                              (let ()
                                (declare (not safe))
                                (cons _exn67359_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68399))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68398))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn67355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67355_))
            (let ((_e67357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67355_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67357_)
                  (macro-nonprocedure-operator-exception-operator _e67357_)
                  (let ((__tmp68404
                         (let ((__tmp68405
                                (let ()
                                  (declare (not safe))
                                  (cons _e67357_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68405))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68404))))
            (if (macro-nonprocedure-operator-exception? _exn67355_)
                (macro-nonprocedure-operator-exception-operator _exn67355_)
                (let ((__tmp68402
                       (let ((__tmp68403
                              (let ()
                                (declare (not safe))
                                (cons _exn67355_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68403))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68402))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn67349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67349_))
            (let ((_e67352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67349_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67352_)
                  (macro-nonprocedure-operator-exception-rte _e67352_)
                  (let ((__tmp68408
                         (let ((__tmp68409
                                (let ()
                                  (declare (not safe))
                                  (cons _e67352_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68409))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68408))))
            (if (macro-nonprocedure-operator-exception? _exn67349_)
                (macro-nonprocedure-operator-exception-rte _exn67349_)
                (let ((__tmp68406
                       (let ((__tmp68407
                              (let ()
                                (declare (not safe))
                                (cons _exn67349_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68407))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68406))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn67345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67345_))
            (let ((_e67347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67345_ 'exception))))
              (macro-not-in-compilation-context-exception? _e67347_))
            (macro-not-in-compilation-context-exception? _exn67345_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn67341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67341_))
            (let ((_e67343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67341_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67343_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e67343_)
                  (let ((__tmp68412
                         (let ((__tmp68413
                                (let ()
                                  (declare (not safe))
                                  (cons _e67343_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68413))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68412))))
            (if (macro-not-in-compilation-context-exception? _exn67341_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn67341_)
                (let ((__tmp68410
                       (let ((__tmp68411
                              (let ()
                                (declare (not safe))
                                (cons _exn67341_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68411))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68410))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn67335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67335_))
            (let ((_e67338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67335_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67338_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e67338_)
                  (let ((__tmp68416
                         (let ((__tmp68417
                                (let ()
                                  (declare (not safe))
                                  (cons _e67338_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68417))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68416))))
            (if (macro-not-in-compilation-context-exception? _exn67335_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn67335_)
                (let ((__tmp68414
                       (let ((__tmp68415
                              (let ()
                                (declare (not safe))
                                (cons _exn67335_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68415))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68414))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn67331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67331_))
            (let ((_e67333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67331_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e67333_))
            (macro-number-of-arguments-limit-exception? _exn67331_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn67327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67327_))
            (let ((_e67329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67327_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67329_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e67329_)
                  (let ((__tmp68420
                         (let ((__tmp68421
                                (let ()
                                  (declare (not safe))
                                  (cons _e67329_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68421))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68420))))
            (if (macro-number-of-arguments-limit-exception? _exn67327_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn67327_)
                (let ((__tmp68418
                       (let ((__tmp68419
                              (let ()
                                (declare (not safe))
                                (cons _exn67327_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68419))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68418))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn67321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67321_))
            (let ((_e67324_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67321_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67324_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e67324_)
                  (let ((__tmp68424
                         (let ((__tmp68425
                                (let ()
                                  (declare (not safe))
                                  (cons _e67324_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68425))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68424))))
            (if (macro-number-of-arguments-limit-exception? _exn67321_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn67321_)
                (let ((__tmp68422
                       (let ((__tmp68423
                              (let ()
                                (declare (not safe))
                                (cons _exn67321_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68423))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68422))))))
    (define os-exception?
      (lambda (_exn67317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67317_))
            (let ((_e67319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67317_ 'exception))))
              (macro-os-exception? _e67319_))
            (macro-os-exception? _exn67317_))))
    (define os-exception-arguments
      (lambda (_exn67313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67313_))
            (let ((_e67315_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67313_ 'exception))))
              (if (macro-os-exception? _e67315_)
                  (macro-os-exception-arguments _e67315_)
                  (let ((__tmp68428
                         (let ((__tmp68429
                                (let ()
                                  (declare (not safe))
                                  (cons _e67315_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68429))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68428))))
            (if (macro-os-exception? _exn67313_)
                (macro-os-exception-arguments _exn67313_)
                (let ((__tmp68426
                       (let ((__tmp68427
                              (let ()
                                (declare (not safe))
                                (cons _exn67313_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68427))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68426))))))
    (define os-exception-code
      (lambda (_exn67309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67309_))
            (let ((_e67311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67309_ 'exception))))
              (if (macro-os-exception? _e67311_)
                  (macro-os-exception-code _e67311_)
                  (let ((__tmp68432
                         (let ((__tmp68433
                                (let ()
                                  (declare (not safe))
                                  (cons _e67311_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68433))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68432))))
            (if (macro-os-exception? _exn67309_)
                (macro-os-exception-code _exn67309_)
                (let ((__tmp68430
                       (let ((__tmp68431
                              (let ()
                                (declare (not safe))
                                (cons _exn67309_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68431))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68430))))))
    (define os-exception-message
      (lambda (_exn67305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67305_))
            (let ((_e67307_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67305_ 'exception))))
              (if (macro-os-exception? _e67307_)
                  (macro-os-exception-message _e67307_)
                  (let ((__tmp68436
                         (let ((__tmp68437
                                (let ()
                                  (declare (not safe))
                                  (cons _e67307_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68437))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68436))))
            (if (macro-os-exception? _exn67305_)
                (macro-os-exception-message _exn67305_)
                (let ((__tmp68434
                       (let ((__tmp68435
                              (let ()
                                (declare (not safe))
                                (cons _exn67305_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68435))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68434))))))
    (define os-exception-procedure
      (lambda (_exn67299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67299_))
            (let ((_e67302_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67299_ 'exception))))
              (if (macro-os-exception? _e67302_)
                  (macro-os-exception-procedure _e67302_)
                  (let ((__tmp68440
                         (let ((__tmp68441
                                (let ()
                                  (declare (not safe))
                                  (cons _e67302_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68441))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68440))))
            (if (macro-os-exception? _exn67299_)
                (macro-os-exception-procedure _exn67299_)
                (let ((__tmp68438
                       (let ((__tmp68439
                              (let ()
                                (declare (not safe))
                                (cons _exn67299_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68439))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68438))))))
    (define permission-denied-exception?
      (lambda (_exn67295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67295_))
            (let ((_e67297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67295_ 'exception))))
              (macro-permission-denied-exception? _e67297_))
            (macro-permission-denied-exception? _exn67295_))))
    (define permission-denied-exception-arguments
      (lambda (_exn67291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67291_))
            (let ((_e67293_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67291_ 'exception))))
              (if (macro-permission-denied-exception? _e67293_)
                  (macro-permission-denied-exception-arguments _e67293_)
                  (let ((__tmp68444
                         (let ((__tmp68445
                                (let ()
                                  (declare (not safe))
                                  (cons _e67293_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68445))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68444))))
            (if (macro-permission-denied-exception? _exn67291_)
                (macro-permission-denied-exception-arguments _exn67291_)
                (let ((__tmp68442
                       (let ((__tmp68443
                              (let ()
                                (declare (not safe))
                                (cons _exn67291_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68443))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68442))))))
    (define permission-denied-exception-procedure
      (lambda (_exn67285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67285_))
            (let ((_e67288_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67285_ 'exception))))
              (if (macro-permission-denied-exception? _e67288_)
                  (macro-permission-denied-exception-procedure _e67288_)
                  (let ((__tmp68448
                         (let ((__tmp68449
                                (let ()
                                  (declare (not safe))
                                  (cons _e67288_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68449))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68448))))
            (if (macro-permission-denied-exception? _exn67285_)
                (macro-permission-denied-exception-procedure _exn67285_)
                (let ((__tmp68446
                       (let ((__tmp68447
                              (let ()
                                (declare (not safe))
                                (cons _exn67285_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68447))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68446))))))
    (define range-exception?
      (lambda (_exn67281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67281_))
            (let ((_e67283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67281_ 'exception))))
              (macro-range-exception? _e67283_))
            (macro-range-exception? _exn67281_))))
    (define range-exception-arg-id
      (lambda (_exn67277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67277_))
            (let ((_e67279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67277_ 'exception))))
              (if (macro-range-exception? _e67279_)
                  (macro-range-exception-arg-id _e67279_)
                  (let ((__tmp68452
                         (let ((__tmp68453
                                (let ()
                                  (declare (not safe))
                                  (cons _e67279_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68453))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68452))))
            (if (macro-range-exception? _exn67277_)
                (macro-range-exception-arg-id _exn67277_)
                (let ((__tmp68450
                       (let ((__tmp68451
                              (let ()
                                (declare (not safe))
                                (cons _exn67277_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68451))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68450))))))
    (define range-exception-arguments
      (lambda (_exn67273_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67273_))
            (let ((_e67275_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67273_ 'exception))))
              (if (macro-range-exception? _e67275_)
                  (macro-range-exception-arguments _e67275_)
                  (let ((__tmp68456
                         (let ((__tmp68457
                                (let ()
                                  (declare (not safe))
                                  (cons _e67275_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68457))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68456))))
            (if (macro-range-exception? _exn67273_)
                (macro-range-exception-arguments _exn67273_)
                (let ((__tmp68454
                       (let ((__tmp68455
                              (let ()
                                (declare (not safe))
                                (cons _exn67273_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68455))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68454))))))
    (define range-exception-procedure
      (lambda (_exn67267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67267_))
            (let ((_e67270_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67267_ 'exception))))
              (if (macro-range-exception? _e67270_)
                  (macro-range-exception-procedure _e67270_)
                  (let ((__tmp68460
                         (let ((__tmp68461
                                (let ()
                                  (declare (not safe))
                                  (cons _e67270_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68461))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68460))))
            (if (macro-range-exception? _exn67267_)
                (macro-range-exception-procedure _exn67267_)
                (let ((__tmp68458
                       (let ((__tmp68459
                              (let ()
                                (declare (not safe))
                                (cons _exn67267_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68459))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68458))))))
    (define rpc-remote-error-exception?
      (lambda (_exn67263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67263_))
            (let ((_e67265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67263_ 'exception))))
              (macro-rpc-remote-error-exception? _e67265_))
            (macro-rpc-remote-error-exception? _exn67263_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn67259_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67259_))
            (let ((_e67261_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67259_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67261_)
                  (macro-rpc-remote-error-exception-arguments _e67261_)
                  (let ((__tmp68464
                         (let ((__tmp68465
                                (let ()
                                  (declare (not safe))
                                  (cons _e67261_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68465))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68464))))
            (if (macro-rpc-remote-error-exception? _exn67259_)
                (macro-rpc-remote-error-exception-arguments _exn67259_)
                (let ((__tmp68462
                       (let ((__tmp68463
                              (let ()
                                (declare (not safe))
                                (cons _exn67259_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68463))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68462))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn67255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67255_))
            (let ((_e67257_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67255_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67257_)
                  (macro-rpc-remote-error-exception-message _e67257_)
                  (let ((__tmp68468
                         (let ((__tmp68469
                                (let ()
                                  (declare (not safe))
                                  (cons _e67257_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68469))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68468))))
            (if (macro-rpc-remote-error-exception? _exn67255_)
                (macro-rpc-remote-error-exception-message _exn67255_)
                (let ((__tmp68466
                       (let ((__tmp68467
                              (let ()
                                (declare (not safe))
                                (cons _exn67255_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68467))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68466))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn67249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67249_))
            (let ((_e67252_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67249_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67252_)
                  (macro-rpc-remote-error-exception-procedure _e67252_)
                  (let ((__tmp68472
                         (let ((__tmp68473
                                (let ()
                                  (declare (not safe))
                                  (cons _e67252_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68473))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68472))))
            (if (macro-rpc-remote-error-exception? _exn67249_)
                (macro-rpc-remote-error-exception-procedure _exn67249_)
                (let ((__tmp68470
                       (let ((__tmp68471
                              (let ()
                                (declare (not safe))
                                (cons _exn67249_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68471))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68470))))))
    (define scheduler-exception?
      (lambda (_exn67245_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67245_))
            (let ((_e67247_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67245_ 'exception))))
              (macro-scheduler-exception? _e67247_))
            (macro-scheduler-exception? _exn67245_))))
    (define scheduler-exception-reason
      (lambda (_exn67239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67239_))
            (let ((_e67242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67239_ 'exception))))
              (if (macro-scheduler-exception? _e67242_)
                  (macro-scheduler-exception-reason _e67242_)
                  (let ((__tmp68476
                         (let ((__tmp68477
                                (let ()
                                  (declare (not safe))
                                  (cons _e67242_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68477))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68476))))
            (if (macro-scheduler-exception? _exn67239_)
                (macro-scheduler-exception-reason _exn67239_)
                (let ((__tmp68474
                       (let ((__tmp68475
                              (let ()
                                (declare (not safe))
                                (cons _exn67239_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68475))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68474))))))
    (define sfun-conversion-exception?
      (lambda (_exn67235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67235_))
            (let ((_e67237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67235_ 'exception))))
              (macro-sfun-conversion-exception? _e67237_))
            (macro-sfun-conversion-exception? _exn67235_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn67231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67231_))
            (let ((_e67233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67231_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67233_)
                  (macro-sfun-conversion-exception-arguments _e67233_)
                  (let ((__tmp68480
                         (let ((__tmp68481
                                (let ()
                                  (declare (not safe))
                                  (cons _e67233_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68481))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68480))))
            (if (macro-sfun-conversion-exception? _exn67231_)
                (macro-sfun-conversion-exception-arguments _exn67231_)
                (let ((__tmp68478
                       (let ((__tmp68479
                              (let ()
                                (declare (not safe))
                                (cons _exn67231_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68479))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68478))))))
    (define sfun-conversion-exception-code
      (lambda (_exn67227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67227_))
            (let ((_e67229_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67227_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67229_)
                  (macro-sfun-conversion-exception-code _e67229_)
                  (let ((__tmp68484
                         (let ((__tmp68485
                                (let ()
                                  (declare (not safe))
                                  (cons _e67229_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68485))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68484))))
            (if (macro-sfun-conversion-exception? _exn67227_)
                (macro-sfun-conversion-exception-code _exn67227_)
                (let ((__tmp68482
                       (let ((__tmp68483
                              (let ()
                                (declare (not safe))
                                (cons _exn67227_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68483))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68482))))))
    (define sfun-conversion-exception-message
      (lambda (_exn67223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67223_))
            (let ((_e67225_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67223_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67225_)
                  (macro-sfun-conversion-exception-message _e67225_)
                  (let ((__tmp68488
                         (let ((__tmp68489
                                (let ()
                                  (declare (not safe))
                                  (cons _e67225_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68489))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68488))))
            (if (macro-sfun-conversion-exception? _exn67223_)
                (macro-sfun-conversion-exception-message _exn67223_)
                (let ((__tmp68486
                       (let ((__tmp68487
                              (let ()
                                (declare (not safe))
                                (cons _exn67223_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68487))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68486))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn67217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67217_))
            (let ((_e67220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67217_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67220_)
                  (macro-sfun-conversion-exception-procedure _e67220_)
                  (let ((__tmp68492
                         (let ((__tmp68493
                                (let ()
                                  (declare (not safe))
                                  (cons _e67220_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68493))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68492))))
            (if (macro-sfun-conversion-exception? _exn67217_)
                (macro-sfun-conversion-exception-procedure _exn67217_)
                (let ((__tmp68490
                       (let ((__tmp68491
                              (let ()
                                (declare (not safe))
                                (cons _exn67217_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68491))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68490))))))
    (define stack-overflow-exception?
      (lambda (_exn67211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67211_))
            (let ((_e67214_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67211_ 'exception))))
              (macro-stack-overflow-exception? _e67214_))
            (macro-stack-overflow-exception? _exn67211_))))
    (define started-thread-exception?
      (lambda (_exn67207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67207_))
            (let ((_e67209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67207_ 'exception))))
              (macro-started-thread-exception? _e67209_))
            (macro-started-thread-exception? _exn67207_))))
    (define started-thread-exception-arguments
      (lambda (_exn67203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67203_))
            (let ((_e67205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67203_ 'exception))))
              (if (macro-started-thread-exception? _e67205_)
                  (macro-started-thread-exception-arguments _e67205_)
                  (let ((__tmp68496
                         (let ((__tmp68497
                                (let ()
                                  (declare (not safe))
                                  (cons _e67205_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68497))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68496))))
            (if (macro-started-thread-exception? _exn67203_)
                (macro-started-thread-exception-arguments _exn67203_)
                (let ((__tmp68494
                       (let ((__tmp68495
                              (let ()
                                (declare (not safe))
                                (cons _exn67203_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68495))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68494))))))
    (define started-thread-exception-procedure
      (lambda (_exn67197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67197_))
            (let ((_e67200_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67197_ 'exception))))
              (if (macro-started-thread-exception? _e67200_)
                  (macro-started-thread-exception-procedure _e67200_)
                  (let ((__tmp68500
                         (let ((__tmp68501
                                (let ()
                                  (declare (not safe))
                                  (cons _e67200_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68501))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68500))))
            (if (macro-started-thread-exception? _exn67197_)
                (macro-started-thread-exception-procedure _exn67197_)
                (let ((__tmp68498
                       (let ((__tmp68499
                              (let ()
                                (declare (not safe))
                                (cons _exn67197_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68499))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68498))))))
    (define terminated-thread-exception?
      (lambda (_exn67193_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67193_))
            (let ((_e67195_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67193_ 'exception))))
              (macro-terminated-thread-exception? _e67195_))
            (macro-terminated-thread-exception? _exn67193_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn67189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67189_))
            (let ((_e67191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67189_ 'exception))))
              (if (macro-terminated-thread-exception? _e67191_)
                  (macro-terminated-thread-exception-arguments _e67191_)
                  (let ((__tmp68504
                         (let ((__tmp68505
                                (let ()
                                  (declare (not safe))
                                  (cons _e67191_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68505))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68504))))
            (if (macro-terminated-thread-exception? _exn67189_)
                (macro-terminated-thread-exception-arguments _exn67189_)
                (let ((__tmp68502
                       (let ((__tmp68503
                              (let ()
                                (declare (not safe))
                                (cons _exn67189_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68503))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68502))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn67183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67183_))
            (let ((_e67186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67183_ 'exception))))
              (if (macro-terminated-thread-exception? _e67186_)
                  (macro-terminated-thread-exception-procedure _e67186_)
                  (let ((__tmp68508
                         (let ((__tmp68509
                                (let ()
                                  (declare (not safe))
                                  (cons _e67186_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68509))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68508))))
            (if (macro-terminated-thread-exception? _exn67183_)
                (macro-terminated-thread-exception-procedure _exn67183_)
                (let ((__tmp68506
                       (let ((__tmp68507
                              (let ()
                                (declare (not safe))
                                (cons _exn67183_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68507))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68506))))))
    (define type-exception?
      (lambda (_exn67179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67179_))
            (let ((_e67181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67179_ 'exception))))
              (macro-type-exception? _e67181_))
            (macro-type-exception? _exn67179_))))
    (define type-exception-arg-id
      (lambda (_exn67175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67175_))
            (let ((_e67177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67175_ 'exception))))
              (if (macro-type-exception? _e67177_)
                  (macro-type-exception-arg-id _e67177_)
                  (let ((__tmp68512
                         (let ((__tmp68513
                                (let ()
                                  (declare (not safe))
                                  (cons _e67177_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68513))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68512))))
            (if (macro-type-exception? _exn67175_)
                (macro-type-exception-arg-id _exn67175_)
                (let ((__tmp68510
                       (let ((__tmp68511
                              (let ()
                                (declare (not safe))
                                (cons _exn67175_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68511))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68510))))))
    (define type-exception-arguments
      (lambda (_exn67171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67171_))
            (let ((_e67173_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67171_ 'exception))))
              (if (macro-type-exception? _e67173_)
                  (macro-type-exception-arguments _e67173_)
                  (let ((__tmp68516
                         (let ((__tmp68517
                                (let ()
                                  (declare (not safe))
                                  (cons _e67173_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68517))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68516))))
            (if (macro-type-exception? _exn67171_)
                (macro-type-exception-arguments _exn67171_)
                (let ((__tmp68514
                       (let ((__tmp68515
                              (let ()
                                (declare (not safe))
                                (cons _exn67171_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68515))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68514))))))
    (define type-exception-procedure
      (lambda (_exn67167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67167_))
            (let ((_e67169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67167_ 'exception))))
              (if (macro-type-exception? _e67169_)
                  (macro-type-exception-procedure _e67169_)
                  (let ((__tmp68520
                         (let ((__tmp68521
                                (let ()
                                  (declare (not safe))
                                  (cons _e67169_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68521))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68520))))
            (if (macro-type-exception? _exn67167_)
                (macro-type-exception-procedure _exn67167_)
                (let ((__tmp68518
                       (let ((__tmp68519
                              (let ()
                                (declare (not safe))
                                (cons _exn67167_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68519))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68518))))))
    (define type-exception-type-id
      (lambda (_exn67161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67161_))
            (let ((_e67164_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67161_ 'exception))))
              (if (macro-type-exception? _e67164_)
                  (macro-type-exception-type-id _e67164_)
                  (let ((__tmp68524
                         (let ((__tmp68525
                                (let ()
                                  (declare (not safe))
                                  (cons _e67164_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68525))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68524))))
            (if (macro-type-exception? _exn67161_)
                (macro-type-exception-type-id _exn67161_)
                (let ((__tmp68522
                       (let ((__tmp68523
                              (let ()
                                (declare (not safe))
                                (cons _exn67161_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68523))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68522))))))
    (define unbound-global-exception?
      (lambda (_exn67157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67157_))
            (let ((_e67159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67157_ 'exception))))
              (macro-unbound-global-exception? _e67159_))
            (macro-unbound-global-exception? _exn67157_))))
    (define unbound-global-exception-code
      (lambda (_exn67153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67153_))
            (let ((_e67155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67153_ 'exception))))
              (if (macro-unbound-global-exception? _e67155_)
                  (macro-unbound-global-exception-code _e67155_)
                  (let ((__tmp68528
                         (let ((__tmp68529
                                (let ()
                                  (declare (not safe))
                                  (cons _e67155_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68529))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68528))))
            (if (macro-unbound-global-exception? _exn67153_)
                (macro-unbound-global-exception-code _exn67153_)
                (let ((__tmp68526
                       (let ((__tmp68527
                              (let ()
                                (declare (not safe))
                                (cons _exn67153_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68527))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68526))))))
    (define unbound-global-exception-rte
      (lambda (_exn67149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67149_))
            (let ((_e67151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67149_ 'exception))))
              (if (macro-unbound-global-exception? _e67151_)
                  (macro-unbound-global-exception-rte _e67151_)
                  (let ((__tmp68532
                         (let ((__tmp68533
                                (let ()
                                  (declare (not safe))
                                  (cons _e67151_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68533))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68532))))
            (if (macro-unbound-global-exception? _exn67149_)
                (macro-unbound-global-exception-rte _exn67149_)
                (let ((__tmp68530
                       (let ((__tmp68531
                              (let ()
                                (declare (not safe))
                                (cons _exn67149_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68531))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68530))))))
    (define unbound-global-exception-variable
      (lambda (_exn67143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67143_))
            (let ((_e67146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67143_ 'exception))))
              (if (macro-unbound-global-exception? _e67146_)
                  (macro-unbound-global-exception-variable _e67146_)
                  (let ((__tmp68536
                         (let ((__tmp68537
                                (let ()
                                  (declare (not safe))
                                  (cons _e67146_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68537))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68536))))
            (if (macro-unbound-global-exception? _exn67143_)
                (macro-unbound-global-exception-variable _exn67143_)
                (let ((__tmp68534
                       (let ((__tmp68535
                              (let ()
                                (declare (not safe))
                                (cons _exn67143_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68535))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68534))))))
    (define unbound-key-exception?
      (lambda (_exn67139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67139_))
            (let ((_e67141_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67139_ 'exception))))
              (macro-unbound-key-exception? _e67141_))
            (macro-unbound-key-exception? _exn67139_))))
    (define unbound-key-exception-arguments
      (lambda (_exn67135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67135_))
            (let ((_e67137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67135_ 'exception))))
              (if (macro-unbound-key-exception? _e67137_)
                  (macro-unbound-key-exception-arguments _e67137_)
                  (let ((__tmp68540
                         (let ((__tmp68541
                                (let ()
                                  (declare (not safe))
                                  (cons _e67137_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68541))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68540))))
            (if (macro-unbound-key-exception? _exn67135_)
                (macro-unbound-key-exception-arguments _exn67135_)
                (let ((__tmp68538
                       (let ((__tmp68539
                              (let ()
                                (declare (not safe))
                                (cons _exn67135_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68539))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68538))))))
    (define unbound-key-exception-procedure
      (lambda (_exn67129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67129_))
            (let ((_e67132_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67129_ 'exception))))
              (if (macro-unbound-key-exception? _e67132_)
                  (macro-unbound-key-exception-procedure _e67132_)
                  (let ((__tmp68544
                         (let ((__tmp68545
                                (let ()
                                  (declare (not safe))
                                  (cons _e67132_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68545))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68544))))
            (if (macro-unbound-key-exception? _exn67129_)
                (macro-unbound-key-exception-procedure _exn67129_)
                (let ((__tmp68542
                       (let ((__tmp68543
                              (let ()
                                (declare (not safe))
                                (cons _exn67129_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68543))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68542))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn67125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67125_))
            (let ((_e67127_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67125_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e67127_))
            (macro-unbound-os-environment-variable-exception? _exn67125_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn67121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67121_))
            (let ((_e67123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67121_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67123_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e67123_)
                  (let ((__tmp68548
                         (let ((__tmp68549
                                (let ()
                                  (declare (not safe))
                                  (cons _e67123_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68549))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68548))))
            (if (macro-unbound-os-environment-variable-exception? _exn67121_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn67121_)
                (let ((__tmp68546
                       (let ((__tmp68547
                              (let ()
                                (declare (not safe))
                                (cons _exn67121_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68547))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68546))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn67115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67115_))
            (let ((_e67118_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67115_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67118_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e67118_)
                  (let ((__tmp68552
                         (let ((__tmp68553
                                (let ()
                                  (declare (not safe))
                                  (cons _e67118_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68553))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68552))))
            (if (macro-unbound-os-environment-variable-exception? _exn67115_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn67115_)
                (let ((__tmp68550
                       (let ((__tmp68551
                              (let ()
                                (declare (not safe))
                                (cons _exn67115_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68551))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68550))))))
    (define unbound-serial-number-exception?
      (lambda (_exn67111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67111_))
            (let ((_e67113_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67111_ 'exception))))
              (macro-unbound-serial-number-exception? _e67113_))
            (macro-unbound-serial-number-exception? _exn67111_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn67107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67107_))
            (let ((_e67109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67107_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67109_)
                  (macro-unbound-serial-number-exception-arguments _e67109_)
                  (let ((__tmp68556
                         (let ((__tmp68557
                                (let ()
                                  (declare (not safe))
                                  (cons _e67109_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68557))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68556))))
            (if (macro-unbound-serial-number-exception? _exn67107_)
                (macro-unbound-serial-number-exception-arguments _exn67107_)
                (let ((__tmp68554
                       (let ((__tmp68555
                              (let ()
                                (declare (not safe))
                                (cons _exn67107_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68555))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68554))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn67101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67101_))
            (let ((_e67104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67101_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67104_)
                  (macro-unbound-serial-number-exception-procedure _e67104_)
                  (let ((__tmp68560
                         (let ((__tmp68561
                                (let ()
                                  (declare (not safe))
                                  (cons _e67104_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68561))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68560))))
            (if (macro-unbound-serial-number-exception? _exn67101_)
                (macro-unbound-serial-number-exception-procedure _exn67101_)
                (let ((__tmp68558
                       (let ((__tmp68559
                              (let ()
                                (declare (not safe))
                                (cons _exn67101_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68559))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68558))))))
    (define uncaught-exception?
      (lambda (_exn67097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67097_))
            (let ((_e67099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67097_ 'exception))))
              (macro-uncaught-exception? _e67099_))
            (macro-uncaught-exception? _exn67097_))))
    (define uncaught-exception-arguments
      (lambda (_exn67093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67093_))
            (let ((_e67095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67093_ 'exception))))
              (if (macro-uncaught-exception? _e67095_)
                  (macro-uncaught-exception-arguments _e67095_)
                  (let ((__tmp68564
                         (let ((__tmp68565
                                (let ()
                                  (declare (not safe))
                                  (cons _e67095_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68565))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68564))))
            (if (macro-uncaught-exception? _exn67093_)
                (macro-uncaught-exception-arguments _exn67093_)
                (let ((__tmp68562
                       (let ((__tmp68563
                              (let ()
                                (declare (not safe))
                                (cons _exn67093_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68563))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68562))))))
    (define uncaught-exception-procedure
      (lambda (_exn67089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67089_))
            (let ((_e67091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67089_ 'exception))))
              (if (macro-uncaught-exception? _e67091_)
                  (macro-uncaught-exception-procedure _e67091_)
                  (let ((__tmp68568
                         (let ((__tmp68569
                                (let ()
                                  (declare (not safe))
                                  (cons _e67091_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68569))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68568))))
            (if (macro-uncaught-exception? _exn67089_)
                (macro-uncaught-exception-procedure _exn67089_)
                (let ((__tmp68566
                       (let ((__tmp68567
                              (let ()
                                (declare (not safe))
                                (cons _exn67089_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68567))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68566))))))
    (define uncaught-exception-reason
      (lambda (_exn67083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67083_))
            (let ((_e67086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67083_ 'exception))))
              (if (macro-uncaught-exception? _e67086_)
                  (macro-uncaught-exception-reason _e67086_)
                  (let ((__tmp68572
                         (let ((__tmp68573
                                (let ()
                                  (declare (not safe))
                                  (cons _e67086_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68573))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68572))))
            (if (macro-uncaught-exception? _exn67083_)
                (macro-uncaught-exception-reason _exn67083_)
                (let ((__tmp68570
                       (let ((__tmp68571
                              (let ()
                                (declare (not safe))
                                (cons _exn67083_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68571))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68570))))))
    (define uninitialized-thread-exception?
      (lambda (_exn67079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67079_))
            (let ((_e67081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67079_ 'exception))))
              (macro-uninitialized-thread-exception? _e67081_))
            (macro-uninitialized-thread-exception? _exn67079_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn67075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67075_))
            (let ((_e67077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67075_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67077_)
                  (macro-uninitialized-thread-exception-arguments _e67077_)
                  (let ((__tmp68576
                         (let ((__tmp68577
                                (let ()
                                  (declare (not safe))
                                  (cons _e67077_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68577))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68576))))
            (if (macro-uninitialized-thread-exception? _exn67075_)
                (macro-uninitialized-thread-exception-arguments _exn67075_)
                (let ((__tmp68574
                       (let ((__tmp68575
                              (let ()
                                (declare (not safe))
                                (cons _exn67075_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68575))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68574))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn67069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67069_))
            (let ((_e67072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67069_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67072_)
                  (macro-uninitialized-thread-exception-procedure _e67072_)
                  (let ((__tmp68580
                         (let ((__tmp68581
                                (let ()
                                  (declare (not safe))
                                  (cons _e67072_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68581))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68580))))
            (if (macro-uninitialized-thread-exception? _exn67069_)
                (macro-uninitialized-thread-exception-procedure _exn67069_)
                (let ((__tmp68578
                       (let ((__tmp68579
                              (let ()
                                (declare (not safe))
                                (cons _exn67069_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68579))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68578))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn67065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67065_))
            (let ((_e67067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67065_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e67067_))
            (macro-unknown-keyword-argument-exception? _exn67065_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn67061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67061_))
            (let ((_e67063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67061_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67063_)
                  (macro-unknown-keyword-argument-exception-arguments _e67063_)
                  (let ((__tmp68584
                         (let ((__tmp68585
                                (let ()
                                  (declare (not safe))
                                  (cons _e67063_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68585))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68584))))
            (if (macro-unknown-keyword-argument-exception? _exn67061_)
                (macro-unknown-keyword-argument-exception-arguments _exn67061_)
                (let ((__tmp68582
                       (let ((__tmp68583
                              (let ()
                                (declare (not safe))
                                (cons _exn67061_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68583))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68582))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn67055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67055_))
            (let ((_e67058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67055_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67058_)
                  (macro-unknown-keyword-argument-exception-procedure _e67058_)
                  (let ((__tmp68588
                         (let ((__tmp68589
                                (let ()
                                  (declare (not safe))
                                  (cons _e67058_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68589))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68588))))
            (if (macro-unknown-keyword-argument-exception? _exn67055_)
                (macro-unknown-keyword-argument-exception-procedure _exn67055_)
                (let ((__tmp68586
                       (let ((__tmp68587
                              (let ()
                                (declare (not safe))
                                (cons _exn67055_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68587))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68586))))))
    (define unterminated-process-exception?
      (lambda (_exn67051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67051_))
            (let ((_e67053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67051_ 'exception))))
              (macro-unterminated-process-exception? _e67053_))
            (macro-unterminated-process-exception? _exn67051_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn67047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67047_))
            (let ((_e67049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67047_ 'exception))))
              (if (macro-unterminated-process-exception? _e67049_)
                  (macro-unterminated-process-exception-arguments _e67049_)
                  (let ((__tmp68592
                         (let ((__tmp68593
                                (let ()
                                  (declare (not safe))
                                  (cons _e67049_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68593))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68592))))
            (if (macro-unterminated-process-exception? _exn67047_)
                (macro-unterminated-process-exception-arguments _exn67047_)
                (let ((__tmp68590
                       (let ((__tmp68591
                              (let ()
                                (declare (not safe))
                                (cons _exn67047_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68591))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68590))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn67041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67041_))
            (let ((_e67044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67041_ 'exception))))
              (if (macro-unterminated-process-exception? _e67044_)
                  (macro-unterminated-process-exception-procedure _e67044_)
                  (let ((__tmp68596
                         (let ((__tmp68597
                                (let ()
                                  (declare (not safe))
                                  (cons _e67044_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68597))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68596))))
            (if (macro-unterminated-process-exception? _exn67041_)
                (macro-unterminated-process-exception-procedure _exn67041_)
                (let ((__tmp68594
                       (let ((__tmp68595
                              (let ()
                                (declare (not safe))
                                (cons _exn67041_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68595))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68594))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn67037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67037_))
            (let ((_e67039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67037_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e67039_))
            (macro-wrong-number-of-arguments-exception? _exn67037_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn67033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67033_))
            (let ((_e67035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67033_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67035_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e67035_)
                  (let ((__tmp68600
                         (let ((__tmp68601
                                (let ()
                                  (declare (not safe))
                                  (cons _e67035_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68601))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68600))))
            (if (macro-wrong-number-of-arguments-exception? _exn67033_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn67033_)
                (let ((__tmp68598
                       (let ((__tmp68599
                              (let ()
                                (declare (not safe))
                                (cons _exn67033_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68599))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68598))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn67027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67027_))
            (let ((_e67030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67027_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67030_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e67030_)
                  (let ((__tmp68604
                         (let ((__tmp68605
                                (let ()
                                  (declare (not safe))
                                  (cons _e67030_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68605))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68604))))
            (if (macro-wrong-number-of-arguments-exception? _exn67027_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn67027_)
                (let ((__tmp68602
                       (let ((__tmp68603
                              (let ()
                                (declare (not safe))
                                (cons _exn67027_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68603))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68602))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn67023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67023_))
            (let ((_e67025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67023_ 'exception))))
              (macro-wrong-number-of-values-exception? _e67025_))
            (macro-wrong-number-of-values-exception? _exn67023_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn67019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67019_))
            (let ((_e67021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67019_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67021_)
                  (macro-wrong-number-of-values-exception-code _e67021_)
                  (let ((__tmp68608
                         (let ((__tmp68609
                                (let ()
                                  (declare (not safe))
                                  (cons _e67021_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68609))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68608))))
            (if (macro-wrong-number-of-values-exception? _exn67019_)
                (macro-wrong-number-of-values-exception-code _exn67019_)
                (let ((__tmp68606
                       (let ((__tmp68607
                              (let ()
                                (declare (not safe))
                                (cons _exn67019_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68607))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68606))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn67015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67015_))
            (let ((_e67017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67015_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67017_)
                  (macro-wrong-number-of-values-exception-rte _e67017_)
                  (let ((__tmp68612
                         (let ((__tmp68613
                                (let ()
                                  (declare (not safe))
                                  (cons _e67017_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68613))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68612))))
            (if (macro-wrong-number-of-values-exception? _exn67015_)
                (macro-wrong-number-of-values-exception-rte _exn67015_)
                (let ((__tmp68610
                       (let ((__tmp68611
                              (let ()
                                (declare (not safe))
                                (cons _exn67015_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68611))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68610))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn67009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67009_))
            (let ((_e67012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67009_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67012_)
                  (macro-wrong-number-of-values-exception-vals _e67012_)
                  (let ((__tmp68616
                         (let ((__tmp68617
                                (let ()
                                  (declare (not safe))
                                  (cons _e67012_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68617))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68616))))
            (if (macro-wrong-number-of-values-exception? _exn67009_)
                (macro-wrong-number-of-values-exception-vals _exn67009_)
                (let ((__tmp68614
                       (let ((__tmp68615
                              (let ()
                                (declare (not safe))
                                (cons _exn67009_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68615))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68614))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn67003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67003_))
            (let ((_e67006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67003_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e67006_))
            (macro-wrong-processor-c-return-exception? _exn67003_))))))
