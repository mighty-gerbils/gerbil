(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1711108654)
  (begin
    (define Exception::t
      (let ((__tmp68192 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp68192
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args68160_ (apply make-instance Exception::t _$args68160_)))
    (define StackTrace::t
      (let ((__tmp68193 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp68193
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args68157_ (apply make-instance StackTrace::t _$args68157_)))
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
      (let ((__tmp68194 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp68194
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args68154_ (apply make-instance Error::t _$args68154_)))
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
      (let ((__tmp68195 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp68195
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args68151_
        (apply make-instance RuntimeException::t _$args68151_)))
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
      (lambda (_exn68146_ _continue68147_)
        (let ((_exn68149_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn68146_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn68149_ _continue68147_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn68142_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn68142_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn68142_ 'continuation))
                '#!void
                (let ((__tmp68196
                       (lambda (_cont68144_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn68142_
                            'continuation
                            _cont68144_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp68196)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn68142_))))
    (define error
      (lambda (_message68139_ . _irritants68140_)
        (raise (let ((__obj68186
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj68186
                  _message68139_
                  'irritants:
                  _irritants68140_)
                 __obj68186))))
    (define with-exception-handler
      (lambda (_handler68132_ _thunk68133_)
        (if (let () (declare (not safe)) (procedure? _handler68132_))
            '#!void
            (raise (let ((__obj68187
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68187
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68132_ '())))
                     __obj68187)))
        (if (let () (declare (not safe)) (procedure? _thunk68133_))
            '#!void
            (raise (let ((__obj68188
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68188
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68133_ '())))
                     __obj68188)))
        (let ((__tmp68197
               (lambda (_exn68135_)
                 (let ((_exn68137_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn68135_))))
                   (_handler68132_ _exn68137_)))))
          (declare (not safe))
          (##with-exception-handler __tmp68197 _thunk68133_))))
    (define with-catch
      (lambda (_handler68125_ _thunk68126_)
        (if (let () (declare (not safe)) (procedure? _handler68125_))
            '#!void
            (raise (let ((__obj68189
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68189
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68125_ '())))
                     __obj68189)))
        (if (let () (declare (not safe)) (procedure? _thunk68126_))
            '#!void
            (raise (let ((__obj68190
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68190
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68126_ '())))
                     __obj68190)))
        (let ((__tmp68198
               (lambda (_cont68128_)
                 (with-exception-handler
                  (lambda (_exn68130_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont68128_
                       _handler68125_
                       _exn68130_)))
                  _thunk68126_))))
          (declare (not safe))
          (##continuation-capture __tmp68198))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn68116_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn68116_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn68116_)))
            _exn68116_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn68116_))
                _exn68116_
                (if (macro-exception? _exn68116_)
                    (let ((_rte68121_
                           (let ((__obj68191
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj68191
                                _exn68116_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj68191)))
                      (let ((__tmp68199
                             (lambda (_cont68123_)
                               (let ((__tmp68200
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont68123_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte68121_
                                  'continuation
                                  __tmp68200)))))
                        (declare (not safe))
                        (##continuation-capture __tmp68199))
                      _rte68121_)
                    _exn68116_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj68111_)
        (let ((_$e68113_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj68111_))))
          (if _$e68113_
              _$e68113_
              (let () (declare (not safe)) (error-exception? _obj68111_))))))
    (define error-message
      (lambda (_obj68109_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68109_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68109_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj68109_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj68109_))
                '#f))))
    (define error-irritants
      (lambda (_obj68107_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68107_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68107_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj68107_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj68107_))
                '#f))))
    (define error-trace
      (lambda (_obj68105_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68105_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68105_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e68087_ _port68088_)
        (let ((_$e68090_
               (let ()
                 (declare (not safe))
                 (method-ref _e68087_ 'display-exception))))
          (if _$e68090_
              ((lambda (_f68093_) (_f68093_ _e68087_ _port68088_)) _$e68090_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e68087_ _port68088_))))))
    (define display-exception__0
      (lambda (_e68098_)
        (let ((_port68100_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e68098_ _port68100_))))
    (define display-exception
      (lambda _g68202_
        (let ((_g68201_ (let () (declare (not safe)) (##length _g68202_))))
          (cond ((let () (declare (not safe)) (##fx= _g68201_ 1))
                 (apply (lambda (_e68098_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e68098_)))
                        _g68202_))
                ((let () (declare (not safe)) (##fx= _g68201_ 2))
                 (apply (lambda (_e68102_ _port68103_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e68102_ _port68103_)))
                        _g68202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g68202_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self68076_ _message68077_ . _rest68078_)
        (let ((_message68084_
               (if (let () (declare (not safe)) (string? _message68077_))
                   _message68077_
                   (call-with-output-string
                    '""
                    (lambda (_g6807968081_)
                      (display _message68077_ _g6807968081_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self68076_ 'message _message68084_))
          (apply class-instance-init! _self68076_ _rest68078_))))
    (define Error:::init!::specialize
      (lambda (__klass68162 __method-table68163)
        (let ((__message68164
               (let ((__slot68165
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68162 'message))))
                 (if __slot68165
                     __slot68165
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self68076_ _message68077_ . _rest68078_)
            (let ((_message68084_
                   (if (let () (declare (not safe)) (string? _message68077_))
                       _message68077_
                       (call-with-output-string
                        '""
                        (lambda (_g6807968081_)
                          (display _message68077_ _g6807968081_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self68076_
                 _message68084_
                 __message68164
                 __klass68162
                 '#f))
              (apply class-instance-init! _self68076_ _rest68078_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67934_ _port67935_)
        (let ((_tmp-port67937_ (open-output-string))
              (_display-error-newline67938_
               (> (output-port-column _port67935_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67937_))
          (let ((__tmp68203
                 (lambda ()
                   (if _display-error-newline67938_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67941_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67934_ 'where))))
                     (if _$e67941_ (display _$e67941_) (display '"?")))
                   (let ((__tmp68204
                          (let ((__tmp68205
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self67934_))))
                            (declare (not safe))
                            (##type-name __tmp68205))))
                     (declare (not safe))
                     (display* '" [" __tmp68204 '"]: "))
                   (let ((__tmp68206
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67934_ 'message))))
                     (declare (not safe))
                     (displayln __tmp68206))
                   (let ((_irritants67944_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67934_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67944_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67946_)
                              (write _obj67946_)
                              (write-char '#\space))
                            _irritants67944_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67934_))
                            (dump-stack-trace?))
                       (let ((_cont6794767949_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67934_
                                 'continuation))))
                         (if _cont6794767949_
                             (let ((_cont67952_ _cont6794767949_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67952_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp68203
             current-output-port
             _tmp-port67937_))
          (let ((__tmp68207 (get-output-string _tmp-port67937_)))
            (declare (not safe))
            (##write-string __tmp68207 _port67935_)))))
    (define Error::display-exception::specialize
      (lambda (__klass68166 __method-table68167)
        (let ((__irritants68168
               (let ((__slot68172
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68166 'irritants))))
                 (if __slot68172
                     __slot68172
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation68169
               (let ((__slot68173
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68166 'continuation))))
                 (if __slot68173
                     __slot68173
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where68170
               (let ((__slot68174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68166 'where))))
                 (if __slot68174
                     __slot68174
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__message68171
               (let ((__slot68175
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68166 'message))))
                 (if __slot68175
                     __slot68175
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self67934_ _port67935_)
            (let ((_tmp-port67937_ (open-output-string))
                  (_display-error-newline67938_
                   (> (output-port-column _port67935_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67937_))
              (let ((__tmp68208
                     (lambda ()
                       (if _display-error-newline67938_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67941_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67934_
                                 __where68170
                                 __klass68166
                                 '#f))))
                         (if _$e67941_ (display _$e67941_) (display '"?")))
                       (let ((__tmp68209
                              (let ((__tmp68210
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self67934_))))
                                (declare (not safe))
                                (##type-name __tmp68210))))
                         (declare (not safe))
                         (display* '" [" __tmp68209 '"]: "))
                       (let ((__tmp68211
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67934_
                                 __message68171
                                 __klass68166
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp68211))
                       (let ((_irritants67944_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67934_
                                 __irritants68168
                                 __klass68166
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67944_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67946_)
                                  (write _obj67946_)
                                  (write-char '#\space))
                                _irritants67944_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67934_))
                                (dump-stack-trace?))
                           (let ((_cont6794767949_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67934_
                                     __continuation68169
                                     __klass68166
                                     '#f))))
                             (if _cont6794767949_
                                 (let ((_cont67952_ _cont6794767949_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67952_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp68208
                 current-output-port
                 _tmp-port67937_))
              (let ((__tmp68212 (get-output-string _tmp-port67937_)))
                (declare (not safe))
                (##write-string __tmp68212 _port67935_)))))))
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
      (lambda (_self67801_ _port67802_)
        (let ((_tmp-port67804_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67804_))
          (let ((__tmp68213
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67801_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp68213 _tmp-port67804_))
          (if (dump-stack-trace?)
              (let ((_cont6780567807_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67801_ 'continuation))))
                (if _cont6780567807_
                    (let ((_cont67810_ _cont6780567807_))
                      (display '"--- continuation backtrace:" _tmp-port67804_)
                      (newline _tmp-port67804_)
                      (display-continuation-backtrace
                       _cont67810_
                       _tmp-port67804_))
                    '#f))
              '#!void)
          (let ((__tmp68214 (get-output-string _tmp-port67804_)))
            (declare (not safe))
            (##write-string __tmp68214 _port67802_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass68176 __method-table68177)
        (let ((__exception68178
               (let ((__slot68180
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68176 'exception))))
                 (if __slot68180
                     __slot68180
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation68179
               (let ((__slot68181
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68176 'continuation))))
                 (if __slot68181
                     __slot68181
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67801_ _port67802_)
            (let ((_tmp-port67804_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67804_))
              (let ((__tmp68215
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67801_
                        __exception68178
                        __klass68176
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp68215 _tmp-port67804_))
              (if (dump-stack-trace?)
                  (let ((_cont6780567807_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67801_
                            __continuation68179
                            __klass68176
                            '#f))))
                    (if _cont6780567807_
                        (let ((_cont67810_ _cont6780567807_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67804_)
                          (newline _tmp-port67804_)
                          (display-continuation-backtrace
                           _cont67810_
                           _tmp-port67804_))
                        '#f))
                  '#!void)
              (let ((__tmp68216 (get-output-string _tmp-port67804_)))
                (declare (not safe))
                (##write-string __tmp68216 _port67802_)))))))
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
      (lambda (_port67673_)
        (if (macro-character-port? _port67673_)
            (let ((_old-width67675_
                   (macro-character-port-output-width _port67673_)))
              (macro-character-port-output-width-set!
               _port67673_
               (lambda (_port67677_) '256))
              _old-width67675_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67670_ _old-width67671_)
        (if (macro-character-port? _port67670_)
            (macro-character-port-output-width-set!
             _port67670_
             _old-width67671_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67668_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67668_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67662_))
            (let ((_e67665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67662_ 'exception))))
              (macro-abandoned-mutex-exception? _e67665_))
            (macro-abandoned-mutex-exception? _exn67662_))))
    (define cfun-conversion-exception?
      (lambda (_exn67658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67658_))
            (let ((_e67660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67658_ 'exception))))
              (macro-cfun-conversion-exception? _e67660_))
            (macro-cfun-conversion-exception? _exn67658_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67654_))
            (let ((_e67656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67654_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67656_)
                  (macro-cfun-conversion-exception-arguments _e67656_)
                  (let ((__tmp68219
                         (let ((__tmp68220
                                (let ()
                                  (declare (not safe))
                                  (cons _e67656_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp68220))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68219))))
            (if (macro-cfun-conversion-exception? _exn67654_)
                (macro-cfun-conversion-exception-arguments _exn67654_)
                (let ((__tmp68217
                       (let ((__tmp68218
                              (let ()
                                (declare (not safe))
                                (cons _exn67654_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp68218))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68217))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67650_))
            (let ((_e67652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67650_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67652_)
                  (macro-cfun-conversion-exception-code _e67652_)
                  (let ((__tmp68223
                         (let ((__tmp68224
                                (let ()
                                  (declare (not safe))
                                  (cons _e67652_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp68224))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68223))))
            (if (macro-cfun-conversion-exception? _exn67650_)
                (macro-cfun-conversion-exception-code _exn67650_)
                (let ((__tmp68221
                       (let ((__tmp68222
                              (let ()
                                (declare (not safe))
                                (cons _exn67650_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp68222))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68221))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67646_))
            (let ((_e67648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67646_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67648_)
                  (macro-cfun-conversion-exception-message _e67648_)
                  (let ((__tmp68227
                         (let ((__tmp68228
                                (let ()
                                  (declare (not safe))
                                  (cons _e67648_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp68228))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68227))))
            (if (macro-cfun-conversion-exception? _exn67646_)
                (macro-cfun-conversion-exception-message _exn67646_)
                (let ((__tmp68225
                       (let ((__tmp68226
                              (let ()
                                (declare (not safe))
                                (cons _exn67646_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp68226))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68225))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67640_))
            (let ((_e67643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67640_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67643_)
                  (macro-cfun-conversion-exception-procedure _e67643_)
                  (let ((__tmp68231
                         (let ((__tmp68232
                                (let ()
                                  (declare (not safe))
                                  (cons _e67643_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp68232))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68231))))
            (if (macro-cfun-conversion-exception? _exn67640_)
                (macro-cfun-conversion-exception-procedure _exn67640_)
                (let ((__tmp68229
                       (let ((__tmp68230
                              (let ()
                                (declare (not safe))
                                (cons _exn67640_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp68230))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68229))))))
    (define datum-parsing-exception?
      (lambda (_exn67636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67636_))
            (let ((_e67638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67636_ 'exception))))
              (macro-datum-parsing-exception? _e67638_))
            (macro-datum-parsing-exception? _exn67636_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67632_))
            (let ((_e67634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67632_ 'exception))))
              (if (macro-datum-parsing-exception? _e67634_)
                  (macro-datum-parsing-exception-kind _e67634_)
                  (let ((__tmp68235
                         (let ((__tmp68236
                                (let ()
                                  (declare (not safe))
                                  (cons _e67634_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp68236))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68235))))
            (if (macro-datum-parsing-exception? _exn67632_)
                (macro-datum-parsing-exception-kind _exn67632_)
                (let ((__tmp68233
                       (let ((__tmp68234
                              (let ()
                                (declare (not safe))
                                (cons _exn67632_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp68234))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68233))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67628_))
            (let ((_e67630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67628_ 'exception))))
              (if (macro-datum-parsing-exception? _e67630_)
                  (macro-datum-parsing-exception-parameters _e67630_)
                  (let ((__tmp68239
                         (let ((__tmp68240
                                (let ()
                                  (declare (not safe))
                                  (cons _e67630_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp68240))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68239))))
            (if (macro-datum-parsing-exception? _exn67628_)
                (macro-datum-parsing-exception-parameters _exn67628_)
                (let ((__tmp68237
                       (let ((__tmp68238
                              (let ()
                                (declare (not safe))
                                (cons _exn67628_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp68238))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68237))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67622_))
            (let ((_e67625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67622_ 'exception))))
              (if (macro-datum-parsing-exception? _e67625_)
                  (macro-datum-parsing-exception-readenv _e67625_)
                  (let ((__tmp68243
                         (let ((__tmp68244
                                (let ()
                                  (declare (not safe))
                                  (cons _e67625_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp68244))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68243))))
            (if (macro-datum-parsing-exception? _exn67622_)
                (macro-datum-parsing-exception-readenv _exn67622_)
                (let ((__tmp68241
                       (let ((__tmp68242
                              (let ()
                                (declare (not safe))
                                (cons _exn67622_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp68242))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68241))))))
    (define deadlock-exception?
      (lambda (_exn67616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67616_))
            (let ((_e67619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67616_ 'exception))))
              (macro-deadlock-exception? _e67619_))
            (macro-deadlock-exception? _exn67616_))))
    (define divide-by-zero-exception?
      (lambda (_exn67612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67612_))
            (let ((_e67614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67612_ 'exception))))
              (macro-divide-by-zero-exception? _e67614_))
            (macro-divide-by-zero-exception? _exn67612_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67608_))
            (let ((_e67610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67608_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67610_)
                  (macro-divide-by-zero-exception-arguments _e67610_)
                  (let ((__tmp68247
                         (let ((__tmp68248
                                (let ()
                                  (declare (not safe))
                                  (cons _e67610_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp68248))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68247))))
            (if (macro-divide-by-zero-exception? _exn67608_)
                (macro-divide-by-zero-exception-arguments _exn67608_)
                (let ((__tmp68245
                       (let ((__tmp68246
                              (let ()
                                (declare (not safe))
                                (cons _exn67608_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp68246))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68245))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67602_))
            (let ((_e67605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67602_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67605_)
                  (macro-divide-by-zero-exception-procedure _e67605_)
                  (let ((__tmp68251
                         (let ((__tmp68252
                                (let ()
                                  (declare (not safe))
                                  (cons _e67605_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp68252))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68251))))
            (if (macro-divide-by-zero-exception? _exn67602_)
                (macro-divide-by-zero-exception-procedure _exn67602_)
                (let ((__tmp68249
                       (let ((__tmp68250
                              (let ()
                                (declare (not safe))
                                (cons _exn67602_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp68250))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68249))))))
    (define error-exception?
      (lambda (_exn67598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67598_))
            (let ((_e67600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67598_ 'exception))))
              (macro-error-exception? _e67600_))
            (macro-error-exception? _exn67598_))))
    (define error-exception-message
      (lambda (_exn67594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67594_))
            (let ((_e67596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67594_ 'exception))))
              (if (macro-error-exception? _e67596_)
                  (macro-error-exception-message _e67596_)
                  (let ((__tmp68255
                         (let ((__tmp68256
                                (let ()
                                  (declare (not safe))
                                  (cons _e67596_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp68256))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68255))))
            (if (macro-error-exception? _exn67594_)
                (macro-error-exception-message _exn67594_)
                (let ((__tmp68253
                       (let ((__tmp68254
                              (let ()
                                (declare (not safe))
                                (cons _exn67594_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp68254))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68253))))))
    (define error-exception-parameters
      (lambda (_exn67588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67588_))
            (let ((_e67591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67588_ 'exception))))
              (if (macro-error-exception? _e67591_)
                  (macro-error-exception-parameters _e67591_)
                  (let ((__tmp68259
                         (let ((__tmp68260
                                (let ()
                                  (declare (not safe))
                                  (cons _e67591_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp68260))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68259))))
            (if (macro-error-exception? _exn67588_)
                (macro-error-exception-parameters _exn67588_)
                (let ((__tmp68257
                       (let ((__tmp68258
                              (let ()
                                (declare (not safe))
                                (cons _exn67588_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp68258))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68257))))))
    (define expression-parsing-exception?
      (lambda (_exn67584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67584_))
            (let ((_e67586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67584_ 'exception))))
              (macro-expression-parsing-exception? _e67586_))
            (macro-expression-parsing-exception? _exn67584_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67580_))
            (let ((_e67582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67580_ 'exception))))
              (if (macro-expression-parsing-exception? _e67582_)
                  (macro-expression-parsing-exception-kind _e67582_)
                  (let ((__tmp68263
                         (let ((__tmp68264
                                (let ()
                                  (declare (not safe))
                                  (cons _e67582_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp68264))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68263))))
            (if (macro-expression-parsing-exception? _exn67580_)
                (macro-expression-parsing-exception-kind _exn67580_)
                (let ((__tmp68261
                       (let ((__tmp68262
                              (let ()
                                (declare (not safe))
                                (cons _exn67580_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp68262))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68261))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67576_))
            (let ((_e67578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67576_ 'exception))))
              (if (macro-expression-parsing-exception? _e67578_)
                  (macro-expression-parsing-exception-parameters _e67578_)
                  (let ((__tmp68267
                         (let ((__tmp68268
                                (let ()
                                  (declare (not safe))
                                  (cons _e67578_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp68268))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68267))))
            (if (macro-expression-parsing-exception? _exn67576_)
                (macro-expression-parsing-exception-parameters _exn67576_)
                (let ((__tmp68265
                       (let ((__tmp68266
                              (let ()
                                (declare (not safe))
                                (cons _exn67576_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp68266))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68265))))))
    (define expression-parsing-exception-source
      (lambda (_exn67570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67570_))
            (let ((_e67573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67570_ 'exception))))
              (if (macro-expression-parsing-exception? _e67573_)
                  (macro-expression-parsing-exception-source _e67573_)
                  (let ((__tmp68271
                         (let ((__tmp68272
                                (let ()
                                  (declare (not safe))
                                  (cons _e67573_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp68272))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68271))))
            (if (macro-expression-parsing-exception? _exn67570_)
                (macro-expression-parsing-exception-source _exn67570_)
                (let ((__tmp68269
                       (let ((__tmp68270
                              (let ()
                                (declare (not safe))
                                (cons _exn67570_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp68270))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68269))))))
    (define file-exists-exception?
      (lambda (_exn67566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67566_))
            (let ((_e67568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67566_ 'exception))))
              (macro-file-exists-exception? _e67568_))
            (macro-file-exists-exception? _exn67566_))))
    (define file-exists-exception-arguments
      (lambda (_exn67562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67562_))
            (let ((_e67564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67562_ 'exception))))
              (if (macro-file-exists-exception? _e67564_)
                  (macro-file-exists-exception-arguments _e67564_)
                  (let ((__tmp68275
                         (let ((__tmp68276
                                (let ()
                                  (declare (not safe))
                                  (cons _e67564_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp68276))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68275))))
            (if (macro-file-exists-exception? _exn67562_)
                (macro-file-exists-exception-arguments _exn67562_)
                (let ((__tmp68273
                       (let ((__tmp68274
                              (let ()
                                (declare (not safe))
                                (cons _exn67562_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp68274))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68273))))))
    (define file-exists-exception-procedure
      (lambda (_exn67556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67556_))
            (let ((_e67559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67556_ 'exception))))
              (if (macro-file-exists-exception? _e67559_)
                  (macro-file-exists-exception-procedure _e67559_)
                  (let ((__tmp68279
                         (let ((__tmp68280
                                (let ()
                                  (declare (not safe))
                                  (cons _e67559_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp68280))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68279))))
            (if (macro-file-exists-exception? _exn67556_)
                (macro-file-exists-exception-procedure _exn67556_)
                (let ((__tmp68277
                       (let ((__tmp68278
                              (let ()
                                (declare (not safe))
                                (cons _exn67556_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp68278))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68277))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67552_))
            (let ((_e67554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67552_ 'exception))))
              (macro-fixnum-overflow-exception? _e67554_))
            (macro-fixnum-overflow-exception? _exn67552_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67548_))
            (let ((_e67550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67548_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67550_)
                  (macro-fixnum-overflow-exception-arguments _e67550_)
                  (let ((__tmp68283
                         (let ((__tmp68284
                                (let ()
                                  (declare (not safe))
                                  (cons _e67550_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp68284))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68283))))
            (if (macro-fixnum-overflow-exception? _exn67548_)
                (macro-fixnum-overflow-exception-arguments _exn67548_)
                (let ((__tmp68281
                       (let ((__tmp68282
                              (let ()
                                (declare (not safe))
                                (cons _exn67548_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp68282))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68281))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67542_))
            (let ((_e67545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67542_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67545_)
                  (macro-fixnum-overflow-exception-procedure _e67545_)
                  (let ((__tmp68287
                         (let ((__tmp68288
                                (let ()
                                  (declare (not safe))
                                  (cons _e67545_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp68288))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68287))))
            (if (macro-fixnum-overflow-exception? _exn67542_)
                (macro-fixnum-overflow-exception-procedure _exn67542_)
                (let ((__tmp68285
                       (let ((__tmp68286
                              (let ()
                                (declare (not safe))
                                (cons _exn67542_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp68286))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68285))))))
    (define heap-overflow-exception?
      (lambda (_exn67536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67536_))
            (let ((_e67539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67536_ 'exception))))
              (macro-heap-overflow-exception? _e67539_))
            (macro-heap-overflow-exception? _exn67536_))))
    (define inactive-thread-exception?
      (lambda (_exn67532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67532_))
            (let ((_e67534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67532_ 'exception))))
              (macro-inactive-thread-exception? _e67534_))
            (macro-inactive-thread-exception? _exn67532_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67528_))
            (let ((_e67530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67528_ 'exception))))
              (if (macro-inactive-thread-exception? _e67530_)
                  (macro-inactive-thread-exception-arguments _e67530_)
                  (let ((__tmp68291
                         (let ((__tmp68292
                                (let ()
                                  (declare (not safe))
                                  (cons _e67530_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp68292))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68291))))
            (if (macro-inactive-thread-exception? _exn67528_)
                (macro-inactive-thread-exception-arguments _exn67528_)
                (let ((__tmp68289
                       (let ((__tmp68290
                              (let ()
                                (declare (not safe))
                                (cons _exn67528_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp68290))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68289))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67522_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67522_))
            (let ((_e67525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67522_ 'exception))))
              (if (macro-inactive-thread-exception? _e67525_)
                  (macro-inactive-thread-exception-procedure _e67525_)
                  (let ((__tmp68295
                         (let ((__tmp68296
                                (let ()
                                  (declare (not safe))
                                  (cons _e67525_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp68296))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68295))))
            (if (macro-inactive-thread-exception? _exn67522_)
                (macro-inactive-thread-exception-procedure _exn67522_)
                (let ((__tmp68293
                       (let ((__tmp68294
                              (let ()
                                (declare (not safe))
                                (cons _exn67522_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp68294))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68293))))))
    (define initialized-thread-exception?
      (lambda (_exn67518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67518_))
            (let ((_e67520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67518_ 'exception))))
              (macro-initialized-thread-exception? _e67520_))
            (macro-initialized-thread-exception? _exn67518_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67514_))
            (let ((_e67516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67514_ 'exception))))
              (if (macro-initialized-thread-exception? _e67516_)
                  (macro-initialized-thread-exception-arguments _e67516_)
                  (let ((__tmp68299
                         (let ((__tmp68300
                                (let ()
                                  (declare (not safe))
                                  (cons _e67516_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp68300))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68299))))
            (if (macro-initialized-thread-exception? _exn67514_)
                (macro-initialized-thread-exception-arguments _exn67514_)
                (let ((__tmp68297
                       (let ((__tmp68298
                              (let ()
                                (declare (not safe))
                                (cons _exn67514_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp68298))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68297))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67508_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67508_))
            (let ((_e67511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67508_ 'exception))))
              (if (macro-initialized-thread-exception? _e67511_)
                  (macro-initialized-thread-exception-procedure _e67511_)
                  (let ((__tmp68303
                         (let ((__tmp68304
                                (let ()
                                  (declare (not safe))
                                  (cons _e67511_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp68304))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68303))))
            (if (macro-initialized-thread-exception? _exn67508_)
                (macro-initialized-thread-exception-procedure _exn67508_)
                (let ((__tmp68301
                       (let ((__tmp68302
                              (let ()
                                (declare (not safe))
                                (cons _exn67508_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp68302))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68301))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67504_))
            (let ((_e67506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67504_ 'exception))))
              (macro-invalid-hash-number-exception? _e67506_))
            (macro-invalid-hash-number-exception? _exn67504_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67500_))
            (let ((_e67502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67500_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67502_)
                  (macro-invalid-hash-number-exception-arguments _e67502_)
                  (let ((__tmp68307
                         (let ((__tmp68308
                                (let ()
                                  (declare (not safe))
                                  (cons _e67502_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp68308))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68307))))
            (if (macro-invalid-hash-number-exception? _exn67500_)
                (macro-invalid-hash-number-exception-arguments _exn67500_)
                (let ((__tmp68305
                       (let ((__tmp68306
                              (let ()
                                (declare (not safe))
                                (cons _exn67500_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp68306))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68305))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67494_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67494_))
            (let ((_e67497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67494_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67497_)
                  (macro-invalid-hash-number-exception-procedure _e67497_)
                  (let ((__tmp68311
                         (let ((__tmp68312
                                (let ()
                                  (declare (not safe))
                                  (cons _e67497_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp68312))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68311))))
            (if (macro-invalid-hash-number-exception? _exn67494_)
                (macro-invalid-hash-number-exception-procedure _exn67494_)
                (let ((__tmp68309
                       (let ((__tmp68310
                              (let ()
                                (declare (not safe))
                                (cons _exn67494_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp68310))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68309))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67490_))
            (let ((_e67492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67490_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67492_))
            (macro-invalid-utf8-encoding-exception? _exn67490_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67486_))
            (let ((_e67488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67486_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67488_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67488_)
                  (let ((__tmp68315
                         (let ((__tmp68316
                                (let ()
                                  (declare (not safe))
                                  (cons _e67488_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp68316))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68315))))
            (if (macro-invalid-utf8-encoding-exception? _exn67486_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67486_)
                (let ((__tmp68313
                       (let ((__tmp68314
                              (let ()
                                (declare (not safe))
                                (cons _exn67486_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp68314))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68313))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67480_))
            (let ((_e67483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67480_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67483_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67483_)
                  (let ((__tmp68319
                         (let ((__tmp68320
                                (let ()
                                  (declare (not safe))
                                  (cons _e67483_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp68320))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68319))))
            (if (macro-invalid-utf8-encoding-exception? _exn67480_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67480_)
                (let ((__tmp68317
                       (let ((__tmp68318
                              (let ()
                                (declare (not safe))
                                (cons _exn67480_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp68318))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68317))))))
    (define join-timeout-exception?
      (lambda (_exn67476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67476_))
            (let ((_e67478_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67476_ 'exception))))
              (macro-join-timeout-exception? _e67478_))
            (macro-join-timeout-exception? _exn67476_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67472_))
            (let ((_e67474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67472_ 'exception))))
              (if (macro-join-timeout-exception? _e67474_)
                  (macro-join-timeout-exception-arguments _e67474_)
                  (let ((__tmp68323
                         (let ((__tmp68324
                                (let ()
                                  (declare (not safe))
                                  (cons _e67474_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp68324))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68323))))
            (if (macro-join-timeout-exception? _exn67472_)
                (macro-join-timeout-exception-arguments _exn67472_)
                (let ((__tmp68321
                       (let ((__tmp68322
                              (let ()
                                (declare (not safe))
                                (cons _exn67472_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp68322))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68321))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67466_))
            (let ((_e67469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67466_ 'exception))))
              (if (macro-join-timeout-exception? _e67469_)
                  (macro-join-timeout-exception-procedure _e67469_)
                  (let ((__tmp68327
                         (let ((__tmp68328
                                (let ()
                                  (declare (not safe))
                                  (cons _e67469_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp68328))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68327))))
            (if (macro-join-timeout-exception? _exn67466_)
                (macro-join-timeout-exception-procedure _exn67466_)
                (let ((__tmp68325
                       (let ((__tmp68326
                              (let ()
                                (declare (not safe))
                                (cons _exn67466_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp68326))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68325))))))
    (define keyword-expected-exception?
      (lambda (_exn67462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67462_))
            (let ((_e67464_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67462_ 'exception))))
              (macro-keyword-expected-exception? _e67464_))
            (macro-keyword-expected-exception? _exn67462_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67458_))
            (let ((_e67460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67458_ 'exception))))
              (if (macro-keyword-expected-exception? _e67460_)
                  (macro-keyword-expected-exception-arguments _e67460_)
                  (let ((__tmp68331
                         (let ((__tmp68332
                                (let ()
                                  (declare (not safe))
                                  (cons _e67460_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp68332))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68331))))
            (if (macro-keyword-expected-exception? _exn67458_)
                (macro-keyword-expected-exception-arguments _exn67458_)
                (let ((__tmp68329
                       (let ((__tmp68330
                              (let ()
                                (declare (not safe))
                                (cons _exn67458_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp68330))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68329))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67452_))
            (let ((_e67455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67452_ 'exception))))
              (if (macro-keyword-expected-exception? _e67455_)
                  (macro-keyword-expected-exception-procedure _e67455_)
                  (let ((__tmp68335
                         (let ((__tmp68336
                                (let ()
                                  (declare (not safe))
                                  (cons _e67455_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp68336))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68335))))
            (if (macro-keyword-expected-exception? _exn67452_)
                (macro-keyword-expected-exception-procedure _exn67452_)
                (let ((__tmp68333
                       (let ((__tmp68334
                              (let ()
                                (declare (not safe))
                                (cons _exn67452_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp68334))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68333))))))
    (define length-mismatch-exception?
      (lambda (_exn67448_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67448_))
            (let ((_e67450_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67448_ 'exception))))
              (macro-length-mismatch-exception? _e67450_))
            (macro-length-mismatch-exception? _exn67448_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67444_))
            (let ((_e67446_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67444_ 'exception))))
              (if (macro-length-mismatch-exception? _e67446_)
                  (macro-length-mismatch-exception-arg-id _e67446_)
                  (let ((__tmp68339
                         (let ((__tmp68340
                                (let ()
                                  (declare (not safe))
                                  (cons _e67446_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp68340))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68339))))
            (if (macro-length-mismatch-exception? _exn67444_)
                (macro-length-mismatch-exception-arg-id _exn67444_)
                (let ((__tmp68337
                       (let ((__tmp68338
                              (let ()
                                (declare (not safe))
                                (cons _exn67444_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp68338))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68337))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67440_))
            (let ((_e67442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67440_ 'exception))))
              (if (macro-length-mismatch-exception? _e67442_)
                  (macro-length-mismatch-exception-arguments _e67442_)
                  (let ((__tmp68343
                         (let ((__tmp68344
                                (let ()
                                  (declare (not safe))
                                  (cons _e67442_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp68344))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68343))))
            (if (macro-length-mismatch-exception? _exn67440_)
                (macro-length-mismatch-exception-arguments _exn67440_)
                (let ((__tmp68341
                       (let ((__tmp68342
                              (let ()
                                (declare (not safe))
                                (cons _exn67440_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp68342))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68341))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67434_))
            (let ((_e67437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67434_ 'exception))))
              (if (macro-length-mismatch-exception? _e67437_)
                  (macro-length-mismatch-exception-procedure _e67437_)
                  (let ((__tmp68347
                         (let ((__tmp68348
                                (let ()
                                  (declare (not safe))
                                  (cons _e67437_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp68348))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68347))))
            (if (macro-length-mismatch-exception? _exn67434_)
                (macro-length-mismatch-exception-procedure _exn67434_)
                (let ((__tmp68345
                       (let ((__tmp68346
                              (let ()
                                (declare (not safe))
                                (cons _exn67434_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp68346))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68345))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67430_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67430_))
            (let ((_e67432_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67430_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67432_))
            (macro-mailbox-receive-timeout-exception? _exn67430_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67426_))
            (let ((_e67428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67426_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67428_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67428_)
                  (let ((__tmp68351
                         (let ((__tmp68352
                                (let ()
                                  (declare (not safe))
                                  (cons _e67428_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp68352))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68351))))
            (if (macro-mailbox-receive-timeout-exception? _exn67426_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67426_)
                (let ((__tmp68349
                       (let ((__tmp68350
                              (let ()
                                (declare (not safe))
                                (cons _exn67426_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp68350))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68349))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67420_))
            (let ((_e67423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67420_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67423_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67423_)
                  (let ((__tmp68355
                         (let ((__tmp68356
                                (let ()
                                  (declare (not safe))
                                  (cons _e67423_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp68356))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68355))))
            (if (macro-mailbox-receive-timeout-exception? _exn67420_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67420_)
                (let ((__tmp68353
                       (let ((__tmp68354
                              (let ()
                                (declare (not safe))
                                (cons _exn67420_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp68354))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68353))))))
    (define module-not-found-exception?
      (lambda (_exn67416_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67416_))
            (let ((_e67418_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67416_ 'exception))))
              (macro-module-not-found-exception? _e67418_))
            (macro-module-not-found-exception? _exn67416_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67412_))
            (let ((_e67414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67412_ 'exception))))
              (if (macro-module-not-found-exception? _e67414_)
                  (macro-module-not-found-exception-arguments _e67414_)
                  (let ((__tmp68359
                         (let ((__tmp68360
                                (let ()
                                  (declare (not safe))
                                  (cons _e67414_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp68360))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68359))))
            (if (macro-module-not-found-exception? _exn67412_)
                (macro-module-not-found-exception-arguments _exn67412_)
                (let ((__tmp68357
                       (let ((__tmp68358
                              (let ()
                                (declare (not safe))
                                (cons _exn67412_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp68358))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68357))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67406_))
            (let ((_e67409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67406_ 'exception))))
              (if (macro-module-not-found-exception? _e67409_)
                  (macro-module-not-found-exception-procedure _e67409_)
                  (let ((__tmp68363
                         (let ((__tmp68364
                                (let ()
                                  (declare (not safe))
                                  (cons _e67409_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp68364))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68363))))
            (if (macro-module-not-found-exception? _exn67406_)
                (macro-module-not-found-exception-procedure _exn67406_)
                (let ((__tmp68361
                       (let ((__tmp68362
                              (let ()
                                (declare (not safe))
                                (cons _exn67406_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp68362))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68361))))))
    (define multiple-c-return-exception?
      (lambda (_exn67400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67400_))
            (let ((_e67403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67400_ 'exception))))
              (macro-multiple-c-return-exception? _e67403_))
            (macro-multiple-c-return-exception? _exn67400_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67396_))
            (let ((_e67398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67396_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67398_))
            (macro-no-such-file-or-directory-exception? _exn67396_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67392_))
            (let ((_e67394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67392_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67394_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67394_)
                  (let ((__tmp68367
                         (let ((__tmp68368
                                (let ()
                                  (declare (not safe))
                                  (cons _e67394_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp68368))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68367))))
            (if (macro-no-such-file-or-directory-exception? _exn67392_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67392_)
                (let ((__tmp68365
                       (let ((__tmp68366
                              (let ()
                                (declare (not safe))
                                (cons _exn67392_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp68366))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68365))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67386_))
            (let ((_e67389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67386_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67389_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67389_)
                  (let ((__tmp68371
                         (let ((__tmp68372
                                (let ()
                                  (declare (not safe))
                                  (cons _e67389_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp68372))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68371))))
            (if (macro-no-such-file-or-directory-exception? _exn67386_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67386_)
                (let ((__tmp68369
                       (let ((__tmp68370
                              (let ()
                                (declare (not safe))
                                (cons _exn67386_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp68370))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68369))))))
    (define noncontinuable-exception?
      (lambda (_exn67382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67382_))
            (let ((_e67384_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67382_ 'exception))))
              (macro-noncontinuable-exception? _e67384_))
            (macro-noncontinuable-exception? _exn67382_))))
    (define noncontinuable-exception-reason
      (lambda (_exn67376_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67376_))
            (let ((_e67379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67376_ 'exception))))
              (if (macro-noncontinuable-exception? _e67379_)
                  (macro-noncontinuable-exception-reason _e67379_)
                  (let ((__tmp68375
                         (let ((__tmp68376
                                (let ()
                                  (declare (not safe))
                                  (cons _e67379_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp68376))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp68375))))
            (if (macro-noncontinuable-exception? _exn67376_)
                (macro-noncontinuable-exception-reason _exn67376_)
                (let ((__tmp68373
                       (let ((__tmp68374
                              (let ()
                                (declare (not safe))
                                (cons _exn67376_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp68374))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp68373))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn67372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67372_))
            (let ((_e67374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67372_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e67374_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn67372_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn67368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67368_))
            (let ((_e67370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67368_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67370_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e67370_)
                  (let ((__tmp68379
                         (let ((__tmp68380
                                (let ()
                                  (declare (not safe))
                                  (cons _e67370_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp68380))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68379))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67368_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn67368_)
                (let ((__tmp68377
                       (let ((__tmp68378
                              (let ()
                                (declare (not safe))
                                (cons _exn67368_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp68378))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68377))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn67362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67362_))
            (let ((_e67365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67362_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67365_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e67365_)
                  (let ((__tmp68383
                         (let ((__tmp68384
                                (let ()
                                  (declare (not safe))
                                  (cons _e67365_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp68384))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68383))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67362_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn67362_)
                (let ((__tmp68381
                       (let ((__tmp68382
                              (let ()
                                (declare (not safe))
                                (cons _exn67362_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp68382))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68381))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn67358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67358_))
            (let ((_e67360_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67358_ 'exception))))
              (macro-nonprocedure-operator-exception? _e67360_))
            (macro-nonprocedure-operator-exception? _exn67358_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn67354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67354_))
            (let ((_e67356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67354_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67356_)
                  (macro-nonprocedure-operator-exception-arguments _e67356_)
                  (let ((__tmp68387
                         (let ((__tmp68388
                                (let ()
                                  (declare (not safe))
                                  (cons _e67356_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68388))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68387))))
            (if (macro-nonprocedure-operator-exception? _exn67354_)
                (macro-nonprocedure-operator-exception-arguments _exn67354_)
                (let ((__tmp68385
                       (let ((__tmp68386
                              (let ()
                                (declare (not safe))
                                (cons _exn67354_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68386))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68385))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn67350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67350_))
            (let ((_e67352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67350_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67352_)
                  (macro-nonprocedure-operator-exception-code _e67352_)
                  (let ((__tmp68391
                         (let ((__tmp68392
                                (let ()
                                  (declare (not safe))
                                  (cons _e67352_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68392))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68391))))
            (if (macro-nonprocedure-operator-exception? _exn67350_)
                (macro-nonprocedure-operator-exception-code _exn67350_)
                (let ((__tmp68389
                       (let ((__tmp68390
                              (let ()
                                (declare (not safe))
                                (cons _exn67350_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68390))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68389))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn67346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67346_))
            (let ((_e67348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67346_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67348_)
                  (macro-nonprocedure-operator-exception-operator _e67348_)
                  (let ((__tmp68395
                         (let ((__tmp68396
                                (let ()
                                  (declare (not safe))
                                  (cons _e67348_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68396))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68395))))
            (if (macro-nonprocedure-operator-exception? _exn67346_)
                (macro-nonprocedure-operator-exception-operator _exn67346_)
                (let ((__tmp68393
                       (let ((__tmp68394
                              (let ()
                                (declare (not safe))
                                (cons _exn67346_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68394))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68393))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn67340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67340_))
            (let ((_e67343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67340_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67343_)
                  (macro-nonprocedure-operator-exception-rte _e67343_)
                  (let ((__tmp68399
                         (let ((__tmp68400
                                (let ()
                                  (declare (not safe))
                                  (cons _e67343_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68400))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68399))))
            (if (macro-nonprocedure-operator-exception? _exn67340_)
                (macro-nonprocedure-operator-exception-rte _exn67340_)
                (let ((__tmp68397
                       (let ((__tmp68398
                              (let ()
                                (declare (not safe))
                                (cons _exn67340_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68398))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68397))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn67336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67336_))
            (let ((_e67338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67336_ 'exception))))
              (macro-not-in-compilation-context-exception? _e67338_))
            (macro-not-in-compilation-context-exception? _exn67336_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn67332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67332_))
            (let ((_e67334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67332_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67334_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e67334_)
                  (let ((__tmp68403
                         (let ((__tmp68404
                                (let ()
                                  (declare (not safe))
                                  (cons _e67334_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68404))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68403))))
            (if (macro-not-in-compilation-context-exception? _exn67332_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn67332_)
                (let ((__tmp68401
                       (let ((__tmp68402
                              (let ()
                                (declare (not safe))
                                (cons _exn67332_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68402))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68401))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn67326_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67326_))
            (let ((_e67329_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67326_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67329_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e67329_)
                  (let ((__tmp68407
                         (let ((__tmp68408
                                (let ()
                                  (declare (not safe))
                                  (cons _e67329_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68408))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68407))))
            (if (macro-not-in-compilation-context-exception? _exn67326_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn67326_)
                (let ((__tmp68405
                       (let ((__tmp68406
                              (let ()
                                (declare (not safe))
                                (cons _exn67326_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68406))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68405))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn67322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67322_))
            (let ((_e67324_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67322_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e67324_))
            (macro-number-of-arguments-limit-exception? _exn67322_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn67318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67318_))
            (let ((_e67320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67318_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67320_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e67320_)
                  (let ((__tmp68411
                         (let ((__tmp68412
                                (let ()
                                  (declare (not safe))
                                  (cons _e67320_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68412))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68411))))
            (if (macro-number-of-arguments-limit-exception? _exn67318_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn67318_)
                (let ((__tmp68409
                       (let ((__tmp68410
                              (let ()
                                (declare (not safe))
                                (cons _exn67318_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68410))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68409))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn67312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67312_))
            (let ((_e67315_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67312_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67315_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e67315_)
                  (let ((__tmp68415
                         (let ((__tmp68416
                                (let ()
                                  (declare (not safe))
                                  (cons _e67315_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68416))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68415))))
            (if (macro-number-of-arguments-limit-exception? _exn67312_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn67312_)
                (let ((__tmp68413
                       (let ((__tmp68414
                              (let ()
                                (declare (not safe))
                                (cons _exn67312_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68414))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68413))))))
    (define os-exception?
      (lambda (_exn67308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67308_))
            (let ((_e67310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67308_ 'exception))))
              (macro-os-exception? _e67310_))
            (macro-os-exception? _exn67308_))))
    (define os-exception-arguments
      (lambda (_exn67304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67304_))
            (let ((_e67306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67304_ 'exception))))
              (if (macro-os-exception? _e67306_)
                  (macro-os-exception-arguments _e67306_)
                  (let ((__tmp68419
                         (let ((__tmp68420
                                (let ()
                                  (declare (not safe))
                                  (cons _e67306_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68420))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68419))))
            (if (macro-os-exception? _exn67304_)
                (macro-os-exception-arguments _exn67304_)
                (let ((__tmp68417
                       (let ((__tmp68418
                              (let ()
                                (declare (not safe))
                                (cons _exn67304_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68418))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68417))))))
    (define os-exception-code
      (lambda (_exn67300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67300_))
            (let ((_e67302_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67300_ 'exception))))
              (if (macro-os-exception? _e67302_)
                  (macro-os-exception-code _e67302_)
                  (let ((__tmp68423
                         (let ((__tmp68424
                                (let ()
                                  (declare (not safe))
                                  (cons _e67302_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68424))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68423))))
            (if (macro-os-exception? _exn67300_)
                (macro-os-exception-code _exn67300_)
                (let ((__tmp68421
                       (let ((__tmp68422
                              (let ()
                                (declare (not safe))
                                (cons _exn67300_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68422))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68421))))))
    (define os-exception-message
      (lambda (_exn67296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67296_))
            (let ((_e67298_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67296_ 'exception))))
              (if (macro-os-exception? _e67298_)
                  (macro-os-exception-message _e67298_)
                  (let ((__tmp68427
                         (let ((__tmp68428
                                (let ()
                                  (declare (not safe))
                                  (cons _e67298_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68428))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68427))))
            (if (macro-os-exception? _exn67296_)
                (macro-os-exception-message _exn67296_)
                (let ((__tmp68425
                       (let ((__tmp68426
                              (let ()
                                (declare (not safe))
                                (cons _exn67296_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68426))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68425))))))
    (define os-exception-procedure
      (lambda (_exn67290_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67290_))
            (let ((_e67293_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67290_ 'exception))))
              (if (macro-os-exception? _e67293_)
                  (macro-os-exception-procedure _e67293_)
                  (let ((__tmp68431
                         (let ((__tmp68432
                                (let ()
                                  (declare (not safe))
                                  (cons _e67293_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68432))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68431))))
            (if (macro-os-exception? _exn67290_)
                (macro-os-exception-procedure _exn67290_)
                (let ((__tmp68429
                       (let ((__tmp68430
                              (let ()
                                (declare (not safe))
                                (cons _exn67290_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68430))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68429))))))
    (define permission-denied-exception?
      (lambda (_exn67286_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67286_))
            (let ((_e67288_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67286_ 'exception))))
              (macro-permission-denied-exception? _e67288_))
            (macro-permission-denied-exception? _exn67286_))))
    (define permission-denied-exception-arguments
      (lambda (_exn67282_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67282_))
            (let ((_e67284_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67282_ 'exception))))
              (if (macro-permission-denied-exception? _e67284_)
                  (macro-permission-denied-exception-arguments _e67284_)
                  (let ((__tmp68435
                         (let ((__tmp68436
                                (let ()
                                  (declare (not safe))
                                  (cons _e67284_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68436))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68435))))
            (if (macro-permission-denied-exception? _exn67282_)
                (macro-permission-denied-exception-arguments _exn67282_)
                (let ((__tmp68433
                       (let ((__tmp68434
                              (let ()
                                (declare (not safe))
                                (cons _exn67282_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68434))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68433))))))
    (define permission-denied-exception-procedure
      (lambda (_exn67276_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67276_))
            (let ((_e67279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67276_ 'exception))))
              (if (macro-permission-denied-exception? _e67279_)
                  (macro-permission-denied-exception-procedure _e67279_)
                  (let ((__tmp68439
                         (let ((__tmp68440
                                (let ()
                                  (declare (not safe))
                                  (cons _e67279_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68440))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68439))))
            (if (macro-permission-denied-exception? _exn67276_)
                (macro-permission-denied-exception-procedure _exn67276_)
                (let ((__tmp68437
                       (let ((__tmp68438
                              (let ()
                                (declare (not safe))
                                (cons _exn67276_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68438))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68437))))))
    (define range-exception?
      (lambda (_exn67272_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67272_))
            (let ((_e67274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67272_ 'exception))))
              (macro-range-exception? _e67274_))
            (macro-range-exception? _exn67272_))))
    (define range-exception-arg-id
      (lambda (_exn67268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67268_))
            (let ((_e67270_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67268_ 'exception))))
              (if (macro-range-exception? _e67270_)
                  (macro-range-exception-arg-id _e67270_)
                  (let ((__tmp68443
                         (let ((__tmp68444
                                (let ()
                                  (declare (not safe))
                                  (cons _e67270_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68444))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68443))))
            (if (macro-range-exception? _exn67268_)
                (macro-range-exception-arg-id _exn67268_)
                (let ((__tmp68441
                       (let ((__tmp68442
                              (let ()
                                (declare (not safe))
                                (cons _exn67268_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68442))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68441))))))
    (define range-exception-arguments
      (lambda (_exn67264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67264_))
            (let ((_e67266_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67264_ 'exception))))
              (if (macro-range-exception? _e67266_)
                  (macro-range-exception-arguments _e67266_)
                  (let ((__tmp68447
                         (let ((__tmp68448
                                (let ()
                                  (declare (not safe))
                                  (cons _e67266_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68448))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68447))))
            (if (macro-range-exception? _exn67264_)
                (macro-range-exception-arguments _exn67264_)
                (let ((__tmp68445
                       (let ((__tmp68446
                              (let ()
                                (declare (not safe))
                                (cons _exn67264_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68446))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68445))))))
    (define range-exception-procedure
      (lambda (_exn67258_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67258_))
            (let ((_e67261_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67258_ 'exception))))
              (if (macro-range-exception? _e67261_)
                  (macro-range-exception-procedure _e67261_)
                  (let ((__tmp68451
                         (let ((__tmp68452
                                (let ()
                                  (declare (not safe))
                                  (cons _e67261_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68452))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68451))))
            (if (macro-range-exception? _exn67258_)
                (macro-range-exception-procedure _exn67258_)
                (let ((__tmp68449
                       (let ((__tmp68450
                              (let ()
                                (declare (not safe))
                                (cons _exn67258_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68450))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68449))))))
    (define rpc-remote-error-exception?
      (lambda (_exn67254_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67254_))
            (let ((_e67256_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67254_ 'exception))))
              (macro-rpc-remote-error-exception? _e67256_))
            (macro-rpc-remote-error-exception? _exn67254_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn67250_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67250_))
            (let ((_e67252_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67250_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67252_)
                  (macro-rpc-remote-error-exception-arguments _e67252_)
                  (let ((__tmp68455
                         (let ((__tmp68456
                                (let ()
                                  (declare (not safe))
                                  (cons _e67252_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68456))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68455))))
            (if (macro-rpc-remote-error-exception? _exn67250_)
                (macro-rpc-remote-error-exception-arguments _exn67250_)
                (let ((__tmp68453
                       (let ((__tmp68454
                              (let ()
                                (declare (not safe))
                                (cons _exn67250_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68454))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68453))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn67246_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67246_))
            (let ((_e67248_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67246_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67248_)
                  (macro-rpc-remote-error-exception-message _e67248_)
                  (let ((__tmp68459
                         (let ((__tmp68460
                                (let ()
                                  (declare (not safe))
                                  (cons _e67248_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68460))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68459))))
            (if (macro-rpc-remote-error-exception? _exn67246_)
                (macro-rpc-remote-error-exception-message _exn67246_)
                (let ((__tmp68457
                       (let ((__tmp68458
                              (let ()
                                (declare (not safe))
                                (cons _exn67246_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68458))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68457))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn67240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67240_))
            (let ((_e67243_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67240_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67243_)
                  (macro-rpc-remote-error-exception-procedure _e67243_)
                  (let ((__tmp68463
                         (let ((__tmp68464
                                (let ()
                                  (declare (not safe))
                                  (cons _e67243_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68464))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68463))))
            (if (macro-rpc-remote-error-exception? _exn67240_)
                (macro-rpc-remote-error-exception-procedure _exn67240_)
                (let ((__tmp68461
                       (let ((__tmp68462
                              (let ()
                                (declare (not safe))
                                (cons _exn67240_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68462))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68461))))))
    (define scheduler-exception?
      (lambda (_exn67236_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67236_))
            (let ((_e67238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67236_ 'exception))))
              (macro-scheduler-exception? _e67238_))
            (macro-scheduler-exception? _exn67236_))))
    (define scheduler-exception-reason
      (lambda (_exn67230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67230_))
            (let ((_e67233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67230_ 'exception))))
              (if (macro-scheduler-exception? _e67233_)
                  (macro-scheduler-exception-reason _e67233_)
                  (let ((__tmp68467
                         (let ((__tmp68468
                                (let ()
                                  (declare (not safe))
                                  (cons _e67233_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68468))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68467))))
            (if (macro-scheduler-exception? _exn67230_)
                (macro-scheduler-exception-reason _exn67230_)
                (let ((__tmp68465
                       (let ((__tmp68466
                              (let ()
                                (declare (not safe))
                                (cons _exn67230_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68466))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68465))))))
    (define sfun-conversion-exception?
      (lambda (_exn67226_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67226_))
            (let ((_e67228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67226_ 'exception))))
              (macro-sfun-conversion-exception? _e67228_))
            (macro-sfun-conversion-exception? _exn67226_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn67222_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67222_))
            (let ((_e67224_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67222_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67224_)
                  (macro-sfun-conversion-exception-arguments _e67224_)
                  (let ((__tmp68471
                         (let ((__tmp68472
                                (let ()
                                  (declare (not safe))
                                  (cons _e67224_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68472))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68471))))
            (if (macro-sfun-conversion-exception? _exn67222_)
                (macro-sfun-conversion-exception-arguments _exn67222_)
                (let ((__tmp68469
                       (let ((__tmp68470
                              (let ()
                                (declare (not safe))
                                (cons _exn67222_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68470))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68469))))))
    (define sfun-conversion-exception-code
      (lambda (_exn67218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67218_))
            (let ((_e67220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67218_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67220_)
                  (macro-sfun-conversion-exception-code _e67220_)
                  (let ((__tmp68475
                         (let ((__tmp68476
                                (let ()
                                  (declare (not safe))
                                  (cons _e67220_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68476))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68475))))
            (if (macro-sfun-conversion-exception? _exn67218_)
                (macro-sfun-conversion-exception-code _exn67218_)
                (let ((__tmp68473
                       (let ((__tmp68474
                              (let ()
                                (declare (not safe))
                                (cons _exn67218_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68474))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68473))))))
    (define sfun-conversion-exception-message
      (lambda (_exn67214_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67214_))
            (let ((_e67216_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67214_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67216_)
                  (macro-sfun-conversion-exception-message _e67216_)
                  (let ((__tmp68479
                         (let ((__tmp68480
                                (let ()
                                  (declare (not safe))
                                  (cons _e67216_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68480))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68479))))
            (if (macro-sfun-conversion-exception? _exn67214_)
                (macro-sfun-conversion-exception-message _exn67214_)
                (let ((__tmp68477
                       (let ((__tmp68478
                              (let ()
                                (declare (not safe))
                                (cons _exn67214_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68478))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68477))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn67208_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67208_))
            (let ((_e67211_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67208_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67211_)
                  (macro-sfun-conversion-exception-procedure _e67211_)
                  (let ((__tmp68483
                         (let ((__tmp68484
                                (let ()
                                  (declare (not safe))
                                  (cons _e67211_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68484))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68483))))
            (if (macro-sfun-conversion-exception? _exn67208_)
                (macro-sfun-conversion-exception-procedure _exn67208_)
                (let ((__tmp68481
                       (let ((__tmp68482
                              (let ()
                                (declare (not safe))
                                (cons _exn67208_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68482))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68481))))))
    (define stack-overflow-exception?
      (lambda (_exn67202_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67202_))
            (let ((_e67205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67202_ 'exception))))
              (macro-stack-overflow-exception? _e67205_))
            (macro-stack-overflow-exception? _exn67202_))))
    (define started-thread-exception?
      (lambda (_exn67198_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67198_))
            (let ((_e67200_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67198_ 'exception))))
              (macro-started-thread-exception? _e67200_))
            (macro-started-thread-exception? _exn67198_))))
    (define started-thread-exception-arguments
      (lambda (_exn67194_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67194_))
            (let ((_e67196_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67194_ 'exception))))
              (if (macro-started-thread-exception? _e67196_)
                  (macro-started-thread-exception-arguments _e67196_)
                  (let ((__tmp68487
                         (let ((__tmp68488
                                (let ()
                                  (declare (not safe))
                                  (cons _e67196_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68488))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68487))))
            (if (macro-started-thread-exception? _exn67194_)
                (macro-started-thread-exception-arguments _exn67194_)
                (let ((__tmp68485
                       (let ((__tmp68486
                              (let ()
                                (declare (not safe))
                                (cons _exn67194_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68486))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68485))))))
    (define started-thread-exception-procedure
      (lambda (_exn67188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67188_))
            (let ((_e67191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67188_ 'exception))))
              (if (macro-started-thread-exception? _e67191_)
                  (macro-started-thread-exception-procedure _e67191_)
                  (let ((__tmp68491
                         (let ((__tmp68492
                                (let ()
                                  (declare (not safe))
                                  (cons _e67191_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68492))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68491))))
            (if (macro-started-thread-exception? _exn67188_)
                (macro-started-thread-exception-procedure _exn67188_)
                (let ((__tmp68489
                       (let ((__tmp68490
                              (let ()
                                (declare (not safe))
                                (cons _exn67188_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68490))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68489))))))
    (define terminated-thread-exception?
      (lambda (_exn67184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67184_))
            (let ((_e67186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67184_ 'exception))))
              (macro-terminated-thread-exception? _e67186_))
            (macro-terminated-thread-exception? _exn67184_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn67180_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67180_))
            (let ((_e67182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67180_ 'exception))))
              (if (macro-terminated-thread-exception? _e67182_)
                  (macro-terminated-thread-exception-arguments _e67182_)
                  (let ((__tmp68495
                         (let ((__tmp68496
                                (let ()
                                  (declare (not safe))
                                  (cons _e67182_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68496))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68495))))
            (if (macro-terminated-thread-exception? _exn67180_)
                (macro-terminated-thread-exception-arguments _exn67180_)
                (let ((__tmp68493
                       (let ((__tmp68494
                              (let ()
                                (declare (not safe))
                                (cons _exn67180_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68494))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68493))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn67174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67174_))
            (let ((_e67177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67174_ 'exception))))
              (if (macro-terminated-thread-exception? _e67177_)
                  (macro-terminated-thread-exception-procedure _e67177_)
                  (let ((__tmp68499
                         (let ((__tmp68500
                                (let ()
                                  (declare (not safe))
                                  (cons _e67177_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68500))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68499))))
            (if (macro-terminated-thread-exception? _exn67174_)
                (macro-terminated-thread-exception-procedure _exn67174_)
                (let ((__tmp68497
                       (let ((__tmp68498
                              (let ()
                                (declare (not safe))
                                (cons _exn67174_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68498))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68497))))))
    (define type-exception?
      (lambda (_exn67170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67170_))
            (let ((_e67172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67170_ 'exception))))
              (macro-type-exception? _e67172_))
            (macro-type-exception? _exn67170_))))
    (define type-exception-arg-id
      (lambda (_exn67166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67166_))
            (let ((_e67168_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67166_ 'exception))))
              (if (macro-type-exception? _e67168_)
                  (macro-type-exception-arg-id _e67168_)
                  (let ((__tmp68503
                         (let ((__tmp68504
                                (let ()
                                  (declare (not safe))
                                  (cons _e67168_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68504))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68503))))
            (if (macro-type-exception? _exn67166_)
                (macro-type-exception-arg-id _exn67166_)
                (let ((__tmp68501
                       (let ((__tmp68502
                              (let ()
                                (declare (not safe))
                                (cons _exn67166_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68502))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68501))))))
    (define type-exception-arguments
      (lambda (_exn67162_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67162_))
            (let ((_e67164_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67162_ 'exception))))
              (if (macro-type-exception? _e67164_)
                  (macro-type-exception-arguments _e67164_)
                  (let ((__tmp68507
                         (let ((__tmp68508
                                (let ()
                                  (declare (not safe))
                                  (cons _e67164_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68508))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68507))))
            (if (macro-type-exception? _exn67162_)
                (macro-type-exception-arguments _exn67162_)
                (let ((__tmp68505
                       (let ((__tmp68506
                              (let ()
                                (declare (not safe))
                                (cons _exn67162_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68506))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68505))))))
    (define type-exception-procedure
      (lambda (_exn67158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67158_))
            (let ((_e67160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67158_ 'exception))))
              (if (macro-type-exception? _e67160_)
                  (macro-type-exception-procedure _e67160_)
                  (let ((__tmp68511
                         (let ((__tmp68512
                                (let ()
                                  (declare (not safe))
                                  (cons _e67160_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68512))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68511))))
            (if (macro-type-exception? _exn67158_)
                (macro-type-exception-procedure _exn67158_)
                (let ((__tmp68509
                       (let ((__tmp68510
                              (let ()
                                (declare (not safe))
                                (cons _exn67158_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68510))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68509))))))
    (define type-exception-type-id
      (lambda (_exn67152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67152_))
            (let ((_e67155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67152_ 'exception))))
              (if (macro-type-exception? _e67155_)
                  (macro-type-exception-type-id _e67155_)
                  (let ((__tmp68515
                         (let ((__tmp68516
                                (let ()
                                  (declare (not safe))
                                  (cons _e67155_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68516))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68515))))
            (if (macro-type-exception? _exn67152_)
                (macro-type-exception-type-id _exn67152_)
                (let ((__tmp68513
                       (let ((__tmp68514
                              (let ()
                                (declare (not safe))
                                (cons _exn67152_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68514))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68513))))))
    (define unbound-global-exception?
      (lambda (_exn67148_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67148_))
            (let ((_e67150_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67148_ 'exception))))
              (macro-unbound-global-exception? _e67150_))
            (macro-unbound-global-exception? _exn67148_))))
    (define unbound-global-exception-code
      (lambda (_exn67144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67144_))
            (let ((_e67146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67144_ 'exception))))
              (if (macro-unbound-global-exception? _e67146_)
                  (macro-unbound-global-exception-code _e67146_)
                  (let ((__tmp68519
                         (let ((__tmp68520
                                (let ()
                                  (declare (not safe))
                                  (cons _e67146_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68520))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68519))))
            (if (macro-unbound-global-exception? _exn67144_)
                (macro-unbound-global-exception-code _exn67144_)
                (let ((__tmp68517
                       (let ((__tmp68518
                              (let ()
                                (declare (not safe))
                                (cons _exn67144_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68518))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68517))))))
    (define unbound-global-exception-rte
      (lambda (_exn67140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67140_))
            (let ((_e67142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67140_ 'exception))))
              (if (macro-unbound-global-exception? _e67142_)
                  (macro-unbound-global-exception-rte _e67142_)
                  (let ((__tmp68523
                         (let ((__tmp68524
                                (let ()
                                  (declare (not safe))
                                  (cons _e67142_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68524))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68523))))
            (if (macro-unbound-global-exception? _exn67140_)
                (macro-unbound-global-exception-rte _exn67140_)
                (let ((__tmp68521
                       (let ((__tmp68522
                              (let ()
                                (declare (not safe))
                                (cons _exn67140_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68522))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68521))))))
    (define unbound-global-exception-variable
      (lambda (_exn67134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67134_))
            (let ((_e67137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67134_ 'exception))))
              (if (macro-unbound-global-exception? _e67137_)
                  (macro-unbound-global-exception-variable _e67137_)
                  (let ((__tmp68527
                         (let ((__tmp68528
                                (let ()
                                  (declare (not safe))
                                  (cons _e67137_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68528))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68527))))
            (if (macro-unbound-global-exception? _exn67134_)
                (macro-unbound-global-exception-variable _exn67134_)
                (let ((__tmp68525
                       (let ((__tmp68526
                              (let ()
                                (declare (not safe))
                                (cons _exn67134_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68526))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68525))))))
    (define unbound-key-exception?
      (lambda (_exn67130_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67130_))
            (let ((_e67132_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67130_ 'exception))))
              (macro-unbound-key-exception? _e67132_))
            (macro-unbound-key-exception? _exn67130_))))
    (define unbound-key-exception-arguments
      (lambda (_exn67126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67126_))
            (let ((_e67128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67126_ 'exception))))
              (if (macro-unbound-key-exception? _e67128_)
                  (macro-unbound-key-exception-arguments _e67128_)
                  (let ((__tmp68531
                         (let ((__tmp68532
                                (let ()
                                  (declare (not safe))
                                  (cons _e67128_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68532))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68531))))
            (if (macro-unbound-key-exception? _exn67126_)
                (macro-unbound-key-exception-arguments _exn67126_)
                (let ((__tmp68529
                       (let ((__tmp68530
                              (let ()
                                (declare (not safe))
                                (cons _exn67126_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68530))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68529))))))
    (define unbound-key-exception-procedure
      (lambda (_exn67120_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67120_))
            (let ((_e67123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67120_ 'exception))))
              (if (macro-unbound-key-exception? _e67123_)
                  (macro-unbound-key-exception-procedure _e67123_)
                  (let ((__tmp68535
                         (let ((__tmp68536
                                (let ()
                                  (declare (not safe))
                                  (cons _e67123_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68536))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68535))))
            (if (macro-unbound-key-exception? _exn67120_)
                (macro-unbound-key-exception-procedure _exn67120_)
                (let ((__tmp68533
                       (let ((__tmp68534
                              (let ()
                                (declare (not safe))
                                (cons _exn67120_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68534))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68533))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn67116_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67116_))
            (let ((_e67118_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67116_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e67118_))
            (macro-unbound-os-environment-variable-exception? _exn67116_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn67112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67112_))
            (let ((_e67114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67112_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67114_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e67114_)
                  (let ((__tmp68539
                         (let ((__tmp68540
                                (let ()
                                  (declare (not safe))
                                  (cons _e67114_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68540))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68539))))
            (if (macro-unbound-os-environment-variable-exception? _exn67112_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn67112_)
                (let ((__tmp68537
                       (let ((__tmp68538
                              (let ()
                                (declare (not safe))
                                (cons _exn67112_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68538))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68537))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn67106_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67106_))
            (let ((_e67109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67106_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67109_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e67109_)
                  (let ((__tmp68543
                         (let ((__tmp68544
                                (let ()
                                  (declare (not safe))
                                  (cons _e67109_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68544))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68543))))
            (if (macro-unbound-os-environment-variable-exception? _exn67106_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn67106_)
                (let ((__tmp68541
                       (let ((__tmp68542
                              (let ()
                                (declare (not safe))
                                (cons _exn67106_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68542))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68541))))))
    (define unbound-serial-number-exception?
      (lambda (_exn67102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67102_))
            (let ((_e67104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67102_ 'exception))))
              (macro-unbound-serial-number-exception? _e67104_))
            (macro-unbound-serial-number-exception? _exn67102_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn67098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67098_))
            (let ((_e67100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67098_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67100_)
                  (macro-unbound-serial-number-exception-arguments _e67100_)
                  (let ((__tmp68547
                         (let ((__tmp68548
                                (let ()
                                  (declare (not safe))
                                  (cons _e67100_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68548))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68547))))
            (if (macro-unbound-serial-number-exception? _exn67098_)
                (macro-unbound-serial-number-exception-arguments _exn67098_)
                (let ((__tmp68545
                       (let ((__tmp68546
                              (let ()
                                (declare (not safe))
                                (cons _exn67098_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68546))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68545))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn67092_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67092_))
            (let ((_e67095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67092_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67095_)
                  (macro-unbound-serial-number-exception-procedure _e67095_)
                  (let ((__tmp68551
                         (let ((__tmp68552
                                (let ()
                                  (declare (not safe))
                                  (cons _e67095_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68552))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68551))))
            (if (macro-unbound-serial-number-exception? _exn67092_)
                (macro-unbound-serial-number-exception-procedure _exn67092_)
                (let ((__tmp68549
                       (let ((__tmp68550
                              (let ()
                                (declare (not safe))
                                (cons _exn67092_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68550))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68549))))))
    (define uncaught-exception?
      (lambda (_exn67088_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67088_))
            (let ((_e67090_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67088_ 'exception))))
              (macro-uncaught-exception? _e67090_))
            (macro-uncaught-exception? _exn67088_))))
    (define uncaught-exception-arguments
      (lambda (_exn67084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67084_))
            (let ((_e67086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67084_ 'exception))))
              (if (macro-uncaught-exception? _e67086_)
                  (macro-uncaught-exception-arguments _e67086_)
                  (let ((__tmp68555
                         (let ((__tmp68556
                                (let ()
                                  (declare (not safe))
                                  (cons _e67086_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68556))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68555))))
            (if (macro-uncaught-exception? _exn67084_)
                (macro-uncaught-exception-arguments _exn67084_)
                (let ((__tmp68553
                       (let ((__tmp68554
                              (let ()
                                (declare (not safe))
                                (cons _exn67084_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68554))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68553))))))
    (define uncaught-exception-procedure
      (lambda (_exn67080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67080_))
            (let ((_e67082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67080_ 'exception))))
              (if (macro-uncaught-exception? _e67082_)
                  (macro-uncaught-exception-procedure _e67082_)
                  (let ((__tmp68559
                         (let ((__tmp68560
                                (let ()
                                  (declare (not safe))
                                  (cons _e67082_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68560))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68559))))
            (if (macro-uncaught-exception? _exn67080_)
                (macro-uncaught-exception-procedure _exn67080_)
                (let ((__tmp68557
                       (let ((__tmp68558
                              (let ()
                                (declare (not safe))
                                (cons _exn67080_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68558))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68557))))))
    (define uncaught-exception-reason
      (lambda (_exn67074_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67074_))
            (let ((_e67077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67074_ 'exception))))
              (if (macro-uncaught-exception? _e67077_)
                  (macro-uncaught-exception-reason _e67077_)
                  (let ((__tmp68563
                         (let ((__tmp68564
                                (let ()
                                  (declare (not safe))
                                  (cons _e67077_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68564))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68563))))
            (if (macro-uncaught-exception? _exn67074_)
                (macro-uncaught-exception-reason _exn67074_)
                (let ((__tmp68561
                       (let ((__tmp68562
                              (let ()
                                (declare (not safe))
                                (cons _exn67074_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68562))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68561))))))
    (define uninitialized-thread-exception?
      (lambda (_exn67070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67070_))
            (let ((_e67072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67070_ 'exception))))
              (macro-uninitialized-thread-exception? _e67072_))
            (macro-uninitialized-thread-exception? _exn67070_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn67066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67066_))
            (let ((_e67068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67066_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67068_)
                  (macro-uninitialized-thread-exception-arguments _e67068_)
                  (let ((__tmp68567
                         (let ((__tmp68568
                                (let ()
                                  (declare (not safe))
                                  (cons _e67068_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68568))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68567))))
            (if (macro-uninitialized-thread-exception? _exn67066_)
                (macro-uninitialized-thread-exception-arguments _exn67066_)
                (let ((__tmp68565
                       (let ((__tmp68566
                              (let ()
                                (declare (not safe))
                                (cons _exn67066_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68566))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68565))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn67060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67060_))
            (let ((_e67063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67060_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67063_)
                  (macro-uninitialized-thread-exception-procedure _e67063_)
                  (let ((__tmp68571
                         (let ((__tmp68572
                                (let ()
                                  (declare (not safe))
                                  (cons _e67063_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68572))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68571))))
            (if (macro-uninitialized-thread-exception? _exn67060_)
                (macro-uninitialized-thread-exception-procedure _exn67060_)
                (let ((__tmp68569
                       (let ((__tmp68570
                              (let ()
                                (declare (not safe))
                                (cons _exn67060_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68570))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68569))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn67056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67056_))
            (let ((_e67058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67056_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e67058_))
            (macro-unknown-keyword-argument-exception? _exn67056_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn67052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67052_))
            (let ((_e67054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67052_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67054_)
                  (macro-unknown-keyword-argument-exception-arguments _e67054_)
                  (let ((__tmp68575
                         (let ((__tmp68576
                                (let ()
                                  (declare (not safe))
                                  (cons _e67054_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68576))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68575))))
            (if (macro-unknown-keyword-argument-exception? _exn67052_)
                (macro-unknown-keyword-argument-exception-arguments _exn67052_)
                (let ((__tmp68573
                       (let ((__tmp68574
                              (let ()
                                (declare (not safe))
                                (cons _exn67052_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68574))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68573))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn67046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67046_))
            (let ((_e67049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67046_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67049_)
                  (macro-unknown-keyword-argument-exception-procedure _e67049_)
                  (let ((__tmp68579
                         (let ((__tmp68580
                                (let ()
                                  (declare (not safe))
                                  (cons _e67049_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68580))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68579))))
            (if (macro-unknown-keyword-argument-exception? _exn67046_)
                (macro-unknown-keyword-argument-exception-procedure _exn67046_)
                (let ((__tmp68577
                       (let ((__tmp68578
                              (let ()
                                (declare (not safe))
                                (cons _exn67046_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68578))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68577))))))
    (define unterminated-process-exception?
      (lambda (_exn67042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67042_))
            (let ((_e67044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67042_ 'exception))))
              (macro-unterminated-process-exception? _e67044_))
            (macro-unterminated-process-exception? _exn67042_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn67038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67038_))
            (let ((_e67040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67038_ 'exception))))
              (if (macro-unterminated-process-exception? _e67040_)
                  (macro-unterminated-process-exception-arguments _e67040_)
                  (let ((__tmp68583
                         (let ((__tmp68584
                                (let ()
                                  (declare (not safe))
                                  (cons _e67040_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68584))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68583))))
            (if (macro-unterminated-process-exception? _exn67038_)
                (macro-unterminated-process-exception-arguments _exn67038_)
                (let ((__tmp68581
                       (let ((__tmp68582
                              (let ()
                                (declare (not safe))
                                (cons _exn67038_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68582))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68581))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn67032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67032_))
            (let ((_e67035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67032_ 'exception))))
              (if (macro-unterminated-process-exception? _e67035_)
                  (macro-unterminated-process-exception-procedure _e67035_)
                  (let ((__tmp68587
                         (let ((__tmp68588
                                (let ()
                                  (declare (not safe))
                                  (cons _e67035_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68588))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68587))))
            (if (macro-unterminated-process-exception? _exn67032_)
                (macro-unterminated-process-exception-procedure _exn67032_)
                (let ((__tmp68585
                       (let ((__tmp68586
                              (let ()
                                (declare (not safe))
                                (cons _exn67032_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68586))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68585))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn67028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67028_))
            (let ((_e67030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67028_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e67030_))
            (macro-wrong-number-of-arguments-exception? _exn67028_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn67024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67024_))
            (let ((_e67026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67024_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67026_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e67026_)
                  (let ((__tmp68591
                         (let ((__tmp68592
                                (let ()
                                  (declare (not safe))
                                  (cons _e67026_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68592))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68591))))
            (if (macro-wrong-number-of-arguments-exception? _exn67024_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn67024_)
                (let ((__tmp68589
                       (let ((__tmp68590
                              (let ()
                                (declare (not safe))
                                (cons _exn67024_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68590))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68589))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn67018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67018_))
            (let ((_e67021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67018_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e67021_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e67021_)
                  (let ((__tmp68595
                         (let ((__tmp68596
                                (let ()
                                  (declare (not safe))
                                  (cons _e67021_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68596))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68595))))
            (if (macro-wrong-number-of-arguments-exception? _exn67018_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn67018_)
                (let ((__tmp68593
                       (let ((__tmp68594
                              (let ()
                                (declare (not safe))
                                (cons _exn67018_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68594))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68593))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn67014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67014_))
            (let ((_e67016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67014_ 'exception))))
              (macro-wrong-number-of-values-exception? _e67016_))
            (macro-wrong-number-of-values-exception? _exn67014_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn67010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67010_))
            (let ((_e67012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67010_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67012_)
                  (macro-wrong-number-of-values-exception-code _e67012_)
                  (let ((__tmp68599
                         (let ((__tmp68600
                                (let ()
                                  (declare (not safe))
                                  (cons _e67012_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68600))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68599))))
            (if (macro-wrong-number-of-values-exception? _exn67010_)
                (macro-wrong-number-of-values-exception-code _exn67010_)
                (let ((__tmp68597
                       (let ((__tmp68598
                              (let ()
                                (declare (not safe))
                                (cons _exn67010_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68598))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68597))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn67006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67006_))
            (let ((_e67008_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67006_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67008_)
                  (macro-wrong-number-of-values-exception-rte _e67008_)
                  (let ((__tmp68603
                         (let ((__tmp68604
                                (let ()
                                  (declare (not safe))
                                  (cons _e67008_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68604))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68603))))
            (if (macro-wrong-number-of-values-exception? _exn67006_)
                (macro-wrong-number-of-values-exception-rte _exn67006_)
                (let ((__tmp68601
                       (let ((__tmp68602
                              (let ()
                                (declare (not safe))
                                (cons _exn67006_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68602))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68601))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn67000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67000_))
            (let ((_e67003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67000_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e67003_)
                  (macro-wrong-number-of-values-exception-vals _e67003_)
                  (let ((__tmp68607
                         (let ((__tmp68608
                                (let ()
                                  (declare (not safe))
                                  (cons _e67003_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68608))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68607))))
            (if (macro-wrong-number-of-values-exception? _exn67000_)
                (macro-wrong-number-of-values-exception-vals _exn67000_)
                (let ((__tmp68605
                       (let ((__tmp68606
                              (let ()
                                (declare (not safe))
                                (cons _exn67000_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68606))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68605))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn66994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66994_))
            (let ((_e66997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66994_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e66997_))
            (macro-wrong-processor-c-return-exception? _exn66994_))))))
