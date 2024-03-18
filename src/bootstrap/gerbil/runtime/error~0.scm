(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710774316)
  (begin
    (define Exception::t
      (let ((__tmp68154 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp68154
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args68122_ (apply make-instance Exception::t _$args68122_)))
    (define StackTrace::t
      (let ((__tmp68155 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp68155
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args68119_ (apply make-instance StackTrace::t _$args68119_)))
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
      (let ((__tmp68156 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp68156
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args68116_ (apply make-instance Error::t _$args68116_)))
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
      (let ((__tmp68157 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp68157
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args68113_
        (apply make-instance RuntimeException::t _$args68113_)))
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
      (lambda (_exn68108_ _continue68109_)
        (let ((_exn68111_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn68108_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn68111_ _continue68109_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn68104_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn68104_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn68104_ 'continuation))
                '#!void
                (let ((__tmp68158
                       (lambda (_cont68106_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn68104_
                            'continuation
                            _cont68106_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp68158)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn68104_))))
    (define error
      (lambda (_message68101_ . _irritants68102_)
        (raise (let ((__obj68148
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj68148
                  _message68101_
                  'irritants:
                  _irritants68102_)
                 __obj68148))))
    (define with-exception-handler
      (lambda (_handler68094_ _thunk68095_)
        (if (let () (declare (not safe)) (procedure? _handler68094_))
            '#!void
            (raise (let ((__obj68149
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68149
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68094_ '())))
                     __obj68149)))
        (if (let () (declare (not safe)) (procedure? _thunk68095_))
            '#!void
            (raise (let ((__obj68150
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68150
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68095_ '())))
                     __obj68150)))
        (let ((__tmp68159
               (lambda (_exn68097_)
                 (let ((_exn68099_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn68097_))))
                   (_handler68094_ _exn68099_)))))
          (declare (not safe))
          (##with-exception-handler __tmp68159 _thunk68095_))))
    (define with-catch
      (lambda (_handler68087_ _thunk68088_)
        (if (let () (declare (not safe)) (procedure? _handler68087_))
            '#!void
            (raise (let ((__obj68151
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68151
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler68087_ '())))
                     __obj68151)))
        (if (let () (declare (not safe)) (procedure? _thunk68088_))
            '#!void
            (raise (let ((__obj68152
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj68152
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk68088_ '())))
                     __obj68152)))
        (let ((__tmp68160
               (lambda (_cont68090_)
                 (with-exception-handler
                  (lambda (_exn68092_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont68090_
                       _handler68087_
                       _exn68092_)))
                  _thunk68088_))))
          (declare (not safe))
          (##continuation-capture __tmp68160))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn68078_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn68078_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn68078_)))
            _exn68078_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn68078_))
                _exn68078_
                (if (macro-exception? _exn68078_)
                    (let ((_rte68083_
                           (let ((__obj68153
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj68153
                                _exn68078_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj68153)))
                      (let ((__tmp68161
                             (lambda (_cont68085_)
                               (let ((__tmp68162
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont68085_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte68083_
                                  'continuation
                                  __tmp68162)))))
                        (declare (not safe))
                        (##continuation-capture __tmp68161))
                      _rte68083_)
                    _exn68078_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj68073_)
        (let ((_$e68075_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj68073_))))
          (if _$e68075_
              _$e68075_
              (let () (declare (not safe)) (error-exception? _obj68073_))))))
    (define error-message
      (lambda (_obj68071_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68071_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68071_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj68071_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj68071_))
                '#f))))
    (define error-irritants
      (lambda (_obj68069_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68069_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68069_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj68069_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj68069_))
                '#f))))
    (define error-trace
      (lambda (_obj68067_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj68067_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj68067_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e68049_ _port68050_)
        (let ((_$e68052_
               (let ()
                 (declare (not safe))
                 (method-ref _e68049_ 'display-exception))))
          (if _$e68052_
              ((lambda (_f68055_) (_f68055_ _e68049_ _port68050_)) _$e68052_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e68049_ _port68050_))))))
    (define display-exception__0
      (lambda (_e68060_)
        (let ((_port68062_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e68060_ _port68062_))))
    (define display-exception
      (lambda _g68164_
        (let ((_g68163_ (let () (declare (not safe)) (##length _g68164_))))
          (cond ((let () (declare (not safe)) (##fx= _g68163_ 1))
                 (apply (lambda (_e68060_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e68060_)))
                        _g68164_))
                ((let () (declare (not safe)) (##fx= _g68163_ 2))
                 (apply (lambda (_e68064_ _port68065_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e68064_ _port68065_)))
                        _g68164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g68164_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self68038_ _message68039_ . _rest68040_)
        (let ((_message68046_
               (if (let () (declare (not safe)) (string? _message68039_))
                   _message68039_
                   (call-with-output-string
                    '""
                    (lambda (_g6804168043_)
                      (display _message68039_ _g6804168043_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self68038_ 'message _message68046_))
          (apply class-instance-init! _self68038_ _rest68040_))))
    (define Error:::init!::specialize
      (lambda (__klass68124 __method-table68125)
        (let ((__message68126
               (let ((__slot68127
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68124 'message))))
                 (if __slot68127
                     __slot68127
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self68038_ _message68039_ . _rest68040_)
            (let ((_message68046_
                   (if (let () (declare (not safe)) (string? _message68039_))
                       _message68039_
                       (call-with-output-string
                        '""
                        (lambda (_g6804168043_)
                          (display _message68039_ _g6804168043_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self68038_
                 _message68046_
                 __message68126
                 __klass68124
                 '#f))
              (apply class-instance-init! _self68038_ _rest68040_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67896_ _port67897_)
        (let ((_tmp-port67899_ (open-output-string))
              (_display-error-newline67900_
               (> (output-port-column _port67897_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67899_))
          (let ((__tmp68165
                 (lambda ()
                   (if _display-error-newline67900_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67903_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67896_ 'where))))
                     (if _$e67903_ (display _$e67903_) (display '"?")))
                   (let ((__tmp68166
                          (let ((__tmp68167 (object-type _self67896_)))
                            (declare (not safe))
                            (##type-name __tmp68167))))
                     (declare (not safe))
                     (display* '" [" __tmp68166 '"]: "))
                   (let ((__tmp68168
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67896_ 'message))))
                     (declare (not safe))
                     (displayln __tmp68168))
                   (let ((_irritants67906_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67896_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67906_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67908_)
                              (write _obj67908_)
                              (write-char '#\space))
                            _irritants67906_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67896_))
                            (dump-stack-trace?))
                       (let ((_cont6790967911_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67896_
                                 'continuation))))
                         (if _cont6790967911_
                             (let ((_cont67914_ _cont6790967911_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67914_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp68165
             current-output-port
             _tmp-port67899_))
          (let ((__tmp68169 (get-output-string _tmp-port67899_)))
            (declare (not safe))
            (##write-string __tmp68169 _port67897_)))))
    (define Error::display-exception::specialize
      (lambda (__klass68128 __method-table68129)
        (let ((__irritants68130
               (let ((__slot68134
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68128 'irritants))))
                 (if __slot68134
                     __slot68134
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__where68131
               (let ((__slot68135
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68128 'where))))
                 (if __slot68135
                     __slot68135
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__message68132
               (let ((__slot68136
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68128 'message))))
                 (if __slot68136
                     __slot68136
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__continuation68133
               (let ((__slot68137
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68128 'continuation))))
                 (if __slot68137
                     __slot68137
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67896_ _port67897_)
            (let ((_tmp-port67899_ (open-output-string))
                  (_display-error-newline67900_
                   (> (output-port-column _port67897_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67899_))
              (let ((__tmp68170
                     (lambda ()
                       (if _display-error-newline67900_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67903_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67896_
                                 __where68131
                                 __klass68128
                                 '#f))))
                         (if _$e67903_ (display _$e67903_) (display '"?")))
                       (let ((__tmp68171
                              (let ((__tmp68172 (object-type _self67896_)))
                                (declare (not safe))
                                (##type-name __tmp68172))))
                         (declare (not safe))
                         (display* '" [" __tmp68171 '"]: "))
                       (let ((__tmp68173
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67896_
                                 __message68132
                                 __klass68128
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp68173))
                       (let ((_irritants67906_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67896_
                                 __irritants68130
                                 __klass68128
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67906_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67908_)
                                  (write _obj67908_)
                                  (write-char '#\space))
                                _irritants67906_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67896_))
                                (dump-stack-trace?))
                           (let ((_cont6790967911_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67896_
                                     __continuation68133
                                     __klass68128
                                     '#f))))
                             (if _cont6790967911_
                                 (let ((_cont67914_ _cont6790967911_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67914_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp68170
                 current-output-port
                 _tmp-port67899_))
              (let ((__tmp68174 (get-output-string _tmp-port67899_)))
                (declare (not safe))
                (##write-string __tmp68174 _port67897_)))))))
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
      (lambda (_self67763_ _port67764_)
        (let ((_tmp-port67766_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67766_))
          (let ((__tmp68175
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67763_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp68175 _tmp-port67766_))
          (if (dump-stack-trace?)
              (let ((_cont6776767769_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67763_ 'continuation))))
                (if _cont6776767769_
                    (let ((_cont67772_ _cont6776767769_))
                      (display '"--- continuation backtrace:" _tmp-port67766_)
                      (newline _tmp-port67766_)
                      (display-continuation-backtrace
                       _cont67772_
                       _tmp-port67766_))
                    '#f))
              '#!void)
          (let ((__tmp68176 (get-output-string _tmp-port67766_)))
            (declare (not safe))
            (##write-string __tmp68176 _port67764_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass68138 __method-table68139)
        (let ((__continuation68140
               (let ((__slot68142
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68138 'continuation))))
                 (if __slot68142
                     __slot68142
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception68141
               (let ((__slot68143
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass68138 'exception))))
                 (if __slot68143
                     __slot68143
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self67763_ _port67764_)
            (let ((_tmp-port67766_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67766_))
              (let ((__tmp68177
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67763_
                        __exception68141
                        __klass68138
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp68177 _tmp-port67766_))
              (if (dump-stack-trace?)
                  (let ((_cont6776767769_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67763_
                            __continuation68140
                            __klass68138
                            '#f))))
                    (if _cont6776767769_
                        (let ((_cont67772_ _cont6776767769_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67766_)
                          (newline _tmp-port67766_)
                          (display-continuation-backtrace
                           _cont67772_
                           _tmp-port67766_))
                        '#f))
                  '#!void)
              (let ((__tmp68178 (get-output-string _tmp-port67766_)))
                (declare (not safe))
                (##write-string __tmp68178 _port67764_)))))))
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
      (lambda (_port67635_)
        (if (macro-character-port? _port67635_)
            (let ((_old-width67637_
                   (macro-character-port-output-width _port67635_)))
              (macro-character-port-output-width-set!
               _port67635_
               (lambda (_port67639_) '256))
              _old-width67637_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67632_ _old-width67633_)
        (if (macro-character-port? _port67632_)
            (macro-character-port-output-width-set!
             _port67632_
             _old-width67633_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67630_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67630_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67624_))
            (let ((_e67627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67624_ 'exception))))
              (macro-abandoned-mutex-exception? _e67627_))
            (macro-abandoned-mutex-exception? _exn67624_))))
    (define cfun-conversion-exception?
      (lambda (_exn67620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67620_))
            (let ((_e67622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67620_ 'exception))))
              (macro-cfun-conversion-exception? _e67622_))
            (macro-cfun-conversion-exception? _exn67620_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67616_))
            (let ((_e67618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67616_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67618_)
                  (macro-cfun-conversion-exception-arguments _e67618_)
                  (let ((__tmp68181
                         (let ((__tmp68182
                                (let ()
                                  (declare (not safe))
                                  (cons _e67618_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp68182))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68181))))
            (if (macro-cfun-conversion-exception? _exn67616_)
                (macro-cfun-conversion-exception-arguments _exn67616_)
                (let ((__tmp68179
                       (let ((__tmp68180
                              (let ()
                                (declare (not safe))
                                (cons _exn67616_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp68180))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68179))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67612_))
            (let ((_e67614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67612_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67614_)
                  (macro-cfun-conversion-exception-code _e67614_)
                  (let ((__tmp68185
                         (let ((__tmp68186
                                (let ()
                                  (declare (not safe))
                                  (cons _e67614_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp68186))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68185))))
            (if (macro-cfun-conversion-exception? _exn67612_)
                (macro-cfun-conversion-exception-code _exn67612_)
                (let ((__tmp68183
                       (let ((__tmp68184
                              (let ()
                                (declare (not safe))
                                (cons _exn67612_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp68184))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68183))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67608_))
            (let ((_e67610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67608_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67610_)
                  (macro-cfun-conversion-exception-message _e67610_)
                  (let ((__tmp68189
                         (let ((__tmp68190
                                (let ()
                                  (declare (not safe))
                                  (cons _e67610_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp68190))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68189))))
            (if (macro-cfun-conversion-exception? _exn67608_)
                (macro-cfun-conversion-exception-message _exn67608_)
                (let ((__tmp68187
                       (let ((__tmp68188
                              (let ()
                                (declare (not safe))
                                (cons _exn67608_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp68188))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68187))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67602_))
            (let ((_e67605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67602_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67605_)
                  (macro-cfun-conversion-exception-procedure _e67605_)
                  (let ((__tmp68193
                         (let ((__tmp68194
                                (let ()
                                  (declare (not safe))
                                  (cons _e67605_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp68194))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp68193))))
            (if (macro-cfun-conversion-exception? _exn67602_)
                (macro-cfun-conversion-exception-procedure _exn67602_)
                (let ((__tmp68191
                       (let ((__tmp68192
                              (let ()
                                (declare (not safe))
                                (cons _exn67602_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp68192))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp68191))))))
    (define datum-parsing-exception?
      (lambda (_exn67598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67598_))
            (let ((_e67600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67598_ 'exception))))
              (macro-datum-parsing-exception? _e67600_))
            (macro-datum-parsing-exception? _exn67598_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67594_))
            (let ((_e67596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67594_ 'exception))))
              (if (macro-datum-parsing-exception? _e67596_)
                  (macro-datum-parsing-exception-kind _e67596_)
                  (let ((__tmp68197
                         (let ((__tmp68198
                                (let ()
                                  (declare (not safe))
                                  (cons _e67596_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp68198))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68197))))
            (if (macro-datum-parsing-exception? _exn67594_)
                (macro-datum-parsing-exception-kind _exn67594_)
                (let ((__tmp68195
                       (let ((__tmp68196
                              (let ()
                                (declare (not safe))
                                (cons _exn67594_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp68196))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68195))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67590_))
            (let ((_e67592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67590_ 'exception))))
              (if (macro-datum-parsing-exception? _e67592_)
                  (macro-datum-parsing-exception-parameters _e67592_)
                  (let ((__tmp68201
                         (let ((__tmp68202
                                (let ()
                                  (declare (not safe))
                                  (cons _e67592_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp68202))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68201))))
            (if (macro-datum-parsing-exception? _exn67590_)
                (macro-datum-parsing-exception-parameters _exn67590_)
                (let ((__tmp68199
                       (let ((__tmp68200
                              (let ()
                                (declare (not safe))
                                (cons _exn67590_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp68200))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68199))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67584_))
            (let ((_e67587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67584_ 'exception))))
              (if (macro-datum-parsing-exception? _e67587_)
                  (macro-datum-parsing-exception-readenv _e67587_)
                  (let ((__tmp68205
                         (let ((__tmp68206
                                (let ()
                                  (declare (not safe))
                                  (cons _e67587_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp68206))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp68205))))
            (if (macro-datum-parsing-exception? _exn67584_)
                (macro-datum-parsing-exception-readenv _exn67584_)
                (let ((__tmp68203
                       (let ((__tmp68204
                              (let ()
                                (declare (not safe))
                                (cons _exn67584_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp68204))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp68203))))))
    (define deadlock-exception?
      (lambda (_exn67578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67578_))
            (let ((_e67581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67578_ 'exception))))
              (macro-deadlock-exception? _e67581_))
            (macro-deadlock-exception? _exn67578_))))
    (define divide-by-zero-exception?
      (lambda (_exn67574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67574_))
            (let ((_e67576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67574_ 'exception))))
              (macro-divide-by-zero-exception? _e67576_))
            (macro-divide-by-zero-exception? _exn67574_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67570_))
            (let ((_e67572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67570_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67572_)
                  (macro-divide-by-zero-exception-arguments _e67572_)
                  (let ((__tmp68209
                         (let ((__tmp68210
                                (let ()
                                  (declare (not safe))
                                  (cons _e67572_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp68210))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68209))))
            (if (macro-divide-by-zero-exception? _exn67570_)
                (macro-divide-by-zero-exception-arguments _exn67570_)
                (let ((__tmp68207
                       (let ((__tmp68208
                              (let ()
                                (declare (not safe))
                                (cons _exn67570_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp68208))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68207))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67564_))
            (let ((_e67567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67564_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67567_)
                  (macro-divide-by-zero-exception-procedure _e67567_)
                  (let ((__tmp68213
                         (let ((__tmp68214
                                (let ()
                                  (declare (not safe))
                                  (cons _e67567_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp68214))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp68213))))
            (if (macro-divide-by-zero-exception? _exn67564_)
                (macro-divide-by-zero-exception-procedure _exn67564_)
                (let ((__tmp68211
                       (let ((__tmp68212
                              (let ()
                                (declare (not safe))
                                (cons _exn67564_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp68212))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp68211))))))
    (define error-exception?
      (lambda (_exn67560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67560_))
            (let ((_e67562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67560_ 'exception))))
              (macro-error-exception? _e67562_))
            (macro-error-exception? _exn67560_))))
    (define error-exception-message
      (lambda (_exn67556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67556_))
            (let ((_e67558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67556_ 'exception))))
              (if (macro-error-exception? _e67558_)
                  (macro-error-exception-message _e67558_)
                  (let ((__tmp68217
                         (let ((__tmp68218
                                (let ()
                                  (declare (not safe))
                                  (cons _e67558_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp68218))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68217))))
            (if (macro-error-exception? _exn67556_)
                (macro-error-exception-message _exn67556_)
                (let ((__tmp68215
                       (let ((__tmp68216
                              (let ()
                                (declare (not safe))
                                (cons _exn67556_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp68216))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68215))))))
    (define error-exception-parameters
      (lambda (_exn67550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67550_))
            (let ((_e67553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67550_ 'exception))))
              (if (macro-error-exception? _e67553_)
                  (macro-error-exception-parameters _e67553_)
                  (let ((__tmp68221
                         (let ((__tmp68222
                                (let ()
                                  (declare (not safe))
                                  (cons _e67553_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp68222))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp68221))))
            (if (macro-error-exception? _exn67550_)
                (macro-error-exception-parameters _exn67550_)
                (let ((__tmp68219
                       (let ((__tmp68220
                              (let ()
                                (declare (not safe))
                                (cons _exn67550_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp68220))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp68219))))))
    (define expression-parsing-exception?
      (lambda (_exn67546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67546_))
            (let ((_e67548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67546_ 'exception))))
              (macro-expression-parsing-exception? _e67548_))
            (macro-expression-parsing-exception? _exn67546_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67542_))
            (let ((_e67544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67542_ 'exception))))
              (if (macro-expression-parsing-exception? _e67544_)
                  (macro-expression-parsing-exception-kind _e67544_)
                  (let ((__tmp68225
                         (let ((__tmp68226
                                (let ()
                                  (declare (not safe))
                                  (cons _e67544_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp68226))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68225))))
            (if (macro-expression-parsing-exception? _exn67542_)
                (macro-expression-parsing-exception-kind _exn67542_)
                (let ((__tmp68223
                       (let ((__tmp68224
                              (let ()
                                (declare (not safe))
                                (cons _exn67542_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp68224))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68223))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67538_))
            (let ((_e67540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67538_ 'exception))))
              (if (macro-expression-parsing-exception? _e67540_)
                  (macro-expression-parsing-exception-parameters _e67540_)
                  (let ((__tmp68229
                         (let ((__tmp68230
                                (let ()
                                  (declare (not safe))
                                  (cons _e67540_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp68230))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68229))))
            (if (macro-expression-parsing-exception? _exn67538_)
                (macro-expression-parsing-exception-parameters _exn67538_)
                (let ((__tmp68227
                       (let ((__tmp68228
                              (let ()
                                (declare (not safe))
                                (cons _exn67538_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp68228))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68227))))))
    (define expression-parsing-exception-source
      (lambda (_exn67532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67532_))
            (let ((_e67535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67532_ 'exception))))
              (if (macro-expression-parsing-exception? _e67535_)
                  (macro-expression-parsing-exception-source _e67535_)
                  (let ((__tmp68233
                         (let ((__tmp68234
                                (let ()
                                  (declare (not safe))
                                  (cons _e67535_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp68234))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp68233))))
            (if (macro-expression-parsing-exception? _exn67532_)
                (macro-expression-parsing-exception-source _exn67532_)
                (let ((__tmp68231
                       (let ((__tmp68232
                              (let ()
                                (declare (not safe))
                                (cons _exn67532_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp68232))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp68231))))))
    (define file-exists-exception?
      (lambda (_exn67528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67528_))
            (let ((_e67530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67528_ 'exception))))
              (macro-file-exists-exception? _e67530_))
            (macro-file-exists-exception? _exn67528_))))
    (define file-exists-exception-arguments
      (lambda (_exn67524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67524_))
            (let ((_e67526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67524_ 'exception))))
              (if (macro-file-exists-exception? _e67526_)
                  (macro-file-exists-exception-arguments _e67526_)
                  (let ((__tmp68237
                         (let ((__tmp68238
                                (let ()
                                  (declare (not safe))
                                  (cons _e67526_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp68238))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68237))))
            (if (macro-file-exists-exception? _exn67524_)
                (macro-file-exists-exception-arguments _exn67524_)
                (let ((__tmp68235
                       (let ((__tmp68236
                              (let ()
                                (declare (not safe))
                                (cons _exn67524_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp68236))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68235))))))
    (define file-exists-exception-procedure
      (lambda (_exn67518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67518_))
            (let ((_e67521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67518_ 'exception))))
              (if (macro-file-exists-exception? _e67521_)
                  (macro-file-exists-exception-procedure _e67521_)
                  (let ((__tmp68241
                         (let ((__tmp68242
                                (let ()
                                  (declare (not safe))
                                  (cons _e67521_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp68242))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68241))))
            (if (macro-file-exists-exception? _exn67518_)
                (macro-file-exists-exception-procedure _exn67518_)
                (let ((__tmp68239
                       (let ((__tmp68240
                              (let ()
                                (declare (not safe))
                                (cons _exn67518_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp68240))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68239))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67514_))
            (let ((_e67516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67514_ 'exception))))
              (macro-fixnum-overflow-exception? _e67516_))
            (macro-fixnum-overflow-exception? _exn67514_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67510_))
            (let ((_e67512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67510_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67512_)
                  (macro-fixnum-overflow-exception-arguments _e67512_)
                  (let ((__tmp68245
                         (let ((__tmp68246
                                (let ()
                                  (declare (not safe))
                                  (cons _e67512_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp68246))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68245))))
            (if (macro-fixnum-overflow-exception? _exn67510_)
                (macro-fixnum-overflow-exception-arguments _exn67510_)
                (let ((__tmp68243
                       (let ((__tmp68244
                              (let ()
                                (declare (not safe))
                                (cons _exn67510_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp68244))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68243))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67504_))
            (let ((_e67507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67504_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67507_)
                  (macro-fixnum-overflow-exception-procedure _e67507_)
                  (let ((__tmp68249
                         (let ((__tmp68250
                                (let ()
                                  (declare (not safe))
                                  (cons _e67507_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp68250))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68249))))
            (if (macro-fixnum-overflow-exception? _exn67504_)
                (macro-fixnum-overflow-exception-procedure _exn67504_)
                (let ((__tmp68247
                       (let ((__tmp68248
                              (let ()
                                (declare (not safe))
                                (cons _exn67504_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp68248))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68247))))))
    (define heap-overflow-exception?
      (lambda (_exn67498_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67498_))
            (let ((_e67501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67498_ 'exception))))
              (macro-heap-overflow-exception? _e67501_))
            (macro-heap-overflow-exception? _exn67498_))))
    (define inactive-thread-exception?
      (lambda (_exn67494_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67494_))
            (let ((_e67496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67494_ 'exception))))
              (macro-inactive-thread-exception? _e67496_))
            (macro-inactive-thread-exception? _exn67494_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67490_))
            (let ((_e67492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67490_ 'exception))))
              (if (macro-inactive-thread-exception? _e67492_)
                  (macro-inactive-thread-exception-arguments _e67492_)
                  (let ((__tmp68253
                         (let ((__tmp68254
                                (let ()
                                  (declare (not safe))
                                  (cons _e67492_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp68254))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68253))))
            (if (macro-inactive-thread-exception? _exn67490_)
                (macro-inactive-thread-exception-arguments _exn67490_)
                (let ((__tmp68251
                       (let ((__tmp68252
                              (let ()
                                (declare (not safe))
                                (cons _exn67490_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp68252))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68251))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67484_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67484_))
            (let ((_e67487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67484_ 'exception))))
              (if (macro-inactive-thread-exception? _e67487_)
                  (macro-inactive-thread-exception-procedure _e67487_)
                  (let ((__tmp68257
                         (let ((__tmp68258
                                (let ()
                                  (declare (not safe))
                                  (cons _e67487_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp68258))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68257))))
            (if (macro-inactive-thread-exception? _exn67484_)
                (macro-inactive-thread-exception-procedure _exn67484_)
                (let ((__tmp68255
                       (let ((__tmp68256
                              (let ()
                                (declare (not safe))
                                (cons _exn67484_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp68256))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68255))))))
    (define initialized-thread-exception?
      (lambda (_exn67480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67480_))
            (let ((_e67482_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67480_ 'exception))))
              (macro-initialized-thread-exception? _e67482_))
            (macro-initialized-thread-exception? _exn67480_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67476_))
            (let ((_e67478_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67476_ 'exception))))
              (if (macro-initialized-thread-exception? _e67478_)
                  (macro-initialized-thread-exception-arguments _e67478_)
                  (let ((__tmp68261
                         (let ((__tmp68262
                                (let ()
                                  (declare (not safe))
                                  (cons _e67478_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp68262))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68261))))
            (if (macro-initialized-thread-exception? _exn67476_)
                (macro-initialized-thread-exception-arguments _exn67476_)
                (let ((__tmp68259
                       (let ((__tmp68260
                              (let ()
                                (declare (not safe))
                                (cons _exn67476_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp68260))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68259))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67470_))
            (let ((_e67473_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67470_ 'exception))))
              (if (macro-initialized-thread-exception? _e67473_)
                  (macro-initialized-thread-exception-procedure _e67473_)
                  (let ((__tmp68265
                         (let ((__tmp68266
                                (let ()
                                  (declare (not safe))
                                  (cons _e67473_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp68266))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68265))))
            (if (macro-initialized-thread-exception? _exn67470_)
                (macro-initialized-thread-exception-procedure _exn67470_)
                (let ((__tmp68263
                       (let ((__tmp68264
                              (let ()
                                (declare (not safe))
                                (cons _exn67470_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp68264))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68263))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67466_))
            (let ((_e67468_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67466_ 'exception))))
              (macro-invalid-hash-number-exception? _e67468_))
            (macro-invalid-hash-number-exception? _exn67466_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67462_))
            (let ((_e67464_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67462_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67464_)
                  (macro-invalid-hash-number-exception-arguments _e67464_)
                  (let ((__tmp68269
                         (let ((__tmp68270
                                (let ()
                                  (declare (not safe))
                                  (cons _e67464_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp68270))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68269))))
            (if (macro-invalid-hash-number-exception? _exn67462_)
                (macro-invalid-hash-number-exception-arguments _exn67462_)
                (let ((__tmp68267
                       (let ((__tmp68268
                              (let ()
                                (declare (not safe))
                                (cons _exn67462_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp68268))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68267))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67456_))
            (let ((_e67459_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67456_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67459_)
                  (macro-invalid-hash-number-exception-procedure _e67459_)
                  (let ((__tmp68273
                         (let ((__tmp68274
                                (let ()
                                  (declare (not safe))
                                  (cons _e67459_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp68274))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68273))))
            (if (macro-invalid-hash-number-exception? _exn67456_)
                (macro-invalid-hash-number-exception-procedure _exn67456_)
                (let ((__tmp68271
                       (let ((__tmp68272
                              (let ()
                                (declare (not safe))
                                (cons _exn67456_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp68272))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68271))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67452_))
            (let ((_e67454_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67452_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67454_))
            (macro-invalid-utf8-encoding-exception? _exn67452_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67448_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67448_))
            (let ((_e67450_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67448_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67450_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67450_)
                  (let ((__tmp68277
                         (let ((__tmp68278
                                (let ()
                                  (declare (not safe))
                                  (cons _e67450_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp68278))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68277))))
            (if (macro-invalid-utf8-encoding-exception? _exn67448_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67448_)
                (let ((__tmp68275
                       (let ((__tmp68276
                              (let ()
                                (declare (not safe))
                                (cons _exn67448_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp68276))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68275))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67442_))
            (let ((_e67445_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67442_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67445_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67445_)
                  (let ((__tmp68281
                         (let ((__tmp68282
                                (let ()
                                  (declare (not safe))
                                  (cons _e67445_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp68282))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68281))))
            (if (macro-invalid-utf8-encoding-exception? _exn67442_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67442_)
                (let ((__tmp68279
                       (let ((__tmp68280
                              (let ()
                                (declare (not safe))
                                (cons _exn67442_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp68280))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68279))))))
    (define join-timeout-exception?
      (lambda (_exn67438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67438_))
            (let ((_e67440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67438_ 'exception))))
              (macro-join-timeout-exception? _e67440_))
            (macro-join-timeout-exception? _exn67438_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67434_))
            (let ((_e67436_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67434_ 'exception))))
              (if (macro-join-timeout-exception? _e67436_)
                  (macro-join-timeout-exception-arguments _e67436_)
                  (let ((__tmp68285
                         (let ((__tmp68286
                                (let ()
                                  (declare (not safe))
                                  (cons _e67436_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp68286))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68285))))
            (if (macro-join-timeout-exception? _exn67434_)
                (macro-join-timeout-exception-arguments _exn67434_)
                (let ((__tmp68283
                       (let ((__tmp68284
                              (let ()
                                (declare (not safe))
                                (cons _exn67434_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp68284))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68283))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67428_))
            (let ((_e67431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67428_ 'exception))))
              (if (macro-join-timeout-exception? _e67431_)
                  (macro-join-timeout-exception-procedure _e67431_)
                  (let ((__tmp68289
                         (let ((__tmp68290
                                (let ()
                                  (declare (not safe))
                                  (cons _e67431_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp68290))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68289))))
            (if (macro-join-timeout-exception? _exn67428_)
                (macro-join-timeout-exception-procedure _exn67428_)
                (let ((__tmp68287
                       (let ((__tmp68288
                              (let ()
                                (declare (not safe))
                                (cons _exn67428_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp68288))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68287))))))
    (define keyword-expected-exception?
      (lambda (_exn67424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67424_))
            (let ((_e67426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67424_ 'exception))))
              (macro-keyword-expected-exception? _e67426_))
            (macro-keyword-expected-exception? _exn67424_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67420_))
            (let ((_e67422_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67420_ 'exception))))
              (if (macro-keyword-expected-exception? _e67422_)
                  (macro-keyword-expected-exception-arguments _e67422_)
                  (let ((__tmp68293
                         (let ((__tmp68294
                                (let ()
                                  (declare (not safe))
                                  (cons _e67422_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp68294))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68293))))
            (if (macro-keyword-expected-exception? _exn67420_)
                (macro-keyword-expected-exception-arguments _exn67420_)
                (let ((__tmp68291
                       (let ((__tmp68292
                              (let ()
                                (declare (not safe))
                                (cons _exn67420_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp68292))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68291))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67414_))
            (let ((_e67417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67414_ 'exception))))
              (if (macro-keyword-expected-exception? _e67417_)
                  (macro-keyword-expected-exception-procedure _e67417_)
                  (let ((__tmp68297
                         (let ((__tmp68298
                                (let ()
                                  (declare (not safe))
                                  (cons _e67417_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp68298))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68297))))
            (if (macro-keyword-expected-exception? _exn67414_)
                (macro-keyword-expected-exception-procedure _exn67414_)
                (let ((__tmp68295
                       (let ((__tmp68296
                              (let ()
                                (declare (not safe))
                                (cons _exn67414_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp68296))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68295))))))
    (define length-mismatch-exception?
      (lambda (_exn67410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67410_))
            (let ((_e67412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67410_ 'exception))))
              (macro-length-mismatch-exception? _e67412_))
            (macro-length-mismatch-exception? _exn67410_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67406_))
            (let ((_e67408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67406_ 'exception))))
              (if (macro-length-mismatch-exception? _e67408_)
                  (macro-length-mismatch-exception-arg-id _e67408_)
                  (let ((__tmp68301
                         (let ((__tmp68302
                                (let ()
                                  (declare (not safe))
                                  (cons _e67408_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp68302))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68301))))
            (if (macro-length-mismatch-exception? _exn67406_)
                (macro-length-mismatch-exception-arg-id _exn67406_)
                (let ((__tmp68299
                       (let ((__tmp68300
                              (let ()
                                (declare (not safe))
                                (cons _exn67406_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp68300))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68299))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67402_))
            (let ((_e67404_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67402_ 'exception))))
              (if (macro-length-mismatch-exception? _e67404_)
                  (macro-length-mismatch-exception-arguments _e67404_)
                  (let ((__tmp68305
                         (let ((__tmp68306
                                (let ()
                                  (declare (not safe))
                                  (cons _e67404_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp68306))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68305))))
            (if (macro-length-mismatch-exception? _exn67402_)
                (macro-length-mismatch-exception-arguments _exn67402_)
                (let ((__tmp68303
                       (let ((__tmp68304
                              (let ()
                                (declare (not safe))
                                (cons _exn67402_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp68304))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68303))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67396_))
            (let ((_e67399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67396_ 'exception))))
              (if (macro-length-mismatch-exception? _e67399_)
                  (macro-length-mismatch-exception-procedure _e67399_)
                  (let ((__tmp68309
                         (let ((__tmp68310
                                (let ()
                                  (declare (not safe))
                                  (cons _e67399_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp68310))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68309))))
            (if (macro-length-mismatch-exception? _exn67396_)
                (macro-length-mismatch-exception-procedure _exn67396_)
                (let ((__tmp68307
                       (let ((__tmp68308
                              (let ()
                                (declare (not safe))
                                (cons _exn67396_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp68308))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68307))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67392_))
            (let ((_e67394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67392_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67394_))
            (macro-mailbox-receive-timeout-exception? _exn67392_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67388_))
            (let ((_e67390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67388_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67390_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67390_)
                  (let ((__tmp68313
                         (let ((__tmp68314
                                (let ()
                                  (declare (not safe))
                                  (cons _e67390_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp68314))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68313))))
            (if (macro-mailbox-receive-timeout-exception? _exn67388_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67388_)
                (let ((__tmp68311
                       (let ((__tmp68312
                              (let ()
                                (declare (not safe))
                                (cons _exn67388_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp68312))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68311))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67382_))
            (let ((_e67385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67382_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67385_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67385_)
                  (let ((__tmp68317
                         (let ((__tmp68318
                                (let ()
                                  (declare (not safe))
                                  (cons _e67385_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp68318))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68317))))
            (if (macro-mailbox-receive-timeout-exception? _exn67382_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67382_)
                (let ((__tmp68315
                       (let ((__tmp68316
                              (let ()
                                (declare (not safe))
                                (cons _exn67382_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp68316))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68315))))))
    (define module-not-found-exception?
      (lambda (_exn67378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67378_))
            (let ((_e67380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67378_ 'exception))))
              (macro-module-not-found-exception? _e67380_))
            (macro-module-not-found-exception? _exn67378_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67374_))
            (let ((_e67376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67374_ 'exception))))
              (if (macro-module-not-found-exception? _e67376_)
                  (macro-module-not-found-exception-arguments _e67376_)
                  (let ((__tmp68321
                         (let ((__tmp68322
                                (let ()
                                  (declare (not safe))
                                  (cons _e67376_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp68322))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68321))))
            (if (macro-module-not-found-exception? _exn67374_)
                (macro-module-not-found-exception-arguments _exn67374_)
                (let ((__tmp68319
                       (let ((__tmp68320
                              (let ()
                                (declare (not safe))
                                (cons _exn67374_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp68320))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68319))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67368_))
            (let ((_e67371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67368_ 'exception))))
              (if (macro-module-not-found-exception? _e67371_)
                  (macro-module-not-found-exception-procedure _e67371_)
                  (let ((__tmp68325
                         (let ((__tmp68326
                                (let ()
                                  (declare (not safe))
                                  (cons _e67371_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp68326))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68325))))
            (if (macro-module-not-found-exception? _exn67368_)
                (macro-module-not-found-exception-procedure _exn67368_)
                (let ((__tmp68323
                       (let ((__tmp68324
                              (let ()
                                (declare (not safe))
                                (cons _exn67368_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp68324))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68323))))))
    (define multiple-c-return-exception?
      (lambda (_exn67362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67362_))
            (let ((_e67365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67362_ 'exception))))
              (macro-multiple-c-return-exception? _e67365_))
            (macro-multiple-c-return-exception? _exn67362_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67358_))
            (let ((_e67360_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67358_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67360_))
            (macro-no-such-file-or-directory-exception? _exn67358_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67354_))
            (let ((_e67356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67354_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67356_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67356_)
                  (let ((__tmp68329
                         (let ((__tmp68330
                                (let ()
                                  (declare (not safe))
                                  (cons _e67356_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp68330))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68329))))
            (if (macro-no-such-file-or-directory-exception? _exn67354_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67354_)
                (let ((__tmp68327
                       (let ((__tmp68328
                              (let ()
                                (declare (not safe))
                                (cons _exn67354_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp68328))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68327))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67348_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67348_))
            (let ((_e67351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67348_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67351_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67351_)
                  (let ((__tmp68333
                         (let ((__tmp68334
                                (let ()
                                  (declare (not safe))
                                  (cons _e67351_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp68334))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68333))))
            (if (macro-no-such-file-or-directory-exception? _exn67348_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67348_)
                (let ((__tmp68331
                       (let ((__tmp68332
                              (let ()
                                (declare (not safe))
                                (cons _exn67348_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp68332))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68331))))))
    (define noncontinuable-exception?
      (lambda (_exn67344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67344_))
            (let ((_e67346_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67344_ 'exception))))
              (macro-noncontinuable-exception? _e67346_))
            (macro-noncontinuable-exception? _exn67344_))))
    (define noncontinuable-exception-reason
      (lambda (_exn67338_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67338_))
            (let ((_e67341_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67338_ 'exception))))
              (if (macro-noncontinuable-exception? _e67341_)
                  (macro-noncontinuable-exception-reason _e67341_)
                  (let ((__tmp68337
                         (let ((__tmp68338
                                (let ()
                                  (declare (not safe))
                                  (cons _e67341_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp68338))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp68337))))
            (if (macro-noncontinuable-exception? _exn67338_)
                (macro-noncontinuable-exception-reason _exn67338_)
                (let ((__tmp68335
                       (let ((__tmp68336
                              (let ()
                                (declare (not safe))
                                (cons _exn67338_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp68336))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp68335))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn67334_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67334_))
            (let ((_e67336_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67334_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e67336_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn67334_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn67330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67330_))
            (let ((_e67332_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67330_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67332_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e67332_)
                  (let ((__tmp68341
                         (let ((__tmp68342
                                (let ()
                                  (declare (not safe))
                                  (cons _e67332_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp68342))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68341))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67330_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn67330_)
                (let ((__tmp68339
                       (let ((__tmp68340
                              (let ()
                                (declare (not safe))
                                (cons _exn67330_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp68340))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68339))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn67324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67324_))
            (let ((_e67327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67324_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67327_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e67327_)
                  (let ((__tmp68345
                         (let ((__tmp68346
                                (let ()
                                  (declare (not safe))
                                  (cons _e67327_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp68346))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68345))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67324_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn67324_)
                (let ((__tmp68343
                       (let ((__tmp68344
                              (let ()
                                (declare (not safe))
                                (cons _exn67324_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp68344))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68343))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn67320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67320_))
            (let ((_e67322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67320_ 'exception))))
              (macro-nonprocedure-operator-exception? _e67322_))
            (macro-nonprocedure-operator-exception? _exn67320_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn67316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67316_))
            (let ((_e67318_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67316_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67318_)
                  (macro-nonprocedure-operator-exception-arguments _e67318_)
                  (let ((__tmp68349
                         (let ((__tmp68350
                                (let ()
                                  (declare (not safe))
                                  (cons _e67318_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp68350))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68349))))
            (if (macro-nonprocedure-operator-exception? _exn67316_)
                (macro-nonprocedure-operator-exception-arguments _exn67316_)
                (let ((__tmp68347
                       (let ((__tmp68348
                              (let ()
                                (declare (not safe))
                                (cons _exn67316_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp68348))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68347))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn67312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67312_))
            (let ((_e67314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67312_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67314_)
                  (macro-nonprocedure-operator-exception-code _e67314_)
                  (let ((__tmp68353
                         (let ((__tmp68354
                                (let ()
                                  (declare (not safe))
                                  (cons _e67314_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp68354))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68353))))
            (if (macro-nonprocedure-operator-exception? _exn67312_)
                (macro-nonprocedure-operator-exception-code _exn67312_)
                (let ((__tmp68351
                       (let ((__tmp68352
                              (let ()
                                (declare (not safe))
                                (cons _exn67312_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp68352))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68351))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn67308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67308_))
            (let ((_e67310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67308_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67310_)
                  (macro-nonprocedure-operator-exception-operator _e67310_)
                  (let ((__tmp68357
                         (let ((__tmp68358
                                (let ()
                                  (declare (not safe))
                                  (cons _e67310_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp68358))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68357))))
            (if (macro-nonprocedure-operator-exception? _exn67308_)
                (macro-nonprocedure-operator-exception-operator _exn67308_)
                (let ((__tmp68355
                       (let ((__tmp68356
                              (let ()
                                (declare (not safe))
                                (cons _exn67308_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp68356))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68355))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn67302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67302_))
            (let ((_e67305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67302_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67305_)
                  (macro-nonprocedure-operator-exception-rte _e67305_)
                  (let ((__tmp68361
                         (let ((__tmp68362
                                (let ()
                                  (declare (not safe))
                                  (cons _e67305_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp68362))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68361))))
            (if (macro-nonprocedure-operator-exception? _exn67302_)
                (macro-nonprocedure-operator-exception-rte _exn67302_)
                (let ((__tmp68359
                       (let ((__tmp68360
                              (let ()
                                (declare (not safe))
                                (cons _exn67302_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp68360))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68359))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn67298_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67298_))
            (let ((_e67300_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67298_ 'exception))))
              (macro-not-in-compilation-context-exception? _e67300_))
            (macro-not-in-compilation-context-exception? _exn67298_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn67294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67294_))
            (let ((_e67296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67294_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67296_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e67296_)
                  (let ((__tmp68365
                         (let ((__tmp68366
                                (let ()
                                  (declare (not safe))
                                  (cons _e67296_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp68366))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68365))))
            (if (macro-not-in-compilation-context-exception? _exn67294_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn67294_)
                (let ((__tmp68363
                       (let ((__tmp68364
                              (let ()
                                (declare (not safe))
                                (cons _exn67294_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp68364))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68363))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn67288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67288_))
            (let ((_e67291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67288_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67291_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e67291_)
                  (let ((__tmp68369
                         (let ((__tmp68370
                                (let ()
                                  (declare (not safe))
                                  (cons _e67291_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp68370))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68369))))
            (if (macro-not-in-compilation-context-exception? _exn67288_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn67288_)
                (let ((__tmp68367
                       (let ((__tmp68368
                              (let ()
                                (declare (not safe))
                                (cons _exn67288_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp68368))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68367))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn67284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67284_))
            (let ((_e67286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67284_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e67286_))
            (macro-number-of-arguments-limit-exception? _exn67284_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn67280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67280_))
            (let ((_e67282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67280_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67282_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e67282_)
                  (let ((__tmp68373
                         (let ((__tmp68374
                                (let ()
                                  (declare (not safe))
                                  (cons _e67282_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp68374))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68373))))
            (if (macro-number-of-arguments-limit-exception? _exn67280_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn67280_)
                (let ((__tmp68371
                       (let ((__tmp68372
                              (let ()
                                (declare (not safe))
                                (cons _exn67280_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp68372))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68371))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn67274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67274_))
            (let ((_e67277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67274_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67277_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e67277_)
                  (let ((__tmp68377
                         (let ((__tmp68378
                                (let ()
                                  (declare (not safe))
                                  (cons _e67277_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp68378))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68377))))
            (if (macro-number-of-arguments-limit-exception? _exn67274_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn67274_)
                (let ((__tmp68375
                       (let ((__tmp68376
                              (let ()
                                (declare (not safe))
                                (cons _exn67274_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp68376))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68375))))))
    (define os-exception?
      (lambda (_exn67270_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67270_))
            (let ((_e67272_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67270_ 'exception))))
              (macro-os-exception? _e67272_))
            (macro-os-exception? _exn67270_))))
    (define os-exception-arguments
      (lambda (_exn67266_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67266_))
            (let ((_e67268_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67266_ 'exception))))
              (if (macro-os-exception? _e67268_)
                  (macro-os-exception-arguments _e67268_)
                  (let ((__tmp68381
                         (let ((__tmp68382
                                (let ()
                                  (declare (not safe))
                                  (cons _e67268_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp68382))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68381))))
            (if (macro-os-exception? _exn67266_)
                (macro-os-exception-arguments _exn67266_)
                (let ((__tmp68379
                       (let ((__tmp68380
                              (let ()
                                (declare (not safe))
                                (cons _exn67266_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp68380))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68379))))))
    (define os-exception-code
      (lambda (_exn67262_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67262_))
            (let ((_e67264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67262_ 'exception))))
              (if (macro-os-exception? _e67264_)
                  (macro-os-exception-code _e67264_)
                  (let ((__tmp68385
                         (let ((__tmp68386
                                (let ()
                                  (declare (not safe))
                                  (cons _e67264_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp68386))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68385))))
            (if (macro-os-exception? _exn67262_)
                (macro-os-exception-code _exn67262_)
                (let ((__tmp68383
                       (let ((__tmp68384
                              (let ()
                                (declare (not safe))
                                (cons _exn67262_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp68384))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68383))))))
    (define os-exception-message
      (lambda (_exn67258_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67258_))
            (let ((_e67260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67258_ 'exception))))
              (if (macro-os-exception? _e67260_)
                  (macro-os-exception-message _e67260_)
                  (let ((__tmp68389
                         (let ((__tmp68390
                                (let ()
                                  (declare (not safe))
                                  (cons _e67260_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp68390))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68389))))
            (if (macro-os-exception? _exn67258_)
                (macro-os-exception-message _exn67258_)
                (let ((__tmp68387
                       (let ((__tmp68388
                              (let ()
                                (declare (not safe))
                                (cons _exn67258_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp68388))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68387))))))
    (define os-exception-procedure
      (lambda (_exn67252_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67252_))
            (let ((_e67255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67252_ 'exception))))
              (if (macro-os-exception? _e67255_)
                  (macro-os-exception-procedure _e67255_)
                  (let ((__tmp68393
                         (let ((__tmp68394
                                (let ()
                                  (declare (not safe))
                                  (cons _e67255_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp68394))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68393))))
            (if (macro-os-exception? _exn67252_)
                (macro-os-exception-procedure _exn67252_)
                (let ((__tmp68391
                       (let ((__tmp68392
                              (let ()
                                (declare (not safe))
                                (cons _exn67252_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp68392))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68391))))))
    (define permission-denied-exception?
      (lambda (_exn67248_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67248_))
            (let ((_e67250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67248_ 'exception))))
              (macro-permission-denied-exception? _e67250_))
            (macro-permission-denied-exception? _exn67248_))))
    (define permission-denied-exception-arguments
      (lambda (_exn67244_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67244_))
            (let ((_e67246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67244_ 'exception))))
              (if (macro-permission-denied-exception? _e67246_)
                  (macro-permission-denied-exception-arguments _e67246_)
                  (let ((__tmp68397
                         (let ((__tmp68398
                                (let ()
                                  (declare (not safe))
                                  (cons _e67246_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp68398))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68397))))
            (if (macro-permission-denied-exception? _exn67244_)
                (macro-permission-denied-exception-arguments _exn67244_)
                (let ((__tmp68395
                       (let ((__tmp68396
                              (let ()
                                (declare (not safe))
                                (cons _exn67244_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp68396))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68395))))))
    (define permission-denied-exception-procedure
      (lambda (_exn67238_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67238_))
            (let ((_e67241_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67238_ 'exception))))
              (if (macro-permission-denied-exception? _e67241_)
                  (macro-permission-denied-exception-procedure _e67241_)
                  (let ((__tmp68401
                         (let ((__tmp68402
                                (let ()
                                  (declare (not safe))
                                  (cons _e67241_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp68402))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68401))))
            (if (macro-permission-denied-exception? _exn67238_)
                (macro-permission-denied-exception-procedure _exn67238_)
                (let ((__tmp68399
                       (let ((__tmp68400
                              (let ()
                                (declare (not safe))
                                (cons _exn67238_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp68400))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68399))))))
    (define range-exception?
      (lambda (_exn67234_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67234_))
            (let ((_e67236_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67234_ 'exception))))
              (macro-range-exception? _e67236_))
            (macro-range-exception? _exn67234_))))
    (define range-exception-arg-id
      (lambda (_exn67230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67230_))
            (let ((_e67232_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67230_ 'exception))))
              (if (macro-range-exception? _e67232_)
                  (macro-range-exception-arg-id _e67232_)
                  (let ((__tmp68405
                         (let ((__tmp68406
                                (let ()
                                  (declare (not safe))
                                  (cons _e67232_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp68406))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68405))))
            (if (macro-range-exception? _exn67230_)
                (macro-range-exception-arg-id _exn67230_)
                (let ((__tmp68403
                       (let ((__tmp68404
                              (let ()
                                (declare (not safe))
                                (cons _exn67230_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp68404))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68403))))))
    (define range-exception-arguments
      (lambda (_exn67226_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67226_))
            (let ((_e67228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67226_ 'exception))))
              (if (macro-range-exception? _e67228_)
                  (macro-range-exception-arguments _e67228_)
                  (let ((__tmp68409
                         (let ((__tmp68410
                                (let ()
                                  (declare (not safe))
                                  (cons _e67228_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp68410))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68409))))
            (if (macro-range-exception? _exn67226_)
                (macro-range-exception-arguments _exn67226_)
                (let ((__tmp68407
                       (let ((__tmp68408
                              (let ()
                                (declare (not safe))
                                (cons _exn67226_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp68408))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68407))))))
    (define range-exception-procedure
      (lambda (_exn67220_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67220_))
            (let ((_e67223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67220_ 'exception))))
              (if (macro-range-exception? _e67223_)
                  (macro-range-exception-procedure _e67223_)
                  (let ((__tmp68413
                         (let ((__tmp68414
                                (let ()
                                  (declare (not safe))
                                  (cons _e67223_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp68414))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68413))))
            (if (macro-range-exception? _exn67220_)
                (macro-range-exception-procedure _exn67220_)
                (let ((__tmp68411
                       (let ((__tmp68412
                              (let ()
                                (declare (not safe))
                                (cons _exn67220_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp68412))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68411))))))
    (define rpc-remote-error-exception?
      (lambda (_exn67216_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67216_))
            (let ((_e67218_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67216_ 'exception))))
              (macro-rpc-remote-error-exception? _e67218_))
            (macro-rpc-remote-error-exception? _exn67216_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn67212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67212_))
            (let ((_e67214_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67212_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67214_)
                  (macro-rpc-remote-error-exception-arguments _e67214_)
                  (let ((__tmp68417
                         (let ((__tmp68418
                                (let ()
                                  (declare (not safe))
                                  (cons _e67214_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp68418))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68417))))
            (if (macro-rpc-remote-error-exception? _exn67212_)
                (macro-rpc-remote-error-exception-arguments _exn67212_)
                (let ((__tmp68415
                       (let ((__tmp68416
                              (let ()
                                (declare (not safe))
                                (cons _exn67212_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp68416))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68415))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn67208_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67208_))
            (let ((_e67210_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67208_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67210_)
                  (macro-rpc-remote-error-exception-message _e67210_)
                  (let ((__tmp68421
                         (let ((__tmp68422
                                (let ()
                                  (declare (not safe))
                                  (cons _e67210_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp68422))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68421))))
            (if (macro-rpc-remote-error-exception? _exn67208_)
                (macro-rpc-remote-error-exception-message _exn67208_)
                (let ((__tmp68419
                       (let ((__tmp68420
                              (let ()
                                (declare (not safe))
                                (cons _exn67208_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp68420))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68419))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn67202_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67202_))
            (let ((_e67205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67202_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67205_)
                  (macro-rpc-remote-error-exception-procedure _e67205_)
                  (let ((__tmp68425
                         (let ((__tmp68426
                                (let ()
                                  (declare (not safe))
                                  (cons _e67205_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp68426))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68425))))
            (if (macro-rpc-remote-error-exception? _exn67202_)
                (macro-rpc-remote-error-exception-procedure _exn67202_)
                (let ((__tmp68423
                       (let ((__tmp68424
                              (let ()
                                (declare (not safe))
                                (cons _exn67202_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp68424))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68423))))))
    (define scheduler-exception?
      (lambda (_exn67198_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67198_))
            (let ((_e67200_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67198_ 'exception))))
              (macro-scheduler-exception? _e67200_))
            (macro-scheduler-exception? _exn67198_))))
    (define scheduler-exception-reason
      (lambda (_exn67192_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67192_))
            (let ((_e67195_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67192_ 'exception))))
              (if (macro-scheduler-exception? _e67195_)
                  (macro-scheduler-exception-reason _e67195_)
                  (let ((__tmp68429
                         (let ((__tmp68430
                                (let ()
                                  (declare (not safe))
                                  (cons _e67195_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp68430))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68429))))
            (if (macro-scheduler-exception? _exn67192_)
                (macro-scheduler-exception-reason _exn67192_)
                (let ((__tmp68427
                       (let ((__tmp68428
                              (let ()
                                (declare (not safe))
                                (cons _exn67192_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp68428))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68427))))))
    (define sfun-conversion-exception?
      (lambda (_exn67188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67188_))
            (let ((_e67190_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67188_ 'exception))))
              (macro-sfun-conversion-exception? _e67190_))
            (macro-sfun-conversion-exception? _exn67188_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn67184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67184_))
            (let ((_e67186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67184_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67186_)
                  (macro-sfun-conversion-exception-arguments _e67186_)
                  (let ((__tmp68433
                         (let ((__tmp68434
                                (let ()
                                  (declare (not safe))
                                  (cons _e67186_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp68434))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68433))))
            (if (macro-sfun-conversion-exception? _exn67184_)
                (macro-sfun-conversion-exception-arguments _exn67184_)
                (let ((__tmp68431
                       (let ((__tmp68432
                              (let ()
                                (declare (not safe))
                                (cons _exn67184_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp68432))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68431))))))
    (define sfun-conversion-exception-code
      (lambda (_exn67180_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67180_))
            (let ((_e67182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67180_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67182_)
                  (macro-sfun-conversion-exception-code _e67182_)
                  (let ((__tmp68437
                         (let ((__tmp68438
                                (let ()
                                  (declare (not safe))
                                  (cons _e67182_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp68438))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68437))))
            (if (macro-sfun-conversion-exception? _exn67180_)
                (macro-sfun-conversion-exception-code _exn67180_)
                (let ((__tmp68435
                       (let ((__tmp68436
                              (let ()
                                (declare (not safe))
                                (cons _exn67180_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp68436))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68435))))))
    (define sfun-conversion-exception-message
      (lambda (_exn67176_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67176_))
            (let ((_e67178_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67176_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67178_)
                  (macro-sfun-conversion-exception-message _e67178_)
                  (let ((__tmp68441
                         (let ((__tmp68442
                                (let ()
                                  (declare (not safe))
                                  (cons _e67178_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp68442))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68441))))
            (if (macro-sfun-conversion-exception? _exn67176_)
                (macro-sfun-conversion-exception-message _exn67176_)
                (let ((__tmp68439
                       (let ((__tmp68440
                              (let ()
                                (declare (not safe))
                                (cons _exn67176_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp68440))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68439))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn67170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67170_))
            (let ((_e67173_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67170_ 'exception))))
              (if (macro-sfun-conversion-exception? _e67173_)
                  (macro-sfun-conversion-exception-procedure _e67173_)
                  (let ((__tmp68445
                         (let ((__tmp68446
                                (let ()
                                  (declare (not safe))
                                  (cons _e67173_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp68446))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68445))))
            (if (macro-sfun-conversion-exception? _exn67170_)
                (macro-sfun-conversion-exception-procedure _exn67170_)
                (let ((__tmp68443
                       (let ((__tmp68444
                              (let ()
                                (declare (not safe))
                                (cons _exn67170_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp68444))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68443))))))
    (define stack-overflow-exception?
      (lambda (_exn67164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67164_))
            (let ((_e67167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67164_ 'exception))))
              (macro-stack-overflow-exception? _e67167_))
            (macro-stack-overflow-exception? _exn67164_))))
    (define started-thread-exception?
      (lambda (_exn67160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67160_))
            (let ((_e67162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67160_ 'exception))))
              (macro-started-thread-exception? _e67162_))
            (macro-started-thread-exception? _exn67160_))))
    (define started-thread-exception-arguments
      (lambda (_exn67156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67156_))
            (let ((_e67158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67156_ 'exception))))
              (if (macro-started-thread-exception? _e67158_)
                  (macro-started-thread-exception-arguments _e67158_)
                  (let ((__tmp68449
                         (let ((__tmp68450
                                (let ()
                                  (declare (not safe))
                                  (cons _e67158_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp68450))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68449))))
            (if (macro-started-thread-exception? _exn67156_)
                (macro-started-thread-exception-arguments _exn67156_)
                (let ((__tmp68447
                       (let ((__tmp68448
                              (let ()
                                (declare (not safe))
                                (cons _exn67156_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp68448))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68447))))))
    (define started-thread-exception-procedure
      (lambda (_exn67150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67150_))
            (let ((_e67153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67150_ 'exception))))
              (if (macro-started-thread-exception? _e67153_)
                  (macro-started-thread-exception-procedure _e67153_)
                  (let ((__tmp68453
                         (let ((__tmp68454
                                (let ()
                                  (declare (not safe))
                                  (cons _e67153_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp68454))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68453))))
            (if (macro-started-thread-exception? _exn67150_)
                (macro-started-thread-exception-procedure _exn67150_)
                (let ((__tmp68451
                       (let ((__tmp68452
                              (let ()
                                (declare (not safe))
                                (cons _exn67150_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp68452))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68451))))))
    (define terminated-thread-exception?
      (lambda (_exn67146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67146_))
            (let ((_e67148_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67146_ 'exception))))
              (macro-terminated-thread-exception? _e67148_))
            (macro-terminated-thread-exception? _exn67146_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn67142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67142_))
            (let ((_e67144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67142_ 'exception))))
              (if (macro-terminated-thread-exception? _e67144_)
                  (macro-terminated-thread-exception-arguments _e67144_)
                  (let ((__tmp68457
                         (let ((__tmp68458
                                (let ()
                                  (declare (not safe))
                                  (cons _e67144_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp68458))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68457))))
            (if (macro-terminated-thread-exception? _exn67142_)
                (macro-terminated-thread-exception-arguments _exn67142_)
                (let ((__tmp68455
                       (let ((__tmp68456
                              (let ()
                                (declare (not safe))
                                (cons _exn67142_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp68456))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68455))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn67136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67136_))
            (let ((_e67139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67136_ 'exception))))
              (if (macro-terminated-thread-exception? _e67139_)
                  (macro-terminated-thread-exception-procedure _e67139_)
                  (let ((__tmp68461
                         (let ((__tmp68462
                                (let ()
                                  (declare (not safe))
                                  (cons _e67139_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp68462))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68461))))
            (if (macro-terminated-thread-exception? _exn67136_)
                (macro-terminated-thread-exception-procedure _exn67136_)
                (let ((__tmp68459
                       (let ((__tmp68460
                              (let ()
                                (declare (not safe))
                                (cons _exn67136_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp68460))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68459))))))
    (define type-exception?
      (lambda (_exn67132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67132_))
            (let ((_e67134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67132_ 'exception))))
              (macro-type-exception? _e67134_))
            (macro-type-exception? _exn67132_))))
    (define type-exception-arg-id
      (lambda (_exn67128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67128_))
            (let ((_e67130_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67128_ 'exception))))
              (if (macro-type-exception? _e67130_)
                  (macro-type-exception-arg-id _e67130_)
                  (let ((__tmp68465
                         (let ((__tmp68466
                                (let ()
                                  (declare (not safe))
                                  (cons _e67130_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp68466))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68465))))
            (if (macro-type-exception? _exn67128_)
                (macro-type-exception-arg-id _exn67128_)
                (let ((__tmp68463
                       (let ((__tmp68464
                              (let ()
                                (declare (not safe))
                                (cons _exn67128_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp68464))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68463))))))
    (define type-exception-arguments
      (lambda (_exn67124_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67124_))
            (let ((_e67126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67124_ 'exception))))
              (if (macro-type-exception? _e67126_)
                  (macro-type-exception-arguments _e67126_)
                  (let ((__tmp68469
                         (let ((__tmp68470
                                (let ()
                                  (declare (not safe))
                                  (cons _e67126_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp68470))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68469))))
            (if (macro-type-exception? _exn67124_)
                (macro-type-exception-arguments _exn67124_)
                (let ((__tmp68467
                       (let ((__tmp68468
                              (let ()
                                (declare (not safe))
                                (cons _exn67124_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp68468))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68467))))))
    (define type-exception-procedure
      (lambda (_exn67120_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67120_))
            (let ((_e67122_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67120_ 'exception))))
              (if (macro-type-exception? _e67122_)
                  (macro-type-exception-procedure _e67122_)
                  (let ((__tmp68473
                         (let ((__tmp68474
                                (let ()
                                  (declare (not safe))
                                  (cons _e67122_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp68474))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68473))))
            (if (macro-type-exception? _exn67120_)
                (macro-type-exception-procedure _exn67120_)
                (let ((__tmp68471
                       (let ((__tmp68472
                              (let ()
                                (declare (not safe))
                                (cons _exn67120_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp68472))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68471))))))
    (define type-exception-type-id
      (lambda (_exn67114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67114_))
            (let ((_e67117_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67114_ 'exception))))
              (if (macro-type-exception? _e67117_)
                  (macro-type-exception-type-id _e67117_)
                  (let ((__tmp68477
                         (let ((__tmp68478
                                (let ()
                                  (declare (not safe))
                                  (cons _e67117_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp68478))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68477))))
            (if (macro-type-exception? _exn67114_)
                (macro-type-exception-type-id _exn67114_)
                (let ((__tmp68475
                       (let ((__tmp68476
                              (let ()
                                (declare (not safe))
                                (cons _exn67114_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp68476))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68475))))))
    (define unbound-global-exception?
      (lambda (_exn67110_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67110_))
            (let ((_e67112_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67110_ 'exception))))
              (macro-unbound-global-exception? _e67112_))
            (macro-unbound-global-exception? _exn67110_))))
    (define unbound-global-exception-code
      (lambda (_exn67106_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67106_))
            (let ((_e67108_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67106_ 'exception))))
              (if (macro-unbound-global-exception? _e67108_)
                  (macro-unbound-global-exception-code _e67108_)
                  (let ((__tmp68481
                         (let ((__tmp68482
                                (let ()
                                  (declare (not safe))
                                  (cons _e67108_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp68482))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68481))))
            (if (macro-unbound-global-exception? _exn67106_)
                (macro-unbound-global-exception-code _exn67106_)
                (let ((__tmp68479
                       (let ((__tmp68480
                              (let ()
                                (declare (not safe))
                                (cons _exn67106_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp68480))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68479))))))
    (define unbound-global-exception-rte
      (lambda (_exn67102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67102_))
            (let ((_e67104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67102_ 'exception))))
              (if (macro-unbound-global-exception? _e67104_)
                  (macro-unbound-global-exception-rte _e67104_)
                  (let ((__tmp68485
                         (let ((__tmp68486
                                (let ()
                                  (declare (not safe))
                                  (cons _e67104_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp68486))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68485))))
            (if (macro-unbound-global-exception? _exn67102_)
                (macro-unbound-global-exception-rte _exn67102_)
                (let ((__tmp68483
                       (let ((__tmp68484
                              (let ()
                                (declare (not safe))
                                (cons _exn67102_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp68484))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68483))))))
    (define unbound-global-exception-variable
      (lambda (_exn67096_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67096_))
            (let ((_e67099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67096_ 'exception))))
              (if (macro-unbound-global-exception? _e67099_)
                  (macro-unbound-global-exception-variable _e67099_)
                  (let ((__tmp68489
                         (let ((__tmp68490
                                (let ()
                                  (declare (not safe))
                                  (cons _e67099_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp68490))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68489))))
            (if (macro-unbound-global-exception? _exn67096_)
                (macro-unbound-global-exception-variable _exn67096_)
                (let ((__tmp68487
                       (let ((__tmp68488
                              (let ()
                                (declare (not safe))
                                (cons _exn67096_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp68488))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68487))))))
    (define unbound-key-exception?
      (lambda (_exn67092_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67092_))
            (let ((_e67094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67092_ 'exception))))
              (macro-unbound-key-exception? _e67094_))
            (macro-unbound-key-exception? _exn67092_))))
    (define unbound-key-exception-arguments
      (lambda (_exn67088_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67088_))
            (let ((_e67090_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67088_ 'exception))))
              (if (macro-unbound-key-exception? _e67090_)
                  (macro-unbound-key-exception-arguments _e67090_)
                  (let ((__tmp68493
                         (let ((__tmp68494
                                (let ()
                                  (declare (not safe))
                                  (cons _e67090_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp68494))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68493))))
            (if (macro-unbound-key-exception? _exn67088_)
                (macro-unbound-key-exception-arguments _exn67088_)
                (let ((__tmp68491
                       (let ((__tmp68492
                              (let ()
                                (declare (not safe))
                                (cons _exn67088_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp68492))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68491))))))
    (define unbound-key-exception-procedure
      (lambda (_exn67082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67082_))
            (let ((_e67085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67082_ 'exception))))
              (if (macro-unbound-key-exception? _e67085_)
                  (macro-unbound-key-exception-procedure _e67085_)
                  (let ((__tmp68497
                         (let ((__tmp68498
                                (let ()
                                  (declare (not safe))
                                  (cons _e67085_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp68498))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68497))))
            (if (macro-unbound-key-exception? _exn67082_)
                (macro-unbound-key-exception-procedure _exn67082_)
                (let ((__tmp68495
                       (let ((__tmp68496
                              (let ()
                                (declare (not safe))
                                (cons _exn67082_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp68496))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68495))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn67078_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67078_))
            (let ((_e67080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67078_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e67080_))
            (macro-unbound-os-environment-variable-exception? _exn67078_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn67074_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67074_))
            (let ((_e67076_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67074_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67076_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e67076_)
                  (let ((__tmp68501
                         (let ((__tmp68502
                                (let ()
                                  (declare (not safe))
                                  (cons _e67076_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp68502))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68501))))
            (if (macro-unbound-os-environment-variable-exception? _exn67074_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn67074_)
                (let ((__tmp68499
                       (let ((__tmp68500
                              (let ()
                                (declare (not safe))
                                (cons _exn67074_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp68500))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68499))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn67068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67068_))
            (let ((_e67071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67068_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e67071_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e67071_)
                  (let ((__tmp68505
                         (let ((__tmp68506
                                (let ()
                                  (declare (not safe))
                                  (cons _e67071_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp68506))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68505))))
            (if (macro-unbound-os-environment-variable-exception? _exn67068_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn67068_)
                (let ((__tmp68503
                       (let ((__tmp68504
                              (let ()
                                (declare (not safe))
                                (cons _exn67068_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp68504))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68503))))))
    (define unbound-serial-number-exception?
      (lambda (_exn67064_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67064_))
            (let ((_e67066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67064_ 'exception))))
              (macro-unbound-serial-number-exception? _e67066_))
            (macro-unbound-serial-number-exception? _exn67064_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn67060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67060_))
            (let ((_e67062_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67060_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67062_)
                  (macro-unbound-serial-number-exception-arguments _e67062_)
                  (let ((__tmp68509
                         (let ((__tmp68510
                                (let ()
                                  (declare (not safe))
                                  (cons _e67062_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp68510))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68509))))
            (if (macro-unbound-serial-number-exception? _exn67060_)
                (macro-unbound-serial-number-exception-arguments _exn67060_)
                (let ((__tmp68507
                       (let ((__tmp68508
                              (let ()
                                (declare (not safe))
                                (cons _exn67060_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp68508))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68507))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn67054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67054_))
            (let ((_e67057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67054_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e67057_)
                  (macro-unbound-serial-number-exception-procedure _e67057_)
                  (let ((__tmp68513
                         (let ((__tmp68514
                                (let ()
                                  (declare (not safe))
                                  (cons _e67057_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp68514))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68513))))
            (if (macro-unbound-serial-number-exception? _exn67054_)
                (macro-unbound-serial-number-exception-procedure _exn67054_)
                (let ((__tmp68511
                       (let ((__tmp68512
                              (let ()
                                (declare (not safe))
                                (cons _exn67054_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp68512))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68511))))))
    (define uncaught-exception?
      (lambda (_exn67050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67050_))
            (let ((_e67052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67050_ 'exception))))
              (macro-uncaught-exception? _e67052_))
            (macro-uncaught-exception? _exn67050_))))
    (define uncaught-exception-arguments
      (lambda (_exn67046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67046_))
            (let ((_e67048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67046_ 'exception))))
              (if (macro-uncaught-exception? _e67048_)
                  (macro-uncaught-exception-arguments _e67048_)
                  (let ((__tmp68517
                         (let ((__tmp68518
                                (let ()
                                  (declare (not safe))
                                  (cons _e67048_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp68518))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68517))))
            (if (macro-uncaught-exception? _exn67046_)
                (macro-uncaught-exception-arguments _exn67046_)
                (let ((__tmp68515
                       (let ((__tmp68516
                              (let ()
                                (declare (not safe))
                                (cons _exn67046_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp68516))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68515))))))
    (define uncaught-exception-procedure
      (lambda (_exn67042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67042_))
            (let ((_e67044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67042_ 'exception))))
              (if (macro-uncaught-exception? _e67044_)
                  (macro-uncaught-exception-procedure _e67044_)
                  (let ((__tmp68521
                         (let ((__tmp68522
                                (let ()
                                  (declare (not safe))
                                  (cons _e67044_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp68522))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68521))))
            (if (macro-uncaught-exception? _exn67042_)
                (macro-uncaught-exception-procedure _exn67042_)
                (let ((__tmp68519
                       (let ((__tmp68520
                              (let ()
                                (declare (not safe))
                                (cons _exn67042_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp68520))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68519))))))
    (define uncaught-exception-reason
      (lambda (_exn67036_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67036_))
            (let ((_e67039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67036_ 'exception))))
              (if (macro-uncaught-exception? _e67039_)
                  (macro-uncaught-exception-reason _e67039_)
                  (let ((__tmp68525
                         (let ((__tmp68526
                                (let ()
                                  (declare (not safe))
                                  (cons _e67039_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp68526))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68525))))
            (if (macro-uncaught-exception? _exn67036_)
                (macro-uncaught-exception-reason _exn67036_)
                (let ((__tmp68523
                       (let ((__tmp68524
                              (let ()
                                (declare (not safe))
                                (cons _exn67036_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp68524))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68523))))))
    (define uninitialized-thread-exception?
      (lambda (_exn67032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67032_))
            (let ((_e67034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67032_ 'exception))))
              (macro-uninitialized-thread-exception? _e67034_))
            (macro-uninitialized-thread-exception? _exn67032_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn67028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67028_))
            (let ((_e67030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67028_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67030_)
                  (macro-uninitialized-thread-exception-arguments _e67030_)
                  (let ((__tmp68529
                         (let ((__tmp68530
                                (let ()
                                  (declare (not safe))
                                  (cons _e67030_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp68530))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68529))))
            (if (macro-uninitialized-thread-exception? _exn67028_)
                (macro-uninitialized-thread-exception-arguments _exn67028_)
                (let ((__tmp68527
                       (let ((__tmp68528
                              (let ()
                                (declare (not safe))
                                (cons _exn67028_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp68528))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68527))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn67022_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67022_))
            (let ((_e67025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67022_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e67025_)
                  (macro-uninitialized-thread-exception-procedure _e67025_)
                  (let ((__tmp68533
                         (let ((__tmp68534
                                (let ()
                                  (declare (not safe))
                                  (cons _e67025_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp68534))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68533))))
            (if (macro-uninitialized-thread-exception? _exn67022_)
                (macro-uninitialized-thread-exception-procedure _exn67022_)
                (let ((__tmp68531
                       (let ((__tmp68532
                              (let ()
                                (declare (not safe))
                                (cons _exn67022_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp68532))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68531))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn67018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67018_))
            (let ((_e67020_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67018_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e67020_))
            (macro-unknown-keyword-argument-exception? _exn67018_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn67014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67014_))
            (let ((_e67016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67014_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67016_)
                  (macro-unknown-keyword-argument-exception-arguments _e67016_)
                  (let ((__tmp68537
                         (let ((__tmp68538
                                (let ()
                                  (declare (not safe))
                                  (cons _e67016_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp68538))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68537))))
            (if (macro-unknown-keyword-argument-exception? _exn67014_)
                (macro-unknown-keyword-argument-exception-arguments _exn67014_)
                (let ((__tmp68535
                       (let ((__tmp68536
                              (let ()
                                (declare (not safe))
                                (cons _exn67014_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp68536))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68535))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn67008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67008_))
            (let ((_e67011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67008_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e67011_)
                  (macro-unknown-keyword-argument-exception-procedure _e67011_)
                  (let ((__tmp68541
                         (let ((__tmp68542
                                (let ()
                                  (declare (not safe))
                                  (cons _e67011_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp68542))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68541))))
            (if (macro-unknown-keyword-argument-exception? _exn67008_)
                (macro-unknown-keyword-argument-exception-procedure _exn67008_)
                (let ((__tmp68539
                       (let ((__tmp68540
                              (let ()
                                (declare (not safe))
                                (cons _exn67008_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp68540))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68539))))))
    (define unterminated-process-exception?
      (lambda (_exn67004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67004_))
            (let ((_e67006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67004_ 'exception))))
              (macro-unterminated-process-exception? _e67006_))
            (macro-unterminated-process-exception? _exn67004_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn67000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67000_))
            (let ((_e67002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67000_ 'exception))))
              (if (macro-unterminated-process-exception? _e67002_)
                  (macro-unterminated-process-exception-arguments _e67002_)
                  (let ((__tmp68545
                         (let ((__tmp68546
                                (let ()
                                  (declare (not safe))
                                  (cons _e67002_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp68546))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68545))))
            (if (macro-unterminated-process-exception? _exn67000_)
                (macro-unterminated-process-exception-arguments _exn67000_)
                (let ((__tmp68543
                       (let ((__tmp68544
                              (let ()
                                (declare (not safe))
                                (cons _exn67000_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp68544))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68543))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn66994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66994_))
            (let ((_e66997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66994_ 'exception))))
              (if (macro-unterminated-process-exception? _e66997_)
                  (macro-unterminated-process-exception-procedure _e66997_)
                  (let ((__tmp68549
                         (let ((__tmp68550
                                (let ()
                                  (declare (not safe))
                                  (cons _e66997_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp68550))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68549))))
            (if (macro-unterminated-process-exception? _exn66994_)
                (macro-unterminated-process-exception-procedure _exn66994_)
                (let ((__tmp68547
                       (let ((__tmp68548
                              (let ()
                                (declare (not safe))
                                (cons _exn66994_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp68548))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68547))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn66990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66990_))
            (let ((_e66992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66990_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e66992_))
            (macro-wrong-number-of-arguments-exception? _exn66990_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn66986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66986_))
            (let ((_e66988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66986_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66988_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e66988_)
                  (let ((__tmp68553
                         (let ((__tmp68554
                                (let ()
                                  (declare (not safe))
                                  (cons _e66988_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp68554))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68553))))
            (if (macro-wrong-number-of-arguments-exception? _exn66986_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn66986_)
                (let ((__tmp68551
                       (let ((__tmp68552
                              (let ()
                                (declare (not safe))
                                (cons _exn66986_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp68552))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68551))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn66980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66980_))
            (let ((_e66983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66980_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66983_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e66983_)
                  (let ((__tmp68557
                         (let ((__tmp68558
                                (let ()
                                  (declare (not safe))
                                  (cons _e66983_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp68558))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68557))))
            (if (macro-wrong-number-of-arguments-exception? _exn66980_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn66980_)
                (let ((__tmp68555
                       (let ((__tmp68556
                              (let ()
                                (declare (not safe))
                                (cons _exn66980_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp68556))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68555))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn66976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66976_))
            (let ((_e66978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66976_ 'exception))))
              (macro-wrong-number-of-values-exception? _e66978_))
            (macro-wrong-number-of-values-exception? _exn66976_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn66972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66972_))
            (let ((_e66974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66972_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66974_)
                  (macro-wrong-number-of-values-exception-code _e66974_)
                  (let ((__tmp68561
                         (let ((__tmp68562
                                (let ()
                                  (declare (not safe))
                                  (cons _e66974_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp68562))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68561))))
            (if (macro-wrong-number-of-values-exception? _exn66972_)
                (macro-wrong-number-of-values-exception-code _exn66972_)
                (let ((__tmp68559
                       (let ((__tmp68560
                              (let ()
                                (declare (not safe))
                                (cons _exn66972_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp68560))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68559))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn66968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66968_))
            (let ((_e66970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66968_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66970_)
                  (macro-wrong-number-of-values-exception-rte _e66970_)
                  (let ((__tmp68565
                         (let ((__tmp68566
                                (let ()
                                  (declare (not safe))
                                  (cons _e66970_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp68566))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68565))))
            (if (macro-wrong-number-of-values-exception? _exn66968_)
                (macro-wrong-number-of-values-exception-rte _exn66968_)
                (let ((__tmp68563
                       (let ((__tmp68564
                              (let ()
                                (declare (not safe))
                                (cons _exn66968_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp68564))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68563))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn66962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66962_))
            (let ((_e66965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66962_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66965_)
                  (macro-wrong-number-of-values-exception-vals _e66965_)
                  (let ((__tmp68569
                         (let ((__tmp68570
                                (let ()
                                  (declare (not safe))
                                  (cons _e66965_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp68570))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68569))))
            (if (macro-wrong-number-of-values-exception? _exn66962_)
                (macro-wrong-number-of-values-exception-vals _exn66962_)
                (let ((__tmp68567
                       (let ((__tmp68568
                              (let ()
                                (declare (not safe))
                                (cons _exn66962_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp68568))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68567))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn66956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66956_))
            (let ((_e66959_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66956_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e66959_))
            (macro-wrong-processor-c-return-exception? _exn66956_))))))
