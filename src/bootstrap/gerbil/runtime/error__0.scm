(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710617600)
  (begin
    (define Exception::t
      (let ((__tmp65135 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp65135
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args65103_ (apply make-instance Exception::t _$args65103_)))
    (define StackTrace::t
      (let ((__tmp65136 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp65136
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args65100_ (apply make-instance StackTrace::t _$args65100_)))
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
      (let ((__tmp65137 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp65137
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args65097_ (apply make-instance Error::t _$args65097_)))
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
      (let ((__tmp65138 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp65138
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args65094_
        (apply make-instance RuntimeException::t _$args65094_)))
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
      (lambda (_exn65089_ _continue65090_)
        (let ((_exn65092_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn65089_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn65092_ _continue65090_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn65085_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn65085_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn65085_ 'continuation))
                '#!void
                (let ((__tmp65139
                       (lambda (_cont65087_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn65085_
                            'continuation
                            _cont65087_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp65139)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn65085_))))
    (define error
      (lambda (_message65082_ . _irritants65083_)
        (raise (let ((__obj65129
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj65129
                  _message65082_
                  'irritants:
                  _irritants65083_)
                 __obj65129))))
    (define with-exception-handler
      (lambda (_handler65075_ _thunk65076_)
        (if (let () (declare (not safe)) (procedure? _handler65075_))
            '#!void
            (raise (let ((__obj65130
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65130
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65075_ '())))
                     __obj65130)))
        (if (let () (declare (not safe)) (procedure? _thunk65076_))
            '#!void
            (raise (let ((__obj65131
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65131
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65076_ '())))
                     __obj65131)))
        (let ((__tmp65140
               (lambda (_exn65078_)
                 (let ((_exn65080_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn65078_))))
                   (_handler65075_ _exn65080_)))))
          (declare (not safe))
          (##with-exception-handler __tmp65140 _thunk65076_))))
    (define with-catch
      (lambda (_handler65068_ _thunk65069_)
        (if (let () (declare (not safe)) (procedure? _handler65068_))
            '#!void
            (raise (let ((__obj65132
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65132
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65068_ '())))
                     __obj65132)))
        (if (let () (declare (not safe)) (procedure? _thunk65069_))
            '#!void
            (raise (let ((__obj65133
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65133
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65069_ '())))
                     __obj65133)))
        (let ((__tmp65141
               (lambda (_cont65071_)
                 (with-exception-handler
                  (lambda (_exn65073_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont65071_
                       _handler65068_
                       _exn65073_)))
                  _thunk65069_))))
          (declare (not safe))
          (##continuation-capture __tmp65141))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn65059_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn65059_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn65059_)))
            _exn65059_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn65059_))
                _exn65059_
                (if (macro-exception? _exn65059_)
                    (let ((_rte65064_
                           (let ((__obj65134
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj65134
                                _exn65059_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj65134)))
                      (let ((__tmp65142
                             (lambda (_cont65066_)
                               (let ((__tmp65143
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont65066_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte65064_
                                  'continuation
                                  __tmp65143)))))
                        (declare (not safe))
                        (##continuation-capture __tmp65142))
                      _rte65064_)
                    _exn65059_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj65054_)
        (let ((_$e65056_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj65054_))))
          (if _$e65056_
              _$e65056_
              (let () (declare (not safe)) (error-exception? _obj65054_))))))
    (define error-message
      (lambda (_obj65052_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65052_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65052_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj65052_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj65052_))
                '#f))))
    (define error-irritants
      (lambda (_obj65050_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65050_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65050_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj65050_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj65050_))
                '#f))))
    (define error-trace
      (lambda (_obj65048_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65048_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65048_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e65030_ _port65031_)
        (let ((_$e65033_
               (let ()
                 (declare (not safe))
                 (method-ref _e65030_ 'display-exception))))
          (if _$e65033_
              ((lambda (_f65036_) (_f65036_ _e65030_ _port65031_)) _$e65033_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e65030_ _port65031_))))))
    (define display-exception__0
      (lambda (_e65041_)
        (let ((_port65043_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e65041_ _port65043_))))
    (define display-exception
      (lambda _g65145_
        (let ((_g65144_ (let () (declare (not safe)) (##length _g65145_))))
          (cond ((let () (declare (not safe)) (##fx= _g65144_ 1))
                 (apply (lambda (_e65041_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e65041_)))
                        _g65145_))
                ((let () (declare (not safe)) (##fx= _g65144_ 2))
                 (apply (lambda (_e65045_ _port65046_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e65045_ _port65046_)))
                        _g65145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g65145_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self65019_ _message65020_ . _rest65021_)
        (let ((_message65027_
               (if (let () (declare (not safe)) (string? _message65020_))
                   _message65020_
                   (call-with-output-string
                    '""
                    (lambda (_g6502265024_)
                      (display _message65020_ _g6502265024_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self65019_ 'message _message65027_))
          (apply class-instance-init! _self65019_ _rest65021_))))
    (define Error:::init!::specialize
      (lambda (__klass65105 __method-table65106)
        (let ((__message65107
               (let ((__slot65108
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65105 'message))))
                 (if __slot65108
                     __slot65108
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65019_ _message65020_ . _rest65021_)
            (let ((_message65027_
                   (if (let () (declare (not safe)) (string? _message65020_))
                       _message65020_
                       (call-with-output-string
                        '""
                        (lambda (_g6502265024_)
                          (display _message65020_ _g6502265024_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self65019_
                 _message65027_
                 __message65107
                 __klass65105
                 '#f))
              (apply class-instance-init! _self65019_ _rest65021_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self64877_ _port64878_)
        (let ((_tmp-port64880_ (open-output-string))
              (_display-error-newline64881_
               (> (output-port-column _port64878_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port64880_))
          (let ((__tmp65146
                 (lambda ()
                   (if _display-error-newline64881_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e64884_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self64877_ 'where))))
                     (if _$e64884_ (display _$e64884_) (display '"?")))
                   (let ((__tmp65147
                          (let ((__tmp65148 (object-type _self64877_)))
                            (declare (not safe))
                            (##type-name __tmp65148))))
                     (declare (not safe))
                     (display* '" [" __tmp65147 '"]: "))
                   (let ((__tmp65149
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self64877_ 'message))))
                     (declare (not safe))
                     (displayln __tmp65149))
                   (let ((_irritants64887_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self64877_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants64887_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj64889_)
                              (write _obj64889_)
                              (write-char '#\space))
                            _irritants64887_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self64877_))
                            (dump-stack-trace?))
                       (let ((_cont6489064892_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self64877_
                                 'continuation))))
                         (if _cont6489064892_
                             (let ((_cont64895_ _cont6489064892_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont64895_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp65146
             current-output-port
             _tmp-port64880_))
          (let ((__tmp65150 (get-output-string _tmp-port64880_)))
            (declare (not safe))
            (##write-string __tmp65150 _port64878_)))))
    (define Error::display-exception::specialize
      (lambda (__klass65109 __method-table65110)
        (let ((__message65111
               (let ((__slot65115
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65109 'message))))
                 (if __slot65115
                     __slot65115
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where65112
               (let ((__slot65116
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65109 'where))))
                 (if __slot65116
                     __slot65116
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants65113
               (let ((__slot65117
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65109 'irritants))))
                 (if __slot65117
                     __slot65117
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation65114
               (let ((__slot65118
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65109 'continuation))))
                 (if __slot65118
                     __slot65118
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self64877_ _port64878_)
            (let ((_tmp-port64880_ (open-output-string))
                  (_display-error-newline64881_
                   (> (output-port-column _port64878_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port64880_))
              (let ((__tmp65151
                     (lambda ()
                       (if _display-error-newline64881_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e64884_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self64877_
                                 __where65112
                                 __klass65109
                                 '#f))))
                         (if _$e64884_ (display _$e64884_) (display '"?")))
                       (let ((__tmp65152
                              (let ((__tmp65153 (object-type _self64877_)))
                                (declare (not safe))
                                (##type-name __tmp65153))))
                         (declare (not safe))
                         (display* '" [" __tmp65152 '"]: "))
                       (let ((__tmp65154
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self64877_
                                 __message65111
                                 __klass65109
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp65154))
                       (let ((_irritants64887_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self64877_
                                 __irritants65113
                                 __klass65109
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants64887_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj64889_)
                                  (write _obj64889_)
                                  (write-char '#\space))
                                _irritants64887_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self64877_))
                                (dump-stack-trace?))
                           (let ((_cont6489064892_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self64877_
                                     __continuation65114
                                     __klass65109
                                     '#f))))
                             (if _cont6489064892_
                                 (let ((_cont64895_ _cont6489064892_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont64895_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp65151
                 current-output-port
                 _tmp-port64880_))
              (let ((__tmp65155 (get-output-string _tmp-port64880_)))
                (declare (not safe))
                (##write-string __tmp65155 _port64878_)))))))
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
      (lambda (_self64744_ _port64745_)
        (let ((_tmp-port64747_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port64747_))
          (let ((__tmp65156
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self64744_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp65156 _tmp-port64747_))
          (if (dump-stack-trace?)
              (let ((_cont6474864750_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self64744_ 'continuation))))
                (if _cont6474864750_
                    (let ((_cont64753_ _cont6474864750_))
                      (display '"--- continuation backtrace:" _tmp-port64747_)
                      (newline _tmp-port64747_)
                      (display-continuation-backtrace
                       _cont64753_
                       _tmp-port64747_))
                    '#f))
              '#!void)
          (let ((__tmp65157 (get-output-string _tmp-port64747_)))
            (declare (not safe))
            (##write-string __tmp65157 _port64745_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass65119 __method-table65120)
        (let ((__exception65121
               (let ((__slot65123
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65119 'exception))))
                 (if __slot65123
                     __slot65123
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation65122
               (let ((__slot65124
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass65119 'continuation))))
                 (if __slot65124
                     __slot65124
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self64744_ _port64745_)
            (let ((_tmp-port64747_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port64747_))
              (let ((__tmp65158
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self64744_
                        __exception65121
                        __klass65119
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp65158 _tmp-port64747_))
              (if (dump-stack-trace?)
                  (let ((_cont6474864750_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self64744_
                            __continuation65122
                            __klass65119
                            '#f))))
                    (if _cont6474864750_
                        (let ((_cont64753_ _cont6474864750_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port64747_)
                          (newline _tmp-port64747_)
                          (display-continuation-backtrace
                           _cont64753_
                           _tmp-port64747_))
                        '#f))
                  '#!void)
              (let ((__tmp65159 (get-output-string _tmp-port64747_)))
                (declare (not safe))
                (##write-string __tmp65159 _port64745_)))))))
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
      (lambda (_port64616_)
        (if (macro-character-port? _port64616_)
            (let ((_old-width64618_
                   (macro-character-port-output-width _port64616_)))
              (macro-character-port-output-width-set!
               _port64616_
               (lambda (_port64620_) '256))
              _old-width64618_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port64613_ _old-width64614_)
        (if (macro-character-port? _port64613_)
            (macro-character-port-output-width-set!
             _port64613_
             _old-width64614_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e64611_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e64611_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn64605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64605_))
            (let ((_e64608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64605_ 'exception))))
              (macro-abandoned-mutex-exception? _e64608_))
            (macro-abandoned-mutex-exception? _exn64605_))))
    (define cfun-conversion-exception?
      (lambda (_exn64601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64601_))
            (let ((_e64603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64601_ 'exception))))
              (macro-cfun-conversion-exception? _e64603_))
            (macro-cfun-conversion-exception? _exn64601_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn64597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64597_))
            (let ((_e64599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64597_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64599_)
                  (macro-cfun-conversion-exception-arguments _e64599_)
                  (let ((__tmp65160
                         (let ((__tmp65161
                                (let ()
                                  (declare (not safe))
                                  (cons _e64599_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp65161))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65160))))
            (if (macro-cfun-conversion-exception? _exn64597_)
                (macro-cfun-conversion-exception-arguments _exn64597_)
                (let ((__tmp65162
                       (let ((__tmp65163
                              (let ()
                                (declare (not safe))
                                (cons _exn64597_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp65163))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65162))))))
    (define cfun-conversion-exception-code
      (lambda (_exn64593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64593_))
            (let ((_e64595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64593_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64595_)
                  (macro-cfun-conversion-exception-code _e64595_)
                  (let ((__tmp65164
                         (let ((__tmp65165
                                (let ()
                                  (declare (not safe))
                                  (cons _e64595_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp65165))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65164))))
            (if (macro-cfun-conversion-exception? _exn64593_)
                (macro-cfun-conversion-exception-code _exn64593_)
                (let ((__tmp65166
                       (let ((__tmp65167
                              (let ()
                                (declare (not safe))
                                (cons _exn64593_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp65167))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65166))))))
    (define cfun-conversion-exception-message
      (lambda (_exn64589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64589_))
            (let ((_e64591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64589_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64591_)
                  (macro-cfun-conversion-exception-message _e64591_)
                  (let ((__tmp65168
                         (let ((__tmp65169
                                (let ()
                                  (declare (not safe))
                                  (cons _e64591_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp65169))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65168))))
            (if (macro-cfun-conversion-exception? _exn64589_)
                (macro-cfun-conversion-exception-message _exn64589_)
                (let ((__tmp65170
                       (let ((__tmp65171
                              (let ()
                                (declare (not safe))
                                (cons _exn64589_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp65171))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65170))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn64583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64583_))
            (let ((_e64586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64583_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64586_)
                  (macro-cfun-conversion-exception-procedure _e64586_)
                  (let ((__tmp65172
                         (let ((__tmp65173
                                (let ()
                                  (declare (not safe))
                                  (cons _e64586_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp65173))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65172))))
            (if (macro-cfun-conversion-exception? _exn64583_)
                (macro-cfun-conversion-exception-procedure _exn64583_)
                (let ((__tmp65174
                       (let ((__tmp65175
                              (let ()
                                (declare (not safe))
                                (cons _exn64583_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp65175))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65174))))))
    (define datum-parsing-exception?
      (lambda (_exn64579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64579_))
            (let ((_e64581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64579_ 'exception))))
              (macro-datum-parsing-exception? _e64581_))
            (macro-datum-parsing-exception? _exn64579_))))
    (define datum-parsing-exception-kind
      (lambda (_exn64575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64575_))
            (let ((_e64577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64575_ 'exception))))
              (if (macro-datum-parsing-exception? _e64577_)
                  (macro-datum-parsing-exception-kind _e64577_)
                  (let ((__tmp65176
                         (let ((__tmp65177
                                (let ()
                                  (declare (not safe))
                                  (cons _e64577_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp65177))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65176))))
            (if (macro-datum-parsing-exception? _exn64575_)
                (macro-datum-parsing-exception-kind _exn64575_)
                (let ((__tmp65178
                       (let ((__tmp65179
                              (let ()
                                (declare (not safe))
                                (cons _exn64575_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp65179))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65178))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn64571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64571_))
            (let ((_e64573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64571_ 'exception))))
              (if (macro-datum-parsing-exception? _e64573_)
                  (macro-datum-parsing-exception-parameters _e64573_)
                  (let ((__tmp65180
                         (let ((__tmp65181
                                (let ()
                                  (declare (not safe))
                                  (cons _e64573_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp65181))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65180))))
            (if (macro-datum-parsing-exception? _exn64571_)
                (macro-datum-parsing-exception-parameters _exn64571_)
                (let ((__tmp65182
                       (let ((__tmp65183
                              (let ()
                                (declare (not safe))
                                (cons _exn64571_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp65183))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65182))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn64565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64565_))
            (let ((_e64568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64565_ 'exception))))
              (if (macro-datum-parsing-exception? _e64568_)
                  (macro-datum-parsing-exception-readenv _e64568_)
                  (let ((__tmp65184
                         (let ((__tmp65185
                                (let ()
                                  (declare (not safe))
                                  (cons _e64568_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp65185))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65184))))
            (if (macro-datum-parsing-exception? _exn64565_)
                (macro-datum-parsing-exception-readenv _exn64565_)
                (let ((__tmp65186
                       (let ((__tmp65187
                              (let ()
                                (declare (not safe))
                                (cons _exn64565_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp65187))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65186))))))
    (define deadlock-exception?
      (lambda (_exn64559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64559_))
            (let ((_e64562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64559_ 'exception))))
              (macro-deadlock-exception? _e64562_))
            (macro-deadlock-exception? _exn64559_))))
    (define divide-by-zero-exception?
      (lambda (_exn64555_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64555_))
            (let ((_e64557_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64555_ 'exception))))
              (macro-divide-by-zero-exception? _e64557_))
            (macro-divide-by-zero-exception? _exn64555_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn64551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64551_))
            (let ((_e64553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64551_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64553_)
                  (macro-divide-by-zero-exception-arguments _e64553_)
                  (let ((__tmp65188
                         (let ((__tmp65189
                                (let ()
                                  (declare (not safe))
                                  (cons _e64553_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp65189))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65188))))
            (if (macro-divide-by-zero-exception? _exn64551_)
                (macro-divide-by-zero-exception-arguments _exn64551_)
                (let ((__tmp65190
                       (let ((__tmp65191
                              (let ()
                                (declare (not safe))
                                (cons _exn64551_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp65191))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65190))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn64545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64545_))
            (let ((_e64548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64545_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64548_)
                  (macro-divide-by-zero-exception-procedure _e64548_)
                  (let ((__tmp65192
                         (let ((__tmp65193
                                (let ()
                                  (declare (not safe))
                                  (cons _e64548_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp65193))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65192))))
            (if (macro-divide-by-zero-exception? _exn64545_)
                (macro-divide-by-zero-exception-procedure _exn64545_)
                (let ((__tmp65194
                       (let ((__tmp65195
                              (let ()
                                (declare (not safe))
                                (cons _exn64545_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp65195))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65194))))))
    (define error-exception?
      (lambda (_exn64541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64541_))
            (let ((_e64543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64541_ 'exception))))
              (macro-error-exception? _e64543_))
            (macro-error-exception? _exn64541_))))
    (define error-exception-message
      (lambda (_exn64537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64537_))
            (let ((_e64539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64537_ 'exception))))
              (if (macro-error-exception? _e64539_)
                  (macro-error-exception-message _e64539_)
                  (let ((__tmp65196
                         (let ((__tmp65197
                                (let ()
                                  (declare (not safe))
                                  (cons _e64539_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp65197))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65196))))
            (if (macro-error-exception? _exn64537_)
                (macro-error-exception-message _exn64537_)
                (let ((__tmp65198
                       (let ((__tmp65199
                              (let ()
                                (declare (not safe))
                                (cons _exn64537_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp65199))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65198))))))
    (define error-exception-parameters
      (lambda (_exn64531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64531_))
            (let ((_e64534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64531_ 'exception))))
              (if (macro-error-exception? _e64534_)
                  (macro-error-exception-parameters _e64534_)
                  (let ((__tmp65200
                         (let ((__tmp65201
                                (let ()
                                  (declare (not safe))
                                  (cons _e64534_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp65201))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65200))))
            (if (macro-error-exception? _exn64531_)
                (macro-error-exception-parameters _exn64531_)
                (let ((__tmp65202
                       (let ((__tmp65203
                              (let ()
                                (declare (not safe))
                                (cons _exn64531_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp65203))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65202))))))
    (define expression-parsing-exception?
      (lambda (_exn64527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64527_))
            (let ((_e64529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64527_ 'exception))))
              (macro-expression-parsing-exception? _e64529_))
            (macro-expression-parsing-exception? _exn64527_))))
    (define expression-parsing-exception-kind
      (lambda (_exn64523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64523_))
            (let ((_e64525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64523_ 'exception))))
              (if (macro-expression-parsing-exception? _e64525_)
                  (macro-expression-parsing-exception-kind _e64525_)
                  (let ((__tmp65204
                         (let ((__tmp65205
                                (let ()
                                  (declare (not safe))
                                  (cons _e64525_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp65205))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65204))))
            (if (macro-expression-parsing-exception? _exn64523_)
                (macro-expression-parsing-exception-kind _exn64523_)
                (let ((__tmp65206
                       (let ((__tmp65207
                              (let ()
                                (declare (not safe))
                                (cons _exn64523_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp65207))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65206))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn64519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64519_))
            (let ((_e64521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64519_ 'exception))))
              (if (macro-expression-parsing-exception? _e64521_)
                  (macro-expression-parsing-exception-parameters _e64521_)
                  (let ((__tmp65208
                         (let ((__tmp65209
                                (let ()
                                  (declare (not safe))
                                  (cons _e64521_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp65209))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65208))))
            (if (macro-expression-parsing-exception? _exn64519_)
                (macro-expression-parsing-exception-parameters _exn64519_)
                (let ((__tmp65210
                       (let ((__tmp65211
                              (let ()
                                (declare (not safe))
                                (cons _exn64519_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp65211))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65210))))))
    (define expression-parsing-exception-source
      (lambda (_exn64513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64513_))
            (let ((_e64516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64513_ 'exception))))
              (if (macro-expression-parsing-exception? _e64516_)
                  (macro-expression-parsing-exception-source _e64516_)
                  (let ((__tmp65212
                         (let ((__tmp65213
                                (let ()
                                  (declare (not safe))
                                  (cons _e64516_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp65213))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65212))))
            (if (macro-expression-parsing-exception? _exn64513_)
                (macro-expression-parsing-exception-source _exn64513_)
                (let ((__tmp65214
                       (let ((__tmp65215
                              (let ()
                                (declare (not safe))
                                (cons _exn64513_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp65215))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65214))))))
    (define file-exists-exception?
      (lambda (_exn64509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64509_))
            (let ((_e64511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64509_ 'exception))))
              (macro-file-exists-exception? _e64511_))
            (macro-file-exists-exception? _exn64509_))))
    (define file-exists-exception-arguments
      (lambda (_exn64505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64505_))
            (let ((_e64507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64505_ 'exception))))
              (if (macro-file-exists-exception? _e64507_)
                  (macro-file-exists-exception-arguments _e64507_)
                  (let ((__tmp65216
                         (let ((__tmp65217
                                (let ()
                                  (declare (not safe))
                                  (cons _e64507_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp65217))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65216))))
            (if (macro-file-exists-exception? _exn64505_)
                (macro-file-exists-exception-arguments _exn64505_)
                (let ((__tmp65218
                       (let ((__tmp65219
                              (let ()
                                (declare (not safe))
                                (cons _exn64505_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp65219))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65218))))))
    (define file-exists-exception-procedure
      (lambda (_exn64499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64499_))
            (let ((_e64502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64499_ 'exception))))
              (if (macro-file-exists-exception? _e64502_)
                  (macro-file-exists-exception-procedure _e64502_)
                  (let ((__tmp65220
                         (let ((__tmp65221
                                (let ()
                                  (declare (not safe))
                                  (cons _e64502_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp65221))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65220))))
            (if (macro-file-exists-exception? _exn64499_)
                (macro-file-exists-exception-procedure _exn64499_)
                (let ((__tmp65222
                       (let ((__tmp65223
                              (let ()
                                (declare (not safe))
                                (cons _exn64499_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp65223))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65222))))))
    (define fixnum-overflow-exception?
      (lambda (_exn64495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64495_))
            (let ((_e64497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64495_ 'exception))))
              (macro-fixnum-overflow-exception? _e64497_))
            (macro-fixnum-overflow-exception? _exn64495_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn64491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64491_))
            (let ((_e64493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64491_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64493_)
                  (macro-fixnum-overflow-exception-arguments _e64493_)
                  (let ((__tmp65224
                         (let ((__tmp65225
                                (let ()
                                  (declare (not safe))
                                  (cons _e64493_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp65225))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65224))))
            (if (macro-fixnum-overflow-exception? _exn64491_)
                (macro-fixnum-overflow-exception-arguments _exn64491_)
                (let ((__tmp65226
                       (let ((__tmp65227
                              (let ()
                                (declare (not safe))
                                (cons _exn64491_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp65227))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65226))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn64485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64485_))
            (let ((_e64488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64485_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64488_)
                  (macro-fixnum-overflow-exception-procedure _e64488_)
                  (let ((__tmp65228
                         (let ((__tmp65229
                                (let ()
                                  (declare (not safe))
                                  (cons _e64488_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp65229))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65228))))
            (if (macro-fixnum-overflow-exception? _exn64485_)
                (macro-fixnum-overflow-exception-procedure _exn64485_)
                (let ((__tmp65230
                       (let ((__tmp65231
                              (let ()
                                (declare (not safe))
                                (cons _exn64485_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp65231))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65230))))))
    (define heap-overflow-exception?
      (lambda (_exn64479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64479_))
            (let ((_e64482_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64479_ 'exception))))
              (macro-heap-overflow-exception? _e64482_))
            (macro-heap-overflow-exception? _exn64479_))))
    (define inactive-thread-exception?
      (lambda (_exn64475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64475_))
            (let ((_e64477_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64475_ 'exception))))
              (macro-inactive-thread-exception? _e64477_))
            (macro-inactive-thread-exception? _exn64475_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn64471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64471_))
            (let ((_e64473_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64471_ 'exception))))
              (if (macro-inactive-thread-exception? _e64473_)
                  (macro-inactive-thread-exception-arguments _e64473_)
                  (let ((__tmp65232
                         (let ((__tmp65233
                                (let ()
                                  (declare (not safe))
                                  (cons _e64473_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp65233))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65232))))
            (if (macro-inactive-thread-exception? _exn64471_)
                (macro-inactive-thread-exception-arguments _exn64471_)
                (let ((__tmp65234
                       (let ((__tmp65235
                              (let ()
                                (declare (not safe))
                                (cons _exn64471_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp65235))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65234))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn64465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64465_))
            (let ((_e64468_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64465_ 'exception))))
              (if (macro-inactive-thread-exception? _e64468_)
                  (macro-inactive-thread-exception-procedure _e64468_)
                  (let ((__tmp65236
                         (let ((__tmp65237
                                (let ()
                                  (declare (not safe))
                                  (cons _e64468_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp65237))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65236))))
            (if (macro-inactive-thread-exception? _exn64465_)
                (macro-inactive-thread-exception-procedure _exn64465_)
                (let ((__tmp65238
                       (let ((__tmp65239
                              (let ()
                                (declare (not safe))
                                (cons _exn64465_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp65239))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65238))))))
    (define initialized-thread-exception?
      (lambda (_exn64461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64461_))
            (let ((_e64463_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64461_ 'exception))))
              (macro-initialized-thread-exception? _e64463_))
            (macro-initialized-thread-exception? _exn64461_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn64457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64457_))
            (let ((_e64459_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64457_ 'exception))))
              (if (macro-initialized-thread-exception? _e64459_)
                  (macro-initialized-thread-exception-arguments _e64459_)
                  (let ((__tmp65240
                         (let ((__tmp65241
                                (let ()
                                  (declare (not safe))
                                  (cons _e64459_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp65241))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65240))))
            (if (macro-initialized-thread-exception? _exn64457_)
                (macro-initialized-thread-exception-arguments _exn64457_)
                (let ((__tmp65242
                       (let ((__tmp65243
                              (let ()
                                (declare (not safe))
                                (cons _exn64457_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp65243))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65242))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn64451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64451_))
            (let ((_e64454_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64451_ 'exception))))
              (if (macro-initialized-thread-exception? _e64454_)
                  (macro-initialized-thread-exception-procedure _e64454_)
                  (let ((__tmp65244
                         (let ((__tmp65245
                                (let ()
                                  (declare (not safe))
                                  (cons _e64454_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp65245))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65244))))
            (if (macro-initialized-thread-exception? _exn64451_)
                (macro-initialized-thread-exception-procedure _exn64451_)
                (let ((__tmp65246
                       (let ((__tmp65247
                              (let ()
                                (declare (not safe))
                                (cons _exn64451_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp65247))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65246))))))
    (define invalid-hash-number-exception?
      (lambda (_exn64447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64447_))
            (let ((_e64449_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64447_ 'exception))))
              (macro-invalid-hash-number-exception? _e64449_))
            (macro-invalid-hash-number-exception? _exn64447_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn64443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64443_))
            (let ((_e64445_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64443_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64445_)
                  (macro-invalid-hash-number-exception-arguments _e64445_)
                  (let ((__tmp65248
                         (let ((__tmp65249
                                (let ()
                                  (declare (not safe))
                                  (cons _e64445_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp65249))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65248))))
            (if (macro-invalid-hash-number-exception? _exn64443_)
                (macro-invalid-hash-number-exception-arguments _exn64443_)
                (let ((__tmp65250
                       (let ((__tmp65251
                              (let ()
                                (declare (not safe))
                                (cons _exn64443_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp65251))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65250))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn64437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64437_))
            (let ((_e64440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64437_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64440_)
                  (macro-invalid-hash-number-exception-procedure _e64440_)
                  (let ((__tmp65252
                         (let ((__tmp65253
                                (let ()
                                  (declare (not safe))
                                  (cons _e64440_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp65253))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65252))))
            (if (macro-invalid-hash-number-exception? _exn64437_)
                (macro-invalid-hash-number-exception-procedure _exn64437_)
                (let ((__tmp65254
                       (let ((__tmp65255
                              (let ()
                                (declare (not safe))
                                (cons _exn64437_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp65255))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65254))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn64433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64433_))
            (let ((_e64435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64433_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e64435_))
            (macro-invalid-utf8-encoding-exception? _exn64433_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn64429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64429_))
            (let ((_e64431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64429_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64431_)
                  (macro-invalid-utf8-encoding-exception-arguments _e64431_)
                  (let ((__tmp65256
                         (let ((__tmp65257
                                (let ()
                                  (declare (not safe))
                                  (cons _e64431_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp65257))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65256))))
            (if (macro-invalid-utf8-encoding-exception? _exn64429_)
                (macro-invalid-utf8-encoding-exception-arguments _exn64429_)
                (let ((__tmp65258
                       (let ((__tmp65259
                              (let ()
                                (declare (not safe))
                                (cons _exn64429_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp65259))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65258))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn64423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64423_))
            (let ((_e64426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64423_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64426_)
                  (macro-invalid-utf8-encoding-exception-procedure _e64426_)
                  (let ((__tmp65260
                         (let ((__tmp65261
                                (let ()
                                  (declare (not safe))
                                  (cons _e64426_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp65261))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65260))))
            (if (macro-invalid-utf8-encoding-exception? _exn64423_)
                (macro-invalid-utf8-encoding-exception-procedure _exn64423_)
                (let ((__tmp65262
                       (let ((__tmp65263
                              (let ()
                                (declare (not safe))
                                (cons _exn64423_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp65263))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65262))))))
    (define join-timeout-exception?
      (lambda (_exn64419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64419_))
            (let ((_e64421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64419_ 'exception))))
              (macro-join-timeout-exception? _e64421_))
            (macro-join-timeout-exception? _exn64419_))))
    (define join-timeout-exception-arguments
      (lambda (_exn64415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64415_))
            (let ((_e64417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64415_ 'exception))))
              (if (macro-join-timeout-exception? _e64417_)
                  (macro-join-timeout-exception-arguments _e64417_)
                  (let ((__tmp65264
                         (let ((__tmp65265
                                (let ()
                                  (declare (not safe))
                                  (cons _e64417_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp65265))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65264))))
            (if (macro-join-timeout-exception? _exn64415_)
                (macro-join-timeout-exception-arguments _exn64415_)
                (let ((__tmp65266
                       (let ((__tmp65267
                              (let ()
                                (declare (not safe))
                                (cons _exn64415_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp65267))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65266))))))
    (define join-timeout-exception-procedure
      (lambda (_exn64409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64409_))
            (let ((_e64412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64409_ 'exception))))
              (if (macro-join-timeout-exception? _e64412_)
                  (macro-join-timeout-exception-procedure _e64412_)
                  (let ((__tmp65268
                         (let ((__tmp65269
                                (let ()
                                  (declare (not safe))
                                  (cons _e64412_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp65269))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65268))))
            (if (macro-join-timeout-exception? _exn64409_)
                (macro-join-timeout-exception-procedure _exn64409_)
                (let ((__tmp65270
                       (let ((__tmp65271
                              (let ()
                                (declare (not safe))
                                (cons _exn64409_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp65271))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65270))))))
    (define keyword-expected-exception?
      (lambda (_exn64405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64405_))
            (let ((_e64407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64405_ 'exception))))
              (macro-keyword-expected-exception? _e64407_))
            (macro-keyword-expected-exception? _exn64405_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn64401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64401_))
            (let ((_e64403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64401_ 'exception))))
              (if (macro-keyword-expected-exception? _e64403_)
                  (macro-keyword-expected-exception-arguments _e64403_)
                  (let ((__tmp65272
                         (let ((__tmp65273
                                (let ()
                                  (declare (not safe))
                                  (cons _e64403_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp65273))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65272))))
            (if (macro-keyword-expected-exception? _exn64401_)
                (macro-keyword-expected-exception-arguments _exn64401_)
                (let ((__tmp65274
                       (let ((__tmp65275
                              (let ()
                                (declare (not safe))
                                (cons _exn64401_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp65275))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65274))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn64395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64395_))
            (let ((_e64398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64395_ 'exception))))
              (if (macro-keyword-expected-exception? _e64398_)
                  (macro-keyword-expected-exception-procedure _e64398_)
                  (let ((__tmp65276
                         (let ((__tmp65277
                                (let ()
                                  (declare (not safe))
                                  (cons _e64398_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp65277))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65276))))
            (if (macro-keyword-expected-exception? _exn64395_)
                (macro-keyword-expected-exception-procedure _exn64395_)
                (let ((__tmp65278
                       (let ((__tmp65279
                              (let ()
                                (declare (not safe))
                                (cons _exn64395_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp65279))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65278))))))
    (define length-mismatch-exception?
      (lambda (_exn64391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64391_))
            (let ((_e64393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64391_ 'exception))))
              (macro-length-mismatch-exception? _e64393_))
            (macro-length-mismatch-exception? _exn64391_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn64387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64387_))
            (let ((_e64389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64387_ 'exception))))
              (if (macro-length-mismatch-exception? _e64389_)
                  (macro-length-mismatch-exception-arg-id _e64389_)
                  (let ((__tmp65280
                         (let ((__tmp65281
                                (let ()
                                  (declare (not safe))
                                  (cons _e64389_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp65281))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65280))))
            (if (macro-length-mismatch-exception? _exn64387_)
                (macro-length-mismatch-exception-arg-id _exn64387_)
                (let ((__tmp65282
                       (let ((__tmp65283
                              (let ()
                                (declare (not safe))
                                (cons _exn64387_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp65283))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65282))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn64383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64383_))
            (let ((_e64385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64383_ 'exception))))
              (if (macro-length-mismatch-exception? _e64385_)
                  (macro-length-mismatch-exception-arguments _e64385_)
                  (let ((__tmp65284
                         (let ((__tmp65285
                                (let ()
                                  (declare (not safe))
                                  (cons _e64385_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp65285))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65284))))
            (if (macro-length-mismatch-exception? _exn64383_)
                (macro-length-mismatch-exception-arguments _exn64383_)
                (let ((__tmp65286
                       (let ((__tmp65287
                              (let ()
                                (declare (not safe))
                                (cons _exn64383_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp65287))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65286))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn64377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64377_))
            (let ((_e64380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64377_ 'exception))))
              (if (macro-length-mismatch-exception? _e64380_)
                  (macro-length-mismatch-exception-procedure _e64380_)
                  (let ((__tmp65288
                         (let ((__tmp65289
                                (let ()
                                  (declare (not safe))
                                  (cons _e64380_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp65289))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65288))))
            (if (macro-length-mismatch-exception? _exn64377_)
                (macro-length-mismatch-exception-procedure _exn64377_)
                (let ((__tmp65290
                       (let ((__tmp65291
                              (let ()
                                (declare (not safe))
                                (cons _exn64377_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp65291))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65290))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn64373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64373_))
            (let ((_e64375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64373_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e64375_))
            (macro-mailbox-receive-timeout-exception? _exn64373_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn64369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64369_))
            (let ((_e64371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64369_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64371_)
                  (macro-mailbox-receive-timeout-exception-arguments _e64371_)
                  (let ((__tmp65292
                         (let ((__tmp65293
                                (let ()
                                  (declare (not safe))
                                  (cons _e64371_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp65293))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65292))))
            (if (macro-mailbox-receive-timeout-exception? _exn64369_)
                (macro-mailbox-receive-timeout-exception-arguments _exn64369_)
                (let ((__tmp65294
                       (let ((__tmp65295
                              (let ()
                                (declare (not safe))
                                (cons _exn64369_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp65295))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65294))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn64363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64363_))
            (let ((_e64366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64363_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64366_)
                  (macro-mailbox-receive-timeout-exception-procedure _e64366_)
                  (let ((__tmp65296
                         (let ((__tmp65297
                                (let ()
                                  (declare (not safe))
                                  (cons _e64366_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp65297))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65296))))
            (if (macro-mailbox-receive-timeout-exception? _exn64363_)
                (macro-mailbox-receive-timeout-exception-procedure _exn64363_)
                (let ((__tmp65298
                       (let ((__tmp65299
                              (let ()
                                (declare (not safe))
                                (cons _exn64363_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp65299))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65298))))))
    (define module-not-found-exception?
      (lambda (_exn64359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64359_))
            (let ((_e64361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64359_ 'exception))))
              (macro-module-not-found-exception? _e64361_))
            (macro-module-not-found-exception? _exn64359_))))
    (define module-not-found-exception-arguments
      (lambda (_exn64355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64355_))
            (let ((_e64357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64355_ 'exception))))
              (if (macro-module-not-found-exception? _e64357_)
                  (macro-module-not-found-exception-arguments _e64357_)
                  (let ((__tmp65300
                         (let ((__tmp65301
                                (let ()
                                  (declare (not safe))
                                  (cons _e64357_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp65301))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65300))))
            (if (macro-module-not-found-exception? _exn64355_)
                (macro-module-not-found-exception-arguments _exn64355_)
                (let ((__tmp65302
                       (let ((__tmp65303
                              (let ()
                                (declare (not safe))
                                (cons _exn64355_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp65303))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65302))))))
    (define module-not-found-exception-procedure
      (lambda (_exn64349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64349_))
            (let ((_e64352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64349_ 'exception))))
              (if (macro-module-not-found-exception? _e64352_)
                  (macro-module-not-found-exception-procedure _e64352_)
                  (let ((__tmp65304
                         (let ((__tmp65305
                                (let ()
                                  (declare (not safe))
                                  (cons _e64352_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp65305))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65304))))
            (if (macro-module-not-found-exception? _exn64349_)
                (macro-module-not-found-exception-procedure _exn64349_)
                (let ((__tmp65306
                       (let ((__tmp65307
                              (let ()
                                (declare (not safe))
                                (cons _exn64349_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp65307))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65306))))))
    (define multiple-c-return-exception?
      (lambda (_exn64343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64343_))
            (let ((_e64346_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64343_ 'exception))))
              (macro-multiple-c-return-exception? _e64346_))
            (macro-multiple-c-return-exception? _exn64343_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn64339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64339_))
            (let ((_e64341_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64339_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e64341_))
            (macro-no-such-file-or-directory-exception? _exn64339_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn64335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64335_))
            (let ((_e64337_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64335_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64337_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e64337_)
                  (let ((__tmp65308
                         (let ((__tmp65309
                                (let ()
                                  (declare (not safe))
                                  (cons _e64337_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp65309))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65308))))
            (if (macro-no-such-file-or-directory-exception? _exn64335_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn64335_)
                (let ((__tmp65310
                       (let ((__tmp65311
                              (let ()
                                (declare (not safe))
                                (cons _exn64335_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp65311))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65310))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn64329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64329_))
            (let ((_e64332_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64329_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64332_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e64332_)
                  (let ((__tmp65312
                         (let ((__tmp65313
                                (let ()
                                  (declare (not safe))
                                  (cons _e64332_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp65313))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65312))))
            (if (macro-no-such-file-or-directory-exception? _exn64329_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn64329_)
                (let ((__tmp65314
                       (let ((__tmp65315
                              (let ()
                                (declare (not safe))
                                (cons _exn64329_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp65315))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65314))))))
    (define noncontinuable-exception?
      (lambda (_exn64325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64325_))
            (let ((_e64327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64325_ 'exception))))
              (macro-noncontinuable-exception? _e64327_))
            (macro-noncontinuable-exception? _exn64325_))))
    (define noncontinuable-exception-reason
      (lambda (_exn64319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64319_))
            (let ((_e64322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64319_ 'exception))))
              (if (macro-noncontinuable-exception? _e64322_)
                  (macro-noncontinuable-exception-reason _e64322_)
                  (let ((__tmp65316
                         (let ((__tmp65317
                                (let ()
                                  (declare (not safe))
                                  (cons _e64322_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp65317))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp65316))))
            (if (macro-noncontinuable-exception? _exn64319_)
                (macro-noncontinuable-exception-reason _exn64319_)
                (let ((__tmp65318
                       (let ((__tmp65319
                              (let ()
                                (declare (not safe))
                                (cons _exn64319_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp65319))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp65318))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn64315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64315_))
            (let ((_e64317_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64315_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e64317_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn64315_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn64311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64311_))
            (let ((_e64313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64311_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64313_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e64313_)
                  (let ((__tmp65320
                         (let ((__tmp65321
                                (let ()
                                  (declare (not safe))
                                  (cons _e64313_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp65321))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65320))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64311_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn64311_)
                (let ((__tmp65322
                       (let ((__tmp65323
                              (let ()
                                (declare (not safe))
                                (cons _exn64311_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp65323))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65322))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn64305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64305_))
            (let ((_e64308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64305_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64308_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e64308_)
                  (let ((__tmp65324
                         (let ((__tmp65325
                                (let ()
                                  (declare (not safe))
                                  (cons _e64308_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp65325))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65324))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64305_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn64305_)
                (let ((__tmp65326
                       (let ((__tmp65327
                              (let ()
                                (declare (not safe))
                                (cons _exn64305_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp65327))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65326))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn64301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64301_))
            (let ((_e64303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64301_ 'exception))))
              (macro-nonprocedure-operator-exception? _e64303_))
            (macro-nonprocedure-operator-exception? _exn64301_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn64297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64297_))
            (let ((_e64299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64297_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64299_)
                  (macro-nonprocedure-operator-exception-arguments _e64299_)
                  (let ((__tmp65328
                         (let ((__tmp65329
                                (let ()
                                  (declare (not safe))
                                  (cons _e64299_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp65329))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65328))))
            (if (macro-nonprocedure-operator-exception? _exn64297_)
                (macro-nonprocedure-operator-exception-arguments _exn64297_)
                (let ((__tmp65330
                       (let ((__tmp65331
                              (let ()
                                (declare (not safe))
                                (cons _exn64297_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp65331))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65330))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn64293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64293_))
            (let ((_e64295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64293_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64295_)
                  (macro-nonprocedure-operator-exception-code _e64295_)
                  (let ((__tmp65332
                         (let ((__tmp65333
                                (let ()
                                  (declare (not safe))
                                  (cons _e64295_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp65333))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65332))))
            (if (macro-nonprocedure-operator-exception? _exn64293_)
                (macro-nonprocedure-operator-exception-code _exn64293_)
                (let ((__tmp65334
                       (let ((__tmp65335
                              (let ()
                                (declare (not safe))
                                (cons _exn64293_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp65335))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65334))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn64289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64289_))
            (let ((_e64291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64289_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64291_)
                  (macro-nonprocedure-operator-exception-operator _e64291_)
                  (let ((__tmp65336
                         (let ((__tmp65337
                                (let ()
                                  (declare (not safe))
                                  (cons _e64291_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp65337))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65336))))
            (if (macro-nonprocedure-operator-exception? _exn64289_)
                (macro-nonprocedure-operator-exception-operator _exn64289_)
                (let ((__tmp65338
                       (let ((__tmp65339
                              (let ()
                                (declare (not safe))
                                (cons _exn64289_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp65339))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65338))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn64283_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64283_))
            (let ((_e64286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64283_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64286_)
                  (macro-nonprocedure-operator-exception-rte _e64286_)
                  (let ((__tmp65340
                         (let ((__tmp65341
                                (let ()
                                  (declare (not safe))
                                  (cons _e64286_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp65341))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65340))))
            (if (macro-nonprocedure-operator-exception? _exn64283_)
                (macro-nonprocedure-operator-exception-rte _exn64283_)
                (let ((__tmp65342
                       (let ((__tmp65343
                              (let ()
                                (declare (not safe))
                                (cons _exn64283_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp65343))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65342))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn64279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64279_))
            (let ((_e64281_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64279_ 'exception))))
              (macro-not-in-compilation-context-exception? _e64281_))
            (macro-not-in-compilation-context-exception? _exn64279_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn64275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64275_))
            (let ((_e64277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64275_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64277_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e64277_)
                  (let ((__tmp65344
                         (let ((__tmp65345
                                (let ()
                                  (declare (not safe))
                                  (cons _e64277_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp65345))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65344))))
            (if (macro-not-in-compilation-context-exception? _exn64275_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn64275_)
                (let ((__tmp65346
                       (let ((__tmp65347
                              (let ()
                                (declare (not safe))
                                (cons _exn64275_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp65347))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65346))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn64269_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64269_))
            (let ((_e64272_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64269_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64272_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e64272_)
                  (let ((__tmp65348
                         (let ((__tmp65349
                                (let ()
                                  (declare (not safe))
                                  (cons _e64272_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp65349))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65348))))
            (if (macro-not-in-compilation-context-exception? _exn64269_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn64269_)
                (let ((__tmp65350
                       (let ((__tmp65351
                              (let ()
                                (declare (not safe))
                                (cons _exn64269_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp65351))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65350))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn64265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64265_))
            (let ((_e64267_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64265_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e64267_))
            (macro-number-of-arguments-limit-exception? _exn64265_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn64261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64261_))
            (let ((_e64263_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64261_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64263_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e64263_)
                  (let ((__tmp65352
                         (let ((__tmp65353
                                (let ()
                                  (declare (not safe))
                                  (cons _e64263_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp65353))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65352))))
            (if (macro-number-of-arguments-limit-exception? _exn64261_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn64261_)
                (let ((__tmp65354
                       (let ((__tmp65355
                              (let ()
                                (declare (not safe))
                                (cons _exn64261_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp65355))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65354))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn64255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64255_))
            (let ((_e64258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64255_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64258_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e64258_)
                  (let ((__tmp65356
                         (let ((__tmp65357
                                (let ()
                                  (declare (not safe))
                                  (cons _e64258_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp65357))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65356))))
            (if (macro-number-of-arguments-limit-exception? _exn64255_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn64255_)
                (let ((__tmp65358
                       (let ((__tmp65359
                              (let ()
                                (declare (not safe))
                                (cons _exn64255_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp65359))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65358))))))
    (define os-exception?
      (lambda (_exn64251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64251_))
            (let ((_e64253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64251_ 'exception))))
              (macro-os-exception? _e64253_))
            (macro-os-exception? _exn64251_))))
    (define os-exception-arguments
      (lambda (_exn64247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64247_))
            (let ((_e64249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64247_ 'exception))))
              (if (macro-os-exception? _e64249_)
                  (macro-os-exception-arguments _e64249_)
                  (let ((__tmp65360
                         (let ((__tmp65361
                                (let ()
                                  (declare (not safe))
                                  (cons _e64249_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp65361))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65360))))
            (if (macro-os-exception? _exn64247_)
                (macro-os-exception-arguments _exn64247_)
                (let ((__tmp65362
                       (let ((__tmp65363
                              (let ()
                                (declare (not safe))
                                (cons _exn64247_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp65363))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65362))))))
    (define os-exception-code
      (lambda (_exn64243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64243_))
            (let ((_e64245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64243_ 'exception))))
              (if (macro-os-exception? _e64245_)
                  (macro-os-exception-code _e64245_)
                  (let ((__tmp65364
                         (let ((__tmp65365
                                (let ()
                                  (declare (not safe))
                                  (cons _e64245_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp65365))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65364))))
            (if (macro-os-exception? _exn64243_)
                (macro-os-exception-code _exn64243_)
                (let ((__tmp65366
                       (let ((__tmp65367
                              (let ()
                                (declare (not safe))
                                (cons _exn64243_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp65367))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65366))))))
    (define os-exception-message
      (lambda (_exn64239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64239_))
            (let ((_e64241_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64239_ 'exception))))
              (if (macro-os-exception? _e64241_)
                  (macro-os-exception-message _e64241_)
                  (let ((__tmp65368
                         (let ((__tmp65369
                                (let ()
                                  (declare (not safe))
                                  (cons _e64241_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp65369))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65368))))
            (if (macro-os-exception? _exn64239_)
                (macro-os-exception-message _exn64239_)
                (let ((__tmp65370
                       (let ((__tmp65371
                              (let ()
                                (declare (not safe))
                                (cons _exn64239_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp65371))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65370))))))
    (define os-exception-procedure
      (lambda (_exn64233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64233_))
            (let ((_e64236_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64233_ 'exception))))
              (if (macro-os-exception? _e64236_)
                  (macro-os-exception-procedure _e64236_)
                  (let ((__tmp65372
                         (let ((__tmp65373
                                (let ()
                                  (declare (not safe))
                                  (cons _e64236_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp65373))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65372))))
            (if (macro-os-exception? _exn64233_)
                (macro-os-exception-procedure _exn64233_)
                (let ((__tmp65374
                       (let ((__tmp65375
                              (let ()
                                (declare (not safe))
                                (cons _exn64233_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp65375))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65374))))))
    (define permission-denied-exception?
      (lambda (_exn64229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64229_))
            (let ((_e64231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64229_ 'exception))))
              (macro-permission-denied-exception? _e64231_))
            (macro-permission-denied-exception? _exn64229_))))
    (define permission-denied-exception-arguments
      (lambda (_exn64225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64225_))
            (let ((_e64227_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64225_ 'exception))))
              (if (macro-permission-denied-exception? _e64227_)
                  (macro-permission-denied-exception-arguments _e64227_)
                  (let ((__tmp65376
                         (let ((__tmp65377
                                (let ()
                                  (declare (not safe))
                                  (cons _e64227_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp65377))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65376))))
            (if (macro-permission-denied-exception? _exn64225_)
                (macro-permission-denied-exception-arguments _exn64225_)
                (let ((__tmp65378
                       (let ((__tmp65379
                              (let ()
                                (declare (not safe))
                                (cons _exn64225_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp65379))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65378))))))
    (define permission-denied-exception-procedure
      (lambda (_exn64219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64219_))
            (let ((_e64222_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64219_ 'exception))))
              (if (macro-permission-denied-exception? _e64222_)
                  (macro-permission-denied-exception-procedure _e64222_)
                  (let ((__tmp65380
                         (let ((__tmp65381
                                (let ()
                                  (declare (not safe))
                                  (cons _e64222_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp65381))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65380))))
            (if (macro-permission-denied-exception? _exn64219_)
                (macro-permission-denied-exception-procedure _exn64219_)
                (let ((__tmp65382
                       (let ((__tmp65383
                              (let ()
                                (declare (not safe))
                                (cons _exn64219_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp65383))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65382))))))
    (define range-exception?
      (lambda (_exn64215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64215_))
            (let ((_e64217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64215_ 'exception))))
              (macro-range-exception? _e64217_))
            (macro-range-exception? _exn64215_))))
    (define range-exception-arg-id
      (lambda (_exn64211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64211_))
            (let ((_e64213_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64211_ 'exception))))
              (if (macro-range-exception? _e64213_)
                  (macro-range-exception-arg-id _e64213_)
                  (let ((__tmp65384
                         (let ((__tmp65385
                                (let ()
                                  (declare (not safe))
                                  (cons _e64213_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp65385))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65384))))
            (if (macro-range-exception? _exn64211_)
                (macro-range-exception-arg-id _exn64211_)
                (let ((__tmp65386
                       (let ((__tmp65387
                              (let ()
                                (declare (not safe))
                                (cons _exn64211_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp65387))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65386))))))
    (define range-exception-arguments
      (lambda (_exn64207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64207_))
            (let ((_e64209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64207_ 'exception))))
              (if (macro-range-exception? _e64209_)
                  (macro-range-exception-arguments _e64209_)
                  (let ((__tmp65388
                         (let ((__tmp65389
                                (let ()
                                  (declare (not safe))
                                  (cons _e64209_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp65389))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65388))))
            (if (macro-range-exception? _exn64207_)
                (macro-range-exception-arguments _exn64207_)
                (let ((__tmp65390
                       (let ((__tmp65391
                              (let ()
                                (declare (not safe))
                                (cons _exn64207_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp65391))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65390))))))
    (define range-exception-procedure
      (lambda (_exn64201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64201_))
            (let ((_e64204_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64201_ 'exception))))
              (if (macro-range-exception? _e64204_)
                  (macro-range-exception-procedure _e64204_)
                  (let ((__tmp65392
                         (let ((__tmp65393
                                (let ()
                                  (declare (not safe))
                                  (cons _e64204_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp65393))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65392))))
            (if (macro-range-exception? _exn64201_)
                (macro-range-exception-procedure _exn64201_)
                (let ((__tmp65394
                       (let ((__tmp65395
                              (let ()
                                (declare (not safe))
                                (cons _exn64201_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp65395))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65394))))))
    (define rpc-remote-error-exception?
      (lambda (_exn64197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64197_))
            (let ((_e64199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64197_ 'exception))))
              (macro-rpc-remote-error-exception? _e64199_))
            (macro-rpc-remote-error-exception? _exn64197_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn64193_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64193_))
            (let ((_e64195_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64193_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64195_)
                  (macro-rpc-remote-error-exception-arguments _e64195_)
                  (let ((__tmp65396
                         (let ((__tmp65397
                                (let ()
                                  (declare (not safe))
                                  (cons _e64195_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp65397))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65396))))
            (if (macro-rpc-remote-error-exception? _exn64193_)
                (macro-rpc-remote-error-exception-arguments _exn64193_)
                (let ((__tmp65398
                       (let ((__tmp65399
                              (let ()
                                (declare (not safe))
                                (cons _exn64193_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp65399))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65398))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn64189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64189_))
            (let ((_e64191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64189_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64191_)
                  (macro-rpc-remote-error-exception-message _e64191_)
                  (let ((__tmp65400
                         (let ((__tmp65401
                                (let ()
                                  (declare (not safe))
                                  (cons _e64191_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp65401))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65400))))
            (if (macro-rpc-remote-error-exception? _exn64189_)
                (macro-rpc-remote-error-exception-message _exn64189_)
                (let ((__tmp65402
                       (let ((__tmp65403
                              (let ()
                                (declare (not safe))
                                (cons _exn64189_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp65403))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65402))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn64183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64183_))
            (let ((_e64186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64183_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64186_)
                  (macro-rpc-remote-error-exception-procedure _e64186_)
                  (let ((__tmp65404
                         (let ((__tmp65405
                                (let ()
                                  (declare (not safe))
                                  (cons _e64186_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp65405))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65404))))
            (if (macro-rpc-remote-error-exception? _exn64183_)
                (macro-rpc-remote-error-exception-procedure _exn64183_)
                (let ((__tmp65406
                       (let ((__tmp65407
                              (let ()
                                (declare (not safe))
                                (cons _exn64183_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp65407))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65406))))))
    (define scheduler-exception?
      (lambda (_exn64179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64179_))
            (let ((_e64181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64179_ 'exception))))
              (macro-scheduler-exception? _e64181_))
            (macro-scheduler-exception? _exn64179_))))
    (define scheduler-exception-reason
      (lambda (_exn64173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64173_))
            (let ((_e64176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64173_ 'exception))))
              (if (macro-scheduler-exception? _e64176_)
                  (macro-scheduler-exception-reason _e64176_)
                  (let ((__tmp65408
                         (let ((__tmp65409
                                (let ()
                                  (declare (not safe))
                                  (cons _e64176_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp65409))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp65408))))
            (if (macro-scheduler-exception? _exn64173_)
                (macro-scheduler-exception-reason _exn64173_)
                (let ((__tmp65410
                       (let ((__tmp65411
                              (let ()
                                (declare (not safe))
                                (cons _exn64173_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp65411))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp65410))))))
    (define sfun-conversion-exception?
      (lambda (_exn64169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64169_))
            (let ((_e64171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64169_ 'exception))))
              (macro-sfun-conversion-exception? _e64171_))
            (macro-sfun-conversion-exception? _exn64169_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn64165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64165_))
            (let ((_e64167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64165_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64167_)
                  (macro-sfun-conversion-exception-arguments _e64167_)
                  (let ((__tmp65412
                         (let ((__tmp65413
                                (let ()
                                  (declare (not safe))
                                  (cons _e64167_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp65413))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65412))))
            (if (macro-sfun-conversion-exception? _exn64165_)
                (macro-sfun-conversion-exception-arguments _exn64165_)
                (let ((__tmp65414
                       (let ((__tmp65415
                              (let ()
                                (declare (not safe))
                                (cons _exn64165_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp65415))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65414))))))
    (define sfun-conversion-exception-code
      (lambda (_exn64161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64161_))
            (let ((_e64163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64161_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64163_)
                  (macro-sfun-conversion-exception-code _e64163_)
                  (let ((__tmp65416
                         (let ((__tmp65417
                                (let ()
                                  (declare (not safe))
                                  (cons _e64163_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp65417))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65416))))
            (if (macro-sfun-conversion-exception? _exn64161_)
                (macro-sfun-conversion-exception-code _exn64161_)
                (let ((__tmp65418
                       (let ((__tmp65419
                              (let ()
                                (declare (not safe))
                                (cons _exn64161_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp65419))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65418))))))
    (define sfun-conversion-exception-message
      (lambda (_exn64157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64157_))
            (let ((_e64159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64157_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64159_)
                  (macro-sfun-conversion-exception-message _e64159_)
                  (let ((__tmp65420
                         (let ((__tmp65421
                                (let ()
                                  (declare (not safe))
                                  (cons _e64159_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp65421))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65420))))
            (if (macro-sfun-conversion-exception? _exn64157_)
                (macro-sfun-conversion-exception-message _exn64157_)
                (let ((__tmp65422
                       (let ((__tmp65423
                              (let ()
                                (declare (not safe))
                                (cons _exn64157_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp65423))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65422))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn64151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64151_))
            (let ((_e64154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64151_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64154_)
                  (macro-sfun-conversion-exception-procedure _e64154_)
                  (let ((__tmp65424
                         (let ((__tmp65425
                                (let ()
                                  (declare (not safe))
                                  (cons _e64154_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp65425))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65424))))
            (if (macro-sfun-conversion-exception? _exn64151_)
                (macro-sfun-conversion-exception-procedure _exn64151_)
                (let ((__tmp65426
                       (let ((__tmp65427
                              (let ()
                                (declare (not safe))
                                (cons _exn64151_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp65427))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65426))))))
    (define stack-overflow-exception?
      (lambda (_exn64145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64145_))
            (let ((_e64148_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64145_ 'exception))))
              (macro-stack-overflow-exception? _e64148_))
            (macro-stack-overflow-exception? _exn64145_))))
    (define started-thread-exception?
      (lambda (_exn64141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64141_))
            (let ((_e64143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64141_ 'exception))))
              (macro-started-thread-exception? _e64143_))
            (macro-started-thread-exception? _exn64141_))))
    (define started-thread-exception-arguments
      (lambda (_exn64137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64137_))
            (let ((_e64139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64137_ 'exception))))
              (if (macro-started-thread-exception? _e64139_)
                  (macro-started-thread-exception-arguments _e64139_)
                  (let ((__tmp65428
                         (let ((__tmp65429
                                (let ()
                                  (declare (not safe))
                                  (cons _e64139_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp65429))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65428))))
            (if (macro-started-thread-exception? _exn64137_)
                (macro-started-thread-exception-arguments _exn64137_)
                (let ((__tmp65430
                       (let ((__tmp65431
                              (let ()
                                (declare (not safe))
                                (cons _exn64137_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp65431))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65430))))))
    (define started-thread-exception-procedure
      (lambda (_exn64131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64131_))
            (let ((_e64134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64131_ 'exception))))
              (if (macro-started-thread-exception? _e64134_)
                  (macro-started-thread-exception-procedure _e64134_)
                  (let ((__tmp65432
                         (let ((__tmp65433
                                (let ()
                                  (declare (not safe))
                                  (cons _e64134_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp65433))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65432))))
            (if (macro-started-thread-exception? _exn64131_)
                (macro-started-thread-exception-procedure _exn64131_)
                (let ((__tmp65434
                       (let ((__tmp65435
                              (let ()
                                (declare (not safe))
                                (cons _exn64131_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp65435))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65434))))))
    (define terminated-thread-exception?
      (lambda (_exn64127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64127_))
            (let ((_e64129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64127_ 'exception))))
              (macro-terminated-thread-exception? _e64129_))
            (macro-terminated-thread-exception? _exn64127_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn64123_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64123_))
            (let ((_e64125_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64123_ 'exception))))
              (if (macro-terminated-thread-exception? _e64125_)
                  (macro-terminated-thread-exception-arguments _e64125_)
                  (let ((__tmp65436
                         (let ((__tmp65437
                                (let ()
                                  (declare (not safe))
                                  (cons _e64125_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp65437))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65436))))
            (if (macro-terminated-thread-exception? _exn64123_)
                (macro-terminated-thread-exception-arguments _exn64123_)
                (let ((__tmp65438
                       (let ((__tmp65439
                              (let ()
                                (declare (not safe))
                                (cons _exn64123_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp65439))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65438))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn64117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64117_))
            (let ((_e64120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64117_ 'exception))))
              (if (macro-terminated-thread-exception? _e64120_)
                  (macro-terminated-thread-exception-procedure _e64120_)
                  (let ((__tmp65440
                         (let ((__tmp65441
                                (let ()
                                  (declare (not safe))
                                  (cons _e64120_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp65441))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65440))))
            (if (macro-terminated-thread-exception? _exn64117_)
                (macro-terminated-thread-exception-procedure _exn64117_)
                (let ((__tmp65442
                       (let ((__tmp65443
                              (let ()
                                (declare (not safe))
                                (cons _exn64117_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp65443))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65442))))))
    (define type-exception?
      (lambda (_exn64113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64113_))
            (let ((_e64115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64113_ 'exception))))
              (macro-type-exception? _e64115_))
            (macro-type-exception? _exn64113_))))
    (define type-exception-arg-id
      (lambda (_exn64109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64109_))
            (let ((_e64111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64109_ 'exception))))
              (if (macro-type-exception? _e64111_)
                  (macro-type-exception-arg-id _e64111_)
                  (let ((__tmp65444
                         (let ((__tmp65445
                                (let ()
                                  (declare (not safe))
                                  (cons _e64111_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp65445))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65444))))
            (if (macro-type-exception? _exn64109_)
                (macro-type-exception-arg-id _exn64109_)
                (let ((__tmp65446
                       (let ((__tmp65447
                              (let ()
                                (declare (not safe))
                                (cons _exn64109_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp65447))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65446))))))
    (define type-exception-arguments
      (lambda (_exn64105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64105_))
            (let ((_e64107_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64105_ 'exception))))
              (if (macro-type-exception? _e64107_)
                  (macro-type-exception-arguments _e64107_)
                  (let ((__tmp65448
                         (let ((__tmp65449
                                (let ()
                                  (declare (not safe))
                                  (cons _e64107_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp65449))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65448))))
            (if (macro-type-exception? _exn64105_)
                (macro-type-exception-arguments _exn64105_)
                (let ((__tmp65450
                       (let ((__tmp65451
                              (let ()
                                (declare (not safe))
                                (cons _exn64105_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp65451))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65450))))))
    (define type-exception-procedure
      (lambda (_exn64101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64101_))
            (let ((_e64103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64101_ 'exception))))
              (if (macro-type-exception? _e64103_)
                  (macro-type-exception-procedure _e64103_)
                  (let ((__tmp65452
                         (let ((__tmp65453
                                (let ()
                                  (declare (not safe))
                                  (cons _e64103_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp65453))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65452))))
            (if (macro-type-exception? _exn64101_)
                (macro-type-exception-procedure _exn64101_)
                (let ((__tmp65454
                       (let ((__tmp65455
                              (let ()
                                (declare (not safe))
                                (cons _exn64101_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp65455))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65454))))))
    (define type-exception-type-id
      (lambda (_exn64095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64095_))
            (let ((_e64098_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64095_ 'exception))))
              (if (macro-type-exception? _e64098_)
                  (macro-type-exception-type-id _e64098_)
                  (let ((__tmp65456
                         (let ((__tmp65457
                                (let ()
                                  (declare (not safe))
                                  (cons _e64098_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp65457))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65456))))
            (if (macro-type-exception? _exn64095_)
                (macro-type-exception-type-id _exn64095_)
                (let ((__tmp65458
                       (let ((__tmp65459
                              (let ()
                                (declare (not safe))
                                (cons _exn64095_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp65459))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65458))))))
    (define unbound-global-exception?
      (lambda (_exn64091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64091_))
            (let ((_e64093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64091_ 'exception))))
              (macro-unbound-global-exception? _e64093_))
            (macro-unbound-global-exception? _exn64091_))))
    (define unbound-global-exception-code
      (lambda (_exn64087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64087_))
            (let ((_e64089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64087_ 'exception))))
              (if (macro-unbound-global-exception? _e64089_)
                  (macro-unbound-global-exception-code _e64089_)
                  (let ((__tmp65460
                         (let ((__tmp65461
                                (let ()
                                  (declare (not safe))
                                  (cons _e64089_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp65461))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65460))))
            (if (macro-unbound-global-exception? _exn64087_)
                (macro-unbound-global-exception-code _exn64087_)
                (let ((__tmp65462
                       (let ((__tmp65463
                              (let ()
                                (declare (not safe))
                                (cons _exn64087_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp65463))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65462))))))
    (define unbound-global-exception-rte
      (lambda (_exn64083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64083_))
            (let ((_e64085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64083_ 'exception))))
              (if (macro-unbound-global-exception? _e64085_)
                  (macro-unbound-global-exception-rte _e64085_)
                  (let ((__tmp65464
                         (let ((__tmp65465
                                (let ()
                                  (declare (not safe))
                                  (cons _e64085_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp65465))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65464))))
            (if (macro-unbound-global-exception? _exn64083_)
                (macro-unbound-global-exception-rte _exn64083_)
                (let ((__tmp65466
                       (let ((__tmp65467
                              (let ()
                                (declare (not safe))
                                (cons _exn64083_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp65467))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65466))))))
    (define unbound-global-exception-variable
      (lambda (_exn64077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64077_))
            (let ((_e64080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64077_ 'exception))))
              (if (macro-unbound-global-exception? _e64080_)
                  (macro-unbound-global-exception-variable _e64080_)
                  (let ((__tmp65468
                         (let ((__tmp65469
                                (let ()
                                  (declare (not safe))
                                  (cons _e64080_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp65469))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65468))))
            (if (macro-unbound-global-exception? _exn64077_)
                (macro-unbound-global-exception-variable _exn64077_)
                (let ((__tmp65470
                       (let ((__tmp65471
                              (let ()
                                (declare (not safe))
                                (cons _exn64077_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp65471))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65470))))))
    (define unbound-key-exception?
      (lambda (_exn64073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64073_))
            (let ((_e64075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64073_ 'exception))))
              (macro-unbound-key-exception? _e64075_))
            (macro-unbound-key-exception? _exn64073_))))
    (define unbound-key-exception-arguments
      (lambda (_exn64069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64069_))
            (let ((_e64071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64069_ 'exception))))
              (if (macro-unbound-key-exception? _e64071_)
                  (macro-unbound-key-exception-arguments _e64071_)
                  (let ((__tmp65472
                         (let ((__tmp65473
                                (let ()
                                  (declare (not safe))
                                  (cons _e64071_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp65473))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65472))))
            (if (macro-unbound-key-exception? _exn64069_)
                (macro-unbound-key-exception-arguments _exn64069_)
                (let ((__tmp65474
                       (let ((__tmp65475
                              (let ()
                                (declare (not safe))
                                (cons _exn64069_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp65475))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65474))))))
    (define unbound-key-exception-procedure
      (lambda (_exn64063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64063_))
            (let ((_e64066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64063_ 'exception))))
              (if (macro-unbound-key-exception? _e64066_)
                  (macro-unbound-key-exception-procedure _e64066_)
                  (let ((__tmp65476
                         (let ((__tmp65477
                                (let ()
                                  (declare (not safe))
                                  (cons _e64066_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp65477))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65476))))
            (if (macro-unbound-key-exception? _exn64063_)
                (macro-unbound-key-exception-procedure _exn64063_)
                (let ((__tmp65478
                       (let ((__tmp65479
                              (let ()
                                (declare (not safe))
                                (cons _exn64063_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp65479))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65478))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn64059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64059_))
            (let ((_e64061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64059_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e64061_))
            (macro-unbound-os-environment-variable-exception? _exn64059_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn64055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64055_))
            (let ((_e64057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64055_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64057_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e64057_)
                  (let ((__tmp65480
                         (let ((__tmp65481
                                (let ()
                                  (declare (not safe))
                                  (cons _e64057_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp65481))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65480))))
            (if (macro-unbound-os-environment-variable-exception? _exn64055_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn64055_)
                (let ((__tmp65482
                       (let ((__tmp65483
                              (let ()
                                (declare (not safe))
                                (cons _exn64055_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp65483))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65482))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn64049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64049_))
            (let ((_e64052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64049_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64052_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e64052_)
                  (let ((__tmp65484
                         (let ((__tmp65485
                                (let ()
                                  (declare (not safe))
                                  (cons _e64052_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp65485))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65484))))
            (if (macro-unbound-os-environment-variable-exception? _exn64049_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn64049_)
                (let ((__tmp65486
                       (let ((__tmp65487
                              (let ()
                                (declare (not safe))
                                (cons _exn64049_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp65487))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65486))))))
    (define unbound-serial-number-exception?
      (lambda (_exn64045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64045_))
            (let ((_e64047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64045_ 'exception))))
              (macro-unbound-serial-number-exception? _e64047_))
            (macro-unbound-serial-number-exception? _exn64045_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn64041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64041_))
            (let ((_e64043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64041_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64043_)
                  (macro-unbound-serial-number-exception-arguments _e64043_)
                  (let ((__tmp65488
                         (let ((__tmp65489
                                (let ()
                                  (declare (not safe))
                                  (cons _e64043_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp65489))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65488))))
            (if (macro-unbound-serial-number-exception? _exn64041_)
                (macro-unbound-serial-number-exception-arguments _exn64041_)
                (let ((__tmp65490
                       (let ((__tmp65491
                              (let ()
                                (declare (not safe))
                                (cons _exn64041_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp65491))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65490))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn64035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64035_))
            (let ((_e64038_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64035_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64038_)
                  (macro-unbound-serial-number-exception-procedure _e64038_)
                  (let ((__tmp65492
                         (let ((__tmp65493
                                (let ()
                                  (declare (not safe))
                                  (cons _e64038_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp65493))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65492))))
            (if (macro-unbound-serial-number-exception? _exn64035_)
                (macro-unbound-serial-number-exception-procedure _exn64035_)
                (let ((__tmp65494
                       (let ((__tmp65495
                              (let ()
                                (declare (not safe))
                                (cons _exn64035_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp65495))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65494))))))
    (define uncaught-exception?
      (lambda (_exn64031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64031_))
            (let ((_e64033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64031_ 'exception))))
              (macro-uncaught-exception? _e64033_))
            (macro-uncaught-exception? _exn64031_))))
    (define uncaught-exception-arguments
      (lambda (_exn64027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64027_))
            (let ((_e64029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64027_ 'exception))))
              (if (macro-uncaught-exception? _e64029_)
                  (macro-uncaught-exception-arguments _e64029_)
                  (let ((__tmp65496
                         (let ((__tmp65497
                                (let ()
                                  (declare (not safe))
                                  (cons _e64029_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp65497))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65496))))
            (if (macro-uncaught-exception? _exn64027_)
                (macro-uncaught-exception-arguments _exn64027_)
                (let ((__tmp65498
                       (let ((__tmp65499
                              (let ()
                                (declare (not safe))
                                (cons _exn64027_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp65499))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65498))))))
    (define uncaught-exception-procedure
      (lambda (_exn64023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64023_))
            (let ((_e64025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64023_ 'exception))))
              (if (macro-uncaught-exception? _e64025_)
                  (macro-uncaught-exception-procedure _e64025_)
                  (let ((__tmp65500
                         (let ((__tmp65501
                                (let ()
                                  (declare (not safe))
                                  (cons _e64025_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp65501))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65500))))
            (if (macro-uncaught-exception? _exn64023_)
                (macro-uncaught-exception-procedure _exn64023_)
                (let ((__tmp65502
                       (let ((__tmp65503
                              (let ()
                                (declare (not safe))
                                (cons _exn64023_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp65503))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65502))))))
    (define uncaught-exception-reason
      (lambda (_exn64017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64017_))
            (let ((_e64020_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64017_ 'exception))))
              (if (macro-uncaught-exception? _e64020_)
                  (macro-uncaught-exception-reason _e64020_)
                  (let ((__tmp65504
                         (let ((__tmp65505
                                (let ()
                                  (declare (not safe))
                                  (cons _e64020_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp65505))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65504))))
            (if (macro-uncaught-exception? _exn64017_)
                (macro-uncaught-exception-reason _exn64017_)
                (let ((__tmp65506
                       (let ((__tmp65507
                              (let ()
                                (declare (not safe))
                                (cons _exn64017_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp65507))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65506))))))
    (define uninitialized-thread-exception?
      (lambda (_exn64013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64013_))
            (let ((_e64015_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64013_ 'exception))))
              (macro-uninitialized-thread-exception? _e64015_))
            (macro-uninitialized-thread-exception? _exn64013_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn64009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64009_))
            (let ((_e64011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64009_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64011_)
                  (macro-uninitialized-thread-exception-arguments _e64011_)
                  (let ((__tmp65508
                         (let ((__tmp65509
                                (let ()
                                  (declare (not safe))
                                  (cons _e64011_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp65509))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65508))))
            (if (macro-uninitialized-thread-exception? _exn64009_)
                (macro-uninitialized-thread-exception-arguments _exn64009_)
                (let ((__tmp65510
                       (let ((__tmp65511
                              (let ()
                                (declare (not safe))
                                (cons _exn64009_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp65511))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65510))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn64003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64003_))
            (let ((_e64006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64003_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64006_)
                  (macro-uninitialized-thread-exception-procedure _e64006_)
                  (let ((__tmp65512
                         (let ((__tmp65513
                                (let ()
                                  (declare (not safe))
                                  (cons _e64006_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp65513))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65512))))
            (if (macro-uninitialized-thread-exception? _exn64003_)
                (macro-uninitialized-thread-exception-procedure _exn64003_)
                (let ((__tmp65514
                       (let ((__tmp65515
                              (let ()
                                (declare (not safe))
                                (cons _exn64003_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp65515))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65514))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn63999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63999_))
            (let ((_e64001_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63999_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e64001_))
            (macro-unknown-keyword-argument-exception? _exn63999_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn63995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63995_))
            (let ((_e63997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63995_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e63997_)
                  (macro-unknown-keyword-argument-exception-arguments _e63997_)
                  (let ((__tmp65516
                         (let ((__tmp65517
                                (let ()
                                  (declare (not safe))
                                  (cons _e63997_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp65517))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65516))))
            (if (macro-unknown-keyword-argument-exception? _exn63995_)
                (macro-unknown-keyword-argument-exception-arguments _exn63995_)
                (let ((__tmp65518
                       (let ((__tmp65519
                              (let ()
                                (declare (not safe))
                                (cons _exn63995_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp65519))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65518))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn63989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63989_))
            (let ((_e63992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63989_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e63992_)
                  (macro-unknown-keyword-argument-exception-procedure _e63992_)
                  (let ((__tmp65520
                         (let ((__tmp65521
                                (let ()
                                  (declare (not safe))
                                  (cons _e63992_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp65521))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65520))))
            (if (macro-unknown-keyword-argument-exception? _exn63989_)
                (macro-unknown-keyword-argument-exception-procedure _exn63989_)
                (let ((__tmp65522
                       (let ((__tmp65523
                              (let ()
                                (declare (not safe))
                                (cons _exn63989_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp65523))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65522))))))
    (define unterminated-process-exception?
      (lambda (_exn63985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63985_))
            (let ((_e63987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63985_ 'exception))))
              (macro-unterminated-process-exception? _e63987_))
            (macro-unterminated-process-exception? _exn63985_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn63981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63981_))
            (let ((_e63983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63981_ 'exception))))
              (if (macro-unterminated-process-exception? _e63983_)
                  (macro-unterminated-process-exception-arguments _e63983_)
                  (let ((__tmp65524
                         (let ((__tmp65525
                                (let ()
                                  (declare (not safe))
                                  (cons _e63983_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp65525))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65524))))
            (if (macro-unterminated-process-exception? _exn63981_)
                (macro-unterminated-process-exception-arguments _exn63981_)
                (let ((__tmp65526
                       (let ((__tmp65527
                              (let ()
                                (declare (not safe))
                                (cons _exn63981_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp65527))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65526))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn63975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63975_))
            (let ((_e63978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63975_ 'exception))))
              (if (macro-unterminated-process-exception? _e63978_)
                  (macro-unterminated-process-exception-procedure _e63978_)
                  (let ((__tmp65528
                         (let ((__tmp65529
                                (let ()
                                  (declare (not safe))
                                  (cons _e63978_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp65529))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65528))))
            (if (macro-unterminated-process-exception? _exn63975_)
                (macro-unterminated-process-exception-procedure _exn63975_)
                (let ((__tmp65530
                       (let ((__tmp65531
                              (let ()
                                (declare (not safe))
                                (cons _exn63975_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp65531))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65530))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn63971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63971_))
            (let ((_e63973_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63971_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e63973_))
            (macro-wrong-number-of-arguments-exception? _exn63971_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn63967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63967_))
            (let ((_e63969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63967_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e63969_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e63969_)
                  (let ((__tmp65532
                         (let ((__tmp65533
                                (let ()
                                  (declare (not safe))
                                  (cons _e63969_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp65533))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65532))))
            (if (macro-wrong-number-of-arguments-exception? _exn63967_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn63967_)
                (let ((__tmp65534
                       (let ((__tmp65535
                              (let ()
                                (declare (not safe))
                                (cons _exn63967_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp65535))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65534))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn63961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63961_))
            (let ((_e63964_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63961_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e63964_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e63964_)
                  (let ((__tmp65536
                         (let ((__tmp65537
                                (let ()
                                  (declare (not safe))
                                  (cons _e63964_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp65537))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65536))))
            (if (macro-wrong-number-of-arguments-exception? _exn63961_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn63961_)
                (let ((__tmp65538
                       (let ((__tmp65539
                              (let ()
                                (declare (not safe))
                                (cons _exn63961_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp65539))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65538))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn63957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63957_))
            (let ((_e63959_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63957_ 'exception))))
              (macro-wrong-number-of-values-exception? _e63959_))
            (macro-wrong-number-of-values-exception? _exn63957_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn63953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63953_))
            (let ((_e63955_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63953_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e63955_)
                  (macro-wrong-number-of-values-exception-code _e63955_)
                  (let ((__tmp65540
                         (let ((__tmp65541
                                (let ()
                                  (declare (not safe))
                                  (cons _e63955_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp65541))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65540))))
            (if (macro-wrong-number-of-values-exception? _exn63953_)
                (macro-wrong-number-of-values-exception-code _exn63953_)
                (let ((__tmp65542
                       (let ((__tmp65543
                              (let ()
                                (declare (not safe))
                                (cons _exn63953_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp65543))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65542))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn63949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63949_))
            (let ((_e63951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63949_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e63951_)
                  (macro-wrong-number-of-values-exception-rte _e63951_)
                  (let ((__tmp65544
                         (let ((__tmp65545
                                (let ()
                                  (declare (not safe))
                                  (cons _e63951_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp65545))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65544))))
            (if (macro-wrong-number-of-values-exception? _exn63949_)
                (macro-wrong-number-of-values-exception-rte _exn63949_)
                (let ((__tmp65546
                       (let ((__tmp65547
                              (let ()
                                (declare (not safe))
                                (cons _exn63949_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp65547))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65546))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn63943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63943_))
            (let ((_e63946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63943_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e63946_)
                  (macro-wrong-number-of-values-exception-vals _e63946_)
                  (let ((__tmp65548
                         (let ((__tmp65549
                                (let ()
                                  (declare (not safe))
                                  (cons _e63946_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp65549))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65548))))
            (if (macro-wrong-number-of-values-exception? _exn63943_)
                (macro-wrong-number-of-values-exception-vals _exn63943_)
                (let ((__tmp65550
                       (let ((__tmp65551
                              (let ()
                                (declare (not safe))
                                (cons _exn63943_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp65551))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65550))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn63937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63937_))
            (let ((_e63940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63937_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e63940_))
            (macro-wrong-processor-c-return-exception? _exn63937_))))))
