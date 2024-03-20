(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710943025)
  (begin
    (define Exception::t
      (let ((__tmp68202 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp68202
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args68170_ (apply make-instance Exception::t _$args68170_)))
    (define StackTrace::t
      (let ((__tmp68203 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp68203
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args68167_ (apply make-instance StackTrace::t _$args68167_)))
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
      (let ((__tmp68204 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp68204
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args68164_ (apply make-instance Error::t _$args68164_)))
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
      (let ((__tmp68205 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp68205
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args68161_
        (apply make-instance RuntimeException::t _$args68161_)))
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
      (lambda (_exn68156_ _continue68157_)
        (let ((_exn68159_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn68156_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn68159_ _continue68157_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn68152_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn68152_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn68152_ 'continuation))
                '#!void
                (let ((__tmp68206
                       (lambda (_cont68154_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn68152_
                            'continuation
                            _cont68154_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp68206)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn68152_))))
    (define error
      (lambda (_message68149_ . _irritants68150_)
        (raise (let ((__obj68196
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj68196
                  _message68149_
                  'irritants:
                  _irritants68150_)
                 __obj68196))))
    (define with-exception-handler
      (lambda (_handler68142_ _thunk68143_)
        (if (let () (declare (not safe)) (procedure? _handler68142_))
            '#!void
            (raise (let ((__obj68197
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68197
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68142_ '())))
                     __obj68197)))
        (if (let () (declare (not safe)) (procedure? _thunk68143_))
            '#!void
            (raise (let ((__obj68198
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68198
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68143_ '())))
                     __obj68198)))
        (let ((__tmp68207
               (lambda (_exn68145_)
                 (let ((_exn68147_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn68145_))))
                   (_handler68142_ _exn68147_)))))
          (declare (not safe))
          (##with-exception-handler __tmp68207 _thunk68143_))))
    (define with-catch
      (lambda (_handler68135_ _thunk68136_)
        (if (let () (declare (not safe)) (procedure? _handler68135_))
            '#!void
            (raise (let ((__obj68199
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68199
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68135_ '())))
                     __obj68199)))
        (if (let () (declare (not safe)) (procedure? _thunk68136_))
            '#!void
            (raise (let ((__obj68200
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68200
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68136_ '())))
                     __obj68200)))
        (let ((__tmp68208
               (lambda (_cont68138_)
                 (with-exception-handler
                  (lambda (_exn68140_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont68138_
                       _handler68135_
                       _exn68140_)))
                  _thunk68136_))))
          (declare (not safe))
          (##continuation-capture __tmp68208))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn68126_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn68126_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn68126_)))
            _exn68126_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn68126_))
                _exn68126_
                (if (macro-exception? _exn68126_)
                    (let ((_rte68131_
                           (let ((__obj68201
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj68201
                                _exn68126_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj68201)))
                      (let ((__tmp68209
                             (lambda (_cont68133_)
                               (let ((__tmp68210
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont68133_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte68131_
                                  'continuation
                                  __tmp68210)))))
                        (declare (not safe))
                        (##continuation-capture __tmp68209))
                      _rte68131_)
                    _exn68126_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj68121_)
        (let ((_$e68123_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj68121_))))
          (if _$e68123_
              _$e68123_
              (let () (declare (not safe)) (error-exception? _obj68121_))))))
    (define error-message
      (lambda (_obj68119_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68119_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68119_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj68119_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj68119_))
                '#f))))
    (define error-irritants
      (lambda (_obj68117_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68117_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68117_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj68117_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj68117_))
                '#f))))
    (define error-trace
      (lambda (_obj68115_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68115_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68115_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e68097_ _port68098_)
        (let ((_$e68100_
               (let ()
                 (declare (not safe))
                 (method-ref _e68097_ 'display-exception))))
          (if _$e68100_
              ((lambda (_f68103_) (_f68103_ _e68097_ _port68098_)) _$e68100_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e68097_ _port68098_))))))
    (define display-exception__0
      (lambda (_e68108_)
        (let ((_port68110_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e68108_ _port68110_))))
    (define display-exception
      (lambda _g68212_
        (let ((_g68211_ (let () (declare (not safe)) (##length _g68212_))))
          (cond ((let () (declare (not safe)) (##fx= _g68211_ 1))
                 (apply (lambda (_e68108_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e68108_)))
                        _g68212_))
                ((let () (declare (not safe)) (##fx= _g68211_ 2))
                 (apply (lambda (_e68112_ _port68113_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e68112_ _port68113_)))
                        _g68212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g68212_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self68086_ _message68087_ . _rest68088_)
        (let ((_message68094_
               (if (let () (declare (not safe)) (string? _message68087_))
                   _message68087_
                   (call-with-output-string
                    '""
                    (lambda (_g6808968091_)
                      (display _message68087_ _g6808968091_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self68086_ 'message _message68094_))
          (apply class-instance-init! _self68086_ _rest68088_))))
    (define Error:::init!::specialize
      (lambda (__klass68172 __method-table68173)
        (let ((__message68174
               (let ((__slot68175
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68172 'message))))
                 (if __slot68175
                     __slot68175
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self68086_ _message68087_ . _rest68088_)
            (let ((_message68094_
                   (if (let () (declare (not safe)) (string? _message68087_))
                       _message68087_
                       (call-with-output-string
                        '""
                        (lambda (_g6808968091_)
                          (display _message68087_ _g6808968091_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self68086_
                 _message68094_
                 __message68174
                 __klass68172
                 '#f))
              (apply class-instance-init! _self68086_ _rest68088_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67944_ _port67945_)
        (let ((_tmp-port67947_ (open-output-string))
              (_display-error-newline67948_
               (> (output-port-column _port67945_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67947_))
          (let ((__tmp68213
                 (lambda ()
                   (if _display-error-newline67948_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67951_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67944_ 'where))))
                     (if _$e67951_ (display _$e67951_) (display '"?")))
                   (let ((__tmp68214
                          (let ((__tmp68215 (object-type _self67944_)))
                            (declare (not safe))
                            (##type-name __tmp68215))))
                     (declare (not safe))
                     (display* '" [" __tmp68214 '"]: "))
                   (let ((__tmp68216
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67944_ 'message))))
                     (declare (not safe))
                     (displayln __tmp68216))
                   (let ((_irritants67954_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67944_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67954_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67956_)
                              (write _obj67956_)
                              (write-char '#\space))
                            _irritants67954_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67944_))
                            (dump-stack-trace?))
                       (let ((_cont6795767959_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67944_
                                 'continuation))))
                         (if _cont6795767959_
                             (let ((_cont67962_ _cont6795767959_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67962_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp68213
             current-output-port
             _tmp-port67947_))
          (let ((__tmp68217 (get-output-string _tmp-port67947_)))
            (declare (not safe))
            (##write-string __tmp68217 _port67945_)))))
    (define Error::display-exception::specialize
      (lambda (__klass68176 __method-table68177)
        (let ((__irritants68178
               (let ((__slot68182
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68176 'irritants))))
                 (if __slot68182
                     __slot68182
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message68179
               (let ((__slot68183
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68176 'message))))
                 (if __slot68183
                     __slot68183
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__continuation68180
               (let ((__slot68184
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68176 'continuation))))
                 (if __slot68184
                     __slot68184
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where68181
               (let ((__slot68185
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68176 'where))))
                 (if __slot68185
                     __slot68185
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where))))))
          (lambda (_self67944_ _port67945_)
            (let ((_tmp-port67947_ (open-output-string))
                  (_display-error-newline67948_
                   (> (output-port-column _port67945_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67947_))
              (let ((__tmp68218
                     (lambda ()
                       (if _display-error-newline67948_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67951_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67944_
                                 __where68181
                                 __klass68176
                                 '#f))))
                         (if _$e67951_ (display _$e67951_) (display '"?")))
                       (let ((__tmp68219
                              (let ((__tmp68220 (object-type _self67944_)))
                                (declare (not safe))
                                (##type-name __tmp68220))))
                         (declare (not safe))
                         (display* '" [" __tmp68219 '"]: "))
                       (let ((__tmp68221
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67944_
                                 __message68179
                                 __klass68176
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp68221))
                       (let ((_irritants67954_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67944_
                                 __irritants68178
                                 __klass68176
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67954_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67956_)
                                  (write _obj67956_)
                                  (write-char '#\space))
                                _irritants67954_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67944_))
                                (dump-stack-trace?))
                           (let ((_cont6795767959_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67944_
                                     __continuation68180
                                     __klass68176
                                     '#f))))
                             (if _cont6795767959_
                                 (let ((_cont67962_ _cont6795767959_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67962_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp68218
                 current-output-port
                 _tmp-port67947_))
              (let ((__tmp68222 (get-output-string _tmp-port67947_)))
                (declare (not safe))
                (##write-string __tmp68222 _port67945_)))))))
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
      (lambda (_self67811_ _port67812_)
        (let ((_tmp-port67814_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67814_))
          (let ((__tmp68223
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67811_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp68223 _tmp-port67814_))
          (if (dump-stack-trace?)
              (let ((_cont6781567817_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67811_ 'continuation))))
                (if _cont6781567817_
                    (let ((_cont67820_ _cont6781567817_))
                      (display '"--- continuation backtrace:" _tmp-port67814_)
                      (newline _tmp-port67814_)
                      (display-continuation-backtrace
                       _cont67820_
                       _tmp-port67814_))
                    '#f))
              '#!void)
          (let ((__tmp68224 (get-output-string _tmp-port67814_)))
            (declare (not safe))
            (##write-string __tmp68224 _port67812_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass68186 __method-table68187)
        (let ((__exception68188
               (let ((__slot68190
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68186 'exception))))
                 (if __slot68190
                     __slot68190
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation68189
               (let ((__slot68191
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68186 'continuation))))
                 (if __slot68191
                     __slot68191
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67811_ _port67812_)
            (let ((_tmp-port67814_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67814_))
              (let ((__tmp68225
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67811_
                        __exception68188
                        __klass68186
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp68225 _tmp-port67814_))
              (if (dump-stack-trace?)
                  (let ((_cont6781567817_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67811_
                            __continuation68189
                            __klass68186
                            '#f))))
                    (if _cont6781567817_
                        (let ((_cont67820_ _cont6781567817_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67814_)
                          (newline _tmp-port67814_)
                          (display-continuation-backtrace
                           _cont67820_
                           _tmp-port67814_))
                        '#f))
                  '#!void)
              (let ((__tmp68226 (get-output-string _tmp-port67814_)))
                (declare (not safe))
                (##write-string __tmp68226 _port67812_)))))))
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
      (lambda (_port67683_)
        (if (macro-character-port? _port67683_)
            (let ((_old-width67685_
                   (macro-character-port-output-width _port67683_)))
              (macro-character-port-output-width-set!
               _port67683_
               (lambda (_port67687_) '256))
              _old-width67685_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67680_ _old-width67681_)
        (if (macro-character-port? _port67680_)
            (macro-character-port-output-width-set!
             _port67680_
             _old-width67681_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67678_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67678_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67672_))
            (let ((_e67675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67672_ 'exception))))
              (macro-abandoned-mutex-exception? _e67675_))
            (macro-abandoned-mutex-exception? _exn67672_))))
    (define cfun-conversion-exception?
      (lambda (_exn67668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67668_))
            (let ((_e67670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67668_ 'exception))))
              (macro-cfun-conversion-exception? _e67670_))
            (macro-cfun-conversion-exception? _exn67668_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67664_))
            (let ((_e67666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67664_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67666_)
                  (macro-cfun-conversion-exception-arguments _e67666_)
                  (let ((__tmp68229
                         (let ((__tmp68230
                                (let ()
                                  (declare (not safe))
                                  (cons _e67666_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp68230))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68229))))
            (if (macro-cfun-conversion-exception? _exn67664_)
                (macro-cfun-conversion-exception-arguments _exn67664_)
                (let ((__tmp68227
                       (let ((__tmp68228
                              (let ()
                                (declare (not safe))
                                (cons _exn67664_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp68228))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68227))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67660_))
            (let ((_e67662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67660_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67662_)
                  (macro-cfun-conversion-exception-code _e67662_)
                  (let ((__tmp68233
                         (let ((__tmp68234
                                (let ()
                                  (declare (not safe))
                                  (cons _e67662_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp68234))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68233))))
            (if (macro-cfun-conversion-exception? _exn67660_)
                (macro-cfun-conversion-exception-code _exn67660_)
                (let ((__tmp68231
                       (let ((__tmp68232
                              (let ()
                                (declare (not safe))
                                (cons _exn67660_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp68232))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68231))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67656_))
            (let ((_e67658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67656_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67658_)
                  (macro-cfun-conversion-exception-message _e67658_)
                  (let ((__tmp68237
                         (let ((__tmp68238
                                (let ()
                                  (declare (not safe))
                                  (cons _e67658_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp68238))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68237))))
            (if (macro-cfun-conversion-exception? _exn67656_)
                (macro-cfun-conversion-exception-message _exn67656_)
                (let ((__tmp68235
                       (let ((__tmp68236
                              (let ()
                                (declare (not safe))
                                (cons _exn67656_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp68236))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68235))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67650_))
            (let ((_e67653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67650_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67653_)
                  (macro-cfun-conversion-exception-procedure _e67653_)
                  (let ((__tmp68241
                         (let ((__tmp68242
                                (let ()
                                  (declare (not safe))
                                  (cons _e67653_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp68242))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68241))))
            (if (macro-cfun-conversion-exception? _exn67650_)
                (macro-cfun-conversion-exception-procedure _exn67650_)
                (let ((__tmp68239
                       (let ((__tmp68240
                              (let ()
                                (declare (not safe))
                                (cons _exn67650_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp68240))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68239))))))
    (define datum-parsing-exception?
      (lambda (_exn67646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67646_))
            (let ((_e67648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67646_ 'exception))))
              (macro-datum-parsing-exception? _e67648_))
            (macro-datum-parsing-exception? _exn67646_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67642_))
            (let ((_e67644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67642_ 'exception))))
              (if (macro-datum-parsing-exception? _e67644_)
                  (macro-datum-parsing-exception-kind _e67644_)
                  (let ((__tmp68245
                         (let ((__tmp68246
                                (let ()
                                  (declare (not safe))
                                  (cons _e67644_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp68246))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68245))))
            (if (macro-datum-parsing-exception? _exn67642_)
                (macro-datum-parsing-exception-kind _exn67642_)
                (let ((__tmp68243
                       (let ((__tmp68244
                              (let ()
                                (declare (not safe))
                                (cons _exn67642_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp68244))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68243))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67638_))
            (let ((_e67640_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67638_ 'exception))))
              (if (macro-datum-parsing-exception? _e67640_)
                  (macro-datum-parsing-exception-parameters _e67640_)
                  (let ((__tmp68249
                         (let ((__tmp68250
                                (let ()
                                  (declare (not safe))
                                  (cons _e67640_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp68250))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68249))))
            (if (macro-datum-parsing-exception? _exn67638_)
                (macro-datum-parsing-exception-parameters _exn67638_)
                (let ((__tmp68247
                       (let ((__tmp68248
                              (let ()
                                (declare (not safe))
                                (cons _exn67638_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp68248))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68247))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67632_))
            (let ((_e67635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67632_ 'exception))))
              (if (macro-datum-parsing-exception? _e67635_)
                  (macro-datum-parsing-exception-readenv _e67635_)
                  (let ((__tmp68253
                         (let ((__tmp68254
                                (let ()
                                  (declare (not safe))
                                  (cons _e67635_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp68254))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68253))))
            (if (macro-datum-parsing-exception? _exn67632_)
                (macro-datum-parsing-exception-readenv _exn67632_)
                (let ((__tmp68251
                       (let ((__tmp68252
                              (let ()
                                (declare (not safe))
                                (cons _exn67632_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp68252))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68251))))))
    (define deadlock-exception?
      (lambda (_exn67626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67626_))
            (let ((_e67629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67626_ 'exception))))
              (macro-deadlock-exception? _e67629_))
            (macro-deadlock-exception? _exn67626_))))
    (define divide-by-zero-exception?
      (lambda (_exn67622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67622_))
            (let ((_e67624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67622_ 'exception))))
              (macro-divide-by-zero-exception? _e67624_))
            (macro-divide-by-zero-exception? _exn67622_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67618_))
            (let ((_e67620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67618_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67620_)
                  (macro-divide-by-zero-exception-arguments _e67620_)
                  (let ((__tmp68257
                         (let ((__tmp68258
                                (let ()
                                  (declare (not safe))
                                  (cons _e67620_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp68258))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68257))))
            (if (macro-divide-by-zero-exception? _exn67618_)
                (macro-divide-by-zero-exception-arguments _exn67618_)
                (let ((__tmp68255
                       (let ((__tmp68256
                              (let ()
                                (declare (not safe))
                                (cons _exn67618_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp68256))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68255))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67612_))
            (let ((_e67615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67612_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67615_)
                  (macro-divide-by-zero-exception-procedure _e67615_)
                  (let ((__tmp68261
                         (let ((__tmp68262
                                (let ()
                                  (declare (not safe))
                                  (cons _e67615_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp68262))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68261))))
            (if (macro-divide-by-zero-exception? _exn67612_)
                (macro-divide-by-zero-exception-procedure _exn67612_)
                (let ((__tmp68259
                       (let ((__tmp68260
                              (let ()
                                (declare (not safe))
                                (cons _exn67612_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp68260))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68259))))))
    (define error-exception?
      (lambda (_exn67608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67608_))
            (let ((_e67610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67608_ 'exception))))
              (macro-error-exception? _e67610_))
            (macro-error-exception? _exn67608_))))
    (define error-exception-message
      (lambda (_exn67604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67604_))
            (let ((_e67606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67604_ 'exception))))
              (if (macro-error-exception? _e67606_)
                  (macro-error-exception-message _e67606_)
                  (let ((__tmp68265
                         (let ((__tmp68266
                                (let ()
                                  (declare (not safe))
                                  (cons _e67606_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp68266))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68265))))
            (if (macro-error-exception? _exn67604_)
                (macro-error-exception-message _exn67604_)
                (let ((__tmp68263
                       (let ((__tmp68264
                              (let ()
                                (declare (not safe))
                                (cons _exn67604_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp68264))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68263))))))
    (define error-exception-parameters
      (lambda (_exn67598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67598_))
            (let ((_e67601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67598_ 'exception))))
              (if (macro-error-exception? _e67601_)
                  (macro-error-exception-parameters _e67601_)
                  (let ((__tmp68269
                         (let ((__tmp68270
                                (let ()
                                  (declare (not safe))
                                  (cons _e67601_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp68270))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68269))))
            (if (macro-error-exception? _exn67598_)
                (macro-error-exception-parameters _exn67598_)
                (let ((__tmp68267
                       (let ((__tmp68268
                              (let ()
                                (declare (not safe))
                                (cons _exn67598_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp68268))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68267))))))
    (define expression-parsing-exception?
      (lambda (_exn67594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67594_))
            (let ((_e67596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67594_ 'exception))))
              (macro-expression-parsing-exception? _e67596_))
            (macro-expression-parsing-exception? _exn67594_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67590_))
            (let ((_e67592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67590_ 'exception))))
              (if (macro-expression-parsing-exception? _e67592_)
                  (macro-expression-parsing-exception-kind _e67592_)
                  (let ((__tmp68273
                         (let ((__tmp68274
                                (let ()
                                  (declare (not safe))
                                  (cons _e67592_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp68274))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68273))))
            (if (macro-expression-parsing-exception? _exn67590_)
                (macro-expression-parsing-exception-kind _exn67590_)
                (let ((__tmp68271
                       (let ((__tmp68272
                              (let ()
                                (declare (not safe))
                                (cons _exn67590_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp68272))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68271))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67586_))
            (let ((_e67588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67586_ 'exception))))
              (if (macro-expression-parsing-exception? _e67588_)
                  (macro-expression-parsing-exception-parameters _e67588_)
                  (let ((__tmp68277
                         (let ((__tmp68278
                                (let ()
                                  (declare (not safe))
                                  (cons _e67588_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp68278))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68277))))
            (if (macro-expression-parsing-exception? _exn67586_)
                (macro-expression-parsing-exception-parameters _exn67586_)
                (let ((__tmp68275
                       (let ((__tmp68276
                              (let ()
                                (declare (not safe))
                                (cons _exn67586_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp68276))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68275))))))
    (define expression-parsing-exception-source
      (lambda (_exn67580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67580_))
            (let ((_e67583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67580_ 'exception))))
              (if (macro-expression-parsing-exception? _e67583_)
                  (macro-expression-parsing-exception-source _e67583_)
                  (let ((__tmp68281
                         (let ((__tmp68282
                                (let ()
                                  (declare (not safe))
                                  (cons _e67583_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp68282))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68281))))
            (if (macro-expression-parsing-exception? _exn67580_)
                (macro-expression-parsing-exception-source _exn67580_)
                (let ((__tmp68279
                       (let ((__tmp68280
                              (let ()
                                (declare (not safe))
                                (cons _exn67580_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp68280))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68279))))))
    (define file-exists-exception?
      (lambda (_exn67576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67576_))
            (let ((_e67578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67576_ 'exception))))
              (macro-file-exists-exception? _e67578_))
            (macro-file-exists-exception? _exn67576_))))
    (define file-exists-exception-arguments
      (lambda (_exn67572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67572_))
            (let ((_e67574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67572_ 'exception))))
              (if (macro-file-exists-exception? _e67574_)
                  (macro-file-exists-exception-arguments _e67574_)
                  (let ((__tmp68285
                         (let ((__tmp68286
                                (let ()
                                  (declare (not safe))
                                  (cons _e67574_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp68286))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68285))))
            (if (macro-file-exists-exception? _exn67572_)
                (macro-file-exists-exception-arguments _exn67572_)
                (let ((__tmp68283
                       (let ((__tmp68284
                              (let ()
                                (declare (not safe))
                                (cons _exn67572_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp68284))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68283))))))
    (define file-exists-exception-procedure
      (lambda (_exn67566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67566_))
            (let ((_e67569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67566_ 'exception))))
              (if (macro-file-exists-exception? _e67569_)
                  (macro-file-exists-exception-procedure _e67569_)
                  (let ((__tmp68289
                         (let ((__tmp68290
                                (let ()
                                  (declare (not safe))
                                  (cons _e67569_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp68290))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68289))))
            (if (macro-file-exists-exception? _exn67566_)
                (macro-file-exists-exception-procedure _exn67566_)
                (let ((__tmp68287
                       (let ((__tmp68288
                              (let ()
                                (declare (not safe))
                                (cons _exn67566_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp68288))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68287))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67562_))
            (let ((_e67564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67562_ 'exception))))
              (macro-fixnum-overflow-exception? _e67564_))
            (macro-fixnum-overflow-exception? _exn67562_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67558_))
            (let ((_e67560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67558_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67560_)
                  (macro-fixnum-overflow-exception-arguments _e67560_)
                  (let ((__tmp68293
                         (let ((__tmp68294
                                (let ()
                                  (declare (not safe))
                                  (cons _e67560_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp68294))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68293))))
            (if (macro-fixnum-overflow-exception? _exn67558_)
                (macro-fixnum-overflow-exception-arguments _exn67558_)
                (let ((__tmp68291
                       (let ((__tmp68292
                              (let ()
                                (declare (not safe))
                                (cons _exn67558_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp68292))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68291))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67552_))
            (let ((_e67555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67552_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67555_)
                  (macro-fixnum-overflow-exception-procedure _e67555_)
                  (let ((__tmp68297
                         (let ((__tmp68298
                                (let ()
                                  (declare (not safe))
                                  (cons _e67555_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp68298))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68297))))
            (if (macro-fixnum-overflow-exception? _exn67552_)
                (macro-fixnum-overflow-exception-procedure _exn67552_)
                (let ((__tmp68295
                       (let ((__tmp68296
                              (let ()
                                (declare (not safe))
                                (cons _exn67552_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp68296))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68295))))))
    (define heap-overflow-exception?
      (lambda (_exn67546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67546_))
            (let ((_e67549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67546_ 'exception))))
              (macro-heap-overflow-exception? _e67549_))
            (macro-heap-overflow-exception? _exn67546_))))
    (define inactive-thread-exception?
      (lambda (_exn67542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67542_))
            (let ((_e67544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67542_ 'exception))))
              (macro-inactive-thread-exception? _e67544_))
            (macro-inactive-thread-exception? _exn67542_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67538_))
            (let ((_e67540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67538_ 'exception))))
              (if (macro-inactive-thread-exception? _e67540_)
                  (macro-inactive-thread-exception-arguments _e67540_)
                  (let ((__tmp68301
                         (let ((__tmp68302
                                (let ()
                                  (declare (not safe))
                                  (cons _e67540_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp68302))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68301))))
            (if (macro-inactive-thread-exception? _exn67538_)
                (macro-inactive-thread-exception-arguments _exn67538_)
                (let ((__tmp68299
                       (let ((__tmp68300
                              (let ()
                                (declare (not safe))
                                (cons _exn67538_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp68300))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68299))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67532_))
            (let ((_e67535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67532_ 'exception))))
              (if (macro-inactive-thread-exception? _e67535_)
                  (macro-inactive-thread-exception-procedure _e67535_)
                  (let ((__tmp68305
                         (let ((__tmp68306
                                (let ()
                                  (declare (not safe))
                                  (cons _e67535_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp68306))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68305))))
            (if (macro-inactive-thread-exception? _exn67532_)
                (macro-inactive-thread-exception-procedure _exn67532_)
                (let ((__tmp68303
                       (let ((__tmp68304
                              (let ()
                                (declare (not safe))
                                (cons _exn67532_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp68304))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68303))))))
    (define initialized-thread-exception?
      (lambda (_exn67528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67528_))
            (let ((_e67530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67528_ 'exception))))
              (macro-initialized-thread-exception? _e67530_))
            (macro-initialized-thread-exception? _exn67528_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67524_))
            (let ((_e67526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67524_ 'exception))))
              (if (macro-initialized-thread-exception? _e67526_)
                  (macro-initialized-thread-exception-arguments _e67526_)
                  (let ((__tmp68309
                         (let ((__tmp68310
                                (let ()
                                  (declare (not safe))
                                  (cons _e67526_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp68310))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68309))))
            (if (macro-initialized-thread-exception? _exn67524_)
                (macro-initialized-thread-exception-arguments _exn67524_)
                (let ((__tmp68307
                       (let ((__tmp68308
                              (let ()
                                (declare (not safe))
                                (cons _exn67524_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp68308))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68307))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67518_))
            (let ((_e67521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67518_ 'exception))))
              (if (macro-initialized-thread-exception? _e67521_)
                  (macro-initialized-thread-exception-procedure _e67521_)
                  (let ((__tmp68313
                         (let ((__tmp68314
                                (let ()
                                  (declare (not safe))
                                  (cons _e67521_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp68314))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68313))))
            (if (macro-initialized-thread-exception? _exn67518_)
                (macro-initialized-thread-exception-procedure _exn67518_)
                (let ((__tmp68311
                       (let ((__tmp68312
                              (let ()
                                (declare (not safe))
                                (cons _exn67518_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp68312))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68311))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67514_))
            (let ((_e67516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67514_ 'exception))))
              (macro-invalid-hash-number-exception? _e67516_))
            (macro-invalid-hash-number-exception? _exn67514_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67510_))
            (let ((_e67512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67510_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67512_)
                  (macro-invalid-hash-number-exception-arguments _e67512_)
                  (let ((__tmp68317
                         (let ((__tmp68318
                                (let ()
                                  (declare (not safe))
                                  (cons _e67512_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp68318))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68317))))
            (if (macro-invalid-hash-number-exception? _exn67510_)
                (macro-invalid-hash-number-exception-arguments _exn67510_)
                (let ((__tmp68315
                       (let ((__tmp68316
                              (let ()
                                (declare (not safe))
                                (cons _exn67510_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp68316))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68315))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67504_))
            (let ((_e67507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67504_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67507_)
                  (macro-invalid-hash-number-exception-procedure _e67507_)
                  (let ((__tmp68321
                         (let ((__tmp68322
                                (let ()
                                  (declare (not safe))
                                  (cons _e67507_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp68322))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68321))))
            (if (macro-invalid-hash-number-exception? _exn67504_)
                (macro-invalid-hash-number-exception-procedure _exn67504_)
                (let ((__tmp68319
                       (let ((__tmp68320
                              (let ()
                                (declare (not safe))
                                (cons _exn67504_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp68320))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68319))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67500_))
            (let ((_e67502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67500_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67502_))
            (macro-invalid-utf8-encoding-exception? _exn67500_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67496_))
            (let ((_e67498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67496_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67498_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67498_)
                  (let ((__tmp68325
                         (let ((__tmp68326
                                (let ()
                                  (declare (not safe))
                                  (cons _e67498_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp68326))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68325))))
            (if (macro-invalid-utf8-encoding-exception? _exn67496_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67496_)
                (let ((__tmp68323
                       (let ((__tmp68324
                              (let ()
                                (declare (not safe))
                                (cons _exn67496_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp68324))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68323))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67490_))
            (let ((_e67493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67490_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67493_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67493_)
                  (let ((__tmp68329
                         (let ((__tmp68330
                                (let ()
                                  (declare (not safe))
                                  (cons _e67493_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp68330))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68329))))
            (if (macro-invalid-utf8-encoding-exception? _exn67490_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67490_)
                (let ((__tmp68327
                       (let ((__tmp68328
                              (let ()
                                (declare (not safe))
                                (cons _exn67490_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp68328))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68327))))))
    (define join-timeout-exception?
      (lambda (_exn67486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67486_))
            (let ((_e67488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67486_ 'exception))))
              (macro-join-timeout-exception? _e67488_))
            (macro-join-timeout-exception? _exn67486_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67482_))
            (let ((_e67484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67482_ 'exception))))
              (if (macro-join-timeout-exception? _e67484_)
                  (macro-join-timeout-exception-arguments _e67484_)
                  (let ((__tmp68333
                         (let ((__tmp68334
                                (let ()
                                  (declare (not safe))
                                  (cons _e67484_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp68334))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68333))))
            (if (macro-join-timeout-exception? _exn67482_)
                (macro-join-timeout-exception-arguments _exn67482_)
                (let ((__tmp68331
                       (let ((__tmp68332
                              (let ()
                                (declare (not safe))
                                (cons _exn67482_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp68332))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68331))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67476_))
            (let ((_e67479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67476_ 'exception))))
              (if (macro-join-timeout-exception? _e67479_)
                  (macro-join-timeout-exception-procedure _e67479_)
                  (let ((__tmp68337
                         (let ((__tmp68338
                                (let ()
                                  (declare (not safe))
                                  (cons _e67479_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp68338))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68337))))
            (if (macro-join-timeout-exception? _exn67476_)
                (macro-join-timeout-exception-procedure _exn67476_)
                (let ((__tmp68335
                       (let ((__tmp68336
                              (let ()
                                (declare (not safe))
                                (cons _exn67476_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp68336))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68335))))))
    (define keyword-expected-exception?
      (lambda (_exn67472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67472_))
            (let ((_e67474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67472_ 'exception))))
              (macro-keyword-expected-exception? _e67474_))
            (macro-keyword-expected-exception? _exn67472_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67468_))
            (let ((_e67470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67468_ 'exception))))
              (if (macro-keyword-expected-exception? _e67470_)
                  (macro-keyword-expected-exception-arguments _e67470_)
                  (let ((__tmp68341
                         (let ((__tmp68342
                                (let ()
                                  (declare (not safe))
                                  (cons _e67470_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp68342))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68341))))
            (if (macro-keyword-expected-exception? _exn67468_)
                (macro-keyword-expected-exception-arguments _exn67468_)
                (let ((__tmp68339
                       (let ((__tmp68340
                              (let ()
                                (declare (not safe))
                                (cons _exn67468_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp68340))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68339))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67462_))
            (let ((_e67465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67462_ 'exception))))
              (if (macro-keyword-expected-exception? _e67465_)
                  (macro-keyword-expected-exception-procedure _e67465_)
                  (let ((__tmp68345
                         (let ((__tmp68346
                                (let ()
                                  (declare (not safe))
                                  (cons _e67465_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp68346))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68345))))
            (if (macro-keyword-expected-exception? _exn67462_)
                (macro-keyword-expected-exception-procedure _exn67462_)
                (let ((__tmp68343
                       (let ((__tmp68344
                              (let ()
                                (declare (not safe))
                                (cons _exn67462_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp68344))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68343))))))
    (define length-mismatch-exception?
      (lambda (_exn67458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67458_))
            (let ((_e67460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67458_ 'exception))))
              (macro-length-mismatch-exception? _e67460_))
            (macro-length-mismatch-exception? _exn67458_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67454_))
            (let ((_e67456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67454_ 'exception))))
              (if (macro-length-mismatch-exception? _e67456_)
                  (macro-length-mismatch-exception-arg-id _e67456_)
                  (let ((__tmp68349
                         (let ((__tmp68350
                                (let ()
                                  (declare (not safe))
                                  (cons _e67456_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp68350))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68349))))
            (if (macro-length-mismatch-exception? _exn67454_)
                (macro-length-mismatch-exception-arg-id _exn67454_)
                (let ((__tmp68347
                       (let ((__tmp68348
                              (let ()
                                (declare (not safe))
                                (cons _exn67454_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp68348))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68347))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67450_))
            (let ((_e67452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67450_ 'exception))))
              (if (macro-length-mismatch-exception? _e67452_)
                  (macro-length-mismatch-exception-arguments _e67452_)
                  (let ((__tmp68353
                         (let ((__tmp68354
                                (let ()
                                  (declare (not safe))
                                  (cons _e67452_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp68354))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68353))))
            (if (macro-length-mismatch-exception? _exn67450_)
                (macro-length-mismatch-exception-arguments _exn67450_)
                (let ((__tmp68351
                       (let ((__tmp68352
                              (let ()
                                (declare (not safe))
                                (cons _exn67450_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp68352))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68351))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67444_))
            (let ((_e67447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67444_ 'exception))))
              (if (macro-length-mismatch-exception? _e67447_)
                  (macro-length-mismatch-exception-procedure _e67447_)
                  (let ((__tmp68357
                         (let ((__tmp68358
                                (let ()
                                  (declare (not safe))
                                  (cons _e67447_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp68358))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68357))))
            (if (macro-length-mismatch-exception? _exn67444_)
                (macro-length-mismatch-exception-procedure _exn67444_)
                (let ((__tmp68355
                       (let ((__tmp68356
                              (let ()
                                (declare (not safe))
                                (cons _exn67444_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp68356))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68355))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67440_))
            (let ((_e67442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67440_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67442_))
            (macro-mailbox-receive-timeout-exception? _exn67440_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67436_))
            (let ((_e67438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67436_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67438_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67438_)
                  (let ((__tmp68361
                         (let ((__tmp68362
                                (let ()
                                  (declare (not safe))
                                  (cons _e67438_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp68362))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68361))))
            (if (macro-mailbox-receive-timeout-exception? _exn67436_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67436_)
                (let ((__tmp68359
                       (let ((__tmp68360
                              (let ()
                                (declare (not safe))
                                (cons _exn67436_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp68360))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68359))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67430_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67430_))
            (let ((_e67433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67430_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67433_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67433_)
                  (let ((__tmp68365
                         (let ((__tmp68366
                                (let ()
                                  (declare (not safe))
                                  (cons _e67433_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp68366))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68365))))
            (if (macro-mailbox-receive-timeout-exception? _exn67430_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67430_)
                (let ((__tmp68363
                       (let ((__tmp68364
                              (let ()
                                (declare (not safe))
                                (cons _exn67430_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp68364))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68363))))))
    (define module-not-found-exception?
      (lambda (_exn67426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67426_))
            (let ((_e67428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67426_ 'exception))))
              (macro-module-not-found-exception? _e67428_))
            (macro-module-not-found-exception? _exn67426_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67422_))
            (let ((_e67424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67422_ 'exception))))
              (if (macro-module-not-found-exception? _e67424_)
                  (macro-module-not-found-exception-arguments _e67424_)
                  (let ((__tmp68369
                         (let ((__tmp68370
                                (let ()
                                  (declare (not safe))
                                  (cons _e67424_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp68370))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68369))))
            (if (macro-module-not-found-exception? _exn67422_)
                (macro-module-not-found-exception-arguments _exn67422_)
                (let ((__tmp68367
                       (let ((__tmp68368
                              (let ()
                                (declare (not safe))
                                (cons _exn67422_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp68368))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68367))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67416_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67416_))
            (let ((_e67419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67416_ 'exception))))
              (if (macro-module-not-found-exception? _e67419_)
                  (macro-module-not-found-exception-procedure _e67419_)
                  (let ((__tmp68373
                         (let ((__tmp68374
                                (let ()
                                  (declare (not safe))
                                  (cons _e67419_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp68374))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68373))))
            (if (macro-module-not-found-exception? _exn67416_)
                (macro-module-not-found-exception-procedure _exn67416_)
                (let ((__tmp68371
                       (let ((__tmp68372
                              (let ()
                                (declare (not safe))
                                (cons _exn67416_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp68372))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68371))))))
    (define multiple-c-return-exception?
      (lambda (_exn67410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67410_))
            (let ((_e67413_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67410_ 'exception))))
              (macro-multiple-c-return-exception? _e67413_))
            (macro-multiple-c-return-exception? _exn67410_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67406_))
            (let ((_e67408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67406_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67408_))
            (macro-no-such-file-or-directory-exception? _exn67406_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67402_))
            (let ((_e67404_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67402_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67404_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67404_)
                  (let ((__tmp68377
                         (let ((__tmp68378
                                (let ()
                                  (declare (not safe))
                                  (cons _e67404_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp68378))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68377))))
            (if (macro-no-such-file-or-directory-exception? _exn67402_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67402_)
                (let ((__tmp68375
                       (let ((__tmp68376
                              (let ()
                                (declare (not safe))
                                (cons _exn67402_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp68376))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68375))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67396_))
            (let ((_e67399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67396_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67399_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67399_)
                  (let ((__tmp68381
                         (let ((__tmp68382
                                (let ()
                                  (declare (not safe))
                                  (cons _e67399_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp68382))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68381))))
            (if (macro-no-such-file-or-directory-exception? _exn67396_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67396_)
                (let ((__tmp68379
                       (let ((__tmp68380
                              (let ()
                                (declare (not safe))
                                (cons _exn67396_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp68380))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68379))))))
    (define noncontinuable-exception?
      (lambda (_exn67392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67392_))
            (let ((_e67394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67392_ 'exception))))
              (macro-noncontinuable-exception? _e67394_))
            (macro-noncontinuable-exception? _exn67392_))))
    (define noncontinuable-exception-reason
      (lambda (_exn67386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67386_))
            (let ((_e67389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67386_ 'exception))))
              (if (macro-noncontinuable-exception? _e67389_)
                  (macro-noncontinuable-exception-reason _e67389_)
                  (let ((__tmp68385
                         (let ((__tmp68386
                                (let ()
                                  (declare (not safe))
                                  (cons _e67389_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp68386))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp68385))))
            (if (macro-noncontinuable-exception? _exn67386_)
                (macro-noncontinuable-exception-reason _exn67386_)
                (let ((__tmp68383
                       (let ((__tmp68384
                              (let ()
                                (declare (not safe))
                                (cons _exn67386_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp68384))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp68383))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn67382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67382_))
            (let ((_e67384_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67382_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e67384_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn67382_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn67378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67378_))
            (let ((_e67380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67378_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67380_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e67380_)
                  (let ((__tmp68389
                         (let ((__tmp68390
                                (let ()
                                  (declare (not safe))
                                  (cons _e67380_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp68390))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68389))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67378_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn67378_)
                (let ((__tmp68387
                       (let ((__tmp68388
                              (let ()
                                (declare (not safe))
                                (cons _exn67378_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp68388))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68387))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn67372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67372_))
            (let ((_e67375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67372_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67375_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e67375_)
                  (let ((__tmp68393
                         (let ((__tmp68394
                                (let ()
                                  (declare (not safe))
                                  (cons _e67375_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp68394))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68393))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67372_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn67372_)
                (let ((__tmp68391
                       (let ((__tmp68392
                              (let ()
                                (declare (not safe))
                                (cons _exn67372_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp68392))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68391))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn67368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67368_))
            (let ((_e67370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67368_ 'exception))))
              (macro-nonprocedure-operator-exception? _e67370_))
            (macro-nonprocedure-operator-exception? _exn67368_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn67364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67364_))
            (let ((_e67366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67364_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67366_)
                  (macro-nonprocedure-operator-exception-arguments _e67366_)
                  (let ((__tmp68397
                         (let ((__tmp68398
                                (let ()
                                  (declare (not safe))
                                  (cons _e67366_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68398))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68397))))
            (if (macro-nonprocedure-operator-exception? _exn67364_)
                (macro-nonprocedure-operator-exception-arguments _exn67364_)
                (let ((__tmp68395
                       (let ((__tmp68396
                              (let ()
                                (declare (not safe))
                                (cons _exn67364_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68396))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68395))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn67360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67360_))
            (let ((_e67362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67360_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67362_)
                  (macro-nonprocedure-operator-exception-code _e67362_)
                  (let ((__tmp68401
                         (let ((__tmp68402
                                (let ()
                                  (declare (not safe))
                                  (cons _e67362_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68402))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68401))))
            (if (macro-nonprocedure-operator-exception? _exn67360_)
                (macro-nonprocedure-operator-exception-code _exn67360_)
                (let ((__tmp68399
                       (let ((__tmp68400
                              (let ()
                                (declare (not safe))
                                (cons _exn67360_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68400))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68399))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn67356_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67356_))
            (let ((_e67358_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67356_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67358_)
                  (macro-nonprocedure-operator-exception-operator _e67358_)
                  (let ((__tmp68405
                         (let ((__tmp68406
                                (let ()
                                  (declare (not safe))
                                  (cons _e67358_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68406))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68405))))
            (if (macro-nonprocedure-operator-exception? _exn67356_)
                (macro-nonprocedure-operator-exception-operator _exn67356_)
                (let ((__tmp68403
                       (let ((__tmp68404
                              (let ()
                                (declare (not safe))
                                (cons _exn67356_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68404))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68403))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn67350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67350_))
            (let ((_e67353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67350_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67353_)
                  (macro-nonprocedure-operator-exception-rte _e67353_)
                  (let ((__tmp68409
                         (let ((__tmp68410
                                (let ()
                                  (declare (not safe))
                                  (cons _e67353_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68410))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68409))))
            (if (macro-nonprocedure-operator-exception? _exn67350_)
                (macro-nonprocedure-operator-exception-rte _exn67350_)
                (let ((__tmp68407
                       (let ((__tmp68408
                              (let ()
                                (declare (not safe))
                                (cons _exn67350_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68408))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68407))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn67346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67346_))
            (let ((_e67348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67346_ 'exception))))
              (macro-not-in-compilation-context-exception? _e67348_))
            (macro-not-in-compilation-context-exception? _exn67346_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn67342_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67342_))
            (let ((_e67344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67342_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67344_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e67344_)
                  (let ((__tmp68413
                         (let ((__tmp68414
                                (let ()
                                  (declare (not safe))
                                  (cons _e67344_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68414))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68413))))
            (if (macro-not-in-compilation-context-exception? _exn67342_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn67342_)
                (let ((__tmp68411
                       (let ((__tmp68412
                              (let ()
                                (declare (not safe))
                                (cons _exn67342_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68412))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68411))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn67336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67336_))
            (let ((_e67339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67336_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67339_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e67339_)
                  (let ((__tmp68417
                         (let ((__tmp68418
                                (let ()
                                  (declare (not safe))
                                  (cons _e67339_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68418))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68417))))
            (if (macro-not-in-compilation-context-exception? _exn67336_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn67336_)
                (let ((__tmp68415
                       (let ((__tmp68416
                              (let ()
                                (declare (not safe))
                                (cons _exn67336_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68416))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68415))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn67332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67332_))
            (let ((_e67334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67332_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e67334_))
            (macro-number-of-arguments-limit-exception? _exn67332_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn67328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67328_))
            (let ((_e67330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67328_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67330_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e67330_)
                  (let ((__tmp68421
                         (let ((__tmp68422
                                (let ()
                                  (declare (not safe))
                                  (cons _e67330_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68422))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68421))))
            (if (macro-number-of-arguments-limit-exception? _exn67328_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn67328_)
                (let ((__tmp68419
                       (let ((__tmp68420
                              (let ()
                                (declare (not safe))
                                (cons _exn67328_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68420))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68419))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn67322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67322_))
            (let ((_e67325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67322_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67325_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e67325_)
                  (let ((__tmp68425
                         (let ((__tmp68426
                                (let ()
                                  (declare (not safe))
                                  (cons _e67325_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68426))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68425))))
            (if (macro-number-of-arguments-limit-exception? _exn67322_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn67322_)
                (let ((__tmp68423
                       (let ((__tmp68424
                              (let ()
                                (declare (not safe))
                                (cons _exn67322_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68424))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68423))))))
    (define os-exception?
      (lambda (_exn67318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67318_))
            (let ((_e67320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67318_ 'exception))))
              (macro-os-exception? _e67320_))
            (macro-os-exception? _exn67318_))))
    (define os-exception-arguments
      (lambda (_exn67314_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67314_))
            (let ((_e67316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67314_ 'exception))))
              (if (macro-os-exception? _e67316_)
                  (macro-os-exception-arguments _e67316_)
                  (let ((__tmp68429
                         (let ((__tmp68430
                                (let ()
                                  (declare (not safe))
                                  (cons _e67316_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68430))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68429))))
            (if (macro-os-exception? _exn67314_)
                (macro-os-exception-arguments _exn67314_)
                (let ((__tmp68427
                       (let ((__tmp68428
                              (let ()
                                (declare (not safe))
                                (cons _exn67314_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68428))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68427))))))
    (define os-exception-code
      (lambda (_exn67310_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67310_))
            (let ((_e67312_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67310_ 'exception))))
              (if (macro-os-exception? _e67312_)
                  (macro-os-exception-code _e67312_)
                  (let ((__tmp68433
                         (let ((__tmp68434
                                (let ()
                                  (declare (not safe))
                                  (cons _e67312_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68434))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68433))))
            (if (macro-os-exception? _exn67310_)
                (macro-os-exception-code _exn67310_)
                (let ((__tmp68431
                       (let ((__tmp68432
                              (let ()
                                (declare (not safe))
                                (cons _exn67310_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68432))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68431))))))
    (define os-exception-message
      (lambda (_exn67306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67306_))
            (let ((_e67308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67306_ 'exception))))
              (if (macro-os-exception? _e67308_)
                  (macro-os-exception-message _e67308_)
                  (let ((__tmp68437
                         (let ((__tmp68438
                                (let ()
                                  (declare (not safe))
                                  (cons _e67308_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68438))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68437))))
            (if (macro-os-exception? _exn67306_)
                (macro-os-exception-message _exn67306_)
                (let ((__tmp68435
                       (let ((__tmp68436
                              (let ()
                                (declare (not safe))
                                (cons _exn67306_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68436))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68435))))))
    (define os-exception-procedure
      (lambda (_exn67300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67300_))
            (let ((_e67303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67300_ 'exception))))
              (if (macro-os-exception? _e67303_)
                  (macro-os-exception-procedure _e67303_)
                  (let ((__tmp68441
                         (let ((__tmp68442
                                (let ()
                                  (declare (not safe))
                                  (cons _e67303_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68442))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68441))))
            (if (macro-os-exception? _exn67300_)
                (macro-os-exception-procedure _exn67300_)
                (let ((__tmp68439
                       (let ((__tmp68440
                              (let ()
                                (declare (not safe))
                                (cons _exn67300_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68440))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68439))))))
    (define permission-denied-exception?
      (lambda (_exn67296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67296_))
            (let ((_e67298_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67296_ 'exception))))
              (macro-permission-denied-exception? _e67298_))
            (macro-permission-denied-exception? _exn67296_))))
    (define permission-denied-exception-arguments
      (lambda (_exn67292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67292_))
            (let ((_e67294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67292_ 'exception))))
              (if (macro-permission-denied-exception? _e67294_)
                  (macro-permission-denied-exception-arguments _e67294_)
                  (let ((__tmp68445
                         (let ((__tmp68446
                                (let ()
                                  (declare (not safe))
                                  (cons _e67294_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68446))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68445))))
            (if (macro-permission-denied-exception? _exn67292_)
                (macro-permission-denied-exception-arguments _exn67292_)
                (let ((__tmp68443
                       (let ((__tmp68444
                              (let ()
                                (declare (not safe))
                                (cons _exn67292_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68444))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68443))))))
    (define permission-denied-exception-procedure
      (lambda (_exn67286_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67286_))
            (let ((_e67289_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67286_ 'exception))))
              (if (macro-permission-denied-exception? _e67289_)
                  (macro-permission-denied-exception-procedure _e67289_)
                  (let ((__tmp68449
                         (let ((__tmp68450
                                (let ()
                                  (declare (not safe))
                                  (cons _e67289_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68450))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68449))))
            (if (macro-permission-denied-exception? _exn67286_)
                (macro-permission-denied-exception-procedure _exn67286_)
                (let ((__tmp68447
                       (let ((__tmp68448
                              (let ()
                                (declare (not safe))
                                (cons _exn67286_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68448))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68447))))))
    (define range-exception?
      (lambda (_exn67282_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67282_))
            (let ((_e67284_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67282_ 'exception))))
              (macro-range-exception? _e67284_))
            (macro-range-exception? _exn67282_))))
    (define range-exception-arg-id
      (lambda (_exn67278_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67278_))
            (let ((_e67280_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67278_ 'exception))))
              (if (macro-range-exception? _e67280_)
                  (macro-range-exception-arg-id _e67280_)
                  (let ((__tmp68453
                         (let ((__tmp68454
                                (let ()
                                  (declare (not safe))
                                  (cons _e67280_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68454))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68453))))
            (if (macro-range-exception? _exn67278_)
                (macro-range-exception-arg-id _exn67278_)
                (let ((__tmp68451
                       (let ((__tmp68452
                              (let ()
                                (declare (not safe))
                                (cons _exn67278_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68452))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68451))))))
    (define range-exception-arguments
      (lambda (_exn67274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67274_))
            (let ((_e67276_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67274_ 'exception))))
              (if (macro-range-exception? _e67276_)
                  (macro-range-exception-arguments _e67276_)
                  (let ((__tmp68457
                         (let ((__tmp68458
                                (let ()
                                  (declare (not safe))
                                  (cons _e67276_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68458))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68457))))
            (if (macro-range-exception? _exn67274_)
                (macro-range-exception-arguments _exn67274_)
                (let ((__tmp68455
                       (let ((__tmp68456
                              (let ()
                                (declare (not safe))
                                (cons _exn67274_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68456))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68455))))))
    (define range-exception-procedure
      (lambda (_exn67268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67268_))
            (let ((_e67271_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67268_ 'exception))))
              (if (macro-range-exception? _e67271_)
                  (macro-range-exception-procedure _e67271_)
                  (let ((__tmp68461
                         (let ((__tmp68462
                                (let ()
                                  (declare (not safe))
                                  (cons _e67271_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68462))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68461))))
            (if (macro-range-exception? _exn67268_)
                (macro-range-exception-procedure _exn67268_)
                (let ((__tmp68459
                       (let ((__tmp68460
                              (let ()
                                (declare (not safe))
                                (cons _exn67268_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68460))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68459))))))
    (define rpc-remote-error-exception?
      (lambda (_exn67264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67264_))
            (let ((_e67266_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67264_ 'exception))))
              (macro-rpc-remote-error-exception? _e67266_))
            (macro-rpc-remote-error-exception? _exn67264_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn67260_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67260_))
            (let ((_e67262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67260_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67262_)
                  (macro-rpc-remote-error-exception-arguments _e67262_)
                  (let ((__tmp68465
                         (let ((__tmp68466
                                (let ()
                                  (declare (not safe))
                                  (cons _e67262_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68466))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68465))))
            (if (macro-rpc-remote-error-exception? _exn67260_)
                (macro-rpc-remote-error-exception-arguments _exn67260_)
                (let ((__tmp68463
                       (let ((__tmp68464
                              (let ()
                                (declare (not safe))
                                (cons _exn67260_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68464))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68463))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn67256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67256_))
            (let ((_e67258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67256_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67258_)
                  (macro-rpc-remote-error-exception-message _e67258_)
                  (let ((__tmp68469
                         (let ((__tmp68470
                                (let ()
                                  (declare (not safe))
                                  (cons _e67258_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68470))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68469))))
            (if (macro-rpc-remote-error-exception? _exn67256_)
                (macro-rpc-remote-error-exception-message _exn67256_)
                (let ((__tmp68467
                       (let ((__tmp68468
                              (let ()
                                (declare (not safe))
                                (cons _exn67256_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68468))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68467))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn67250_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67250_))
            (let ((_e67253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67250_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67253_)
                  (macro-rpc-remote-error-exception-procedure _e67253_)
                  (let ((__tmp68473
                         (let ((__tmp68474
                                (let ()
                                  (declare (not safe))
                                  (cons _e67253_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68474))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68473))))
            (if (macro-rpc-remote-error-exception? _exn67250_)
                (macro-rpc-remote-error-exception-procedure _exn67250_)
                (let ((__tmp68471
                       (let ((__tmp68472
                              (let ()
                                (declare (not safe))
                                (cons _exn67250_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68472))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68471))))))
    (define scheduler-exception?
      (lambda (_exn67246_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67246_))
            (let ((_e67248_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67246_ 'exception))))
              (macro-scheduler-exception? _e67248_))
            (macro-scheduler-exception? _exn67246_))))
    (define scheduler-exception-reason
      (lambda (_exn67240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67240_))
            (let ((_e67243_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67240_ 'exception))))
              (if (macro-scheduler-exception? _e67243_)
                  (macro-scheduler-exception-reason _e67243_)
                  (let ((__tmp68477
                         (let ((__tmp68478
                                (let ()
                                  (declare (not safe))
                                  (cons _e67243_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68478))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68477))))
            (if (macro-scheduler-exception? _exn67240_)
                (macro-scheduler-exception-reason _exn67240_)
                (let ((__tmp68475
                       (let ((__tmp68476
                              (let ()
                                (declare (not safe))
                                (cons _exn67240_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68476))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68475))))))
    (define sfun-conversion-exception?
      (lambda (_exn67236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67236_))
            (let ((_e67238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67236_ 'exception))))
              (macro-sfun-conversion-exception? _e67238_))
            (macro-sfun-conversion-exception? _exn67236_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn67232_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67232_))
            (let ((_e67234_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67232_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67234_)
                  (macro-sfun-conversion-exception-arguments _e67234_)
                  (let ((__tmp68481
                         (let ((__tmp68482
                                (let ()
                                  (declare (not safe))
                                  (cons _e67234_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68482))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68481))))
            (if (macro-sfun-conversion-exception? _exn67232_)
                (macro-sfun-conversion-exception-arguments _exn67232_)
                (let ((__tmp68479
                       (let ((__tmp68480
                              (let ()
                                (declare (not safe))
                                (cons _exn67232_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68480))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68479))))))
    (define sfun-conversion-exception-code
      (lambda (_exn67228_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67228_))
            (let ((_e67230_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67228_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67230_)
                  (macro-sfun-conversion-exception-code _e67230_)
                  (let ((__tmp68485
                         (let ((__tmp68486
                                (let ()
                                  (declare (not safe))
                                  (cons _e67230_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68486))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68485))))
            (if (macro-sfun-conversion-exception? _exn67228_)
                (macro-sfun-conversion-exception-code _exn67228_)
                (let ((__tmp68483
                       (let ((__tmp68484
                              (let ()
                                (declare (not safe))
                                (cons _exn67228_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68484))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68483))))))
    (define sfun-conversion-exception-message
      (lambda (_exn67224_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67224_))
            (let ((_e67226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67224_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67226_)
                  (macro-sfun-conversion-exception-message _e67226_)
                  (let ((__tmp68489
                         (let ((__tmp68490
                                (let ()
                                  (declare (not safe))
                                  (cons _e67226_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68490))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68489))))
            (if (macro-sfun-conversion-exception? _exn67224_)
                (macro-sfun-conversion-exception-message _exn67224_)
                (let ((__tmp68487
                       (let ((__tmp68488
                              (let ()
                                (declare (not safe))
                                (cons _exn67224_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68488))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68487))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn67218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67218_))
            (let ((_e67221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67218_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67221_)
                  (macro-sfun-conversion-exception-procedure _e67221_)
                  (let ((__tmp68493
                         (let ((__tmp68494
                                (let ()
                                  (declare (not safe))
                                  (cons _e67221_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68494))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68493))))
            (if (macro-sfun-conversion-exception? _exn67218_)
                (macro-sfun-conversion-exception-procedure _exn67218_)
                (let ((__tmp68491
                       (let ((__tmp68492
                              (let ()
                                (declare (not safe))
                                (cons _exn67218_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68492))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68491))))))
    (define stack-overflow-exception?
      (lambda (_exn67212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67212_))
            (let ((_e67215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67212_ 'exception))))
              (macro-stack-overflow-exception? _e67215_))
            (macro-stack-overflow-exception? _exn67212_))))
    (define started-thread-exception?
      (lambda (_exn67208_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67208_))
            (let ((_e67210_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67208_ 'exception))))
              (macro-started-thread-exception? _e67210_))
            (macro-started-thread-exception? _exn67208_))))
    (define started-thread-exception-arguments
      (lambda (_exn67204_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67204_))
            (let ((_e67206_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67204_ 'exception))))
              (if (macro-started-thread-exception? _e67206_)
                  (macro-started-thread-exception-arguments _e67206_)
                  (let ((__tmp68497
                         (let ((__tmp68498
                                (let ()
                                  (declare (not safe))
                                  (cons _e67206_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68498))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68497))))
            (if (macro-started-thread-exception? _exn67204_)
                (macro-started-thread-exception-arguments _exn67204_)
                (let ((__tmp68495
                       (let ((__tmp68496
                              (let ()
                                (declare (not safe))
                                (cons _exn67204_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68496))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68495))))))
    (define started-thread-exception-procedure
      (lambda (_exn67198_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67198_))
            (let ((_e67201_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67198_ 'exception))))
              (if (macro-started-thread-exception? _e67201_)
                  (macro-started-thread-exception-procedure _e67201_)
                  (let ((__tmp68501
                         (let ((__tmp68502
                                (let ()
                                  (declare (not safe))
                                  (cons _e67201_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68502))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68501))))
            (if (macro-started-thread-exception? _exn67198_)
                (macro-started-thread-exception-procedure _exn67198_)
                (let ((__tmp68499
                       (let ((__tmp68500
                              (let ()
                                (declare (not safe))
                                (cons _exn67198_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68500))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68499))))))
    (define terminated-thread-exception?
      (lambda (_exn67194_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67194_))
            (let ((_e67196_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67194_ 'exception))))
              (macro-terminated-thread-exception? _e67196_))
            (macro-terminated-thread-exception? _exn67194_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn67190_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67190_))
            (let ((_e67192_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67190_ 'exception))))
              (if (macro-terminated-thread-exception? _e67192_)
                  (macro-terminated-thread-exception-arguments _e67192_)
                  (let ((__tmp68505
                         (let ((__tmp68506
                                (let ()
                                  (declare (not safe))
                                  (cons _e67192_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68506))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68505))))
            (if (macro-terminated-thread-exception? _exn67190_)
                (macro-terminated-thread-exception-arguments _exn67190_)
                (let ((__tmp68503
                       (let ((__tmp68504
                              (let ()
                                (declare (not safe))
                                (cons _exn67190_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68504))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68503))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn67184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67184_))
            (let ((_e67187_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67184_ 'exception))))
              (if (macro-terminated-thread-exception? _e67187_)
                  (macro-terminated-thread-exception-procedure _e67187_)
                  (let ((__tmp68509
                         (let ((__tmp68510
                                (let ()
                                  (declare (not safe))
                                  (cons _e67187_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68510))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68509))))
            (if (macro-terminated-thread-exception? _exn67184_)
                (macro-terminated-thread-exception-procedure _exn67184_)
                (let ((__tmp68507
                       (let ((__tmp68508
                              (let ()
                                (declare (not safe))
                                (cons _exn67184_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68508))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68507))))))
    (define type-exception?
      (lambda (_exn67180_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67180_))
            (let ((_e67182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67180_ 'exception))))
              (macro-type-exception? _e67182_))
            (macro-type-exception? _exn67180_))))
    (define type-exception-arg-id
      (lambda (_exn67176_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67176_))
            (let ((_e67178_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67176_ 'exception))))
              (if (macro-type-exception? _e67178_)
                  (macro-type-exception-arg-id _e67178_)
                  (let ((__tmp68513
                         (let ((__tmp68514
                                (let ()
                                  (declare (not safe))
                                  (cons _e67178_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68514))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68513))))
            (if (macro-type-exception? _exn67176_)
                (macro-type-exception-arg-id _exn67176_)
                (let ((__tmp68511
                       (let ((__tmp68512
                              (let ()
                                (declare (not safe))
                                (cons _exn67176_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68512))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68511))))))
    (define type-exception-arguments
      (lambda (_exn67172_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67172_))
            (let ((_e67174_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67172_ 'exception))))
              (if (macro-type-exception? _e67174_)
                  (macro-type-exception-arguments _e67174_)
                  (let ((__tmp68517
                         (let ((__tmp68518
                                (let ()
                                  (declare (not safe))
                                  (cons _e67174_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68518))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68517))))
            (if (macro-type-exception? _exn67172_)
                (macro-type-exception-arguments _exn67172_)
                (let ((__tmp68515
                       (let ((__tmp68516
                              (let ()
                                (declare (not safe))
                                (cons _exn67172_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68516))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68515))))))
    (define type-exception-procedure
      (lambda (_exn67168_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67168_))
            (let ((_e67170_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67168_ 'exception))))
              (if (macro-type-exception? _e67170_)
                  (macro-type-exception-procedure _e67170_)
                  (let ((__tmp68521
                         (let ((__tmp68522
                                (let ()
                                  (declare (not safe))
                                  (cons _e67170_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68522))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68521))))
            (if (macro-type-exception? _exn67168_)
                (macro-type-exception-procedure _exn67168_)
                (let ((__tmp68519
                       (let ((__tmp68520
                              (let ()
                                (declare (not safe))
                                (cons _exn67168_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68520))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68519))))))
    (define type-exception-type-id
      (lambda (_exn67162_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67162_))
            (let ((_e67165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67162_ 'exception))))
              (if (macro-type-exception? _e67165_)
                  (macro-type-exception-type-id _e67165_)
                  (let ((__tmp68525
                         (let ((__tmp68526
                                (let ()
                                  (declare (not safe))
                                  (cons _e67165_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68526))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68525))))
            (if (macro-type-exception? _exn67162_)
                (macro-type-exception-type-id _exn67162_)
                (let ((__tmp68523
                       (let ((__tmp68524
                              (let ()
                                (declare (not safe))
                                (cons _exn67162_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68524))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68523))))))
    (define unbound-global-exception?
      (lambda (_exn67158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67158_))
            (let ((_e67160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67158_ 'exception))))
              (macro-unbound-global-exception? _e67160_))
            (macro-unbound-global-exception? _exn67158_))))
    (define unbound-global-exception-code
      (lambda (_exn67154_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67154_))
            (let ((_e67156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67154_ 'exception))))
              (if (macro-unbound-global-exception? _e67156_)
                  (macro-unbound-global-exception-code _e67156_)
                  (let ((__tmp68529
                         (let ((__tmp68530
                                (let ()
                                  (declare (not safe))
                                  (cons _e67156_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68530))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68529))))
            (if (macro-unbound-global-exception? _exn67154_)
                (macro-unbound-global-exception-code _exn67154_)
                (let ((__tmp68527
                       (let ((__tmp68528
                              (let ()
                                (declare (not safe))
                                (cons _exn67154_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68528))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68527))))))
    (define unbound-global-exception-rte
      (lambda (_exn67150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67150_))
            (let ((_e67152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67150_ 'exception))))
              (if (macro-unbound-global-exception? _e67152_)
                  (macro-unbound-global-exception-rte _e67152_)
                  (let ((__tmp68533
                         (let ((__tmp68534
                                (let ()
                                  (declare (not safe))
                                  (cons _e67152_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68534))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68533))))
            (if (macro-unbound-global-exception? _exn67150_)
                (macro-unbound-global-exception-rte _exn67150_)
                (let ((__tmp68531
                       (let ((__tmp68532
                              (let ()
                                (declare (not safe))
                                (cons _exn67150_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68532))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68531))))))
    (define unbound-global-exception-variable
      (lambda (_exn67144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67144_))
            (let ((_e67147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67144_ 'exception))))
              (if (macro-unbound-global-exception? _e67147_)
                  (macro-unbound-global-exception-variable _e67147_)
                  (let ((__tmp68537
                         (let ((__tmp68538
                                (let ()
                                  (declare (not safe))
                                  (cons _e67147_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68538))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68537))))
            (if (macro-unbound-global-exception? _exn67144_)
                (macro-unbound-global-exception-variable _exn67144_)
                (let ((__tmp68535
                       (let ((__tmp68536
                              (let ()
                                (declare (not safe))
                                (cons _exn67144_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68536))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68535))))))
    (define unbound-key-exception?
      (lambda (_exn67140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67140_))
            (let ((_e67142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67140_ 'exception))))
              (macro-unbound-key-exception? _e67142_))
            (macro-unbound-key-exception? _exn67140_))))
    (define unbound-key-exception-arguments
      (lambda (_exn67136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67136_))
            (let ((_e67138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67136_ 'exception))))
              (if (macro-unbound-key-exception? _e67138_)
                  (macro-unbound-key-exception-arguments _e67138_)
                  (let ((__tmp68541
                         (let ((__tmp68542
                                (let ()
                                  (declare (not safe))
                                  (cons _e67138_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68542))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68541))))
            (if (macro-unbound-key-exception? _exn67136_)
                (macro-unbound-key-exception-arguments _exn67136_)
                (let ((__tmp68539
                       (let ((__tmp68540
                              (let ()
                                (declare (not safe))
                                (cons _exn67136_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68540))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68539))))))
    (define unbound-key-exception-procedure
      (lambda (_exn67130_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67130_))
            (let ((_e67133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67130_ 'exception))))
              (if (macro-unbound-key-exception? _e67133_)
                  (macro-unbound-key-exception-procedure _e67133_)
                  (let ((__tmp68545
                         (let ((__tmp68546
                                (let ()
                                  (declare (not safe))
                                  (cons _e67133_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68546))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68545))))
            (if (macro-unbound-key-exception? _exn67130_)
                (macro-unbound-key-exception-procedure _exn67130_)
                (let ((__tmp68543
                       (let ((__tmp68544
                              (let ()
                                (declare (not safe))
                                (cons _exn67130_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68544))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68543))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn67126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67126_))
            (let ((_e67128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67126_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e67128_))
            (macro-unbound-os-environment-variable-exception? _exn67126_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn67122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67122_))
            (let ((_e67124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67122_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67124_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e67124_)
                  (let ((__tmp68549
                         (let ((__tmp68550
                                (let ()
                                  (declare (not safe))
                                  (cons _e67124_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68550))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68549))))
            (if (macro-unbound-os-environment-variable-exception? _exn67122_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn67122_)
                (let ((__tmp68547
                       (let ((__tmp68548
                              (let ()
                                (declare (not safe))
                                (cons _exn67122_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68548))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68547))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn67116_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67116_))
            (let ((_e67119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67116_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67119_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e67119_)
                  (let ((__tmp68553
                         (let ((__tmp68554
                                (let ()
                                  (declare (not safe))
                                  (cons _e67119_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68554))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68553))))
            (if (macro-unbound-os-environment-variable-exception? _exn67116_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn67116_)
                (let ((__tmp68551
                       (let ((__tmp68552
                              (let ()
                                (declare (not safe))
                                (cons _exn67116_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68552))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68551))))))
    (define unbound-serial-number-exception?
      (lambda (_exn67112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67112_))
            (let ((_e67114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67112_ 'exception))))
              (macro-unbound-serial-number-exception? _e67114_))
            (macro-unbound-serial-number-exception? _exn67112_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn67108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67108_))
            (let ((_e67110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67108_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67110_)
                  (macro-unbound-serial-number-exception-arguments _e67110_)
                  (let ((__tmp68557
                         (let ((__tmp68558
                                (let ()
                                  (declare (not safe))
                                  (cons _e67110_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68558))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68557))))
            (if (macro-unbound-serial-number-exception? _exn67108_)
                (macro-unbound-serial-number-exception-arguments _exn67108_)
                (let ((__tmp68555
                       (let ((__tmp68556
                              (let ()
                                (declare (not safe))
                                (cons _exn67108_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68556))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68555))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn67102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67102_))
            (let ((_e67105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67102_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67105_)
                  (macro-unbound-serial-number-exception-procedure _e67105_)
                  (let ((__tmp68561
                         (let ((__tmp68562
                                (let ()
                                  (declare (not safe))
                                  (cons _e67105_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68562))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68561))))
            (if (macro-unbound-serial-number-exception? _exn67102_)
                (macro-unbound-serial-number-exception-procedure _exn67102_)
                (let ((__tmp68559
                       (let ((__tmp68560
                              (let ()
                                (declare (not safe))
                                (cons _exn67102_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68560))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68559))))))
    (define uncaught-exception?
      (lambda (_exn67098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67098_))
            (let ((_e67100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67098_ 'exception))))
              (macro-uncaught-exception? _e67100_))
            (macro-uncaught-exception? _exn67098_))))
    (define uncaught-exception-arguments
      (lambda (_exn67094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67094_))
            (let ((_e67096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67094_ 'exception))))
              (if (macro-uncaught-exception? _e67096_)
                  (macro-uncaught-exception-arguments _e67096_)
                  (let ((__tmp68565
                         (let ((__tmp68566
                                (let ()
                                  (declare (not safe))
                                  (cons _e67096_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68566))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68565))))
            (if (macro-uncaught-exception? _exn67094_)
                (macro-uncaught-exception-arguments _exn67094_)
                (let ((__tmp68563
                       (let ((__tmp68564
                              (let ()
                                (declare (not safe))
                                (cons _exn67094_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68564))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68563))))))
    (define uncaught-exception-procedure
      (lambda (_exn67090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67090_))
            (let ((_e67092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67090_ 'exception))))
              (if (macro-uncaught-exception? _e67092_)
                  (macro-uncaught-exception-procedure _e67092_)
                  (let ((__tmp68569
                         (let ((__tmp68570
                                (let ()
                                  (declare (not safe))
                                  (cons _e67092_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68570))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68569))))
            (if (macro-uncaught-exception? _exn67090_)
                (macro-uncaught-exception-procedure _exn67090_)
                (let ((__tmp68567
                       (let ((__tmp68568
                              (let ()
                                (declare (not safe))
                                (cons _exn67090_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68568))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68567))))))
    (define uncaught-exception-reason
      (lambda (_exn67084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67084_))
            (let ((_e67087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67084_ 'exception))))
              (if (macro-uncaught-exception? _e67087_)
                  (macro-uncaught-exception-reason _e67087_)
                  (let ((__tmp68573
                         (let ((__tmp68574
                                (let ()
                                  (declare (not safe))
                                  (cons _e67087_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68574))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68573))))
            (if (macro-uncaught-exception? _exn67084_)
                (macro-uncaught-exception-reason _exn67084_)
                (let ((__tmp68571
                       (let ((__tmp68572
                              (let ()
                                (declare (not safe))
                                (cons _exn67084_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68572))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68571))))))
    (define uninitialized-thread-exception?
      (lambda (_exn67080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67080_))
            (let ((_e67082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67080_ 'exception))))
              (macro-uninitialized-thread-exception? _e67082_))
            (macro-uninitialized-thread-exception? _exn67080_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn67076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67076_))
            (let ((_e67078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67076_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67078_)
                  (macro-uninitialized-thread-exception-arguments _e67078_)
                  (let ((__tmp68577
                         (let ((__tmp68578
                                (let ()
                                  (declare (not safe))
                                  (cons _e67078_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68578))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68577))))
            (if (macro-uninitialized-thread-exception? _exn67076_)
                (macro-uninitialized-thread-exception-arguments _exn67076_)
                (let ((__tmp68575
                       (let ((__tmp68576
                              (let ()
                                (declare (not safe))
                                (cons _exn67076_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68576))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68575))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn67070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67070_))
            (let ((_e67073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67070_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67073_)
                  (macro-uninitialized-thread-exception-procedure _e67073_)
                  (let ((__tmp68581
                         (let ((__tmp68582
                                (let ()
                                  (declare (not safe))
                                  (cons _e67073_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68582))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68581))))
            (if (macro-uninitialized-thread-exception? _exn67070_)
                (macro-uninitialized-thread-exception-procedure _exn67070_)
                (let ((__tmp68579
                       (let ((__tmp68580
                              (let ()
                                (declare (not safe))
                                (cons _exn67070_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68580))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68579))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn67066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67066_))
            (let ((_e67068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67066_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e67068_))
            (macro-unknown-keyword-argument-exception? _exn67066_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn67062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67062_))
            (let ((_e67064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67062_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67064_)
                  (macro-unknown-keyword-argument-exception-arguments _e67064_)
                  (let ((__tmp68585
                         (let ((__tmp68586
                                (let ()
                                  (declare (not safe))
                                  (cons _e67064_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68586))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68585))))
            (if (macro-unknown-keyword-argument-exception? _exn67062_)
                (macro-unknown-keyword-argument-exception-arguments _exn67062_)
                (let ((__tmp68583
                       (let ((__tmp68584
                              (let ()
                                (declare (not safe))
                                (cons _exn67062_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68584))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68583))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn67056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67056_))
            (let ((_e67059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67056_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67059_)
                  (macro-unknown-keyword-argument-exception-procedure _e67059_)
                  (let ((__tmp68589
                         (let ((__tmp68590
                                (let ()
                                  (declare (not safe))
                                  (cons _e67059_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68590))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68589))))
            (if (macro-unknown-keyword-argument-exception? _exn67056_)
                (macro-unknown-keyword-argument-exception-procedure _exn67056_)
                (let ((__tmp68587
                       (let ((__tmp68588
                              (let ()
                                (declare (not safe))
                                (cons _exn67056_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68588))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68587))))))
    (define unterminated-process-exception?
      (lambda (_exn67052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67052_))
            (let ((_e67054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67052_ 'exception))))
              (macro-unterminated-process-exception? _e67054_))
            (macro-unterminated-process-exception? _exn67052_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn67048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67048_))
            (let ((_e67050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67048_ 'exception))))
              (if (macro-unterminated-process-exception? _e67050_)
                  (macro-unterminated-process-exception-arguments _e67050_)
                  (let ((__tmp68593
                         (let ((__tmp68594
                                (let ()
                                  (declare (not safe))
                                  (cons _e67050_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68594))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68593))))
            (if (macro-unterminated-process-exception? _exn67048_)
                (macro-unterminated-process-exception-arguments _exn67048_)
                (let ((__tmp68591
                       (let ((__tmp68592
                              (let ()
                                (declare (not safe))
                                (cons _exn67048_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68592))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68591))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn67042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67042_))
            (let ((_e67045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67042_ 'exception))))
              (if (macro-unterminated-process-exception? _e67045_)
                  (macro-unterminated-process-exception-procedure _e67045_)
                  (let ((__tmp68597
                         (let ((__tmp68598
                                (let ()
                                  (declare (not safe))
                                  (cons _e67045_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68598))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68597))))
            (if (macro-unterminated-process-exception? _exn67042_)
                (macro-unterminated-process-exception-procedure _exn67042_)
                (let ((__tmp68595
                       (let ((__tmp68596
                              (let ()
                                (declare (not safe))
                                (cons _exn67042_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68596))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68595))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn67038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67038_))
            (let ((_e67040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67038_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e67040_))
            (macro-wrong-number-of-arguments-exception? _exn67038_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn67034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67034_))
            (let ((_e67036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67034_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67036_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e67036_)
                  (let ((__tmp68601
                         (let ((__tmp68602
                                (let ()
                                  (declare (not safe))
                                  (cons _e67036_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68602))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68601))))
            (if (macro-wrong-number-of-arguments-exception? _exn67034_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn67034_)
                (let ((__tmp68599
                       (let ((__tmp68600
                              (let ()
                                (declare (not safe))
                                (cons _exn67034_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68600))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68599))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn67028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67028_))
            (let ((_e67031_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67028_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67031_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e67031_)
                  (let ((__tmp68605
                         (let ((__tmp68606
                                (let ()
                                  (declare (not safe))
                                  (cons _e67031_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68606))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68605))))
            (if (macro-wrong-number-of-arguments-exception? _exn67028_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn67028_)
                (let ((__tmp68603
                       (let ((__tmp68604
                              (let ()
                                (declare (not safe))
                                (cons _exn67028_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68604))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68603))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn67024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67024_))
            (let ((_e67026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67024_ 'exception))))
              (macro-wrong-number-of-values-exception? _e67026_))
            (macro-wrong-number-of-values-exception? _exn67024_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn67020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67020_))
            (let ((_e67022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67020_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67022_)
                  (macro-wrong-number-of-values-exception-code _e67022_)
                  (let ((__tmp68609
                         (let ((__tmp68610
                                (let ()
                                  (declare (not safe))
                                  (cons _e67022_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68610))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68609))))
            (if (macro-wrong-number-of-values-exception? _exn67020_)
                (macro-wrong-number-of-values-exception-code _exn67020_)
                (let ((__tmp68607
                       (let ((__tmp68608
                              (let ()
                                (declare (not safe))
                                (cons _exn67020_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68608))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68607))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn67016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67016_))
            (let ((_e67018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67016_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67018_)
                  (macro-wrong-number-of-values-exception-rte _e67018_)
                  (let ((__tmp68613
                         (let ((__tmp68614
                                (let ()
                                  (declare (not safe))
                                  (cons _e67018_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68614))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68613))))
            (if (macro-wrong-number-of-values-exception? _exn67016_)
                (macro-wrong-number-of-values-exception-rte _exn67016_)
                (let ((__tmp68611
                       (let ((__tmp68612
                              (let ()
                                (declare (not safe))
                                (cons _exn67016_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68612))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68611))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn67010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67010_))
            (let ((_e67013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67010_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67013_)
                  (macro-wrong-number-of-values-exception-vals _e67013_)
                  (let ((__tmp68617
                         (let ((__tmp68618
                                (let ()
                                  (declare (not safe))
                                  (cons _e67013_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68618))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68617))))
            (if (macro-wrong-number-of-values-exception? _exn67010_)
                (macro-wrong-number-of-values-exception-vals _exn67010_)
                (let ((__tmp68615
                       (let ((__tmp68616
                              (let ()
                                (declare (not safe))
                                (cons _exn67010_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68616))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68615))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn67004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67004_))
            (let ((_e67007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67004_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e67007_))
            (macro-wrong-processor-c-return-exception? _exn67004_))))))
