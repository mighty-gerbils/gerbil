(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710954835)
  (begin
    (define Exception::t
      (let ((__tmp68183 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp68183
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args68151_ (apply make-instance Exception::t _$args68151_)))
    (define StackTrace::t
      (let ((__tmp68184 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp68184
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args68148_ (apply make-instance StackTrace::t _$args68148_)))
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
      (let ((__tmp68185 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp68185
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args68145_ (apply make-instance Error::t _$args68145_)))
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
      (let ((__tmp68186 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp68186
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args68142_
        (apply make-instance RuntimeException::t _$args68142_)))
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
      (lambda (_exn68137_ _continue68138_)
        (let ((_exn68140_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn68137_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn68140_ _continue68138_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn68133_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn68133_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn68133_ 'continuation))
                '#!void
                (let ((__tmp68187
                       (lambda (_cont68135_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn68133_
                            'continuation
                            _cont68135_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp68187)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn68133_))))
    (define error
      (lambda (_message68130_ . _irritants68131_)
        (raise (let ((__obj68177
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj68177
                  _message68130_
                  'irritants:
                  _irritants68131_)
                 __obj68177))))
    (define with-exception-handler
      (lambda (_handler68123_ _thunk68124_)
        (if (let () (declare (not safe)) (procedure? _handler68123_))
            '#!void
            (raise (let ((__obj68178
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68178
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68123_ '())))
                     __obj68178)))
        (if (let () (declare (not safe)) (procedure? _thunk68124_))
            '#!void
            (raise (let ((__obj68179
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68179
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68124_ '())))
                     __obj68179)))
        (let ((__tmp68188
               (lambda (_exn68126_)
                 (let ((_exn68128_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn68126_))))
                   (_handler68123_ _exn68128_)))))
          (declare (not safe))
          (##with-exception-handler __tmp68188 _thunk68124_))))
    (define with-catch
      (lambda (_handler68116_ _thunk68117_)
        (if (let () (declare (not safe)) (procedure? _handler68116_))
            '#!void
            (raise (let ((__obj68180
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68180
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68116_ '())))
                     __obj68180)))
        (if (let () (declare (not safe)) (procedure? _thunk68117_))
            '#!void
            (raise (let ((__obj68181
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68181
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68117_ '())))
                     __obj68181)))
        (let ((__tmp68189
               (lambda (_cont68119_)
                 (with-exception-handler
                  (lambda (_exn68121_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont68119_
                       _handler68116_
                       _exn68121_)))
                  _thunk68117_))))
          (declare (not safe))
          (##continuation-capture __tmp68189))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn68107_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn68107_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn68107_)))
            _exn68107_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn68107_))
                _exn68107_
                (if (macro-exception? _exn68107_)
                    (let ((_rte68112_
                           (let ((__obj68182
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj68182
                                _exn68107_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj68182)))
                      (let ((__tmp68190
                             (lambda (_cont68114_)
                               (let ((__tmp68191
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont68114_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte68112_
                                  'continuation
                                  __tmp68191)))))
                        (declare (not safe))
                        (##continuation-capture __tmp68190))
                      _rte68112_)
                    _exn68107_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj68102_)
        (let ((_$e68104_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj68102_))))
          (if _$e68104_
              _$e68104_
              (let () (declare (not safe)) (error-exception? _obj68102_))))))
    (define error-message
      (lambda (_obj68100_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68100_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68100_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj68100_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj68100_))
                '#f))))
    (define error-irritants
      (lambda (_obj68098_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68098_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68098_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj68098_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj68098_))
                '#f))))
    (define error-trace
      (lambda (_obj68096_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68096_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68096_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e68078_ _port68079_)
        (let ((_$e68081_
               (let ()
                 (declare (not safe))
                 (method-ref _e68078_ 'display-exception))))
          (if _$e68081_
              ((lambda (_f68084_) (_f68084_ _e68078_ _port68079_)) _$e68081_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e68078_ _port68079_))))))
    (define display-exception__0
      (lambda (_e68089_)
        (let ((_port68091_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e68089_ _port68091_))))
    (define display-exception
      (lambda _g68193_
        (let ((_g68192_ (let () (declare (not safe)) (##length _g68193_))))
          (cond ((let () (declare (not safe)) (##fx= _g68192_ 1))
                 (apply (lambda (_e68089_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e68089_)))
                        _g68193_))
                ((let () (declare (not safe)) (##fx= _g68192_ 2))
                 (apply (lambda (_e68093_ _port68094_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e68093_ _port68094_)))
                        _g68193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g68193_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self68067_ _message68068_ . _rest68069_)
        (let ((_message68075_
               (if (let () (declare (not safe)) (string? _message68068_))
                   _message68068_
                   (call-with-output-string
                    '""
                    (lambda (_g6807068072_)
                      (display _message68068_ _g6807068072_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self68067_ 'message _message68075_))
          (apply class-instance-init! _self68067_ _rest68069_))))
    (define Error:::init!::specialize
      (lambda (__klass68153 __method-table68154)
        (let ((__message68155
               (let ((__slot68156
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68153 'message))))
                 (if __slot68156
                     __slot68156
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self68067_ _message68068_ . _rest68069_)
            (let ((_message68075_
                   (if (let () (declare (not safe)) (string? _message68068_))
                       _message68068_
                       (call-with-output-string
                        '""
                        (lambda (_g6807068072_)
                          (display _message68068_ _g6807068072_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self68067_
                 _message68075_
                 __message68155
                 __klass68153
                 '#f))
              (apply class-instance-init! _self68067_ _rest68069_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67925_ _port67926_)
        (let ((_tmp-port67928_ (open-output-string))
              (_display-error-newline67929_
               (> (output-port-column _port67926_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67928_))
          (let ((__tmp68194
                 (lambda ()
                   (if _display-error-newline67929_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67932_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67925_ 'where))))
                     (if _$e67932_ (display _$e67932_) (display '"?")))
                   (let ((__tmp68195
                          (let ((__tmp68196 (object-type _self67925_)))
                            (declare (not safe))
                            (##type-name __tmp68196))))
                     (declare (not safe))
                     (display* '" [" __tmp68195 '"]: "))
                   (let ((__tmp68197
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67925_ 'message))))
                     (declare (not safe))
                     (displayln __tmp68197))
                   (let ((_irritants67935_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67925_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67935_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67937_)
                              (write _obj67937_)
                              (write-char '#\space))
                            _irritants67935_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67925_))
                            (dump-stack-trace?))
                       (let ((_cont6793867940_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67925_
                                 'continuation))))
                         (if _cont6793867940_
                             (let ((_cont67943_ _cont6793867940_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67943_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp68194
             current-output-port
             _tmp-port67928_))
          (let ((__tmp68198 (get-output-string _tmp-port67928_)))
            (declare (not safe))
            (##write-string __tmp68198 _port67926_)))))
    (define Error::display-exception::specialize
      (lambda (__klass68157 __method-table68158)
        (let ((__message68159
               (let ((__slot68163
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68157 'message))))
                 (if __slot68163
                     __slot68163
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where68160
               (let ((__slot68164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68157 'where))))
                 (if __slot68164
                     __slot68164
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants68161
               (let ((__slot68165
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68157 'irritants))))
                 (if __slot68165
                     __slot68165
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation68162
               (let ((__slot68166
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68157 'continuation))))
                 (if __slot68166
                     __slot68166
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67925_ _port67926_)
            (let ((_tmp-port67928_ (open-output-string))
                  (_display-error-newline67929_
                   (> (output-port-column _port67926_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67928_))
              (let ((__tmp68199
                     (lambda ()
                       (if _display-error-newline67929_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67932_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67925_
                                 __where68160
                                 __klass68157
                                 '#f))))
                         (if _$e67932_ (display _$e67932_) (display '"?")))
                       (let ((__tmp68200
                              (let ((__tmp68201 (object-type _self67925_)))
                                (declare (not safe))
                                (##type-name __tmp68201))))
                         (declare (not safe))
                         (display* '" [" __tmp68200 '"]: "))
                       (let ((__tmp68202
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67925_
                                 __message68159
                                 __klass68157
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp68202))
                       (let ((_irritants67935_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67925_
                                 __irritants68161
                                 __klass68157
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67935_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67937_)
                                  (write _obj67937_)
                                  (write-char '#\space))
                                _irritants67935_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67925_))
                                (dump-stack-trace?))
                           (let ((_cont6793867940_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67925_
                                     __continuation68162
                                     __klass68157
                                     '#f))))
                             (if _cont6793867940_
                                 (let ((_cont67943_ _cont6793867940_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67943_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp68199
                 current-output-port
                 _tmp-port67928_))
              (let ((__tmp68203 (get-output-string _tmp-port67928_)))
                (declare (not safe))
                (##write-string __tmp68203 _port67926_)))))))
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
      (lambda (_self67792_ _port67793_)
        (let ((_tmp-port67795_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67795_))
          (let ((__tmp68204
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67792_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp68204 _tmp-port67795_))
          (if (dump-stack-trace?)
              (let ((_cont6779667798_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67792_ 'continuation))))
                (if _cont6779667798_
                    (let ((_cont67801_ _cont6779667798_))
                      (display '"--- continuation backtrace:" _tmp-port67795_)
                      (newline _tmp-port67795_)
                      (display-continuation-backtrace
                       _cont67801_
                       _tmp-port67795_))
                    '#f))
              '#!void)
          (let ((__tmp68205 (get-output-string _tmp-port67795_)))
            (declare (not safe))
            (##write-string __tmp68205 _port67793_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass68167 __method-table68168)
        (let ((__continuation68169
               (let ((__slot68171
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68167 'continuation))))
                 (if __slot68171
                     __slot68171
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception68170
               (let ((__slot68172
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68167 'exception))))
                 (if __slot68172
                     __slot68172
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self67792_ _port67793_)
            (let ((_tmp-port67795_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67795_))
              (let ((__tmp68206
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67792_
                        __exception68170
                        __klass68167
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp68206 _tmp-port67795_))
              (if (dump-stack-trace?)
                  (let ((_cont6779667798_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67792_
                            __continuation68169
                            __klass68167
                            '#f))))
                    (if _cont6779667798_
                        (let ((_cont67801_ _cont6779667798_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67795_)
                          (newline _tmp-port67795_)
                          (display-continuation-backtrace
                           _cont67801_
                           _tmp-port67795_))
                        '#f))
                  '#!void)
              (let ((__tmp68207 (get-output-string _tmp-port67795_)))
                (declare (not safe))
                (##write-string __tmp68207 _port67793_)))))))
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
      (lambda (_port67664_)
        (if (macro-character-port? _port67664_)
            (let ((_old-width67666_
                   (macro-character-port-output-width _port67664_)))
              (macro-character-port-output-width-set!
               _port67664_
               (lambda (_port67668_) '256))
              _old-width67666_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67661_ _old-width67662_)
        (if (macro-character-port? _port67661_)
            (macro-character-port-output-width-set!
             _port67661_
             _old-width67662_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67659_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67659_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67653_))
            (let ((_e67656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67653_ 'exception))))
              (macro-abandoned-mutex-exception? _e67656_))
            (macro-abandoned-mutex-exception? _exn67653_))))
    (define cfun-conversion-exception?
      (lambda (_exn67649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67649_))
            (let ((_e67651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67649_ 'exception))))
              (macro-cfun-conversion-exception? _e67651_))
            (macro-cfun-conversion-exception? _exn67649_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67645_))
            (let ((_e67647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67645_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67647_)
                  (macro-cfun-conversion-exception-arguments _e67647_)
                  (let ((__tmp68210
                         (let ((__tmp68211
                                (let ()
                                  (declare (not safe))
                                  (cons _e67647_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp68211))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68210))))
            (if (macro-cfun-conversion-exception? _exn67645_)
                (macro-cfun-conversion-exception-arguments _exn67645_)
                (let ((__tmp68208
                       (let ((__tmp68209
                              (let ()
                                (declare (not safe))
                                (cons _exn67645_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp68209))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68208))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67641_))
            (let ((_e67643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67641_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67643_)
                  (macro-cfun-conversion-exception-code _e67643_)
                  (let ((__tmp68214
                         (let ((__tmp68215
                                (let ()
                                  (declare (not safe))
                                  (cons _e67643_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp68215))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68214))))
            (if (macro-cfun-conversion-exception? _exn67641_)
                (macro-cfun-conversion-exception-code _exn67641_)
                (let ((__tmp68212
                       (let ((__tmp68213
                              (let ()
                                (declare (not safe))
                                (cons _exn67641_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp68213))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68212))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67637_))
            (let ((_e67639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67637_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67639_)
                  (macro-cfun-conversion-exception-message _e67639_)
                  (let ((__tmp68218
                         (let ((__tmp68219
                                (let ()
                                  (declare (not safe))
                                  (cons _e67639_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp68219))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68218))))
            (if (macro-cfun-conversion-exception? _exn67637_)
                (macro-cfun-conversion-exception-message _exn67637_)
                (let ((__tmp68216
                       (let ((__tmp68217
                              (let ()
                                (declare (not safe))
                                (cons _exn67637_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp68217))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68216))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67631_))
            (let ((_e67634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67631_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67634_)
                  (macro-cfun-conversion-exception-procedure _e67634_)
                  (let ((__tmp68222
                         (let ((__tmp68223
                                (let ()
                                  (declare (not safe))
                                  (cons _e67634_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp68223))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68222))))
            (if (macro-cfun-conversion-exception? _exn67631_)
                (macro-cfun-conversion-exception-procedure _exn67631_)
                (let ((__tmp68220
                       (let ((__tmp68221
                              (let ()
                                (declare (not safe))
                                (cons _exn67631_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp68221))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68220))))))
    (define datum-parsing-exception?
      (lambda (_exn67627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67627_))
            (let ((_e67629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67627_ 'exception))))
              (macro-datum-parsing-exception? _e67629_))
            (macro-datum-parsing-exception? _exn67627_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67623_))
            (let ((_e67625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67623_ 'exception))))
              (if (macro-datum-parsing-exception? _e67625_)
                  (macro-datum-parsing-exception-kind _e67625_)
                  (let ((__tmp68226
                         (let ((__tmp68227
                                (let ()
                                  (declare (not safe))
                                  (cons _e67625_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp68227))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68226))))
            (if (macro-datum-parsing-exception? _exn67623_)
                (macro-datum-parsing-exception-kind _exn67623_)
                (let ((__tmp68224
                       (let ((__tmp68225
                              (let ()
                                (declare (not safe))
                                (cons _exn67623_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp68225))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68224))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67619_))
            (let ((_e67621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67619_ 'exception))))
              (if (macro-datum-parsing-exception? _e67621_)
                  (macro-datum-parsing-exception-parameters _e67621_)
                  (let ((__tmp68230
                         (let ((__tmp68231
                                (let ()
                                  (declare (not safe))
                                  (cons _e67621_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp68231))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68230))))
            (if (macro-datum-parsing-exception? _exn67619_)
                (macro-datum-parsing-exception-parameters _exn67619_)
                (let ((__tmp68228
                       (let ((__tmp68229
                              (let ()
                                (declare (not safe))
                                (cons _exn67619_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp68229))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68228))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67613_))
            (let ((_e67616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67613_ 'exception))))
              (if (macro-datum-parsing-exception? _e67616_)
                  (macro-datum-parsing-exception-readenv _e67616_)
                  (let ((__tmp68234
                         (let ((__tmp68235
                                (let ()
                                  (declare (not safe))
                                  (cons _e67616_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp68235))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68234))))
            (if (macro-datum-parsing-exception? _exn67613_)
                (macro-datum-parsing-exception-readenv _exn67613_)
                (let ((__tmp68232
                       (let ((__tmp68233
                              (let ()
                                (declare (not safe))
                                (cons _exn67613_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp68233))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68232))))))
    (define deadlock-exception?
      (lambda (_exn67607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67607_))
            (let ((_e67610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67607_ 'exception))))
              (macro-deadlock-exception? _e67610_))
            (macro-deadlock-exception? _exn67607_))))
    (define divide-by-zero-exception?
      (lambda (_exn67603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67603_))
            (let ((_e67605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67603_ 'exception))))
              (macro-divide-by-zero-exception? _e67605_))
            (macro-divide-by-zero-exception? _exn67603_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67599_))
            (let ((_e67601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67599_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67601_)
                  (macro-divide-by-zero-exception-arguments _e67601_)
                  (let ((__tmp68238
                         (let ((__tmp68239
                                (let ()
                                  (declare (not safe))
                                  (cons _e67601_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp68239))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68238))))
            (if (macro-divide-by-zero-exception? _exn67599_)
                (macro-divide-by-zero-exception-arguments _exn67599_)
                (let ((__tmp68236
                       (let ((__tmp68237
                              (let ()
                                (declare (not safe))
                                (cons _exn67599_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp68237))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68236))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67593_))
            (let ((_e67596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67593_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67596_)
                  (macro-divide-by-zero-exception-procedure _e67596_)
                  (let ((__tmp68242
                         (let ((__tmp68243
                                (let ()
                                  (declare (not safe))
                                  (cons _e67596_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp68243))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68242))))
            (if (macro-divide-by-zero-exception? _exn67593_)
                (macro-divide-by-zero-exception-procedure _exn67593_)
                (let ((__tmp68240
                       (let ((__tmp68241
                              (let ()
                                (declare (not safe))
                                (cons _exn67593_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp68241))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68240))))))
    (define error-exception?
      (lambda (_exn67589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67589_))
            (let ((_e67591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67589_ 'exception))))
              (macro-error-exception? _e67591_))
            (macro-error-exception? _exn67589_))))
    (define error-exception-message
      (lambda (_exn67585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67585_))
            (let ((_e67587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67585_ 'exception))))
              (if (macro-error-exception? _e67587_)
                  (macro-error-exception-message _e67587_)
                  (let ((__tmp68246
                         (let ((__tmp68247
                                (let ()
                                  (declare (not safe))
                                  (cons _e67587_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp68247))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68246))))
            (if (macro-error-exception? _exn67585_)
                (macro-error-exception-message _exn67585_)
                (let ((__tmp68244
                       (let ((__tmp68245
                              (let ()
                                (declare (not safe))
                                (cons _exn67585_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp68245))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68244))))))
    (define error-exception-parameters
      (lambda (_exn67579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67579_))
            (let ((_e67582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67579_ 'exception))))
              (if (macro-error-exception? _e67582_)
                  (macro-error-exception-parameters _e67582_)
                  (let ((__tmp68250
                         (let ((__tmp68251
                                (let ()
                                  (declare (not safe))
                                  (cons _e67582_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp68251))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68250))))
            (if (macro-error-exception? _exn67579_)
                (macro-error-exception-parameters _exn67579_)
                (let ((__tmp68248
                       (let ((__tmp68249
                              (let ()
                                (declare (not safe))
                                (cons _exn67579_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp68249))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68248))))))
    (define expression-parsing-exception?
      (lambda (_exn67575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67575_))
            (let ((_e67577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67575_ 'exception))))
              (macro-expression-parsing-exception? _e67577_))
            (macro-expression-parsing-exception? _exn67575_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67571_))
            (let ((_e67573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67571_ 'exception))))
              (if (macro-expression-parsing-exception? _e67573_)
                  (macro-expression-parsing-exception-kind _e67573_)
                  (let ((__tmp68254
                         (let ((__tmp68255
                                (let ()
                                  (declare (not safe))
                                  (cons _e67573_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp68255))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68254))))
            (if (macro-expression-parsing-exception? _exn67571_)
                (macro-expression-parsing-exception-kind _exn67571_)
                (let ((__tmp68252
                       (let ((__tmp68253
                              (let ()
                                (declare (not safe))
                                (cons _exn67571_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp68253))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68252))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67567_))
            (let ((_e67569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67567_ 'exception))))
              (if (macro-expression-parsing-exception? _e67569_)
                  (macro-expression-parsing-exception-parameters _e67569_)
                  (let ((__tmp68258
                         (let ((__tmp68259
                                (let ()
                                  (declare (not safe))
                                  (cons _e67569_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp68259))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68258))))
            (if (macro-expression-parsing-exception? _exn67567_)
                (macro-expression-parsing-exception-parameters _exn67567_)
                (let ((__tmp68256
                       (let ((__tmp68257
                              (let ()
                                (declare (not safe))
                                (cons _exn67567_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp68257))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68256))))))
    (define expression-parsing-exception-source
      (lambda (_exn67561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67561_))
            (let ((_e67564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67561_ 'exception))))
              (if (macro-expression-parsing-exception? _e67564_)
                  (macro-expression-parsing-exception-source _e67564_)
                  (let ((__tmp68262
                         (let ((__tmp68263
                                (let ()
                                  (declare (not safe))
                                  (cons _e67564_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp68263))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68262))))
            (if (macro-expression-parsing-exception? _exn67561_)
                (macro-expression-parsing-exception-source _exn67561_)
                (let ((__tmp68260
                       (let ((__tmp68261
                              (let ()
                                (declare (not safe))
                                (cons _exn67561_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp68261))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68260))))))
    (define file-exists-exception?
      (lambda (_exn67557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67557_))
            (let ((_e67559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67557_ 'exception))))
              (macro-file-exists-exception? _e67559_))
            (macro-file-exists-exception? _exn67557_))))
    (define file-exists-exception-arguments
      (lambda (_exn67553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67553_))
            (let ((_e67555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67553_ 'exception))))
              (if (macro-file-exists-exception? _e67555_)
                  (macro-file-exists-exception-arguments _e67555_)
                  (let ((__tmp68266
                         (let ((__tmp68267
                                (let ()
                                  (declare (not safe))
                                  (cons _e67555_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp68267))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68266))))
            (if (macro-file-exists-exception? _exn67553_)
                (macro-file-exists-exception-arguments _exn67553_)
                (let ((__tmp68264
                       (let ((__tmp68265
                              (let ()
                                (declare (not safe))
                                (cons _exn67553_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp68265))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68264))))))
    (define file-exists-exception-procedure
      (lambda (_exn67547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67547_))
            (let ((_e67550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67547_ 'exception))))
              (if (macro-file-exists-exception? _e67550_)
                  (macro-file-exists-exception-procedure _e67550_)
                  (let ((__tmp68270
                         (let ((__tmp68271
                                (let ()
                                  (declare (not safe))
                                  (cons _e67550_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp68271))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68270))))
            (if (macro-file-exists-exception? _exn67547_)
                (macro-file-exists-exception-procedure _exn67547_)
                (let ((__tmp68268
                       (let ((__tmp68269
                              (let ()
                                (declare (not safe))
                                (cons _exn67547_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp68269))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68268))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67543_))
            (let ((_e67545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67543_ 'exception))))
              (macro-fixnum-overflow-exception? _e67545_))
            (macro-fixnum-overflow-exception? _exn67543_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67539_))
            (let ((_e67541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67539_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67541_)
                  (macro-fixnum-overflow-exception-arguments _e67541_)
                  (let ((__tmp68274
                         (let ((__tmp68275
                                (let ()
                                  (declare (not safe))
                                  (cons _e67541_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp68275))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68274))))
            (if (macro-fixnum-overflow-exception? _exn67539_)
                (macro-fixnum-overflow-exception-arguments _exn67539_)
                (let ((__tmp68272
                       (let ((__tmp68273
                              (let ()
                                (declare (not safe))
                                (cons _exn67539_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp68273))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68272))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67533_))
            (let ((_e67536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67533_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67536_)
                  (macro-fixnum-overflow-exception-procedure _e67536_)
                  (let ((__tmp68278
                         (let ((__tmp68279
                                (let ()
                                  (declare (not safe))
                                  (cons _e67536_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp68279))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68278))))
            (if (macro-fixnum-overflow-exception? _exn67533_)
                (macro-fixnum-overflow-exception-procedure _exn67533_)
                (let ((__tmp68276
                       (let ((__tmp68277
                              (let ()
                                (declare (not safe))
                                (cons _exn67533_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp68277))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68276))))))
    (define heap-overflow-exception?
      (lambda (_exn67527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67527_))
            (let ((_e67530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67527_ 'exception))))
              (macro-heap-overflow-exception? _e67530_))
            (macro-heap-overflow-exception? _exn67527_))))
    (define inactive-thread-exception?
      (lambda (_exn67523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67523_))
            (let ((_e67525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67523_ 'exception))))
              (macro-inactive-thread-exception? _e67525_))
            (macro-inactive-thread-exception? _exn67523_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67519_))
            (let ((_e67521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67519_ 'exception))))
              (if (macro-inactive-thread-exception? _e67521_)
                  (macro-inactive-thread-exception-arguments _e67521_)
                  (let ((__tmp68282
                         (let ((__tmp68283
                                (let ()
                                  (declare (not safe))
                                  (cons _e67521_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp68283))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68282))))
            (if (macro-inactive-thread-exception? _exn67519_)
                (macro-inactive-thread-exception-arguments _exn67519_)
                (let ((__tmp68280
                       (let ((__tmp68281
                              (let ()
                                (declare (not safe))
                                (cons _exn67519_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp68281))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68280))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67513_))
            (let ((_e67516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67513_ 'exception))))
              (if (macro-inactive-thread-exception? _e67516_)
                  (macro-inactive-thread-exception-procedure _e67516_)
                  (let ((__tmp68286
                         (let ((__tmp68287
                                (let ()
                                  (declare (not safe))
                                  (cons _e67516_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp68287))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68286))))
            (if (macro-inactive-thread-exception? _exn67513_)
                (macro-inactive-thread-exception-procedure _exn67513_)
                (let ((__tmp68284
                       (let ((__tmp68285
                              (let ()
                                (declare (not safe))
                                (cons _exn67513_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp68285))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68284))))))
    (define initialized-thread-exception?
      (lambda (_exn67509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67509_))
            (let ((_e67511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67509_ 'exception))))
              (macro-initialized-thread-exception? _e67511_))
            (macro-initialized-thread-exception? _exn67509_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67505_))
            (let ((_e67507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67505_ 'exception))))
              (if (macro-initialized-thread-exception? _e67507_)
                  (macro-initialized-thread-exception-arguments _e67507_)
                  (let ((__tmp68290
                         (let ((__tmp68291
                                (let ()
                                  (declare (not safe))
                                  (cons _e67507_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp68291))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68290))))
            (if (macro-initialized-thread-exception? _exn67505_)
                (macro-initialized-thread-exception-arguments _exn67505_)
                (let ((__tmp68288
                       (let ((__tmp68289
                              (let ()
                                (declare (not safe))
                                (cons _exn67505_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp68289))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68288))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67499_))
            (let ((_e67502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67499_ 'exception))))
              (if (macro-initialized-thread-exception? _e67502_)
                  (macro-initialized-thread-exception-procedure _e67502_)
                  (let ((__tmp68294
                         (let ((__tmp68295
                                (let ()
                                  (declare (not safe))
                                  (cons _e67502_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp68295))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68294))))
            (if (macro-initialized-thread-exception? _exn67499_)
                (macro-initialized-thread-exception-procedure _exn67499_)
                (let ((__tmp68292
                       (let ((__tmp68293
                              (let ()
                                (declare (not safe))
                                (cons _exn67499_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp68293))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68292))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67495_))
            (let ((_e67497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67495_ 'exception))))
              (macro-invalid-hash-number-exception? _e67497_))
            (macro-invalid-hash-number-exception? _exn67495_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67491_))
            (let ((_e67493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67491_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67493_)
                  (macro-invalid-hash-number-exception-arguments _e67493_)
                  (let ((__tmp68298
                         (let ((__tmp68299
                                (let ()
                                  (declare (not safe))
                                  (cons _e67493_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp68299))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68298))))
            (if (macro-invalid-hash-number-exception? _exn67491_)
                (macro-invalid-hash-number-exception-arguments _exn67491_)
                (let ((__tmp68296
                       (let ((__tmp68297
                              (let ()
                                (declare (not safe))
                                (cons _exn67491_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp68297))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68296))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67485_))
            (let ((_e67488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67485_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67488_)
                  (macro-invalid-hash-number-exception-procedure _e67488_)
                  (let ((__tmp68302
                         (let ((__tmp68303
                                (let ()
                                  (declare (not safe))
                                  (cons _e67488_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp68303))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68302))))
            (if (macro-invalid-hash-number-exception? _exn67485_)
                (macro-invalid-hash-number-exception-procedure _exn67485_)
                (let ((__tmp68300
                       (let ((__tmp68301
                              (let ()
                                (declare (not safe))
                                (cons _exn67485_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp68301))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68300))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67481_))
            (let ((_e67483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67481_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67483_))
            (macro-invalid-utf8-encoding-exception? _exn67481_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67477_))
            (let ((_e67479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67477_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67479_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67479_)
                  (let ((__tmp68306
                         (let ((__tmp68307
                                (let ()
                                  (declare (not safe))
                                  (cons _e67479_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp68307))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68306))))
            (if (macro-invalid-utf8-encoding-exception? _exn67477_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67477_)
                (let ((__tmp68304
                       (let ((__tmp68305
                              (let ()
                                (declare (not safe))
                                (cons _exn67477_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp68305))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68304))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67471_))
            (let ((_e67474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67471_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67474_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67474_)
                  (let ((__tmp68310
                         (let ((__tmp68311
                                (let ()
                                  (declare (not safe))
                                  (cons _e67474_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp68311))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68310))))
            (if (macro-invalid-utf8-encoding-exception? _exn67471_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67471_)
                (let ((__tmp68308
                       (let ((__tmp68309
                              (let ()
                                (declare (not safe))
                                (cons _exn67471_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp68309))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68308))))))
    (define join-timeout-exception?
      (lambda (_exn67467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67467_))
            (let ((_e67469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67467_ 'exception))))
              (macro-join-timeout-exception? _e67469_))
            (macro-join-timeout-exception? _exn67467_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67463_))
            (let ((_e67465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67463_ 'exception))))
              (if (macro-join-timeout-exception? _e67465_)
                  (macro-join-timeout-exception-arguments _e67465_)
                  (let ((__tmp68314
                         (let ((__tmp68315
                                (let ()
                                  (declare (not safe))
                                  (cons _e67465_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp68315))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68314))))
            (if (macro-join-timeout-exception? _exn67463_)
                (macro-join-timeout-exception-arguments _exn67463_)
                (let ((__tmp68312
                       (let ((__tmp68313
                              (let ()
                                (declare (not safe))
                                (cons _exn67463_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp68313))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68312))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67457_))
            (let ((_e67460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67457_ 'exception))))
              (if (macro-join-timeout-exception? _e67460_)
                  (macro-join-timeout-exception-procedure _e67460_)
                  (let ((__tmp68318
                         (let ((__tmp68319
                                (let ()
                                  (declare (not safe))
                                  (cons _e67460_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp68319))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68318))))
            (if (macro-join-timeout-exception? _exn67457_)
                (macro-join-timeout-exception-procedure _exn67457_)
                (let ((__tmp68316
                       (let ((__tmp68317
                              (let ()
                                (declare (not safe))
                                (cons _exn67457_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp68317))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68316))))))
    (define keyword-expected-exception?
      (lambda (_exn67453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67453_))
            (let ((_e67455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67453_ 'exception))))
              (macro-keyword-expected-exception? _e67455_))
            (macro-keyword-expected-exception? _exn67453_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67449_))
            (let ((_e67451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67449_ 'exception))))
              (if (macro-keyword-expected-exception? _e67451_)
                  (macro-keyword-expected-exception-arguments _e67451_)
                  (let ((__tmp68322
                         (let ((__tmp68323
                                (let ()
                                  (declare (not safe))
                                  (cons _e67451_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp68323))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68322))))
            (if (macro-keyword-expected-exception? _exn67449_)
                (macro-keyword-expected-exception-arguments _exn67449_)
                (let ((__tmp68320
                       (let ((__tmp68321
                              (let ()
                                (declare (not safe))
                                (cons _exn67449_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp68321))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68320))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67443_))
            (let ((_e67446_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67443_ 'exception))))
              (if (macro-keyword-expected-exception? _e67446_)
                  (macro-keyword-expected-exception-procedure _e67446_)
                  (let ((__tmp68326
                         (let ((__tmp68327
                                (let ()
                                  (declare (not safe))
                                  (cons _e67446_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp68327))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68326))))
            (if (macro-keyword-expected-exception? _exn67443_)
                (macro-keyword-expected-exception-procedure _exn67443_)
                (let ((__tmp68324
                       (let ((__tmp68325
                              (let ()
                                (declare (not safe))
                                (cons _exn67443_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp68325))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68324))))))
    (define length-mismatch-exception?
      (lambda (_exn67439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67439_))
            (let ((_e67441_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67439_ 'exception))))
              (macro-length-mismatch-exception? _e67441_))
            (macro-length-mismatch-exception? _exn67439_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67435_))
            (let ((_e67437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67435_ 'exception))))
              (if (macro-length-mismatch-exception? _e67437_)
                  (macro-length-mismatch-exception-arg-id _e67437_)
                  (let ((__tmp68330
                         (let ((__tmp68331
                                (let ()
                                  (declare (not safe))
                                  (cons _e67437_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp68331))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68330))))
            (if (macro-length-mismatch-exception? _exn67435_)
                (macro-length-mismatch-exception-arg-id _exn67435_)
                (let ((__tmp68328
                       (let ((__tmp68329
                              (let ()
                                (declare (not safe))
                                (cons _exn67435_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp68329))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68328))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67431_))
            (let ((_e67433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67431_ 'exception))))
              (if (macro-length-mismatch-exception? _e67433_)
                  (macro-length-mismatch-exception-arguments _e67433_)
                  (let ((__tmp68334
                         (let ((__tmp68335
                                (let ()
                                  (declare (not safe))
                                  (cons _e67433_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp68335))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68334))))
            (if (macro-length-mismatch-exception? _exn67431_)
                (macro-length-mismatch-exception-arguments _exn67431_)
                (let ((__tmp68332
                       (let ((__tmp68333
                              (let ()
                                (declare (not safe))
                                (cons _exn67431_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp68333))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68332))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67425_))
            (let ((_e67428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67425_ 'exception))))
              (if (macro-length-mismatch-exception? _e67428_)
                  (macro-length-mismatch-exception-procedure _e67428_)
                  (let ((__tmp68338
                         (let ((__tmp68339
                                (let ()
                                  (declare (not safe))
                                  (cons _e67428_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp68339))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68338))))
            (if (macro-length-mismatch-exception? _exn67425_)
                (macro-length-mismatch-exception-procedure _exn67425_)
                (let ((__tmp68336
                       (let ((__tmp68337
                              (let ()
                                (declare (not safe))
                                (cons _exn67425_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp68337))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68336))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67421_))
            (let ((_e67423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67421_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67423_))
            (macro-mailbox-receive-timeout-exception? _exn67421_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67417_))
            (let ((_e67419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67417_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67419_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67419_)
                  (let ((__tmp68342
                         (let ((__tmp68343
                                (let ()
                                  (declare (not safe))
                                  (cons _e67419_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp68343))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68342))))
            (if (macro-mailbox-receive-timeout-exception? _exn67417_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67417_)
                (let ((__tmp68340
                       (let ((__tmp68341
                              (let ()
                                (declare (not safe))
                                (cons _exn67417_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp68341))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68340))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67411_))
            (let ((_e67414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67411_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67414_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67414_)
                  (let ((__tmp68346
                         (let ((__tmp68347
                                (let ()
                                  (declare (not safe))
                                  (cons _e67414_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp68347))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68346))))
            (if (macro-mailbox-receive-timeout-exception? _exn67411_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67411_)
                (let ((__tmp68344
                       (let ((__tmp68345
                              (let ()
                                (declare (not safe))
                                (cons _exn67411_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp68345))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68344))))))
    (define module-not-found-exception?
      (lambda (_exn67407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67407_))
            (let ((_e67409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67407_ 'exception))))
              (macro-module-not-found-exception? _e67409_))
            (macro-module-not-found-exception? _exn67407_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67403_))
            (let ((_e67405_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67403_ 'exception))))
              (if (macro-module-not-found-exception? _e67405_)
                  (macro-module-not-found-exception-arguments _e67405_)
                  (let ((__tmp68350
                         (let ((__tmp68351
                                (let ()
                                  (declare (not safe))
                                  (cons _e67405_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp68351))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68350))))
            (if (macro-module-not-found-exception? _exn67403_)
                (macro-module-not-found-exception-arguments _exn67403_)
                (let ((__tmp68348
                       (let ((__tmp68349
                              (let ()
                                (declare (not safe))
                                (cons _exn67403_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp68349))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68348))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67397_))
            (let ((_e67400_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67397_ 'exception))))
              (if (macro-module-not-found-exception? _e67400_)
                  (macro-module-not-found-exception-procedure _e67400_)
                  (let ((__tmp68354
                         (let ((__tmp68355
                                (let ()
                                  (declare (not safe))
                                  (cons _e67400_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp68355))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68354))))
            (if (macro-module-not-found-exception? _exn67397_)
                (macro-module-not-found-exception-procedure _exn67397_)
                (let ((__tmp68352
                       (let ((__tmp68353
                              (let ()
                                (declare (not safe))
                                (cons _exn67397_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp68353))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68352))))))
    (define multiple-c-return-exception?
      (lambda (_exn67391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67391_))
            (let ((_e67394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67391_ 'exception))))
              (macro-multiple-c-return-exception? _e67394_))
            (macro-multiple-c-return-exception? _exn67391_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67387_))
            (let ((_e67389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67387_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67389_))
            (macro-no-such-file-or-directory-exception? _exn67387_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67383_))
            (let ((_e67385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67383_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67385_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67385_)
                  (let ((__tmp68358
                         (let ((__tmp68359
                                (let ()
                                  (declare (not safe))
                                  (cons _e67385_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp68359))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68358))))
            (if (macro-no-such-file-or-directory-exception? _exn67383_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67383_)
                (let ((__tmp68356
                       (let ((__tmp68357
                              (let ()
                                (declare (not safe))
                                (cons _exn67383_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp68357))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68356))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67377_))
            (let ((_e67380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67377_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67380_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67380_)
                  (let ((__tmp68362
                         (let ((__tmp68363
                                (let ()
                                  (declare (not safe))
                                  (cons _e67380_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp68363))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68362))))
            (if (macro-no-such-file-or-directory-exception? _exn67377_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67377_)
                (let ((__tmp68360
                       (let ((__tmp68361
                              (let ()
                                (declare (not safe))
                                (cons _exn67377_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp68361))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68360))))))
    (define noncontinuable-exception?
      (lambda (_exn67373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67373_))
            (let ((_e67375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67373_ 'exception))))
              (macro-noncontinuable-exception? _e67375_))
            (macro-noncontinuable-exception? _exn67373_))))
    (define noncontinuable-exception-reason
      (lambda (_exn67367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67367_))
            (let ((_e67370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67367_ 'exception))))
              (if (macro-noncontinuable-exception? _e67370_)
                  (macro-noncontinuable-exception-reason _e67370_)
                  (let ((__tmp68366
                         (let ((__tmp68367
                                (let ()
                                  (declare (not safe))
                                  (cons _e67370_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp68367))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp68366))))
            (if (macro-noncontinuable-exception? _exn67367_)
                (macro-noncontinuable-exception-reason _exn67367_)
                (let ((__tmp68364
                       (let ((__tmp68365
                              (let ()
                                (declare (not safe))
                                (cons _exn67367_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp68365))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp68364))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn67363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67363_))
            (let ((_e67365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67363_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e67365_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn67363_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn67359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67359_))
            (let ((_e67361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67359_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67361_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e67361_)
                  (let ((__tmp68370
                         (let ((__tmp68371
                                (let ()
                                  (declare (not safe))
                                  (cons _e67361_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp68371))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68370))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67359_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn67359_)
                (let ((__tmp68368
                       (let ((__tmp68369
                              (let ()
                                (declare (not safe))
                                (cons _exn67359_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp68369))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68368))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn67353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67353_))
            (let ((_e67356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67353_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67356_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e67356_)
                  (let ((__tmp68374
                         (let ((__tmp68375
                                (let ()
                                  (declare (not safe))
                                  (cons _e67356_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp68375))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68374))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67353_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn67353_)
                (let ((__tmp68372
                       (let ((__tmp68373
                              (let ()
                                (declare (not safe))
                                (cons _exn67353_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp68373))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68372))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn67349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67349_))
            (let ((_e67351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67349_ 'exception))))
              (macro-nonprocedure-operator-exception? _e67351_))
            (macro-nonprocedure-operator-exception? _exn67349_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn67345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67345_))
            (let ((_e67347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67345_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67347_)
                  (macro-nonprocedure-operator-exception-arguments _e67347_)
                  (let ((__tmp68378
                         (let ((__tmp68379
                                (let ()
                                  (declare (not safe))
                                  (cons _e67347_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68379))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68378))))
            (if (macro-nonprocedure-operator-exception? _exn67345_)
                (macro-nonprocedure-operator-exception-arguments _exn67345_)
                (let ((__tmp68376
                       (let ((__tmp68377
                              (let ()
                                (declare (not safe))
                                (cons _exn67345_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68377))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68376))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn67341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67341_))
            (let ((_e67343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67341_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67343_)
                  (macro-nonprocedure-operator-exception-code _e67343_)
                  (let ((__tmp68382
                         (let ((__tmp68383
                                (let ()
                                  (declare (not safe))
                                  (cons _e67343_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68383))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68382))))
            (if (macro-nonprocedure-operator-exception? _exn67341_)
                (macro-nonprocedure-operator-exception-code _exn67341_)
                (let ((__tmp68380
                       (let ((__tmp68381
                              (let ()
                                (declare (not safe))
                                (cons _exn67341_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68381))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68380))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn67337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67337_))
            (let ((_e67339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67337_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67339_)
                  (macro-nonprocedure-operator-exception-operator _e67339_)
                  (let ((__tmp68386
                         (let ((__tmp68387
                                (let ()
                                  (declare (not safe))
                                  (cons _e67339_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68387))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68386))))
            (if (macro-nonprocedure-operator-exception? _exn67337_)
                (macro-nonprocedure-operator-exception-operator _exn67337_)
                (let ((__tmp68384
                       (let ((__tmp68385
                              (let ()
                                (declare (not safe))
                                (cons _exn67337_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68385))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68384))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn67331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67331_))
            (let ((_e67334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67331_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67334_)
                  (macro-nonprocedure-operator-exception-rte _e67334_)
                  (let ((__tmp68390
                         (let ((__tmp68391
                                (let ()
                                  (declare (not safe))
                                  (cons _e67334_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68391))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68390))))
            (if (macro-nonprocedure-operator-exception? _exn67331_)
                (macro-nonprocedure-operator-exception-rte _exn67331_)
                (let ((__tmp68388
                       (let ((__tmp68389
                              (let ()
                                (declare (not safe))
                                (cons _exn67331_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68389))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68388))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn67327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67327_))
            (let ((_e67329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67327_ 'exception))))
              (macro-not-in-compilation-context-exception? _e67329_))
            (macro-not-in-compilation-context-exception? _exn67327_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn67323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67323_))
            (let ((_e67325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67323_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67325_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e67325_)
                  (let ((__tmp68394
                         (let ((__tmp68395
                                (let ()
                                  (declare (not safe))
                                  (cons _e67325_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68395))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68394))))
            (if (macro-not-in-compilation-context-exception? _exn67323_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn67323_)
                (let ((__tmp68392
                       (let ((__tmp68393
                              (let ()
                                (declare (not safe))
                                (cons _exn67323_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68393))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68392))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn67317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67317_))
            (let ((_e67320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67317_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67320_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e67320_)
                  (let ((__tmp68398
                         (let ((__tmp68399
                                (let ()
                                  (declare (not safe))
                                  (cons _e67320_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68399))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68398))))
            (if (macro-not-in-compilation-context-exception? _exn67317_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn67317_)
                (let ((__tmp68396
                       (let ((__tmp68397
                              (let ()
                                (declare (not safe))
                                (cons _exn67317_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68397))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68396))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn67313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67313_))
            (let ((_e67315_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67313_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e67315_))
            (macro-number-of-arguments-limit-exception? _exn67313_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn67309_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67309_))
            (let ((_e67311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67309_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67311_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e67311_)
                  (let ((__tmp68402
                         (let ((__tmp68403
                                (let ()
                                  (declare (not safe))
                                  (cons _e67311_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68403))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68402))))
            (if (macro-number-of-arguments-limit-exception? _exn67309_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn67309_)
                (let ((__tmp68400
                       (let ((__tmp68401
                              (let ()
                                (declare (not safe))
                                (cons _exn67309_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68401))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68400))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn67303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67303_))
            (let ((_e67306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67303_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67306_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e67306_)
                  (let ((__tmp68406
                         (let ((__tmp68407
                                (let ()
                                  (declare (not safe))
                                  (cons _e67306_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68407))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68406))))
            (if (macro-number-of-arguments-limit-exception? _exn67303_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn67303_)
                (let ((__tmp68404
                       (let ((__tmp68405
                              (let ()
                                (declare (not safe))
                                (cons _exn67303_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68405))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68404))))))
    (define os-exception?
      (lambda (_exn67299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67299_))
            (let ((_e67301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67299_ 'exception))))
              (macro-os-exception? _e67301_))
            (macro-os-exception? _exn67299_))))
    (define os-exception-arguments
      (lambda (_exn67295_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67295_))
            (let ((_e67297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67295_ 'exception))))
              (if (macro-os-exception? _e67297_)
                  (macro-os-exception-arguments _e67297_)
                  (let ((__tmp68410
                         (let ((__tmp68411
                                (let ()
                                  (declare (not safe))
                                  (cons _e67297_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68411))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68410))))
            (if (macro-os-exception? _exn67295_)
                (macro-os-exception-arguments _exn67295_)
                (let ((__tmp68408
                       (let ((__tmp68409
                              (let ()
                                (declare (not safe))
                                (cons _exn67295_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68409))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68408))))))
    (define os-exception-code
      (lambda (_exn67291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67291_))
            (let ((_e67293_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67291_ 'exception))))
              (if (macro-os-exception? _e67293_)
                  (macro-os-exception-code _e67293_)
                  (let ((__tmp68414
                         (let ((__tmp68415
                                (let ()
                                  (declare (not safe))
                                  (cons _e67293_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68415))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68414))))
            (if (macro-os-exception? _exn67291_)
                (macro-os-exception-code _exn67291_)
                (let ((__tmp68412
                       (let ((__tmp68413
                              (let ()
                                (declare (not safe))
                                (cons _exn67291_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68413))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68412))))))
    (define os-exception-message
      (lambda (_exn67287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67287_))
            (let ((_e67289_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67287_ 'exception))))
              (if (macro-os-exception? _e67289_)
                  (macro-os-exception-message _e67289_)
                  (let ((__tmp68418
                         (let ((__tmp68419
                                (let ()
                                  (declare (not safe))
                                  (cons _e67289_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68419))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68418))))
            (if (macro-os-exception? _exn67287_)
                (macro-os-exception-message _exn67287_)
                (let ((__tmp68416
                       (let ((__tmp68417
                              (let ()
                                (declare (not safe))
                                (cons _exn67287_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68417))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68416))))))
    (define os-exception-procedure
      (lambda (_exn67281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67281_))
            (let ((_e67284_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67281_ 'exception))))
              (if (macro-os-exception? _e67284_)
                  (macro-os-exception-procedure _e67284_)
                  (let ((__tmp68422
                         (let ((__tmp68423
                                (let ()
                                  (declare (not safe))
                                  (cons _e67284_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68423))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68422))))
            (if (macro-os-exception? _exn67281_)
                (macro-os-exception-procedure _exn67281_)
                (let ((__tmp68420
                       (let ((__tmp68421
                              (let ()
                                (declare (not safe))
                                (cons _exn67281_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68421))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68420))))))
    (define permission-denied-exception?
      (lambda (_exn67277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67277_))
            (let ((_e67279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67277_ 'exception))))
              (macro-permission-denied-exception? _e67279_))
            (macro-permission-denied-exception? _exn67277_))))
    (define permission-denied-exception-arguments
      (lambda (_exn67273_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67273_))
            (let ((_e67275_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67273_ 'exception))))
              (if (macro-permission-denied-exception? _e67275_)
                  (macro-permission-denied-exception-arguments _e67275_)
                  (let ((__tmp68426
                         (let ((__tmp68427
                                (let ()
                                  (declare (not safe))
                                  (cons _e67275_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68427))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68426))))
            (if (macro-permission-denied-exception? _exn67273_)
                (macro-permission-denied-exception-arguments _exn67273_)
                (let ((__tmp68424
                       (let ((__tmp68425
                              (let ()
                                (declare (not safe))
                                (cons _exn67273_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68425))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68424))))))
    (define permission-denied-exception-procedure
      (lambda (_exn67267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67267_))
            (let ((_e67270_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67267_ 'exception))))
              (if (macro-permission-denied-exception? _e67270_)
                  (macro-permission-denied-exception-procedure _e67270_)
                  (let ((__tmp68430
                         (let ((__tmp68431
                                (let ()
                                  (declare (not safe))
                                  (cons _e67270_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68431))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68430))))
            (if (macro-permission-denied-exception? _exn67267_)
                (macro-permission-denied-exception-procedure _exn67267_)
                (let ((__tmp68428
                       (let ((__tmp68429
                              (let ()
                                (declare (not safe))
                                (cons _exn67267_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68429))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68428))))))
    (define range-exception?
      (lambda (_exn67263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67263_))
            (let ((_e67265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67263_ 'exception))))
              (macro-range-exception? _e67265_))
            (macro-range-exception? _exn67263_))))
    (define range-exception-arg-id
      (lambda (_exn67259_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67259_))
            (let ((_e67261_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67259_ 'exception))))
              (if (macro-range-exception? _e67261_)
                  (macro-range-exception-arg-id _e67261_)
                  (let ((__tmp68434
                         (let ((__tmp68435
                                (let ()
                                  (declare (not safe))
                                  (cons _e67261_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68435))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68434))))
            (if (macro-range-exception? _exn67259_)
                (macro-range-exception-arg-id _exn67259_)
                (let ((__tmp68432
                       (let ((__tmp68433
                              (let ()
                                (declare (not safe))
                                (cons _exn67259_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68433))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68432))))))
    (define range-exception-arguments
      (lambda (_exn67255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67255_))
            (let ((_e67257_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67255_ 'exception))))
              (if (macro-range-exception? _e67257_)
                  (macro-range-exception-arguments _e67257_)
                  (let ((__tmp68438
                         (let ((__tmp68439
                                (let ()
                                  (declare (not safe))
                                  (cons _e67257_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68439))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68438))))
            (if (macro-range-exception? _exn67255_)
                (macro-range-exception-arguments _exn67255_)
                (let ((__tmp68436
                       (let ((__tmp68437
                              (let ()
                                (declare (not safe))
                                (cons _exn67255_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68437))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68436))))))
    (define range-exception-procedure
      (lambda (_exn67249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67249_))
            (let ((_e67252_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67249_ 'exception))))
              (if (macro-range-exception? _e67252_)
                  (macro-range-exception-procedure _e67252_)
                  (let ((__tmp68442
                         (let ((__tmp68443
                                (let ()
                                  (declare (not safe))
                                  (cons _e67252_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68443))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68442))))
            (if (macro-range-exception? _exn67249_)
                (macro-range-exception-procedure _exn67249_)
                (let ((__tmp68440
                       (let ((__tmp68441
                              (let ()
                                (declare (not safe))
                                (cons _exn67249_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68441))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68440))))))
    (define rpc-remote-error-exception?
      (lambda (_exn67245_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67245_))
            (let ((_e67247_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67245_ 'exception))))
              (macro-rpc-remote-error-exception? _e67247_))
            (macro-rpc-remote-error-exception? _exn67245_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn67241_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67241_))
            (let ((_e67243_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67241_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67243_)
                  (macro-rpc-remote-error-exception-arguments _e67243_)
                  (let ((__tmp68446
                         (let ((__tmp68447
                                (let ()
                                  (declare (not safe))
                                  (cons _e67243_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68447))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68446))))
            (if (macro-rpc-remote-error-exception? _exn67241_)
                (macro-rpc-remote-error-exception-arguments _exn67241_)
                (let ((__tmp68444
                       (let ((__tmp68445
                              (let ()
                                (declare (not safe))
                                (cons _exn67241_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68445))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68444))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn67237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67237_))
            (let ((_e67239_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67237_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67239_)
                  (macro-rpc-remote-error-exception-message _e67239_)
                  (let ((__tmp68450
                         (let ((__tmp68451
                                (let ()
                                  (declare (not safe))
                                  (cons _e67239_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68451))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68450))))
            (if (macro-rpc-remote-error-exception? _exn67237_)
                (macro-rpc-remote-error-exception-message _exn67237_)
                (let ((__tmp68448
                       (let ((__tmp68449
                              (let ()
                                (declare (not safe))
                                (cons _exn67237_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68449))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68448))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn67231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67231_))
            (let ((_e67234_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67231_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67234_)
                  (macro-rpc-remote-error-exception-procedure _e67234_)
                  (let ((__tmp68454
                         (let ((__tmp68455
                                (let ()
                                  (declare (not safe))
                                  (cons _e67234_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68455))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68454))))
            (if (macro-rpc-remote-error-exception? _exn67231_)
                (macro-rpc-remote-error-exception-procedure _exn67231_)
                (let ((__tmp68452
                       (let ((__tmp68453
                              (let ()
                                (declare (not safe))
                                (cons _exn67231_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68453))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68452))))))
    (define scheduler-exception?
      (lambda (_exn67227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67227_))
            (let ((_e67229_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67227_ 'exception))))
              (macro-scheduler-exception? _e67229_))
            (macro-scheduler-exception? _exn67227_))))
    (define scheduler-exception-reason
      (lambda (_exn67221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67221_))
            (let ((_e67224_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67221_ 'exception))))
              (if (macro-scheduler-exception? _e67224_)
                  (macro-scheduler-exception-reason _e67224_)
                  (let ((__tmp68458
                         (let ((__tmp68459
                                (let ()
                                  (declare (not safe))
                                  (cons _e67224_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68459))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68458))))
            (if (macro-scheduler-exception? _exn67221_)
                (macro-scheduler-exception-reason _exn67221_)
                (let ((__tmp68456
                       (let ((__tmp68457
                              (let ()
                                (declare (not safe))
                                (cons _exn67221_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68457))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68456))))))
    (define sfun-conversion-exception?
      (lambda (_exn67217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67217_))
            (let ((_e67219_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67217_ 'exception))))
              (macro-sfun-conversion-exception? _e67219_))
            (macro-sfun-conversion-exception? _exn67217_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn67213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67213_))
            (let ((_e67215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67213_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67215_)
                  (macro-sfun-conversion-exception-arguments _e67215_)
                  (let ((__tmp68462
                         (let ((__tmp68463
                                (let ()
                                  (declare (not safe))
                                  (cons _e67215_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68463))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68462))))
            (if (macro-sfun-conversion-exception? _exn67213_)
                (macro-sfun-conversion-exception-arguments _exn67213_)
                (let ((__tmp68460
                       (let ((__tmp68461
                              (let ()
                                (declare (not safe))
                                (cons _exn67213_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68461))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68460))))))
    (define sfun-conversion-exception-code
      (lambda (_exn67209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67209_))
            (let ((_e67211_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67209_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67211_)
                  (macro-sfun-conversion-exception-code _e67211_)
                  (let ((__tmp68466
                         (let ((__tmp68467
                                (let ()
                                  (declare (not safe))
                                  (cons _e67211_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68467))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68466))))
            (if (macro-sfun-conversion-exception? _exn67209_)
                (macro-sfun-conversion-exception-code _exn67209_)
                (let ((__tmp68464
                       (let ((__tmp68465
                              (let ()
                                (declare (not safe))
                                (cons _exn67209_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68465))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68464))))))
    (define sfun-conversion-exception-message
      (lambda (_exn67205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67205_))
            (let ((_e67207_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67205_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67207_)
                  (macro-sfun-conversion-exception-message _e67207_)
                  (let ((__tmp68470
                         (let ((__tmp68471
                                (let ()
                                  (declare (not safe))
                                  (cons _e67207_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68471))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68470))))
            (if (macro-sfun-conversion-exception? _exn67205_)
                (macro-sfun-conversion-exception-message _exn67205_)
                (let ((__tmp68468
                       (let ((__tmp68469
                              (let ()
                                (declare (not safe))
                                (cons _exn67205_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68469))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68468))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn67199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67199_))
            (let ((_e67202_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67199_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67202_)
                  (macro-sfun-conversion-exception-procedure _e67202_)
                  (let ((__tmp68474
                         (let ((__tmp68475
                                (let ()
                                  (declare (not safe))
                                  (cons _e67202_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68475))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68474))))
            (if (macro-sfun-conversion-exception? _exn67199_)
                (macro-sfun-conversion-exception-procedure _exn67199_)
                (let ((__tmp68472
                       (let ((__tmp68473
                              (let ()
                                (declare (not safe))
                                (cons _exn67199_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68473))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68472))))))
    (define stack-overflow-exception?
      (lambda (_exn67193_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67193_))
            (let ((_e67196_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67193_ 'exception))))
              (macro-stack-overflow-exception? _e67196_))
            (macro-stack-overflow-exception? _exn67193_))))
    (define started-thread-exception?
      (lambda (_exn67189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67189_))
            (let ((_e67191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67189_ 'exception))))
              (macro-started-thread-exception? _e67191_))
            (macro-started-thread-exception? _exn67189_))))
    (define started-thread-exception-arguments
      (lambda (_exn67185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67185_))
            (let ((_e67187_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67185_ 'exception))))
              (if (macro-started-thread-exception? _e67187_)
                  (macro-started-thread-exception-arguments _e67187_)
                  (let ((__tmp68478
                         (let ((__tmp68479
                                (let ()
                                  (declare (not safe))
                                  (cons _e67187_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68479))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68478))))
            (if (macro-started-thread-exception? _exn67185_)
                (macro-started-thread-exception-arguments _exn67185_)
                (let ((__tmp68476
                       (let ((__tmp68477
                              (let ()
                                (declare (not safe))
                                (cons _exn67185_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68477))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68476))))))
    (define started-thread-exception-procedure
      (lambda (_exn67179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67179_))
            (let ((_e67182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67179_ 'exception))))
              (if (macro-started-thread-exception? _e67182_)
                  (macro-started-thread-exception-procedure _e67182_)
                  (let ((__tmp68482
                         (let ((__tmp68483
                                (let ()
                                  (declare (not safe))
                                  (cons _e67182_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68483))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68482))))
            (if (macro-started-thread-exception? _exn67179_)
                (macro-started-thread-exception-procedure _exn67179_)
                (let ((__tmp68480
                       (let ((__tmp68481
                              (let ()
                                (declare (not safe))
                                (cons _exn67179_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68481))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68480))))))
    (define terminated-thread-exception?
      (lambda (_exn67175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67175_))
            (let ((_e67177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67175_ 'exception))))
              (macro-terminated-thread-exception? _e67177_))
            (macro-terminated-thread-exception? _exn67175_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn67171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67171_))
            (let ((_e67173_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67171_ 'exception))))
              (if (macro-terminated-thread-exception? _e67173_)
                  (macro-terminated-thread-exception-arguments _e67173_)
                  (let ((__tmp68486
                         (let ((__tmp68487
                                (let ()
                                  (declare (not safe))
                                  (cons _e67173_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68487))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68486))))
            (if (macro-terminated-thread-exception? _exn67171_)
                (macro-terminated-thread-exception-arguments _exn67171_)
                (let ((__tmp68484
                       (let ((__tmp68485
                              (let ()
                                (declare (not safe))
                                (cons _exn67171_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68485))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68484))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn67165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67165_))
            (let ((_e67168_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67165_ 'exception))))
              (if (macro-terminated-thread-exception? _e67168_)
                  (macro-terminated-thread-exception-procedure _e67168_)
                  (let ((__tmp68490
                         (let ((__tmp68491
                                (let ()
                                  (declare (not safe))
                                  (cons _e67168_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68491))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68490))))
            (if (macro-terminated-thread-exception? _exn67165_)
                (macro-terminated-thread-exception-procedure _exn67165_)
                (let ((__tmp68488
                       (let ((__tmp68489
                              (let ()
                                (declare (not safe))
                                (cons _exn67165_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68489))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68488))))))
    (define type-exception?
      (lambda (_exn67161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67161_))
            (let ((_e67163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67161_ 'exception))))
              (macro-type-exception? _e67163_))
            (macro-type-exception? _exn67161_))))
    (define type-exception-arg-id
      (lambda (_exn67157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67157_))
            (let ((_e67159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67157_ 'exception))))
              (if (macro-type-exception? _e67159_)
                  (macro-type-exception-arg-id _e67159_)
                  (let ((__tmp68494
                         (let ((__tmp68495
                                (let ()
                                  (declare (not safe))
                                  (cons _e67159_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68495))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68494))))
            (if (macro-type-exception? _exn67157_)
                (macro-type-exception-arg-id _exn67157_)
                (let ((__tmp68492
                       (let ((__tmp68493
                              (let ()
                                (declare (not safe))
                                (cons _exn67157_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68493))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68492))))))
    (define type-exception-arguments
      (lambda (_exn67153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67153_))
            (let ((_e67155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67153_ 'exception))))
              (if (macro-type-exception? _e67155_)
                  (macro-type-exception-arguments _e67155_)
                  (let ((__tmp68498
                         (let ((__tmp68499
                                (let ()
                                  (declare (not safe))
                                  (cons _e67155_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68499))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68498))))
            (if (macro-type-exception? _exn67153_)
                (macro-type-exception-arguments _exn67153_)
                (let ((__tmp68496
                       (let ((__tmp68497
                              (let ()
                                (declare (not safe))
                                (cons _exn67153_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68497))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68496))))))
    (define type-exception-procedure
      (lambda (_exn67149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67149_))
            (let ((_e67151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67149_ 'exception))))
              (if (macro-type-exception? _e67151_)
                  (macro-type-exception-procedure _e67151_)
                  (let ((__tmp68502
                         (let ((__tmp68503
                                (let ()
                                  (declare (not safe))
                                  (cons _e67151_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68503))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68502))))
            (if (macro-type-exception? _exn67149_)
                (macro-type-exception-procedure _exn67149_)
                (let ((__tmp68500
                       (let ((__tmp68501
                              (let ()
                                (declare (not safe))
                                (cons _exn67149_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68501))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68500))))))
    (define type-exception-type-id
      (lambda (_exn67143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67143_))
            (let ((_e67146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67143_ 'exception))))
              (if (macro-type-exception? _e67146_)
                  (macro-type-exception-type-id _e67146_)
                  (let ((__tmp68506
                         (let ((__tmp68507
                                (let ()
                                  (declare (not safe))
                                  (cons _e67146_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68507))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68506))))
            (if (macro-type-exception? _exn67143_)
                (macro-type-exception-type-id _exn67143_)
                (let ((__tmp68504
                       (let ((__tmp68505
                              (let ()
                                (declare (not safe))
                                (cons _exn67143_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68505))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68504))))))
    (define unbound-global-exception?
      (lambda (_exn67139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67139_))
            (let ((_e67141_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67139_ 'exception))))
              (macro-unbound-global-exception? _e67141_))
            (macro-unbound-global-exception? _exn67139_))))
    (define unbound-global-exception-code
      (lambda (_exn67135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67135_))
            (let ((_e67137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67135_ 'exception))))
              (if (macro-unbound-global-exception? _e67137_)
                  (macro-unbound-global-exception-code _e67137_)
                  (let ((__tmp68510
                         (let ((__tmp68511
                                (let ()
                                  (declare (not safe))
                                  (cons _e67137_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68511))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68510))))
            (if (macro-unbound-global-exception? _exn67135_)
                (macro-unbound-global-exception-code _exn67135_)
                (let ((__tmp68508
                       (let ((__tmp68509
                              (let ()
                                (declare (not safe))
                                (cons _exn67135_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68509))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68508))))))
    (define unbound-global-exception-rte
      (lambda (_exn67131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67131_))
            (let ((_e67133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67131_ 'exception))))
              (if (macro-unbound-global-exception? _e67133_)
                  (macro-unbound-global-exception-rte _e67133_)
                  (let ((__tmp68514
                         (let ((__tmp68515
                                (let ()
                                  (declare (not safe))
                                  (cons _e67133_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68515))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68514))))
            (if (macro-unbound-global-exception? _exn67131_)
                (macro-unbound-global-exception-rte _exn67131_)
                (let ((__tmp68512
                       (let ((__tmp68513
                              (let ()
                                (declare (not safe))
                                (cons _exn67131_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68513))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68512))))))
    (define unbound-global-exception-variable
      (lambda (_exn67125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67125_))
            (let ((_e67128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67125_ 'exception))))
              (if (macro-unbound-global-exception? _e67128_)
                  (macro-unbound-global-exception-variable _e67128_)
                  (let ((__tmp68518
                         (let ((__tmp68519
                                (let ()
                                  (declare (not safe))
                                  (cons _e67128_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68519))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68518))))
            (if (macro-unbound-global-exception? _exn67125_)
                (macro-unbound-global-exception-variable _exn67125_)
                (let ((__tmp68516
                       (let ((__tmp68517
                              (let ()
                                (declare (not safe))
                                (cons _exn67125_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68517))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68516))))))
    (define unbound-key-exception?
      (lambda (_exn67121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67121_))
            (let ((_e67123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67121_ 'exception))))
              (macro-unbound-key-exception? _e67123_))
            (macro-unbound-key-exception? _exn67121_))))
    (define unbound-key-exception-arguments
      (lambda (_exn67117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67117_))
            (let ((_e67119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67117_ 'exception))))
              (if (macro-unbound-key-exception? _e67119_)
                  (macro-unbound-key-exception-arguments _e67119_)
                  (let ((__tmp68522
                         (let ((__tmp68523
                                (let ()
                                  (declare (not safe))
                                  (cons _e67119_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68523))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68522))))
            (if (macro-unbound-key-exception? _exn67117_)
                (macro-unbound-key-exception-arguments _exn67117_)
                (let ((__tmp68520
                       (let ((__tmp68521
                              (let ()
                                (declare (not safe))
                                (cons _exn67117_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68521))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68520))))))
    (define unbound-key-exception-procedure
      (lambda (_exn67111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67111_))
            (let ((_e67114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67111_ 'exception))))
              (if (macro-unbound-key-exception? _e67114_)
                  (macro-unbound-key-exception-procedure _e67114_)
                  (let ((__tmp68526
                         (let ((__tmp68527
                                (let ()
                                  (declare (not safe))
                                  (cons _e67114_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68527))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68526))))
            (if (macro-unbound-key-exception? _exn67111_)
                (macro-unbound-key-exception-procedure _exn67111_)
                (let ((__tmp68524
                       (let ((__tmp68525
                              (let ()
                                (declare (not safe))
                                (cons _exn67111_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68525))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68524))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn67107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67107_))
            (let ((_e67109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67107_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e67109_))
            (macro-unbound-os-environment-variable-exception? _exn67107_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn67103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67103_))
            (let ((_e67105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67103_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67105_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e67105_)
                  (let ((__tmp68530
                         (let ((__tmp68531
                                (let ()
                                  (declare (not safe))
                                  (cons _e67105_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68531))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68530))))
            (if (macro-unbound-os-environment-variable-exception? _exn67103_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn67103_)
                (let ((__tmp68528
                       (let ((__tmp68529
                              (let ()
                                (declare (not safe))
                                (cons _exn67103_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68529))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68528))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn67097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67097_))
            (let ((_e67100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67097_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67100_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e67100_)
                  (let ((__tmp68534
                         (let ((__tmp68535
                                (let ()
                                  (declare (not safe))
                                  (cons _e67100_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68535))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68534))))
            (if (macro-unbound-os-environment-variable-exception? _exn67097_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn67097_)
                (let ((__tmp68532
                       (let ((__tmp68533
                              (let ()
                                (declare (not safe))
                                (cons _exn67097_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68533))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68532))))))
    (define unbound-serial-number-exception?
      (lambda (_exn67093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67093_))
            (let ((_e67095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67093_ 'exception))))
              (macro-unbound-serial-number-exception? _e67095_))
            (macro-unbound-serial-number-exception? _exn67093_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn67089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67089_))
            (let ((_e67091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67089_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67091_)
                  (macro-unbound-serial-number-exception-arguments _e67091_)
                  (let ((__tmp68538
                         (let ((__tmp68539
                                (let ()
                                  (declare (not safe))
                                  (cons _e67091_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68539))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68538))))
            (if (macro-unbound-serial-number-exception? _exn67089_)
                (macro-unbound-serial-number-exception-arguments _exn67089_)
                (let ((__tmp68536
                       (let ((__tmp68537
                              (let ()
                                (declare (not safe))
                                (cons _exn67089_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68537))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68536))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn67083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67083_))
            (let ((_e67086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67083_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67086_)
                  (macro-unbound-serial-number-exception-procedure _e67086_)
                  (let ((__tmp68542
                         (let ((__tmp68543
                                (let ()
                                  (declare (not safe))
                                  (cons _e67086_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68543))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68542))))
            (if (macro-unbound-serial-number-exception? _exn67083_)
                (macro-unbound-serial-number-exception-procedure _exn67083_)
                (let ((__tmp68540
                       (let ((__tmp68541
                              (let ()
                                (declare (not safe))
                                (cons _exn67083_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68541))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68540))))))
    (define uncaught-exception?
      (lambda (_exn67079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67079_))
            (let ((_e67081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67079_ 'exception))))
              (macro-uncaught-exception? _e67081_))
            (macro-uncaught-exception? _exn67079_))))
    (define uncaught-exception-arguments
      (lambda (_exn67075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67075_))
            (let ((_e67077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67075_ 'exception))))
              (if (macro-uncaught-exception? _e67077_)
                  (macro-uncaught-exception-arguments _e67077_)
                  (let ((__tmp68546
                         (let ((__tmp68547
                                (let ()
                                  (declare (not safe))
                                  (cons _e67077_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68547))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68546))))
            (if (macro-uncaught-exception? _exn67075_)
                (macro-uncaught-exception-arguments _exn67075_)
                (let ((__tmp68544
                       (let ((__tmp68545
                              (let ()
                                (declare (not safe))
                                (cons _exn67075_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68545))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68544))))))
    (define uncaught-exception-procedure
      (lambda (_exn67071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67071_))
            (let ((_e67073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67071_ 'exception))))
              (if (macro-uncaught-exception? _e67073_)
                  (macro-uncaught-exception-procedure _e67073_)
                  (let ((__tmp68550
                         (let ((__tmp68551
                                (let ()
                                  (declare (not safe))
                                  (cons _e67073_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68551))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68550))))
            (if (macro-uncaught-exception? _exn67071_)
                (macro-uncaught-exception-procedure _exn67071_)
                (let ((__tmp68548
                       (let ((__tmp68549
                              (let ()
                                (declare (not safe))
                                (cons _exn67071_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68549))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68548))))))
    (define uncaught-exception-reason
      (lambda (_exn67065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67065_))
            (let ((_e67068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67065_ 'exception))))
              (if (macro-uncaught-exception? _e67068_)
                  (macro-uncaught-exception-reason _e67068_)
                  (let ((__tmp68554
                         (let ((__tmp68555
                                (let ()
                                  (declare (not safe))
                                  (cons _e67068_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68555))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68554))))
            (if (macro-uncaught-exception? _exn67065_)
                (macro-uncaught-exception-reason _exn67065_)
                (let ((__tmp68552
                       (let ((__tmp68553
                              (let ()
                                (declare (not safe))
                                (cons _exn67065_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68553))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68552))))))
    (define uninitialized-thread-exception?
      (lambda (_exn67061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67061_))
            (let ((_e67063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67061_ 'exception))))
              (macro-uninitialized-thread-exception? _e67063_))
            (macro-uninitialized-thread-exception? _exn67061_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn67057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67057_))
            (let ((_e67059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67057_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67059_)
                  (macro-uninitialized-thread-exception-arguments _e67059_)
                  (let ((__tmp68558
                         (let ((__tmp68559
                                (let ()
                                  (declare (not safe))
                                  (cons _e67059_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68559))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68558))))
            (if (macro-uninitialized-thread-exception? _exn67057_)
                (macro-uninitialized-thread-exception-arguments _exn67057_)
                (let ((__tmp68556
                       (let ((__tmp68557
                              (let ()
                                (declare (not safe))
                                (cons _exn67057_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68557))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68556))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn67051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67051_))
            (let ((_e67054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67051_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67054_)
                  (macro-uninitialized-thread-exception-procedure _e67054_)
                  (let ((__tmp68562
                         (let ((__tmp68563
                                (let ()
                                  (declare (not safe))
                                  (cons _e67054_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68563))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68562))))
            (if (macro-uninitialized-thread-exception? _exn67051_)
                (macro-uninitialized-thread-exception-procedure _exn67051_)
                (let ((__tmp68560
                       (let ((__tmp68561
                              (let ()
                                (declare (not safe))
                                (cons _exn67051_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68561))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68560))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn67047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67047_))
            (let ((_e67049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67047_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e67049_))
            (macro-unknown-keyword-argument-exception? _exn67047_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn67043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67043_))
            (let ((_e67045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67043_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67045_)
                  (macro-unknown-keyword-argument-exception-arguments _e67045_)
                  (let ((__tmp68566
                         (let ((__tmp68567
                                (let ()
                                  (declare (not safe))
                                  (cons _e67045_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68567))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68566))))
            (if (macro-unknown-keyword-argument-exception? _exn67043_)
                (macro-unknown-keyword-argument-exception-arguments _exn67043_)
                (let ((__tmp68564
                       (let ((__tmp68565
                              (let ()
                                (declare (not safe))
                                (cons _exn67043_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68565))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68564))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn67037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67037_))
            (let ((_e67040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67037_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67040_)
                  (macro-unknown-keyword-argument-exception-procedure _e67040_)
                  (let ((__tmp68570
                         (let ((__tmp68571
                                (let ()
                                  (declare (not safe))
                                  (cons _e67040_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68571))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68570))))
            (if (macro-unknown-keyword-argument-exception? _exn67037_)
                (macro-unknown-keyword-argument-exception-procedure _exn67037_)
                (let ((__tmp68568
                       (let ((__tmp68569
                              (let ()
                                (declare (not safe))
                                (cons _exn67037_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68569))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68568))))))
    (define unterminated-process-exception?
      (lambda (_exn67033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67033_))
            (let ((_e67035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67033_ 'exception))))
              (macro-unterminated-process-exception? _e67035_))
            (macro-unterminated-process-exception? _exn67033_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn67029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67029_))
            (let ((_e67031_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67029_ 'exception))))
              (if (macro-unterminated-process-exception? _e67031_)
                  (macro-unterminated-process-exception-arguments _e67031_)
                  (let ((__tmp68574
                         (let ((__tmp68575
                                (let ()
                                  (declare (not safe))
                                  (cons _e67031_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68575))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68574))))
            (if (macro-unterminated-process-exception? _exn67029_)
                (macro-unterminated-process-exception-arguments _exn67029_)
                (let ((__tmp68572
                       (let ((__tmp68573
                              (let ()
                                (declare (not safe))
                                (cons _exn67029_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68573))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68572))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn67023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67023_))
            (let ((_e67026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67023_ 'exception))))
              (if (macro-unterminated-process-exception? _e67026_)
                  (macro-unterminated-process-exception-procedure _e67026_)
                  (let ((__tmp68578
                         (let ((__tmp68579
                                (let ()
                                  (declare (not safe))
                                  (cons _e67026_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68579))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68578))))
            (if (macro-unterminated-process-exception? _exn67023_)
                (macro-unterminated-process-exception-procedure _exn67023_)
                (let ((__tmp68576
                       (let ((__tmp68577
                              (let ()
                                (declare (not safe))
                                (cons _exn67023_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68577))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68576))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn67019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67019_))
            (let ((_e67021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67019_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e67021_))
            (macro-wrong-number-of-arguments-exception? _exn67019_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn67015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67015_))
            (let ((_e67017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67015_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67017_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e67017_)
                  (let ((__tmp68582
                         (let ((__tmp68583
                                (let ()
                                  (declare (not safe))
                                  (cons _e67017_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68583))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68582))))
            (if (macro-wrong-number-of-arguments-exception? _exn67015_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn67015_)
                (let ((__tmp68580
                       (let ((__tmp68581
                              (let ()
                                (declare (not safe))
                                (cons _exn67015_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68581))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68580))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn67009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67009_))
            (let ((_e67012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67009_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67012_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e67012_)
                  (let ((__tmp68586
                         (let ((__tmp68587
                                (let ()
                                  (declare (not safe))
                                  (cons _e67012_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68587))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68586))))
            (if (macro-wrong-number-of-arguments-exception? _exn67009_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn67009_)
                (let ((__tmp68584
                       (let ((__tmp68585
                              (let ()
                                (declare (not safe))
                                (cons _exn67009_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68585))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68584))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn67005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67005_))
            (let ((_e67007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67005_ 'exception))))
              (macro-wrong-number-of-values-exception? _e67007_))
            (macro-wrong-number-of-values-exception? _exn67005_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn67001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67001_))
            (let ((_e67003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67001_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67003_)
                  (macro-wrong-number-of-values-exception-code _e67003_)
                  (let ((__tmp68590
                         (let ((__tmp68591
                                (let ()
                                  (declare (not safe))
                                  (cons _e67003_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68591))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68590))))
            (if (macro-wrong-number-of-values-exception? _exn67001_)
                (macro-wrong-number-of-values-exception-code _exn67001_)
                (let ((__tmp68588
                       (let ((__tmp68589
                              (let ()
                                (declare (not safe))
                                (cons _exn67001_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68589))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68588))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn66997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66997_))
            (let ((_e66999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66997_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66999_)
                  (macro-wrong-number-of-values-exception-rte _e66999_)
                  (let ((__tmp68594
                         (let ((__tmp68595
                                (let ()
                                  (declare (not safe))
                                  (cons _e66999_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68595))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68594))))
            (if (macro-wrong-number-of-values-exception? _exn66997_)
                (macro-wrong-number-of-values-exception-rte _exn66997_)
                (let ((__tmp68592
                       (let ((__tmp68593
                              (let ()
                                (declare (not safe))
                                (cons _exn66997_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68593))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68592))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn66991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66991_))
            (let ((_e66994_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66991_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66994_)
                  (macro-wrong-number-of-values-exception-vals _e66994_)
                  (let ((__tmp68598
                         (let ((__tmp68599
                                (let ()
                                  (declare (not safe))
                                  (cons _e66994_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68599))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68598))))
            (if (macro-wrong-number-of-values-exception? _exn66991_)
                (macro-wrong-number-of-values-exception-vals _exn66991_)
                (let ((__tmp68596
                       (let ((__tmp68597
                              (let ()
                                (declare (not safe))
                                (cons _exn66991_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68597))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68596))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn66985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66985_))
            (let ((_e66988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66985_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e66988_))
            (macro-wrong-processor-c-return-exception? _exn66985_))))))
