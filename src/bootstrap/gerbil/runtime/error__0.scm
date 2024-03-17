(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710694202)
  (begin
    (define Exception::t
      (let ((__tmp65184 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp65184
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args65152_ (apply make-instance Exception::t _$args65152_)))
    (define StackTrace::t
      (let ((__tmp65185 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp65185
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args65149_ (apply make-instance StackTrace::t _$args65149_)))
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
      (let ((__tmp65186 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp65186
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args65146_ (apply make-instance Error::t _$args65146_)))
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
      (let ((__tmp65187 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp65187
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args65143_
        (apply make-instance RuntimeException::t _$args65143_)))
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
      (lambda (_exn65138_ _continue65139_)
        (let ((_exn65141_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn65138_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn65141_ _continue65139_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn65134_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn65134_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn65134_ 'continuation))
                '#!void
                (let ((__tmp65188
                       (lambda (_cont65136_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn65134_
                            'continuation
                            _cont65136_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp65188)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn65134_))))
    (define error
      (lambda (_message65131_ . _irritants65132_)
        (raise (let ((__obj65178
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj65178
                  _message65131_
                  'irritants:
                  _irritants65132_)
                 __obj65178))))
    (define with-exception-handler
      (lambda (_handler65124_ _thunk65125_)
        (if (let () (declare (not safe)) (procedure? _handler65124_))
            '#!void
            (raise (let ((__obj65179
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65179
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65124_ '())))
                     __obj65179)))
        (if (let () (declare (not safe)) (procedure? _thunk65125_))
            '#!void
            (raise (let ((__obj65180
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65180
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65125_ '())))
                     __obj65180)))
        (let ((__tmp65189
               (lambda (_exn65127_)
                 (let ((_exn65129_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn65127_))))
                   (_handler65124_ _exn65129_)))))
          (declare (not safe))
          (##with-exception-handler __tmp65189 _thunk65125_))))
    (define with-catch
      (lambda (_handler65117_ _thunk65118_)
        (if (let () (declare (not safe)) (procedure? _handler65117_))
            '#!void
            (raise (let ((__obj65181
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65181
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65117_ '())))
                     __obj65181)))
        (if (let () (declare (not safe)) (procedure? _thunk65118_))
            '#!void
            (raise (let ((__obj65182
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65182
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65118_ '())))
                     __obj65182)))
        (let ((__tmp65190
               (lambda (_cont65120_)
                 (with-exception-handler
                  (lambda (_exn65122_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont65120_
                       _handler65117_
                       _exn65122_)))
                  _thunk65118_))))
          (declare (not safe))
          (##continuation-capture __tmp65190))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn65108_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn65108_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn65108_)))
            _exn65108_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn65108_))
                _exn65108_
                (if (macro-exception? _exn65108_)
                    (let ((_rte65113_
                           (let ((__obj65183
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj65183
                                _exn65108_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj65183)))
                      (let ((__tmp65191
                             (lambda (_cont65115_)
                               (let ((__tmp65192
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont65115_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte65113_
                                  'continuation
                                  __tmp65192)))))
                        (declare (not safe))
                        (##continuation-capture __tmp65191))
                      _rte65113_)
                    _exn65108_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj65103_)
        (let ((_$e65105_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj65103_))))
          (if _$e65105_
              _$e65105_
              (let () (declare (not safe)) (error-exception? _obj65103_))))))
    (define error-message
      (lambda (_obj65101_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65101_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65101_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj65101_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj65101_))
                '#f))))
    (define error-irritants
      (lambda (_obj65099_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65099_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65099_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj65099_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj65099_))
                '#f))))
    (define error-trace
      (lambda (_obj65097_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65097_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65097_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e65079_ _port65080_)
        (let ((_$e65082_
               (let ()
                 (declare (not safe))
                 (method-ref _e65079_ 'display-exception))))
          (if _$e65082_
              ((lambda (_f65085_) (_f65085_ _e65079_ _port65080_)) _$e65082_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e65079_ _port65080_))))))
    (define display-exception__0
      (lambda (_e65090_)
        (let ((_port65092_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e65090_ _port65092_))))
    (define display-exception
      (lambda _g65194_
        (let ((_g65193_ (let () (declare (not safe)) (##length _g65194_))))
          (cond ((let () (declare (not safe)) (##fx= _g65193_ 1))
                 (apply (lambda (_e65090_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e65090_)))
                        _g65194_))
                ((let () (declare (not safe)) (##fx= _g65193_ 2))
                 (apply (lambda (_e65094_ _port65095_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e65094_ _port65095_)))
                        _g65194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g65194_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self65068_ _message65069_ . _rest65070_)
        (let ((_message65076_
               (if (let () (declare (not safe)) (string? _message65069_))
                   _message65069_
                   (call-with-output-string
                    '""
                    (lambda (_g6507165073_)
                      (display _message65069_ _g6507165073_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self65068_ 'message _message65076_))
          (apply class-instance-init! _self65068_ _rest65070_))))
    (define Error:::init!::specialize
      (lambda (__klass65154 __method-table65155)
        (let ((__message65156
               (let ((__slot65157
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65154 'message))))
                 (if __slot65157
                     __slot65157
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65068_ _message65069_ . _rest65070_)
            (let ((_message65076_
                   (if (let () (declare (not safe)) (string? _message65069_))
                       _message65069_
                       (call-with-output-string
                        '""
                        (lambda (_g6507165073_)
                          (display _message65069_ _g6507165073_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self65068_
                 _message65076_
                 __message65156
                 __klass65154
                 '#f))
              (apply class-instance-init! _self65068_ _rest65070_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self64926_ _port64927_)
        (let ((_tmp-port64929_ (open-output-string))
              (_display-error-newline64930_
               (> (output-port-column _port64927_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port64929_))
          (let ((__tmp65195
                 (lambda ()
                   (if _display-error-newline64930_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e64933_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self64926_ 'where))))
                     (if _$e64933_ (display _$e64933_) (display '"?")))
                   (let ((__tmp65196
                          (let ((__tmp65197 (object-type _self64926_)))
                            (declare (not safe))
                            (##type-name __tmp65197))))
                     (declare (not safe))
                     (display* '" [" __tmp65196 '"]: "))
                   (let ((__tmp65198
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self64926_ 'message))))
                     (declare (not safe))
                     (displayln __tmp65198))
                   (let ((_irritants64936_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self64926_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants64936_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj64938_)
                              (write _obj64938_)
                              (write-char '#\space))
                            _irritants64936_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self64926_))
                            (dump-stack-trace?))
                       (let ((_cont6493964941_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self64926_
                                 'continuation))))
                         (if _cont6493964941_
                             (let ((_cont64944_ _cont6493964941_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont64944_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp65195
             current-output-port
             _tmp-port64929_))
          (let ((__tmp65199 (get-output-string _tmp-port64929_)))
            (declare (not safe))
            (##write-string __tmp65199 _port64927_)))))
    (define Error::display-exception::specialize
      (lambda (__klass65158 __method-table65159)
        (let ((__continuation65160
               (let ((__slot65164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65158 'continuation))))
                 (if __slot65164
                     __slot65164
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where65161
               (let ((__slot65165
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65158 'where))))
                 (if __slot65165
                     __slot65165
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants65162
               (let ((__slot65166
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65158 'irritants))))
                 (if __slot65166
                     __slot65166
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message65163
               (let ((__slot65167
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65158 'message))))
                 (if __slot65167
                     __slot65167
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self64926_ _port64927_)
            (let ((_tmp-port64929_ (open-output-string))
                  (_display-error-newline64930_
                   (> (output-port-column _port64927_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port64929_))
              (let ((__tmp65200
                     (lambda ()
                       (if _display-error-newline64930_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e64933_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self64926_
                                 __where65161
                                 __klass65158
                                 '#f))))
                         (if _$e64933_ (display _$e64933_) (display '"?")))
                       (let ((__tmp65201
                              (let ((__tmp65202 (object-type _self64926_)))
                                (declare (not safe))
                                (##type-name __tmp65202))))
                         (declare (not safe))
                         (display* '" [" __tmp65201 '"]: "))
                       (let ((__tmp65203
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self64926_
                                 __message65163
                                 __klass65158
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp65203))
                       (let ((_irritants64936_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self64926_
                                 __irritants65162
                                 __klass65158
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants64936_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj64938_)
                                  (write _obj64938_)
                                  (write-char '#\space))
                                _irritants64936_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self64926_))
                                (dump-stack-trace?))
                           (let ((_cont6493964941_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self64926_
                                     __continuation65160
                                     __klass65158
                                     '#f))))
                             (if _cont6493964941_
                                 (let ((_cont64944_ _cont6493964941_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont64944_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp65200
                 current-output-port
                 _tmp-port64929_))
              (let ((__tmp65204 (get-output-string _tmp-port64929_)))
                (declare (not safe))
                (##write-string __tmp65204 _port64927_)))))))
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
      (lambda (_self64793_ _port64794_)
        (let ((_tmp-port64796_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port64796_))
          (let ((__tmp65205
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self64793_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp65205 _tmp-port64796_))
          (if (dump-stack-trace?)
              (let ((_cont6479764799_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self64793_ 'continuation))))
                (if _cont6479764799_
                    (let ((_cont64802_ _cont6479764799_))
                      (display '"--- continuation backtrace:" _tmp-port64796_)
                      (newline _tmp-port64796_)
                      (display-continuation-backtrace
                       _cont64802_
                       _tmp-port64796_))
                    '#f))
              '#!void)
          (let ((__tmp65206 (get-output-string _tmp-port64796_)))
            (declare (not safe))
            (##write-string __tmp65206 _port64794_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass65168 __method-table65169)
        (let ((__exception65170
               (let ((__slot65172
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65168 'exception))))
                 (if __slot65172
                     __slot65172
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation65171
               (let ((__slot65173
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65168 'continuation))))
                 (if __slot65173
                     __slot65173
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self64793_ _port64794_)
            (let ((_tmp-port64796_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port64796_))
              (let ((__tmp65207
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self64793_
                        __exception65170
                        __klass65168
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp65207 _tmp-port64796_))
              (if (dump-stack-trace?)
                  (let ((_cont6479764799_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self64793_
                            __continuation65171
                            __klass65168
                            '#f))))
                    (if _cont6479764799_
                        (let ((_cont64802_ _cont6479764799_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port64796_)
                          (newline _tmp-port64796_)
                          (display-continuation-backtrace
                           _cont64802_
                           _tmp-port64796_))
                        '#f))
                  '#!void)
              (let ((__tmp65208 (get-output-string _tmp-port64796_)))
                (declare (not safe))
                (##write-string __tmp65208 _port64794_)))))))
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
      (lambda (_port64665_)
        (if (macro-character-port? _port64665_)
            (let ((_old-width64667_
                   (macro-character-port-output-width _port64665_)))
              (macro-character-port-output-width-set!
               _port64665_
               (lambda (_port64669_) '256))
              _old-width64667_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port64662_ _old-width64663_)
        (if (macro-character-port? _port64662_)
            (macro-character-port-output-width-set!
             _port64662_
             _old-width64663_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e64660_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e64660_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn64654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64654_))
            (let ((_e64657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64654_ 'exception))))
              (macro-abandoned-mutex-exception? _e64657_))
            (macro-abandoned-mutex-exception? _exn64654_))))
    (define cfun-conversion-exception?
      (lambda (_exn64650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64650_))
            (let ((_e64652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64650_ 'exception))))
              (macro-cfun-conversion-exception? _e64652_))
            (macro-cfun-conversion-exception? _exn64650_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn64646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64646_))
            (let ((_e64648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64646_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64648_)
                  (macro-cfun-conversion-exception-arguments _e64648_)
                  (let ((__tmp65209
                         (let ((__tmp65210
                                (let ()
                                  (declare (not safe))
                                  (cons _e64648_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp65210))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65209))))
            (if (macro-cfun-conversion-exception? _exn64646_)
                (macro-cfun-conversion-exception-arguments _exn64646_)
                (let ((__tmp65211
                       (let ((__tmp65212
                              (let ()
                                (declare (not safe))
                                (cons _exn64646_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp65212))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65211))))))
    (define cfun-conversion-exception-code
      (lambda (_exn64642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64642_))
            (let ((_e64644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64642_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64644_)
                  (macro-cfun-conversion-exception-code _e64644_)
                  (let ((__tmp65213
                         (let ((__tmp65214
                                (let ()
                                  (declare (not safe))
                                  (cons _e64644_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp65214))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65213))))
            (if (macro-cfun-conversion-exception? _exn64642_)
                (macro-cfun-conversion-exception-code _exn64642_)
                (let ((__tmp65215
                       (let ((__tmp65216
                              (let ()
                                (declare (not safe))
                                (cons _exn64642_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp65216))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65215))))))
    (define cfun-conversion-exception-message
      (lambda (_exn64638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64638_))
            (let ((_e64640_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64638_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64640_)
                  (macro-cfun-conversion-exception-message _e64640_)
                  (let ((__tmp65217
                         (let ((__tmp65218
                                (let ()
                                  (declare (not safe))
                                  (cons _e64640_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp65218))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65217))))
            (if (macro-cfun-conversion-exception? _exn64638_)
                (macro-cfun-conversion-exception-message _exn64638_)
                (let ((__tmp65219
                       (let ((__tmp65220
                              (let ()
                                (declare (not safe))
                                (cons _exn64638_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp65220))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65219))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn64632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64632_))
            (let ((_e64635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64632_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64635_)
                  (macro-cfun-conversion-exception-procedure _e64635_)
                  (let ((__tmp65221
                         (let ((__tmp65222
                                (let ()
                                  (declare (not safe))
                                  (cons _e64635_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp65222))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65221))))
            (if (macro-cfun-conversion-exception? _exn64632_)
                (macro-cfun-conversion-exception-procedure _exn64632_)
                (let ((__tmp65223
                       (let ((__tmp65224
                              (let ()
                                (declare (not safe))
                                (cons _exn64632_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp65224))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65223))))))
    (define datum-parsing-exception?
      (lambda (_exn64628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64628_))
            (let ((_e64630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64628_ 'exception))))
              (macro-datum-parsing-exception? _e64630_))
            (macro-datum-parsing-exception? _exn64628_))))
    (define datum-parsing-exception-kind
      (lambda (_exn64624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64624_))
            (let ((_e64626_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64624_ 'exception))))
              (if (macro-datum-parsing-exception? _e64626_)
                  (macro-datum-parsing-exception-kind _e64626_)
                  (let ((__tmp65225
                         (let ((__tmp65226
                                (let ()
                                  (declare (not safe))
                                  (cons _e64626_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp65226))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65225))))
            (if (macro-datum-parsing-exception? _exn64624_)
                (macro-datum-parsing-exception-kind _exn64624_)
                (let ((__tmp65227
                       (let ((__tmp65228
                              (let ()
                                (declare (not safe))
                                (cons _exn64624_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp65228))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65227))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn64620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64620_))
            (let ((_e64622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64620_ 'exception))))
              (if (macro-datum-parsing-exception? _e64622_)
                  (macro-datum-parsing-exception-parameters _e64622_)
                  (let ((__tmp65229
                         (let ((__tmp65230
                                (let ()
                                  (declare (not safe))
                                  (cons _e64622_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp65230))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65229))))
            (if (macro-datum-parsing-exception? _exn64620_)
                (macro-datum-parsing-exception-parameters _exn64620_)
                (let ((__tmp65231
                       (let ((__tmp65232
                              (let ()
                                (declare (not safe))
                                (cons _exn64620_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp65232))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65231))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn64614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64614_))
            (let ((_e64617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64614_ 'exception))))
              (if (macro-datum-parsing-exception? _e64617_)
                  (macro-datum-parsing-exception-readenv _e64617_)
                  (let ((__tmp65233
                         (let ((__tmp65234
                                (let ()
                                  (declare (not safe))
                                  (cons _e64617_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp65234))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65233))))
            (if (macro-datum-parsing-exception? _exn64614_)
                (macro-datum-parsing-exception-readenv _exn64614_)
                (let ((__tmp65235
                       (let ((__tmp65236
                              (let ()
                                (declare (not safe))
                                (cons _exn64614_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp65236))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65235))))))
    (define deadlock-exception?
      (lambda (_exn64608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64608_))
            (let ((_e64611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64608_ 'exception))))
              (macro-deadlock-exception? _e64611_))
            (macro-deadlock-exception? _exn64608_))))
    (define divide-by-zero-exception?
      (lambda (_exn64604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64604_))
            (let ((_e64606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64604_ 'exception))))
              (macro-divide-by-zero-exception? _e64606_))
            (macro-divide-by-zero-exception? _exn64604_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn64600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64600_))
            (let ((_e64602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64600_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64602_)
                  (macro-divide-by-zero-exception-arguments _e64602_)
                  (let ((__tmp65237
                         (let ((__tmp65238
                                (let ()
                                  (declare (not safe))
                                  (cons _e64602_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp65238))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65237))))
            (if (macro-divide-by-zero-exception? _exn64600_)
                (macro-divide-by-zero-exception-arguments _exn64600_)
                (let ((__tmp65239
                       (let ((__tmp65240
                              (let ()
                                (declare (not safe))
                                (cons _exn64600_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp65240))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65239))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn64594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64594_))
            (let ((_e64597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64594_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64597_)
                  (macro-divide-by-zero-exception-procedure _e64597_)
                  (let ((__tmp65241
                         (let ((__tmp65242
                                (let ()
                                  (declare (not safe))
                                  (cons _e64597_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp65242))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65241))))
            (if (macro-divide-by-zero-exception? _exn64594_)
                (macro-divide-by-zero-exception-procedure _exn64594_)
                (let ((__tmp65243
                       (let ((__tmp65244
                              (let ()
                                (declare (not safe))
                                (cons _exn64594_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp65244))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65243))))))
    (define error-exception?
      (lambda (_exn64590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64590_))
            (let ((_e64592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64590_ 'exception))))
              (macro-error-exception? _e64592_))
            (macro-error-exception? _exn64590_))))
    (define error-exception-message
      (lambda (_exn64586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64586_))
            (let ((_e64588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64586_ 'exception))))
              (if (macro-error-exception? _e64588_)
                  (macro-error-exception-message _e64588_)
                  (let ((__tmp65245
                         (let ((__tmp65246
                                (let ()
                                  (declare (not safe))
                                  (cons _e64588_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp65246))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65245))))
            (if (macro-error-exception? _exn64586_)
                (macro-error-exception-message _exn64586_)
                (let ((__tmp65247
                       (let ((__tmp65248
                              (let ()
                                (declare (not safe))
                                (cons _exn64586_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp65248))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65247))))))
    (define error-exception-parameters
      (lambda (_exn64580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64580_))
            (let ((_e64583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64580_ 'exception))))
              (if (macro-error-exception? _e64583_)
                  (macro-error-exception-parameters _e64583_)
                  (let ((__tmp65249
                         (let ((__tmp65250
                                (let ()
                                  (declare (not safe))
                                  (cons _e64583_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp65250))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65249))))
            (if (macro-error-exception? _exn64580_)
                (macro-error-exception-parameters _exn64580_)
                (let ((__tmp65251
                       (let ((__tmp65252
                              (let ()
                                (declare (not safe))
                                (cons _exn64580_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp65252))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65251))))))
    (define expression-parsing-exception?
      (lambda (_exn64576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64576_))
            (let ((_e64578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64576_ 'exception))))
              (macro-expression-parsing-exception? _e64578_))
            (macro-expression-parsing-exception? _exn64576_))))
    (define expression-parsing-exception-kind
      (lambda (_exn64572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64572_))
            (let ((_e64574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64572_ 'exception))))
              (if (macro-expression-parsing-exception? _e64574_)
                  (macro-expression-parsing-exception-kind _e64574_)
                  (let ((__tmp65253
                         (let ((__tmp65254
                                (let ()
                                  (declare (not safe))
                                  (cons _e64574_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp65254))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65253))))
            (if (macro-expression-parsing-exception? _exn64572_)
                (macro-expression-parsing-exception-kind _exn64572_)
                (let ((__tmp65255
                       (let ((__tmp65256
                              (let ()
                                (declare (not safe))
                                (cons _exn64572_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp65256))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65255))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn64568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64568_))
            (let ((_e64570_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64568_ 'exception))))
              (if (macro-expression-parsing-exception? _e64570_)
                  (macro-expression-parsing-exception-parameters _e64570_)
                  (let ((__tmp65257
                         (let ((__tmp65258
                                (let ()
                                  (declare (not safe))
                                  (cons _e64570_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp65258))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65257))))
            (if (macro-expression-parsing-exception? _exn64568_)
                (macro-expression-parsing-exception-parameters _exn64568_)
                (let ((__tmp65259
                       (let ((__tmp65260
                              (let ()
                                (declare (not safe))
                                (cons _exn64568_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp65260))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65259))))))
    (define expression-parsing-exception-source
      (lambda (_exn64562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64562_))
            (let ((_e64565_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64562_ 'exception))))
              (if (macro-expression-parsing-exception? _e64565_)
                  (macro-expression-parsing-exception-source _e64565_)
                  (let ((__tmp65261
                         (let ((__tmp65262
                                (let ()
                                  (declare (not safe))
                                  (cons _e64565_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp65262))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65261))))
            (if (macro-expression-parsing-exception? _exn64562_)
                (macro-expression-parsing-exception-source _exn64562_)
                (let ((__tmp65263
                       (let ((__tmp65264
                              (let ()
                                (declare (not safe))
                                (cons _exn64562_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp65264))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65263))))))
    (define file-exists-exception?
      (lambda (_exn64558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64558_))
            (let ((_e64560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64558_ 'exception))))
              (macro-file-exists-exception? _e64560_))
            (macro-file-exists-exception? _exn64558_))))
    (define file-exists-exception-arguments
      (lambda (_exn64554_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64554_))
            (let ((_e64556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64554_ 'exception))))
              (if (macro-file-exists-exception? _e64556_)
                  (macro-file-exists-exception-arguments _e64556_)
                  (let ((__tmp65265
                         (let ((__tmp65266
                                (let ()
                                  (declare (not safe))
                                  (cons _e64556_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp65266))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65265))))
            (if (macro-file-exists-exception? _exn64554_)
                (macro-file-exists-exception-arguments _exn64554_)
                (let ((__tmp65267
                       (let ((__tmp65268
                              (let ()
                                (declare (not safe))
                                (cons _exn64554_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp65268))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65267))))))
    (define file-exists-exception-procedure
      (lambda (_exn64548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64548_))
            (let ((_e64551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64548_ 'exception))))
              (if (macro-file-exists-exception? _e64551_)
                  (macro-file-exists-exception-procedure _e64551_)
                  (let ((__tmp65269
                         (let ((__tmp65270
                                (let ()
                                  (declare (not safe))
                                  (cons _e64551_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp65270))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65269))))
            (if (macro-file-exists-exception? _exn64548_)
                (macro-file-exists-exception-procedure _exn64548_)
                (let ((__tmp65271
                       (let ((__tmp65272
                              (let ()
                                (declare (not safe))
                                (cons _exn64548_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp65272))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65271))))))
    (define fixnum-overflow-exception?
      (lambda (_exn64544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64544_))
            (let ((_e64546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64544_ 'exception))))
              (macro-fixnum-overflow-exception? _e64546_))
            (macro-fixnum-overflow-exception? _exn64544_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn64540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64540_))
            (let ((_e64542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64540_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64542_)
                  (macro-fixnum-overflow-exception-arguments _e64542_)
                  (let ((__tmp65273
                         (let ((__tmp65274
                                (let ()
                                  (declare (not safe))
                                  (cons _e64542_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp65274))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65273))))
            (if (macro-fixnum-overflow-exception? _exn64540_)
                (macro-fixnum-overflow-exception-arguments _exn64540_)
                (let ((__tmp65275
                       (let ((__tmp65276
                              (let ()
                                (declare (not safe))
                                (cons _exn64540_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp65276))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65275))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn64534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64534_))
            (let ((_e64537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64534_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64537_)
                  (macro-fixnum-overflow-exception-procedure _e64537_)
                  (let ((__tmp65277
                         (let ((__tmp65278
                                (let ()
                                  (declare (not safe))
                                  (cons _e64537_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp65278))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65277))))
            (if (macro-fixnum-overflow-exception? _exn64534_)
                (macro-fixnum-overflow-exception-procedure _exn64534_)
                (let ((__tmp65279
                       (let ((__tmp65280
                              (let ()
                                (declare (not safe))
                                (cons _exn64534_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp65280))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65279))))))
    (define heap-overflow-exception?
      (lambda (_exn64528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64528_))
            (let ((_e64531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64528_ 'exception))))
              (macro-heap-overflow-exception? _e64531_))
            (macro-heap-overflow-exception? _exn64528_))))
    (define inactive-thread-exception?
      (lambda (_exn64524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64524_))
            (let ((_e64526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64524_ 'exception))))
              (macro-inactive-thread-exception? _e64526_))
            (macro-inactive-thread-exception? _exn64524_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn64520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64520_))
            (let ((_e64522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64520_ 'exception))))
              (if (macro-inactive-thread-exception? _e64522_)
                  (macro-inactive-thread-exception-arguments _e64522_)
                  (let ((__tmp65281
                         (let ((__tmp65282
                                (let ()
                                  (declare (not safe))
                                  (cons _e64522_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp65282))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65281))))
            (if (macro-inactive-thread-exception? _exn64520_)
                (macro-inactive-thread-exception-arguments _exn64520_)
                (let ((__tmp65283
                       (let ((__tmp65284
                              (let ()
                                (declare (not safe))
                                (cons _exn64520_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp65284))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65283))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn64514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64514_))
            (let ((_e64517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64514_ 'exception))))
              (if (macro-inactive-thread-exception? _e64517_)
                  (macro-inactive-thread-exception-procedure _e64517_)
                  (let ((__tmp65285
                         (let ((__tmp65286
                                (let ()
                                  (declare (not safe))
                                  (cons _e64517_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp65286))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65285))))
            (if (macro-inactive-thread-exception? _exn64514_)
                (macro-inactive-thread-exception-procedure _exn64514_)
                (let ((__tmp65287
                       (let ((__tmp65288
                              (let ()
                                (declare (not safe))
                                (cons _exn64514_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp65288))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65287))))))
    (define initialized-thread-exception?
      (lambda (_exn64510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64510_))
            (let ((_e64512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64510_ 'exception))))
              (macro-initialized-thread-exception? _e64512_))
            (macro-initialized-thread-exception? _exn64510_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn64506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64506_))
            (let ((_e64508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64506_ 'exception))))
              (if (macro-initialized-thread-exception? _e64508_)
                  (macro-initialized-thread-exception-arguments _e64508_)
                  (let ((__tmp65289
                         (let ((__tmp65290
                                (let ()
                                  (declare (not safe))
                                  (cons _e64508_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp65290))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65289))))
            (if (macro-initialized-thread-exception? _exn64506_)
                (macro-initialized-thread-exception-arguments _exn64506_)
                (let ((__tmp65291
                       (let ((__tmp65292
                              (let ()
                                (declare (not safe))
                                (cons _exn64506_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp65292))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65291))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn64500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64500_))
            (let ((_e64503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64500_ 'exception))))
              (if (macro-initialized-thread-exception? _e64503_)
                  (macro-initialized-thread-exception-procedure _e64503_)
                  (let ((__tmp65293
                         (let ((__tmp65294
                                (let ()
                                  (declare (not safe))
                                  (cons _e64503_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp65294))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65293))))
            (if (macro-initialized-thread-exception? _exn64500_)
                (macro-initialized-thread-exception-procedure _exn64500_)
                (let ((__tmp65295
                       (let ((__tmp65296
                              (let ()
                                (declare (not safe))
                                (cons _exn64500_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp65296))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65295))))))
    (define invalid-hash-number-exception?
      (lambda (_exn64496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64496_))
            (let ((_e64498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64496_ 'exception))))
              (macro-invalid-hash-number-exception? _e64498_))
            (macro-invalid-hash-number-exception? _exn64496_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn64492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64492_))
            (let ((_e64494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64492_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64494_)
                  (macro-invalid-hash-number-exception-arguments _e64494_)
                  (let ((__tmp65297
                         (let ((__tmp65298
                                (let ()
                                  (declare (not safe))
                                  (cons _e64494_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp65298))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65297))))
            (if (macro-invalid-hash-number-exception? _exn64492_)
                (macro-invalid-hash-number-exception-arguments _exn64492_)
                (let ((__tmp65299
                       (let ((__tmp65300
                              (let ()
                                (declare (not safe))
                                (cons _exn64492_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp65300))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65299))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn64486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64486_))
            (let ((_e64489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64486_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64489_)
                  (macro-invalid-hash-number-exception-procedure _e64489_)
                  (let ((__tmp65301
                         (let ((__tmp65302
                                (let ()
                                  (declare (not safe))
                                  (cons _e64489_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp65302))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65301))))
            (if (macro-invalid-hash-number-exception? _exn64486_)
                (macro-invalid-hash-number-exception-procedure _exn64486_)
                (let ((__tmp65303
                       (let ((__tmp65304
                              (let ()
                                (declare (not safe))
                                (cons _exn64486_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp65304))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65303))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn64482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64482_))
            (let ((_e64484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64482_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e64484_))
            (macro-invalid-utf8-encoding-exception? _exn64482_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn64478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64478_))
            (let ((_e64480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64478_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64480_)
                  (macro-invalid-utf8-encoding-exception-arguments _e64480_)
                  (let ((__tmp65305
                         (let ((__tmp65306
                                (let ()
                                  (declare (not safe))
                                  (cons _e64480_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp65306))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65305))))
            (if (macro-invalid-utf8-encoding-exception? _exn64478_)
                (macro-invalid-utf8-encoding-exception-arguments _exn64478_)
                (let ((__tmp65307
                       (let ((__tmp65308
                              (let ()
                                (declare (not safe))
                                (cons _exn64478_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp65308))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65307))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn64472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64472_))
            (let ((_e64475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64472_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64475_)
                  (macro-invalid-utf8-encoding-exception-procedure _e64475_)
                  (let ((__tmp65309
                         (let ((__tmp65310
                                (let ()
                                  (declare (not safe))
                                  (cons _e64475_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp65310))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65309))))
            (if (macro-invalid-utf8-encoding-exception? _exn64472_)
                (macro-invalid-utf8-encoding-exception-procedure _exn64472_)
                (let ((__tmp65311
                       (let ((__tmp65312
                              (let ()
                                (declare (not safe))
                                (cons _exn64472_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp65312))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65311))))))
    (define join-timeout-exception?
      (lambda (_exn64468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64468_))
            (let ((_e64470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64468_ 'exception))))
              (macro-join-timeout-exception? _e64470_))
            (macro-join-timeout-exception? _exn64468_))))
    (define join-timeout-exception-arguments
      (lambda (_exn64464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64464_))
            (let ((_e64466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64464_ 'exception))))
              (if (macro-join-timeout-exception? _e64466_)
                  (macro-join-timeout-exception-arguments _e64466_)
                  (let ((__tmp65313
                         (let ((__tmp65314
                                (let ()
                                  (declare (not safe))
                                  (cons _e64466_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp65314))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65313))))
            (if (macro-join-timeout-exception? _exn64464_)
                (macro-join-timeout-exception-arguments _exn64464_)
                (let ((__tmp65315
                       (let ((__tmp65316
                              (let ()
                                (declare (not safe))
                                (cons _exn64464_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp65316))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65315))))))
    (define join-timeout-exception-procedure
      (lambda (_exn64458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64458_))
            (let ((_e64461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64458_ 'exception))))
              (if (macro-join-timeout-exception? _e64461_)
                  (macro-join-timeout-exception-procedure _e64461_)
                  (let ((__tmp65317
                         (let ((__tmp65318
                                (let ()
                                  (declare (not safe))
                                  (cons _e64461_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp65318))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65317))))
            (if (macro-join-timeout-exception? _exn64458_)
                (macro-join-timeout-exception-procedure _exn64458_)
                (let ((__tmp65319
                       (let ((__tmp65320
                              (let ()
                                (declare (not safe))
                                (cons _exn64458_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp65320))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65319))))))
    (define keyword-expected-exception?
      (lambda (_exn64454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64454_))
            (let ((_e64456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64454_ 'exception))))
              (macro-keyword-expected-exception? _e64456_))
            (macro-keyword-expected-exception? _exn64454_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn64450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64450_))
            (let ((_e64452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64450_ 'exception))))
              (if (macro-keyword-expected-exception? _e64452_)
                  (macro-keyword-expected-exception-arguments _e64452_)
                  (let ((__tmp65321
                         (let ((__tmp65322
                                (let ()
                                  (declare (not safe))
                                  (cons _e64452_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp65322))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65321))))
            (if (macro-keyword-expected-exception? _exn64450_)
                (macro-keyword-expected-exception-arguments _exn64450_)
                (let ((__tmp65323
                       (let ((__tmp65324
                              (let ()
                                (declare (not safe))
                                (cons _exn64450_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp65324))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65323))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn64444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64444_))
            (let ((_e64447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64444_ 'exception))))
              (if (macro-keyword-expected-exception? _e64447_)
                  (macro-keyword-expected-exception-procedure _e64447_)
                  (let ((__tmp65325
                         (let ((__tmp65326
                                (let ()
                                  (declare (not safe))
                                  (cons _e64447_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp65326))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65325))))
            (if (macro-keyword-expected-exception? _exn64444_)
                (macro-keyword-expected-exception-procedure _exn64444_)
                (let ((__tmp65327
                       (let ((__tmp65328
                              (let ()
                                (declare (not safe))
                                (cons _exn64444_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp65328))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65327))))))
    (define length-mismatch-exception?
      (lambda (_exn64440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64440_))
            (let ((_e64442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64440_ 'exception))))
              (macro-length-mismatch-exception? _e64442_))
            (macro-length-mismatch-exception? _exn64440_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn64436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64436_))
            (let ((_e64438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64436_ 'exception))))
              (if (macro-length-mismatch-exception? _e64438_)
                  (macro-length-mismatch-exception-arg-id _e64438_)
                  (let ((__tmp65329
                         (let ((__tmp65330
                                (let ()
                                  (declare (not safe))
                                  (cons _e64438_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp65330))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65329))))
            (if (macro-length-mismatch-exception? _exn64436_)
                (macro-length-mismatch-exception-arg-id _exn64436_)
                (let ((__tmp65331
                       (let ((__tmp65332
                              (let ()
                                (declare (not safe))
                                (cons _exn64436_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp65332))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65331))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn64432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64432_))
            (let ((_e64434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64432_ 'exception))))
              (if (macro-length-mismatch-exception? _e64434_)
                  (macro-length-mismatch-exception-arguments _e64434_)
                  (let ((__tmp65333
                         (let ((__tmp65334
                                (let ()
                                  (declare (not safe))
                                  (cons _e64434_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp65334))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65333))))
            (if (macro-length-mismatch-exception? _exn64432_)
                (macro-length-mismatch-exception-arguments _exn64432_)
                (let ((__tmp65335
                       (let ((__tmp65336
                              (let ()
                                (declare (not safe))
                                (cons _exn64432_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp65336))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65335))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn64426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64426_))
            (let ((_e64429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64426_ 'exception))))
              (if (macro-length-mismatch-exception? _e64429_)
                  (macro-length-mismatch-exception-procedure _e64429_)
                  (let ((__tmp65337
                         (let ((__tmp65338
                                (let ()
                                  (declare (not safe))
                                  (cons _e64429_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp65338))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65337))))
            (if (macro-length-mismatch-exception? _exn64426_)
                (macro-length-mismatch-exception-procedure _exn64426_)
                (let ((__tmp65339
                       (let ((__tmp65340
                              (let ()
                                (declare (not safe))
                                (cons _exn64426_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp65340))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65339))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn64422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64422_))
            (let ((_e64424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64422_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e64424_))
            (macro-mailbox-receive-timeout-exception? _exn64422_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn64418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64418_))
            (let ((_e64420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64418_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64420_)
                  (macro-mailbox-receive-timeout-exception-arguments _e64420_)
                  (let ((__tmp65341
                         (let ((__tmp65342
                                (let ()
                                  (declare (not safe))
                                  (cons _e64420_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp65342))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65341))))
            (if (macro-mailbox-receive-timeout-exception? _exn64418_)
                (macro-mailbox-receive-timeout-exception-arguments _exn64418_)
                (let ((__tmp65343
                       (let ((__tmp65344
                              (let ()
                                (declare (not safe))
                                (cons _exn64418_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp65344))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65343))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn64412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64412_))
            (let ((_e64415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64412_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64415_)
                  (macro-mailbox-receive-timeout-exception-procedure _e64415_)
                  (let ((__tmp65345
                         (let ((__tmp65346
                                (let ()
                                  (declare (not safe))
                                  (cons _e64415_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp65346))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65345))))
            (if (macro-mailbox-receive-timeout-exception? _exn64412_)
                (macro-mailbox-receive-timeout-exception-procedure _exn64412_)
                (let ((__tmp65347
                       (let ((__tmp65348
                              (let ()
                                (declare (not safe))
                                (cons _exn64412_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp65348))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65347))))))
    (define module-not-found-exception?
      (lambda (_exn64408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64408_))
            (let ((_e64410_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64408_ 'exception))))
              (macro-module-not-found-exception? _e64410_))
            (macro-module-not-found-exception? _exn64408_))))
    (define module-not-found-exception-arguments
      (lambda (_exn64404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64404_))
            (let ((_e64406_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64404_ 'exception))))
              (if (macro-module-not-found-exception? _e64406_)
                  (macro-module-not-found-exception-arguments _e64406_)
                  (let ((__tmp65349
                         (let ((__tmp65350
                                (let ()
                                  (declare (not safe))
                                  (cons _e64406_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp65350))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65349))))
            (if (macro-module-not-found-exception? _exn64404_)
                (macro-module-not-found-exception-arguments _exn64404_)
                (let ((__tmp65351
                       (let ((__tmp65352
                              (let ()
                                (declare (not safe))
                                (cons _exn64404_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp65352))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65351))))))
    (define module-not-found-exception-procedure
      (lambda (_exn64398_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64398_))
            (let ((_e64401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64398_ 'exception))))
              (if (macro-module-not-found-exception? _e64401_)
                  (macro-module-not-found-exception-procedure _e64401_)
                  (let ((__tmp65353
                         (let ((__tmp65354
                                (let ()
                                  (declare (not safe))
                                  (cons _e64401_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp65354))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65353))))
            (if (macro-module-not-found-exception? _exn64398_)
                (macro-module-not-found-exception-procedure _exn64398_)
                (let ((__tmp65355
                       (let ((__tmp65356
                              (let ()
                                (declare (not safe))
                                (cons _exn64398_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp65356))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65355))))))
    (define multiple-c-return-exception?
      (lambda (_exn64392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64392_))
            (let ((_e64395_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64392_ 'exception))))
              (macro-multiple-c-return-exception? _e64395_))
            (macro-multiple-c-return-exception? _exn64392_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn64388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64388_))
            (let ((_e64390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64388_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e64390_))
            (macro-no-such-file-or-directory-exception? _exn64388_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn64384_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64384_))
            (let ((_e64386_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64384_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64386_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e64386_)
                  (let ((__tmp65357
                         (let ((__tmp65358
                                (let ()
                                  (declare (not safe))
                                  (cons _e64386_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp65358))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65357))))
            (if (macro-no-such-file-or-directory-exception? _exn64384_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn64384_)
                (let ((__tmp65359
                       (let ((__tmp65360
                              (let ()
                                (declare (not safe))
                                (cons _exn64384_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp65360))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65359))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn64378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64378_))
            (let ((_e64381_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64378_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64381_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e64381_)
                  (let ((__tmp65361
                         (let ((__tmp65362
                                (let ()
                                  (declare (not safe))
                                  (cons _e64381_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp65362))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65361))))
            (if (macro-no-such-file-or-directory-exception? _exn64378_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn64378_)
                (let ((__tmp65363
                       (let ((__tmp65364
                              (let ()
                                (declare (not safe))
                                (cons _exn64378_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp65364))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65363))))))
    (define noncontinuable-exception?
      (lambda (_exn64374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64374_))
            (let ((_e64376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64374_ 'exception))))
              (macro-noncontinuable-exception? _e64376_))
            (macro-noncontinuable-exception? _exn64374_))))
    (define noncontinuable-exception-reason
      (lambda (_exn64368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64368_))
            (let ((_e64371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64368_ 'exception))))
              (if (macro-noncontinuable-exception? _e64371_)
                  (macro-noncontinuable-exception-reason _e64371_)
                  (let ((__tmp65365
                         (let ((__tmp65366
                                (let ()
                                  (declare (not safe))
                                  (cons _e64371_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp65366))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp65365))))
            (if (macro-noncontinuable-exception? _exn64368_)
                (macro-noncontinuable-exception-reason _exn64368_)
                (let ((__tmp65367
                       (let ((__tmp65368
                              (let ()
                                (declare (not safe))
                                (cons _exn64368_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp65368))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp65367))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn64364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64364_))
            (let ((_e64366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64364_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e64366_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn64364_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn64360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64360_))
            (let ((_e64362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64360_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64362_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e64362_)
                  (let ((__tmp65369
                         (let ((__tmp65370
                                (let ()
                                  (declare (not safe))
                                  (cons _e64362_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp65370))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65369))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64360_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn64360_)
                (let ((__tmp65371
                       (let ((__tmp65372
                              (let ()
                                (declare (not safe))
                                (cons _exn64360_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp65372))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65371))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn64354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64354_))
            (let ((_e64357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64354_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64357_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e64357_)
                  (let ((__tmp65373
                         (let ((__tmp65374
                                (let ()
                                  (declare (not safe))
                                  (cons _e64357_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp65374))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65373))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64354_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn64354_)
                (let ((__tmp65375
                       (let ((__tmp65376
                              (let ()
                                (declare (not safe))
                                (cons _exn64354_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp65376))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65375))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn64350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64350_))
            (let ((_e64352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64350_ 'exception))))
              (macro-nonprocedure-operator-exception? _e64352_))
            (macro-nonprocedure-operator-exception? _exn64350_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn64346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64346_))
            (let ((_e64348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64346_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64348_)
                  (macro-nonprocedure-operator-exception-arguments _e64348_)
                  (let ((__tmp65377
                         (let ((__tmp65378
                                (let ()
                                  (declare (not safe))
                                  (cons _e64348_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp65378))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65377))))
            (if (macro-nonprocedure-operator-exception? _exn64346_)
                (macro-nonprocedure-operator-exception-arguments _exn64346_)
                (let ((__tmp65379
                       (let ((__tmp65380
                              (let ()
                                (declare (not safe))
                                (cons _exn64346_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp65380))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65379))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn64342_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64342_))
            (let ((_e64344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64342_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64344_)
                  (macro-nonprocedure-operator-exception-code _e64344_)
                  (let ((__tmp65381
                         (let ((__tmp65382
                                (let ()
                                  (declare (not safe))
                                  (cons _e64344_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp65382))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65381))))
            (if (macro-nonprocedure-operator-exception? _exn64342_)
                (macro-nonprocedure-operator-exception-code _exn64342_)
                (let ((__tmp65383
                       (let ((__tmp65384
                              (let ()
                                (declare (not safe))
                                (cons _exn64342_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp65384))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65383))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn64338_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64338_))
            (let ((_e64340_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64338_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64340_)
                  (macro-nonprocedure-operator-exception-operator _e64340_)
                  (let ((__tmp65385
                         (let ((__tmp65386
                                (let ()
                                  (declare (not safe))
                                  (cons _e64340_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp65386))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65385))))
            (if (macro-nonprocedure-operator-exception? _exn64338_)
                (macro-nonprocedure-operator-exception-operator _exn64338_)
                (let ((__tmp65387
                       (let ((__tmp65388
                              (let ()
                                (declare (not safe))
                                (cons _exn64338_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp65388))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65387))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn64332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64332_))
            (let ((_e64335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64332_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64335_)
                  (macro-nonprocedure-operator-exception-rte _e64335_)
                  (let ((__tmp65389
                         (let ((__tmp65390
                                (let ()
                                  (declare (not safe))
                                  (cons _e64335_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp65390))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65389))))
            (if (macro-nonprocedure-operator-exception? _exn64332_)
                (macro-nonprocedure-operator-exception-rte _exn64332_)
                (let ((__tmp65391
                       (let ((__tmp65392
                              (let ()
                                (declare (not safe))
                                (cons _exn64332_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp65392))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65391))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn64328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64328_))
            (let ((_e64330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64328_ 'exception))))
              (macro-not-in-compilation-context-exception? _e64330_))
            (macro-not-in-compilation-context-exception? _exn64328_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn64324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64324_))
            (let ((_e64326_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64324_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64326_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e64326_)
                  (let ((__tmp65393
                         (let ((__tmp65394
                                (let ()
                                  (declare (not safe))
                                  (cons _e64326_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp65394))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65393))))
            (if (macro-not-in-compilation-context-exception? _exn64324_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn64324_)
                (let ((__tmp65395
                       (let ((__tmp65396
                              (let ()
                                (declare (not safe))
                                (cons _exn64324_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp65396))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65395))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn64318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64318_))
            (let ((_e64321_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64318_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64321_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e64321_)
                  (let ((__tmp65397
                         (let ((__tmp65398
                                (let ()
                                  (declare (not safe))
                                  (cons _e64321_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp65398))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65397))))
            (if (macro-not-in-compilation-context-exception? _exn64318_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn64318_)
                (let ((__tmp65399
                       (let ((__tmp65400
                              (let ()
                                (declare (not safe))
                                (cons _exn64318_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp65400))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65399))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn64314_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64314_))
            (let ((_e64316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64314_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e64316_))
            (macro-number-of-arguments-limit-exception? _exn64314_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn64310_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64310_))
            (let ((_e64312_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64310_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64312_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e64312_)
                  (let ((__tmp65401
                         (let ((__tmp65402
                                (let ()
                                  (declare (not safe))
                                  (cons _e64312_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp65402))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65401))))
            (if (macro-number-of-arguments-limit-exception? _exn64310_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn64310_)
                (let ((__tmp65403
                       (let ((__tmp65404
                              (let ()
                                (declare (not safe))
                                (cons _exn64310_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp65404))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65403))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn64304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64304_))
            (let ((_e64307_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64304_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64307_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e64307_)
                  (let ((__tmp65405
                         (let ((__tmp65406
                                (let ()
                                  (declare (not safe))
                                  (cons _e64307_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp65406))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65405))))
            (if (macro-number-of-arguments-limit-exception? _exn64304_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn64304_)
                (let ((__tmp65407
                       (let ((__tmp65408
                              (let ()
                                (declare (not safe))
                                (cons _exn64304_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp65408))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65407))))))
    (define os-exception?
      (lambda (_exn64300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64300_))
            (let ((_e64302_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64300_ 'exception))))
              (macro-os-exception? _e64302_))
            (macro-os-exception? _exn64300_))))
    (define os-exception-arguments
      (lambda (_exn64296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64296_))
            (let ((_e64298_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64296_ 'exception))))
              (if (macro-os-exception? _e64298_)
                  (macro-os-exception-arguments _e64298_)
                  (let ((__tmp65409
                         (let ((__tmp65410
                                (let ()
                                  (declare (not safe))
                                  (cons _e64298_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp65410))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65409))))
            (if (macro-os-exception? _exn64296_)
                (macro-os-exception-arguments _exn64296_)
                (let ((__tmp65411
                       (let ((__tmp65412
                              (let ()
                                (declare (not safe))
                                (cons _exn64296_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp65412))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65411))))))
    (define os-exception-code
      (lambda (_exn64292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64292_))
            (let ((_e64294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64292_ 'exception))))
              (if (macro-os-exception? _e64294_)
                  (macro-os-exception-code _e64294_)
                  (let ((__tmp65413
                         (let ((__tmp65414
                                (let ()
                                  (declare (not safe))
                                  (cons _e64294_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp65414))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65413))))
            (if (macro-os-exception? _exn64292_)
                (macro-os-exception-code _exn64292_)
                (let ((__tmp65415
                       (let ((__tmp65416
                              (let ()
                                (declare (not safe))
                                (cons _exn64292_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp65416))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65415))))))
    (define os-exception-message
      (lambda (_exn64288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64288_))
            (let ((_e64290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64288_ 'exception))))
              (if (macro-os-exception? _e64290_)
                  (macro-os-exception-message _e64290_)
                  (let ((__tmp65417
                         (let ((__tmp65418
                                (let ()
                                  (declare (not safe))
                                  (cons _e64290_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp65418))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65417))))
            (if (macro-os-exception? _exn64288_)
                (macro-os-exception-message _exn64288_)
                (let ((__tmp65419
                       (let ((__tmp65420
                              (let ()
                                (declare (not safe))
                                (cons _exn64288_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp65420))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65419))))))
    (define os-exception-procedure
      (lambda (_exn64282_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64282_))
            (let ((_e64285_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64282_ 'exception))))
              (if (macro-os-exception? _e64285_)
                  (macro-os-exception-procedure _e64285_)
                  (let ((__tmp65421
                         (let ((__tmp65422
                                (let ()
                                  (declare (not safe))
                                  (cons _e64285_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp65422))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65421))))
            (if (macro-os-exception? _exn64282_)
                (macro-os-exception-procedure _exn64282_)
                (let ((__tmp65423
                       (let ((__tmp65424
                              (let ()
                                (declare (not safe))
                                (cons _exn64282_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp65424))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65423))))))
    (define permission-denied-exception?
      (lambda (_exn64278_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64278_))
            (let ((_e64280_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64278_ 'exception))))
              (macro-permission-denied-exception? _e64280_))
            (macro-permission-denied-exception? _exn64278_))))
    (define permission-denied-exception-arguments
      (lambda (_exn64274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64274_))
            (let ((_e64276_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64274_ 'exception))))
              (if (macro-permission-denied-exception? _e64276_)
                  (macro-permission-denied-exception-arguments _e64276_)
                  (let ((__tmp65425
                         (let ((__tmp65426
                                (let ()
                                  (declare (not safe))
                                  (cons _e64276_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp65426))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65425))))
            (if (macro-permission-denied-exception? _exn64274_)
                (macro-permission-denied-exception-arguments _exn64274_)
                (let ((__tmp65427
                       (let ((__tmp65428
                              (let ()
                                (declare (not safe))
                                (cons _exn64274_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp65428))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65427))))))
    (define permission-denied-exception-procedure
      (lambda (_exn64268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64268_))
            (let ((_e64271_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64268_ 'exception))))
              (if (macro-permission-denied-exception? _e64271_)
                  (macro-permission-denied-exception-procedure _e64271_)
                  (let ((__tmp65429
                         (let ((__tmp65430
                                (let ()
                                  (declare (not safe))
                                  (cons _e64271_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp65430))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65429))))
            (if (macro-permission-denied-exception? _exn64268_)
                (macro-permission-denied-exception-procedure _exn64268_)
                (let ((__tmp65431
                       (let ((__tmp65432
                              (let ()
                                (declare (not safe))
                                (cons _exn64268_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp65432))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65431))))))
    (define range-exception?
      (lambda (_exn64264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64264_))
            (let ((_e64266_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64264_ 'exception))))
              (macro-range-exception? _e64266_))
            (macro-range-exception? _exn64264_))))
    (define range-exception-arg-id
      (lambda (_exn64260_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64260_))
            (let ((_e64262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64260_ 'exception))))
              (if (macro-range-exception? _e64262_)
                  (macro-range-exception-arg-id _e64262_)
                  (let ((__tmp65433
                         (let ((__tmp65434
                                (let ()
                                  (declare (not safe))
                                  (cons _e64262_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp65434))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65433))))
            (if (macro-range-exception? _exn64260_)
                (macro-range-exception-arg-id _exn64260_)
                (let ((__tmp65435
                       (let ((__tmp65436
                              (let ()
                                (declare (not safe))
                                (cons _exn64260_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp65436))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65435))))))
    (define range-exception-arguments
      (lambda (_exn64256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64256_))
            (let ((_e64258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64256_ 'exception))))
              (if (macro-range-exception? _e64258_)
                  (macro-range-exception-arguments _e64258_)
                  (let ((__tmp65437
                         (let ((__tmp65438
                                (let ()
                                  (declare (not safe))
                                  (cons _e64258_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp65438))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65437))))
            (if (macro-range-exception? _exn64256_)
                (macro-range-exception-arguments _exn64256_)
                (let ((__tmp65439
                       (let ((__tmp65440
                              (let ()
                                (declare (not safe))
                                (cons _exn64256_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp65440))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65439))))))
    (define range-exception-procedure
      (lambda (_exn64250_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64250_))
            (let ((_e64253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64250_ 'exception))))
              (if (macro-range-exception? _e64253_)
                  (macro-range-exception-procedure _e64253_)
                  (let ((__tmp65441
                         (let ((__tmp65442
                                (let ()
                                  (declare (not safe))
                                  (cons _e64253_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp65442))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65441))))
            (if (macro-range-exception? _exn64250_)
                (macro-range-exception-procedure _exn64250_)
                (let ((__tmp65443
                       (let ((__tmp65444
                              (let ()
                                (declare (not safe))
                                (cons _exn64250_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp65444))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65443))))))
    (define rpc-remote-error-exception?
      (lambda (_exn64246_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64246_))
            (let ((_e64248_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64246_ 'exception))))
              (macro-rpc-remote-error-exception? _e64248_))
            (macro-rpc-remote-error-exception? _exn64246_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn64242_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64242_))
            (let ((_e64244_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64242_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64244_)
                  (macro-rpc-remote-error-exception-arguments _e64244_)
                  (let ((__tmp65445
                         (let ((__tmp65446
                                (let ()
                                  (declare (not safe))
                                  (cons _e64244_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp65446))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65445))))
            (if (macro-rpc-remote-error-exception? _exn64242_)
                (macro-rpc-remote-error-exception-arguments _exn64242_)
                (let ((__tmp65447
                       (let ((__tmp65448
                              (let ()
                                (declare (not safe))
                                (cons _exn64242_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp65448))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65447))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn64238_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64238_))
            (let ((_e64240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64238_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64240_)
                  (macro-rpc-remote-error-exception-message _e64240_)
                  (let ((__tmp65449
                         (let ((__tmp65450
                                (let ()
                                  (declare (not safe))
                                  (cons _e64240_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp65450))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65449))))
            (if (macro-rpc-remote-error-exception? _exn64238_)
                (macro-rpc-remote-error-exception-message _exn64238_)
                (let ((__tmp65451
                       (let ((__tmp65452
                              (let ()
                                (declare (not safe))
                                (cons _exn64238_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp65452))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65451))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn64232_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64232_))
            (let ((_e64235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64232_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64235_)
                  (macro-rpc-remote-error-exception-procedure _e64235_)
                  (let ((__tmp65453
                         (let ((__tmp65454
                                (let ()
                                  (declare (not safe))
                                  (cons _e64235_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp65454))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65453))))
            (if (macro-rpc-remote-error-exception? _exn64232_)
                (macro-rpc-remote-error-exception-procedure _exn64232_)
                (let ((__tmp65455
                       (let ((__tmp65456
                              (let ()
                                (declare (not safe))
                                (cons _exn64232_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp65456))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65455))))))
    (define scheduler-exception?
      (lambda (_exn64228_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64228_))
            (let ((_e64230_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64228_ 'exception))))
              (macro-scheduler-exception? _e64230_))
            (macro-scheduler-exception? _exn64228_))))
    (define scheduler-exception-reason
      (lambda (_exn64222_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64222_))
            (let ((_e64225_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64222_ 'exception))))
              (if (macro-scheduler-exception? _e64225_)
                  (macro-scheduler-exception-reason _e64225_)
                  (let ((__tmp65457
                         (let ((__tmp65458
                                (let ()
                                  (declare (not safe))
                                  (cons _e64225_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp65458))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp65457))))
            (if (macro-scheduler-exception? _exn64222_)
                (macro-scheduler-exception-reason _exn64222_)
                (let ((__tmp65459
                       (let ((__tmp65460
                              (let ()
                                (declare (not safe))
                                (cons _exn64222_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp65460))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp65459))))))
    (define sfun-conversion-exception?
      (lambda (_exn64218_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64218_))
            (let ((_e64220_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64218_ 'exception))))
              (macro-sfun-conversion-exception? _e64220_))
            (macro-sfun-conversion-exception? _exn64218_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn64214_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64214_))
            (let ((_e64216_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64214_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64216_)
                  (macro-sfun-conversion-exception-arguments _e64216_)
                  (let ((__tmp65461
                         (let ((__tmp65462
                                (let ()
                                  (declare (not safe))
                                  (cons _e64216_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp65462))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65461))))
            (if (macro-sfun-conversion-exception? _exn64214_)
                (macro-sfun-conversion-exception-arguments _exn64214_)
                (let ((__tmp65463
                       (let ((__tmp65464
                              (let ()
                                (declare (not safe))
                                (cons _exn64214_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp65464))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65463))))))
    (define sfun-conversion-exception-code
      (lambda (_exn64210_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64210_))
            (let ((_e64212_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64210_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64212_)
                  (macro-sfun-conversion-exception-code _e64212_)
                  (let ((__tmp65465
                         (let ((__tmp65466
                                (let ()
                                  (declare (not safe))
                                  (cons _e64212_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp65466))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65465))))
            (if (macro-sfun-conversion-exception? _exn64210_)
                (macro-sfun-conversion-exception-code _exn64210_)
                (let ((__tmp65467
                       (let ((__tmp65468
                              (let ()
                                (declare (not safe))
                                (cons _exn64210_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp65468))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65467))))))
    (define sfun-conversion-exception-message
      (lambda (_exn64206_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64206_))
            (let ((_e64208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64206_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64208_)
                  (macro-sfun-conversion-exception-message _e64208_)
                  (let ((__tmp65469
                         (let ((__tmp65470
                                (let ()
                                  (declare (not safe))
                                  (cons _e64208_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp65470))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65469))))
            (if (macro-sfun-conversion-exception? _exn64206_)
                (macro-sfun-conversion-exception-message _exn64206_)
                (let ((__tmp65471
                       (let ((__tmp65472
                              (let ()
                                (declare (not safe))
                                (cons _exn64206_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp65472))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65471))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn64200_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64200_))
            (let ((_e64203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64200_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64203_)
                  (macro-sfun-conversion-exception-procedure _e64203_)
                  (let ((__tmp65473
                         (let ((__tmp65474
                                (let ()
                                  (declare (not safe))
                                  (cons _e64203_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp65474))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65473))))
            (if (macro-sfun-conversion-exception? _exn64200_)
                (macro-sfun-conversion-exception-procedure _exn64200_)
                (let ((__tmp65475
                       (let ((__tmp65476
                              (let ()
                                (declare (not safe))
                                (cons _exn64200_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp65476))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65475))))))
    (define stack-overflow-exception?
      (lambda (_exn64194_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64194_))
            (let ((_e64197_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64194_ 'exception))))
              (macro-stack-overflow-exception? _e64197_))
            (macro-stack-overflow-exception? _exn64194_))))
    (define started-thread-exception?
      (lambda (_exn64190_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64190_))
            (let ((_e64192_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64190_ 'exception))))
              (macro-started-thread-exception? _e64192_))
            (macro-started-thread-exception? _exn64190_))))
    (define started-thread-exception-arguments
      (lambda (_exn64186_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64186_))
            (let ((_e64188_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64186_ 'exception))))
              (if (macro-started-thread-exception? _e64188_)
                  (macro-started-thread-exception-arguments _e64188_)
                  (let ((__tmp65477
                         (let ((__tmp65478
                                (let ()
                                  (declare (not safe))
                                  (cons _e64188_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp65478))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65477))))
            (if (macro-started-thread-exception? _exn64186_)
                (macro-started-thread-exception-arguments _exn64186_)
                (let ((__tmp65479
                       (let ((__tmp65480
                              (let ()
                                (declare (not safe))
                                (cons _exn64186_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp65480))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65479))))))
    (define started-thread-exception-procedure
      (lambda (_exn64180_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64180_))
            (let ((_e64183_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64180_ 'exception))))
              (if (macro-started-thread-exception? _e64183_)
                  (macro-started-thread-exception-procedure _e64183_)
                  (let ((__tmp65481
                         (let ((__tmp65482
                                (let ()
                                  (declare (not safe))
                                  (cons _e64183_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp65482))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65481))))
            (if (macro-started-thread-exception? _exn64180_)
                (macro-started-thread-exception-procedure _exn64180_)
                (let ((__tmp65483
                       (let ((__tmp65484
                              (let ()
                                (declare (not safe))
                                (cons _exn64180_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp65484))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65483))))))
    (define terminated-thread-exception?
      (lambda (_exn64176_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64176_))
            (let ((_e64178_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64176_ 'exception))))
              (macro-terminated-thread-exception? _e64178_))
            (macro-terminated-thread-exception? _exn64176_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn64172_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64172_))
            (let ((_e64174_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64172_ 'exception))))
              (if (macro-terminated-thread-exception? _e64174_)
                  (macro-terminated-thread-exception-arguments _e64174_)
                  (let ((__tmp65485
                         (let ((__tmp65486
                                (let ()
                                  (declare (not safe))
                                  (cons _e64174_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp65486))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65485))))
            (if (macro-terminated-thread-exception? _exn64172_)
                (macro-terminated-thread-exception-arguments _exn64172_)
                (let ((__tmp65487
                       (let ((__tmp65488
                              (let ()
                                (declare (not safe))
                                (cons _exn64172_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp65488))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65487))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn64166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64166_))
            (let ((_e64169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64166_ 'exception))))
              (if (macro-terminated-thread-exception? _e64169_)
                  (macro-terminated-thread-exception-procedure _e64169_)
                  (let ((__tmp65489
                         (let ((__tmp65490
                                (let ()
                                  (declare (not safe))
                                  (cons _e64169_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp65490))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65489))))
            (if (macro-terminated-thread-exception? _exn64166_)
                (macro-terminated-thread-exception-procedure _exn64166_)
                (let ((__tmp65491
                       (let ((__tmp65492
                              (let ()
                                (declare (not safe))
                                (cons _exn64166_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp65492))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65491))))))
    (define type-exception?
      (lambda (_exn64162_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64162_))
            (let ((_e64164_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64162_ 'exception))))
              (macro-type-exception? _e64164_))
            (macro-type-exception? _exn64162_))))
    (define type-exception-arg-id
      (lambda (_exn64158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64158_))
            (let ((_e64160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64158_ 'exception))))
              (if (macro-type-exception? _e64160_)
                  (macro-type-exception-arg-id _e64160_)
                  (let ((__tmp65493
                         (let ((__tmp65494
                                (let ()
                                  (declare (not safe))
                                  (cons _e64160_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp65494))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65493))))
            (if (macro-type-exception? _exn64158_)
                (macro-type-exception-arg-id _exn64158_)
                (let ((__tmp65495
                       (let ((__tmp65496
                              (let ()
                                (declare (not safe))
                                (cons _exn64158_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp65496))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65495))))))
    (define type-exception-arguments
      (lambda (_exn64154_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64154_))
            (let ((_e64156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64154_ 'exception))))
              (if (macro-type-exception? _e64156_)
                  (macro-type-exception-arguments _e64156_)
                  (let ((__tmp65497
                         (let ((__tmp65498
                                (let ()
                                  (declare (not safe))
                                  (cons _e64156_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp65498))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65497))))
            (if (macro-type-exception? _exn64154_)
                (macro-type-exception-arguments _exn64154_)
                (let ((__tmp65499
                       (let ((__tmp65500
                              (let ()
                                (declare (not safe))
                                (cons _exn64154_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp65500))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65499))))))
    (define type-exception-procedure
      (lambda (_exn64150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64150_))
            (let ((_e64152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64150_ 'exception))))
              (if (macro-type-exception? _e64152_)
                  (macro-type-exception-procedure _e64152_)
                  (let ((__tmp65501
                         (let ((__tmp65502
                                (let ()
                                  (declare (not safe))
                                  (cons _e64152_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp65502))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65501))))
            (if (macro-type-exception? _exn64150_)
                (macro-type-exception-procedure _exn64150_)
                (let ((__tmp65503
                       (let ((__tmp65504
                              (let ()
                                (declare (not safe))
                                (cons _exn64150_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp65504))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65503))))))
    (define type-exception-type-id
      (lambda (_exn64144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64144_))
            (let ((_e64147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64144_ 'exception))))
              (if (macro-type-exception? _e64147_)
                  (macro-type-exception-type-id _e64147_)
                  (let ((__tmp65505
                         (let ((__tmp65506
                                (let ()
                                  (declare (not safe))
                                  (cons _e64147_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp65506))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65505))))
            (if (macro-type-exception? _exn64144_)
                (macro-type-exception-type-id _exn64144_)
                (let ((__tmp65507
                       (let ((__tmp65508
                              (let ()
                                (declare (not safe))
                                (cons _exn64144_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp65508))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65507))))))
    (define unbound-global-exception?
      (lambda (_exn64140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64140_))
            (let ((_e64142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64140_ 'exception))))
              (macro-unbound-global-exception? _e64142_))
            (macro-unbound-global-exception? _exn64140_))))
    (define unbound-global-exception-code
      (lambda (_exn64136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64136_))
            (let ((_e64138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64136_ 'exception))))
              (if (macro-unbound-global-exception? _e64138_)
                  (macro-unbound-global-exception-code _e64138_)
                  (let ((__tmp65509
                         (let ((__tmp65510
                                (let ()
                                  (declare (not safe))
                                  (cons _e64138_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp65510))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65509))))
            (if (macro-unbound-global-exception? _exn64136_)
                (macro-unbound-global-exception-code _exn64136_)
                (let ((__tmp65511
                       (let ((__tmp65512
                              (let ()
                                (declare (not safe))
                                (cons _exn64136_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp65512))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65511))))))
    (define unbound-global-exception-rte
      (lambda (_exn64132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64132_))
            (let ((_e64134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64132_ 'exception))))
              (if (macro-unbound-global-exception? _e64134_)
                  (macro-unbound-global-exception-rte _e64134_)
                  (let ((__tmp65513
                         (let ((__tmp65514
                                (let ()
                                  (declare (not safe))
                                  (cons _e64134_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp65514))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65513))))
            (if (macro-unbound-global-exception? _exn64132_)
                (macro-unbound-global-exception-rte _exn64132_)
                (let ((__tmp65515
                       (let ((__tmp65516
                              (let ()
                                (declare (not safe))
                                (cons _exn64132_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp65516))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65515))))))
    (define unbound-global-exception-variable
      (lambda (_exn64126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64126_))
            (let ((_e64129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64126_ 'exception))))
              (if (macro-unbound-global-exception? _e64129_)
                  (macro-unbound-global-exception-variable _e64129_)
                  (let ((__tmp65517
                         (let ((__tmp65518
                                (let ()
                                  (declare (not safe))
                                  (cons _e64129_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp65518))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65517))))
            (if (macro-unbound-global-exception? _exn64126_)
                (macro-unbound-global-exception-variable _exn64126_)
                (let ((__tmp65519
                       (let ((__tmp65520
                              (let ()
                                (declare (not safe))
                                (cons _exn64126_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp65520))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65519))))))
    (define unbound-key-exception?
      (lambda (_exn64122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64122_))
            (let ((_e64124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64122_ 'exception))))
              (macro-unbound-key-exception? _e64124_))
            (macro-unbound-key-exception? _exn64122_))))
    (define unbound-key-exception-arguments
      (lambda (_exn64118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64118_))
            (let ((_e64120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64118_ 'exception))))
              (if (macro-unbound-key-exception? _e64120_)
                  (macro-unbound-key-exception-arguments _e64120_)
                  (let ((__tmp65521
                         (let ((__tmp65522
                                (let ()
                                  (declare (not safe))
                                  (cons _e64120_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp65522))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65521))))
            (if (macro-unbound-key-exception? _exn64118_)
                (macro-unbound-key-exception-arguments _exn64118_)
                (let ((__tmp65523
                       (let ((__tmp65524
                              (let ()
                                (declare (not safe))
                                (cons _exn64118_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp65524))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65523))))))
    (define unbound-key-exception-procedure
      (lambda (_exn64112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64112_))
            (let ((_e64115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64112_ 'exception))))
              (if (macro-unbound-key-exception? _e64115_)
                  (macro-unbound-key-exception-procedure _e64115_)
                  (let ((__tmp65525
                         (let ((__tmp65526
                                (let ()
                                  (declare (not safe))
                                  (cons _e64115_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp65526))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65525))))
            (if (macro-unbound-key-exception? _exn64112_)
                (macro-unbound-key-exception-procedure _exn64112_)
                (let ((__tmp65527
                       (let ((__tmp65528
                              (let ()
                                (declare (not safe))
                                (cons _exn64112_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp65528))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65527))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn64108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64108_))
            (let ((_e64110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64108_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e64110_))
            (macro-unbound-os-environment-variable-exception? _exn64108_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn64104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64104_))
            (let ((_e64106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64104_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64106_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e64106_)
                  (let ((__tmp65529
                         (let ((__tmp65530
                                (let ()
                                  (declare (not safe))
                                  (cons _e64106_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp65530))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65529))))
            (if (macro-unbound-os-environment-variable-exception? _exn64104_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn64104_)
                (let ((__tmp65531
                       (let ((__tmp65532
                              (let ()
                                (declare (not safe))
                                (cons _exn64104_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp65532))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65531))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn64098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64098_))
            (let ((_e64101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64098_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64101_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e64101_)
                  (let ((__tmp65533
                         (let ((__tmp65534
                                (let ()
                                  (declare (not safe))
                                  (cons _e64101_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp65534))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65533))))
            (if (macro-unbound-os-environment-variable-exception? _exn64098_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn64098_)
                (let ((__tmp65535
                       (let ((__tmp65536
                              (let ()
                                (declare (not safe))
                                (cons _exn64098_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp65536))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65535))))))
    (define unbound-serial-number-exception?
      (lambda (_exn64094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64094_))
            (let ((_e64096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64094_ 'exception))))
              (macro-unbound-serial-number-exception? _e64096_))
            (macro-unbound-serial-number-exception? _exn64094_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn64090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64090_))
            (let ((_e64092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64090_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64092_)
                  (macro-unbound-serial-number-exception-arguments _e64092_)
                  (let ((__tmp65537
                         (let ((__tmp65538
                                (let ()
                                  (declare (not safe))
                                  (cons _e64092_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp65538))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65537))))
            (if (macro-unbound-serial-number-exception? _exn64090_)
                (macro-unbound-serial-number-exception-arguments _exn64090_)
                (let ((__tmp65539
                       (let ((__tmp65540
                              (let ()
                                (declare (not safe))
                                (cons _exn64090_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp65540))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65539))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn64084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64084_))
            (let ((_e64087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64084_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64087_)
                  (macro-unbound-serial-number-exception-procedure _e64087_)
                  (let ((__tmp65541
                         (let ((__tmp65542
                                (let ()
                                  (declare (not safe))
                                  (cons _e64087_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp65542))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65541))))
            (if (macro-unbound-serial-number-exception? _exn64084_)
                (macro-unbound-serial-number-exception-procedure _exn64084_)
                (let ((__tmp65543
                       (let ((__tmp65544
                              (let ()
                                (declare (not safe))
                                (cons _exn64084_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp65544))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65543))))))
    (define uncaught-exception?
      (lambda (_exn64080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64080_))
            (let ((_e64082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64080_ 'exception))))
              (macro-uncaught-exception? _e64082_))
            (macro-uncaught-exception? _exn64080_))))
    (define uncaught-exception-arguments
      (lambda (_exn64076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64076_))
            (let ((_e64078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64076_ 'exception))))
              (if (macro-uncaught-exception? _e64078_)
                  (macro-uncaught-exception-arguments _e64078_)
                  (let ((__tmp65545
                         (let ((__tmp65546
                                (let ()
                                  (declare (not safe))
                                  (cons _e64078_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp65546))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65545))))
            (if (macro-uncaught-exception? _exn64076_)
                (macro-uncaught-exception-arguments _exn64076_)
                (let ((__tmp65547
                       (let ((__tmp65548
                              (let ()
                                (declare (not safe))
                                (cons _exn64076_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp65548))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65547))))))
    (define uncaught-exception-procedure
      (lambda (_exn64072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64072_))
            (let ((_e64074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64072_ 'exception))))
              (if (macro-uncaught-exception? _e64074_)
                  (macro-uncaught-exception-procedure _e64074_)
                  (let ((__tmp65549
                         (let ((__tmp65550
                                (let ()
                                  (declare (not safe))
                                  (cons _e64074_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp65550))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65549))))
            (if (macro-uncaught-exception? _exn64072_)
                (macro-uncaught-exception-procedure _exn64072_)
                (let ((__tmp65551
                       (let ((__tmp65552
                              (let ()
                                (declare (not safe))
                                (cons _exn64072_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp65552))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65551))))))
    (define uncaught-exception-reason
      (lambda (_exn64066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64066_))
            (let ((_e64069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64066_ 'exception))))
              (if (macro-uncaught-exception? _e64069_)
                  (macro-uncaught-exception-reason _e64069_)
                  (let ((__tmp65553
                         (let ((__tmp65554
                                (let ()
                                  (declare (not safe))
                                  (cons _e64069_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp65554))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65553))))
            (if (macro-uncaught-exception? _exn64066_)
                (macro-uncaught-exception-reason _exn64066_)
                (let ((__tmp65555
                       (let ((__tmp65556
                              (let ()
                                (declare (not safe))
                                (cons _exn64066_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp65556))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65555))))))
    (define uninitialized-thread-exception?
      (lambda (_exn64062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64062_))
            (let ((_e64064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64062_ 'exception))))
              (macro-uninitialized-thread-exception? _e64064_))
            (macro-uninitialized-thread-exception? _exn64062_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn64058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64058_))
            (let ((_e64060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64058_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64060_)
                  (macro-uninitialized-thread-exception-arguments _e64060_)
                  (let ((__tmp65557
                         (let ((__tmp65558
                                (let ()
                                  (declare (not safe))
                                  (cons _e64060_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp65558))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65557))))
            (if (macro-uninitialized-thread-exception? _exn64058_)
                (macro-uninitialized-thread-exception-arguments _exn64058_)
                (let ((__tmp65559
                       (let ((__tmp65560
                              (let ()
                                (declare (not safe))
                                (cons _exn64058_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp65560))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65559))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn64052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64052_))
            (let ((_e64055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64052_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64055_)
                  (macro-uninitialized-thread-exception-procedure _e64055_)
                  (let ((__tmp65561
                         (let ((__tmp65562
                                (let ()
                                  (declare (not safe))
                                  (cons _e64055_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp65562))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65561))))
            (if (macro-uninitialized-thread-exception? _exn64052_)
                (macro-uninitialized-thread-exception-procedure _exn64052_)
                (let ((__tmp65563
                       (let ((__tmp65564
                              (let ()
                                (declare (not safe))
                                (cons _exn64052_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp65564))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65563))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn64048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64048_))
            (let ((_e64050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64048_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e64050_))
            (macro-unknown-keyword-argument-exception? _exn64048_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn64044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64044_))
            (let ((_e64046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64044_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64046_)
                  (macro-unknown-keyword-argument-exception-arguments _e64046_)
                  (let ((__tmp65565
                         (let ((__tmp65566
                                (let ()
                                  (declare (not safe))
                                  (cons _e64046_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp65566))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65565))))
            (if (macro-unknown-keyword-argument-exception? _exn64044_)
                (macro-unknown-keyword-argument-exception-arguments _exn64044_)
                (let ((__tmp65567
                       (let ((__tmp65568
                              (let ()
                                (declare (not safe))
                                (cons _exn64044_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp65568))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65567))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn64038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64038_))
            (let ((_e64041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64038_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64041_)
                  (macro-unknown-keyword-argument-exception-procedure _e64041_)
                  (let ((__tmp65569
                         (let ((__tmp65570
                                (let ()
                                  (declare (not safe))
                                  (cons _e64041_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp65570))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65569))))
            (if (macro-unknown-keyword-argument-exception? _exn64038_)
                (macro-unknown-keyword-argument-exception-procedure _exn64038_)
                (let ((__tmp65571
                       (let ((__tmp65572
                              (let ()
                                (declare (not safe))
                                (cons _exn64038_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp65572))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65571))))))
    (define unterminated-process-exception?
      (lambda (_exn64034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64034_))
            (let ((_e64036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64034_ 'exception))))
              (macro-unterminated-process-exception? _e64036_))
            (macro-unterminated-process-exception? _exn64034_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn64030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64030_))
            (let ((_e64032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64030_ 'exception))))
              (if (macro-unterminated-process-exception? _e64032_)
                  (macro-unterminated-process-exception-arguments _e64032_)
                  (let ((__tmp65573
                         (let ((__tmp65574
                                (let ()
                                  (declare (not safe))
                                  (cons _e64032_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp65574))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65573))))
            (if (macro-unterminated-process-exception? _exn64030_)
                (macro-unterminated-process-exception-arguments _exn64030_)
                (let ((__tmp65575
                       (let ((__tmp65576
                              (let ()
                                (declare (not safe))
                                (cons _exn64030_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp65576))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65575))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn64024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64024_))
            (let ((_e64027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64024_ 'exception))))
              (if (macro-unterminated-process-exception? _e64027_)
                  (macro-unterminated-process-exception-procedure _e64027_)
                  (let ((__tmp65577
                         (let ((__tmp65578
                                (let ()
                                  (declare (not safe))
                                  (cons _e64027_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp65578))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65577))))
            (if (macro-unterminated-process-exception? _exn64024_)
                (macro-unterminated-process-exception-procedure _exn64024_)
                (let ((__tmp65579
                       (let ((__tmp65580
                              (let ()
                                (declare (not safe))
                                (cons _exn64024_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp65580))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65579))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn64020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64020_))
            (let ((_e64022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64020_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e64022_))
            (macro-wrong-number-of-arguments-exception? _exn64020_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn64016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64016_))
            (let ((_e64018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64016_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64018_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e64018_)
                  (let ((__tmp65581
                         (let ((__tmp65582
                                (let ()
                                  (declare (not safe))
                                  (cons _e64018_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp65582))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65581))))
            (if (macro-wrong-number-of-arguments-exception? _exn64016_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn64016_)
                (let ((__tmp65583
                       (let ((__tmp65584
                              (let ()
                                (declare (not safe))
                                (cons _exn64016_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp65584))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65583))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn64010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64010_))
            (let ((_e64013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64010_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64013_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e64013_)
                  (let ((__tmp65585
                         (let ((__tmp65586
                                (let ()
                                  (declare (not safe))
                                  (cons _e64013_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp65586))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65585))))
            (if (macro-wrong-number-of-arguments-exception? _exn64010_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn64010_)
                (let ((__tmp65587
                       (let ((__tmp65588
                              (let ()
                                (declare (not safe))
                                (cons _exn64010_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp65588))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65587))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn64006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64006_))
            (let ((_e64008_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64006_ 'exception))))
              (macro-wrong-number-of-values-exception? _e64008_))
            (macro-wrong-number-of-values-exception? _exn64006_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn64002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64002_))
            (let ((_e64004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64002_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64004_)
                  (macro-wrong-number-of-values-exception-code _e64004_)
                  (let ((__tmp65589
                         (let ((__tmp65590
                                (let ()
                                  (declare (not safe))
                                  (cons _e64004_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp65590))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65589))))
            (if (macro-wrong-number-of-values-exception? _exn64002_)
                (macro-wrong-number-of-values-exception-code _exn64002_)
                (let ((__tmp65591
                       (let ((__tmp65592
                              (let ()
                                (declare (not safe))
                                (cons _exn64002_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp65592))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65591))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn63998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63998_))
            (let ((_e64000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63998_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64000_)
                  (macro-wrong-number-of-values-exception-rte _e64000_)
                  (let ((__tmp65593
                         (let ((__tmp65594
                                (let ()
                                  (declare (not safe))
                                  (cons _e64000_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp65594))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65593))))
            (if (macro-wrong-number-of-values-exception? _exn63998_)
                (macro-wrong-number-of-values-exception-rte _exn63998_)
                (let ((__tmp65595
                       (let ((__tmp65596
                              (let ()
                                (declare (not safe))
                                (cons _exn63998_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp65596))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65595))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn63992_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63992_))
            (let ((_e63995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63992_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e63995_)
                  (macro-wrong-number-of-values-exception-vals _e63995_)
                  (let ((__tmp65597
                         (let ((__tmp65598
                                (let ()
                                  (declare (not safe))
                                  (cons _e63995_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp65598))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65597))))
            (if (macro-wrong-number-of-values-exception? _exn63992_)
                (macro-wrong-number-of-values-exception-vals _exn63992_)
                (let ((__tmp65599
                       (let ((__tmp65600
                              (let ()
                                (declare (not safe))
                                (cons _exn63992_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp65600))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65599))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn63986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63986_))
            (let ((_e63989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63986_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e63989_))
            (macro-wrong-processor-c-return-exception? _exn63986_))))))
