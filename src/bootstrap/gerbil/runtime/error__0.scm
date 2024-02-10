(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707573210)
  (begin
    (define Exception::t
      (let ((__tmp95151 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95151
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90654_
        (apply make-class-instance Exception::t _$args90654_)))
    (define StackTrace::t
      (let ((__tmp95152 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95152
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90651_
        (apply make-class-instance StackTrace::t _$args90651_)))
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
      (let ((__tmp95153 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95153
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90648_ (apply make-class-instance Error::t _$args90648_)))
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
      (let ((__tmp95154 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95154
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90645_
        (apply make-class-instance RuntimeException::t _$args90645_)))
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
      (lambda (_exn90640_ _continue90641_)
        (let ((_exn90643_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90640_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90643_ _continue90641_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90636_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90636_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90636_ 'continuation))
                '#!void
                (let ((__tmp95155
                       (lambda (_cont90638_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90636_
                            'continuation
                            _cont90638_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95155)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90636_))))
    (define error
      (lambda (_message90633_ . _irritants90634_)
        (raise (let ((__obj95145
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95145
                  _message90633_
                  'irritants:
                  _irritants90634_)
                 __obj95145))))
    (define with-exception-handler
      (lambda (_handler90626_ _thunk90627_)
        (if (let () (declare (not safe)) (procedure? _handler90626_))
            '#!void
            (raise (let ((__obj95146
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95146
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90626_ '())))
                     __obj95146)))
        (if (let () (declare (not safe)) (procedure? _thunk90627_))
            '#!void
            (raise (let ((__obj95147
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95147
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90627_ '())))
                     __obj95147)))
        (let ((__tmp95156
               (lambda (_exn90629_)
                 (let ((_exn90631_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90629_))))
                   (_handler90626_ _exn90631_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95156 _thunk90627_))))
    (define with-catch
      (lambda (_handler90619_ _thunk90620_)
        (if (let () (declare (not safe)) (procedure? _handler90619_))
            '#!void
            (raise (let ((__obj95148
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95148
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90619_ '())))
                     __obj95148)))
        (if (let () (declare (not safe)) (procedure? _thunk90620_))
            '#!void
            (raise (let ((__obj95149
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95149
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90620_ '())))
                     __obj95149)))
        (let ((__tmp95157
               (lambda (_cont90622_)
                 (with-exception-handler
                  (lambda (_exn90624_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90622_
                       _handler90619_
                       _exn90624_)))
                  _thunk90620_))))
          (declare (not safe))
          (##continuation-capture __tmp95157))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90610_)
        (if (or (heap-overflow-exception? _exn90610_)
                (stack-overflow-exception? _exn90610_))
            _exn90610_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90610_))
                _exn90610_
                (if (macro-exception? _exn90610_)
                    (let ((_rte90615_
                           (let ((__obj95150
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95150
                                _exn90610_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95150)))
                      (let ((__tmp95158
                             (lambda (_cont90617_)
                               (let ((__tmp95159
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90617_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90615_
                                  'continuation
                                  __tmp95159)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95158))
                      _rte90615_)
                    _exn90610_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90605_)
        (let ((_$e90607_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90605_))))
          (if _$e90607_ _$e90607_ (error-exception? _obj90605_)))))
    (define error-message
      (lambda (_obj90603_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90603_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90603_ 'message))
            (if (error-exception? _obj90603_)
                (error-exception-message _obj90603_)
                '#f))))
    (define error-irritants
      (lambda (_obj90601_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90601_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90601_ 'irritants))
            (if (error-exception? _obj90601_)
                (error-exception-parameters _obj90601_)
                '#f))))
    (define error-trace
      (lambda (_obj90599_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90599_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90599_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90581_ _port90582_)
        (let ((_$e90584_
               (let ()
                 (declare (not safe))
                 (method-ref _e90581_ 'display-exception))))
          (if _$e90584_
              ((lambda (_f90587_) (_f90587_ _e90581_ _port90582_)) _$e90584_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90581_ _port90582_))))))
    (define display-exception__0
      (lambda (_e90592_)
        (let ((_port90594_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90592_ _port90594_))))
    (define display-exception
      (lambda _g95161_
        (let ((_g95160_ (let () (declare (not safe)) (##length _g95161_))))
          (cond ((let () (declare (not safe)) (##fx= _g95160_ 1))
                 (apply (lambda (_e90592_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90592_)))
                        _g95161_))
                ((let () (declare (not safe)) (##fx= _g95160_ 2))
                 (apply (lambda (_e90596_ _port90597_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90596_ _port90597_)))
                        _g95161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95161_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90570_ _message90571_ . _rest90572_)
        (let ((_message90578_
               (if (let () (declare (not safe)) (string? _message90571_))
                   _message90571_
                   (call-with-output-string
                    '""
                    (lambda (_g9057390575_)
                      (display _message90571_ _g9057390575_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90570_ 'message _message90578_))
          (apply class-instance-init! _self90570_ _rest90572_))))
    (define Error:::init!::specialize
      (lambda (__t95124)
        (let ((__message95125
               (let ((__tmp95126
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95124 'message))))
                 (if __tmp95126 __tmp95126 (error '"Unknown slot" 'message)))))
          (lambda (_self90570_ _message90571_ . _rest90572_)
            (let ((_message90578_
                   (if (let () (declare (not safe)) (string? _message90571_))
                       _message90571_
                       (call-with-output-string
                        '""
                        (lambda (_g9057390575_)
                          (display _message90571_ _g9057390575_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90570_
                 _message90578_
                 __message95125
                 __t95124
                 '#f))
              (apply class-instance-init! _self90570_ _rest90572_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90428_ _port90429_)
        (let ((_tmp-port90431_ (open-output-string))
              (_display-error-newline90432_
               (> (output-port-column _port90429_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90431_))
          (let ((__tmp95162
                 (lambda ()
                   (if _display-error-newline90432_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90435_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90428_ 'where))))
                     (if _$e90435_ (display _$e90435_) (display '"?")))
                   (let ((__tmp95163
                          (let ((__tmp95164
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90428_))))
                            (declare (not safe))
                            (##type-name __tmp95164))))
                     (declare (not safe))
                     (display* '" [" __tmp95163 '"]: "))
                   (let ((__tmp95165
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90428_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95165))
                   (let ((_irritants90438_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90428_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90438_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90440_)
                              (write _obj90440_)
                              (write-char '#\space))
                            _irritants90438_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90428_))
                            (dump-stack-trace?))
                       (let ((_cont9044190443_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90428_
                                 'continuation))))
                         (if _cont9044190443_
                             (let ((_cont90446_ _cont9044190443_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90446_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95162
             current-output-port
             _tmp-port90431_))
          (let ((__tmp95166 (get-output-string _tmp-port90431_)))
            (declare (not safe))
            (##write-string __tmp95166 _port90429_)))))
    (define Error::display-exception::specialize
      (lambda (__t95127)
        (let ((__continuation95128
               (let ((__tmp95132
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95127 'continuation))))
                 (if __tmp95132
                     __tmp95132
                     (error '"Unknown slot" 'continuation))))
              (__message95129
               (let ((__tmp95133
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95127 'message))))
                 (if __tmp95133 __tmp95133 (error '"Unknown slot" 'message))))
              (__irritants95130
               (let ((__tmp95134
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95127 'irritants))))
                 (if __tmp95134
                     __tmp95134
                     (error '"Unknown slot" 'irritants))))
              (__where95131
               (let ((__tmp95135
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95127 'where))))
                 (if __tmp95135 __tmp95135 (error '"Unknown slot" 'where)))))
          (lambda (_self90428_ _port90429_)
            (let ((_tmp-port90431_ (open-output-string))
                  (_display-error-newline90432_
                   (> (output-port-column _port90429_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90431_))
              (let ((__tmp95167
                     (lambda ()
                       (if _display-error-newline90432_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90435_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90428_
                                 __where95131
                                 __t95127
                                 '#f))))
                         (if _$e90435_ (display _$e90435_) (display '"?")))
                       (let ((__tmp95168
                              (let ((__tmp95169
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90428_))))
                                (declare (not safe))
                                (##type-name __tmp95169))))
                         (declare (not safe))
                         (display* '" [" __tmp95168 '"]: "))
                       (let ((__tmp95170
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90428_
                                 __message95129
                                 __t95127
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95170))
                       (let ((_irritants90438_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90428_
                                 __irritants95130
                                 __t95127
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90438_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90440_)
                                  (write _obj90440_)
                                  (write-char '#\space))
                                _irritants90438_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90428_))
                                (dump-stack-trace?))
                           (let ((_cont9044190443_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90428_
                                     __continuation95128
                                     __t95127
                                     '#f))))
                             (if _cont9044190443_
                                 (let ((_cont90446_ _cont9044190443_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90446_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95167
                 current-output-port
                 _tmp-port90431_))
              (let ((__tmp95171 (get-output-string _tmp-port90431_)))
                (declare (not safe))
                (##write-string __tmp95171 _port90429_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90295_ _port90296_)
        (let ((_tmp-port90298_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90298_))
          (let ((__tmp95172
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90295_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95172 _tmp-port90298_))
          (if (dump-stack-trace?)
              (let ((_cont9029990301_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90295_ 'continuation))))
                (if _cont9029990301_
                    (let ((_cont90304_ _cont9029990301_))
                      (display '"--- continuation backtrace:" _tmp-port90298_)
                      (newline _tmp-port90298_)
                      (display-continuation-backtrace
                       _cont90304_
                       _tmp-port90298_))
                    '#f))
              '#!void)
          (let ((__tmp95173 (get-output-string _tmp-port90298_)))
            (declare (not safe))
            (##write-string __tmp95173 _port90296_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95136)
        (let ((__exception95137
               (let ((__tmp95139
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95136 'exception))))
                 (if __tmp95139
                     __tmp95139
                     (error '"Unknown slot" 'exception))))
              (__continuation95138
               (let ((__tmp95140
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95136 'continuation))))
                 (if __tmp95140
                     __tmp95140
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90295_ _port90296_)
            (let ((_tmp-port90298_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90298_))
              (let ((__tmp95174
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90295_
                        __exception95137
                        __t95136
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95174 _tmp-port90298_))
              (if (dump-stack-trace?)
                  (let ((_cont9029990301_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90295_
                            __continuation95138
                            __t95136
                            '#f))))
                    (if _cont9029990301_
                        (let ((_cont90304_ _cont9029990301_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90298_)
                          (newline _tmp-port90298_)
                          (display-continuation-backtrace
                           _cont90304_
                           _tmp-port90298_))
                        '#f))
                  '#!void)
              (let ((__tmp95175 (get-output-string _tmp-port90298_)))
                (declare (not safe))
                (##write-string __tmp95175 _port90296_)))))))
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
      (lambda (_port90167_)
        (if (macro-character-port? _port90167_)
            (let ((_old-width90169_
                   (macro-character-port-output-width _port90167_)))
              (macro-character-port-output-width-set!
               _port90167_
               (lambda (_port90171_) '256))
              _old-width90169_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90164_ _old-width90165_)
        (if (macro-character-port? _port90164_)
            (macro-character-port-output-width-set!
             _port90164_
             _old-width90165_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90162_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90162_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90156_))
            (let ((_e90159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90156_ 'exception))))
              (macro-abandoned-mutex-exception? _e90159_))
            (macro-abandoned-mutex-exception? _exn90156_))))
    (define cfun-conversion-exception?
      (lambda (_exn90152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90152_))
            (let ((_e90154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90152_ 'exception))))
              (macro-cfun-conversion-exception? _e90154_))
            (macro-cfun-conversion-exception? _exn90152_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90148_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90148_))
            (let ((_e90150_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90148_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90150_)
                  (macro-cfun-conversion-exception-arguments _e90150_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95177
                                (let ()
                                  (declare (not safe))
                                  (cons _e90150_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95177)))))
            (if (macro-cfun-conversion-exception? _exn90148_)
                (macro-cfun-conversion-exception-arguments _exn90148_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95176
                              (let ()
                                (declare (not safe))
                                (cons _exn90148_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95176)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90144_))
            (let ((_e90146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90144_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90146_)
                  (macro-cfun-conversion-exception-code _e90146_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95179
                                (let ()
                                  (declare (not safe))
                                  (cons _e90146_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95179)))))
            (if (macro-cfun-conversion-exception? _exn90144_)
                (macro-cfun-conversion-exception-code _exn90144_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95178
                              (let ()
                                (declare (not safe))
                                (cons _exn90144_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95178)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90140_))
            (let ((_e90142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90140_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90142_)
                  (macro-cfun-conversion-exception-message _e90142_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95181
                                (let ()
                                  (declare (not safe))
                                  (cons _e90142_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95181)))))
            (if (macro-cfun-conversion-exception? _exn90140_)
                (macro-cfun-conversion-exception-message _exn90140_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95180
                              (let ()
                                (declare (not safe))
                                (cons _exn90140_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95180)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90134_))
            (let ((_e90137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90134_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90137_)
                  (macro-cfun-conversion-exception-procedure _e90137_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95183
                                (let ()
                                  (declare (not safe))
                                  (cons _e90137_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95183)))))
            (if (macro-cfun-conversion-exception? _exn90134_)
                (macro-cfun-conversion-exception-procedure _exn90134_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95182
                              (let ()
                                (declare (not safe))
                                (cons _exn90134_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95182)))))))
    (define datum-parsing-exception?
      (lambda (_exn90130_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90130_))
            (let ((_e90132_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90130_ 'exception))))
              (macro-datum-parsing-exception? _e90132_))
            (macro-datum-parsing-exception? _exn90130_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90126_))
            (let ((_e90128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90126_ 'exception))))
              (if (macro-datum-parsing-exception? _e90128_)
                  (macro-datum-parsing-exception-kind _e90128_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95185
                                (let ()
                                  (declare (not safe))
                                  (cons _e90128_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95185)))))
            (if (macro-datum-parsing-exception? _exn90126_)
                (macro-datum-parsing-exception-kind _exn90126_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95184
                              (let ()
                                (declare (not safe))
                                (cons _exn90126_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95184)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90122_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90122_ 'exception))))
              (if (macro-datum-parsing-exception? _e90124_)
                  (macro-datum-parsing-exception-parameters _e90124_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95187
                                (let ()
                                  (declare (not safe))
                                  (cons _e90124_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95187)))))
            (if (macro-datum-parsing-exception? _exn90122_)
                (macro-datum-parsing-exception-parameters _exn90122_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95186
                              (let ()
                                (declare (not safe))
                                (cons _exn90122_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95186)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90116_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90116_))
            (let ((_e90119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90116_ 'exception))))
              (if (macro-datum-parsing-exception? _e90119_)
                  (macro-datum-parsing-exception-readenv _e90119_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95189
                                (let ()
                                  (declare (not safe))
                                  (cons _e90119_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95189)))))
            (if (macro-datum-parsing-exception? _exn90116_)
                (macro-datum-parsing-exception-readenv _exn90116_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95188
                              (let ()
                                (declare (not safe))
                                (cons _exn90116_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95188)))))))
    (define deadlock-exception?
      (lambda (_exn90110_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90110_))
            (let ((_e90113_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90110_ 'exception))))
              (macro-deadlock-exception? _e90113_))
            (macro-deadlock-exception? _exn90110_))))
    (define divide-by-zero-exception?
      (lambda (_exn90106_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90106_))
            (let ((_e90108_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90106_ 'exception))))
              (macro-divide-by-zero-exception? _e90108_))
            (macro-divide-by-zero-exception? _exn90106_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90102_))
            (let ((_e90104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90102_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90104_)
                  (macro-divide-by-zero-exception-arguments _e90104_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95191
                                (let ()
                                  (declare (not safe))
                                  (cons _e90104_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95191)))))
            (if (macro-divide-by-zero-exception? _exn90102_)
                (macro-divide-by-zero-exception-arguments _exn90102_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95190
                              (let ()
                                (declare (not safe))
                                (cons _exn90102_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95190)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90096_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90096_))
            (let ((_e90099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90096_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90099_)
                  (macro-divide-by-zero-exception-procedure _e90099_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95193
                                (let ()
                                  (declare (not safe))
                                  (cons _e90099_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95193)))))
            (if (macro-divide-by-zero-exception? _exn90096_)
                (macro-divide-by-zero-exception-procedure _exn90096_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95192
                              (let ()
                                (declare (not safe))
                                (cons _exn90096_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95192)))))))
    (define error-exception?
      (lambda (_exn90092_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90092_))
            (let ((_e90094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90092_ 'exception))))
              (macro-error-exception? _e90094_))
            (macro-error-exception? _exn90092_))))
    (define error-exception-message
      (lambda (_exn90088_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90088_))
            (let ((_e90090_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90088_ 'exception))))
              (if (macro-error-exception? _e90090_)
                  (macro-error-exception-message _e90090_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95195
                                (let ()
                                  (declare (not safe))
                                  (cons _e90090_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95195)))))
            (if (macro-error-exception? _exn90088_)
                (macro-error-exception-message _exn90088_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95194
                              (let ()
                                (declare (not safe))
                                (cons _exn90088_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95194)))))))
    (define error-exception-parameters
      (lambda (_exn90082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90082_))
            (let ((_e90085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90082_ 'exception))))
              (if (macro-error-exception? _e90085_)
                  (macro-error-exception-parameters _e90085_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95197
                                (let ()
                                  (declare (not safe))
                                  (cons _e90085_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95197)))))
            (if (macro-error-exception? _exn90082_)
                (macro-error-exception-parameters _exn90082_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95196
                              (let ()
                                (declare (not safe))
                                (cons _exn90082_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95196)))))))
    (define expression-parsing-exception?
      (lambda (_exn90078_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90078_))
            (let ((_e90080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90078_ 'exception))))
              (macro-expression-parsing-exception? _e90080_))
            (macro-expression-parsing-exception? _exn90078_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90074_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90074_))
            (let ((_e90076_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90074_ 'exception))))
              (if (macro-expression-parsing-exception? _e90076_)
                  (macro-expression-parsing-exception-kind _e90076_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95199
                                (let ()
                                  (declare (not safe))
                                  (cons _e90076_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95199)))))
            (if (macro-expression-parsing-exception? _exn90074_)
                (macro-expression-parsing-exception-kind _exn90074_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95198
                              (let ()
                                (declare (not safe))
                                (cons _exn90074_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95198)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90070_))
            (let ((_e90072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90070_ 'exception))))
              (if (macro-expression-parsing-exception? _e90072_)
                  (macro-expression-parsing-exception-parameters _e90072_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95201
                                (let ()
                                  (declare (not safe))
                                  (cons _e90072_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95201)))))
            (if (macro-expression-parsing-exception? _exn90070_)
                (macro-expression-parsing-exception-parameters _exn90070_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95200
                              (let ()
                                (declare (not safe))
                                (cons _exn90070_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95200)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90064_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90064_))
            (let ((_e90067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90064_ 'exception))))
              (if (macro-expression-parsing-exception? _e90067_)
                  (macro-expression-parsing-exception-source _e90067_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95203
                                (let ()
                                  (declare (not safe))
                                  (cons _e90067_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95203)))))
            (if (macro-expression-parsing-exception? _exn90064_)
                (macro-expression-parsing-exception-source _exn90064_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95202
                              (let ()
                                (declare (not safe))
                                (cons _exn90064_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95202)))))))
    (define file-exists-exception?
      (lambda (_exn90060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90060_))
            (let ((_e90062_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90060_ 'exception))))
              (macro-file-exists-exception? _e90062_))
            (macro-file-exists-exception? _exn90060_))))
    (define file-exists-exception-arguments
      (lambda (_exn90056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90056_))
            (let ((_e90058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90056_ 'exception))))
              (if (macro-file-exists-exception? _e90058_)
                  (macro-file-exists-exception-arguments _e90058_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95205
                                (let ()
                                  (declare (not safe))
                                  (cons _e90058_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95205)))))
            (if (macro-file-exists-exception? _exn90056_)
                (macro-file-exists-exception-arguments _exn90056_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95204
                              (let ()
                                (declare (not safe))
                                (cons _exn90056_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95204)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90050_))
            (let ((_e90053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90050_ 'exception))))
              (if (macro-file-exists-exception? _e90053_)
                  (macro-file-exists-exception-procedure _e90053_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95207
                                (let ()
                                  (declare (not safe))
                                  (cons _e90053_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95207)))))
            (if (macro-file-exists-exception? _exn90050_)
                (macro-file-exists-exception-procedure _exn90050_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95206
                              (let ()
                                (declare (not safe))
                                (cons _exn90050_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95206)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90046_))
            (let ((_e90048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90046_ 'exception))))
              (macro-fixnum-overflow-exception? _e90048_))
            (macro-fixnum-overflow-exception? _exn90046_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90042_))
            (let ((_e90044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90042_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90044_)
                  (macro-fixnum-overflow-exception-arguments _e90044_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95209
                                (let ()
                                  (declare (not safe))
                                  (cons _e90044_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95209)))))
            (if (macro-fixnum-overflow-exception? _exn90042_)
                (macro-fixnum-overflow-exception-arguments _exn90042_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95208
                              (let ()
                                (declare (not safe))
                                (cons _exn90042_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95208)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90036_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90036_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90036_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90039_)
                  (macro-fixnum-overflow-exception-procedure _e90039_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95211
                                (let ()
                                  (declare (not safe))
                                  (cons _e90039_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95211)))))
            (if (macro-fixnum-overflow-exception? _exn90036_)
                (macro-fixnum-overflow-exception-procedure _exn90036_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95210
                              (let ()
                                (declare (not safe))
                                (cons _exn90036_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95210)))))))
    (define heap-overflow-exception?
      (lambda (_exn90030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90030_))
            (let ((_e90033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90030_ 'exception))))
              (macro-heap-overflow-exception? _e90033_))
            (macro-heap-overflow-exception? _exn90030_))))
    (define inactive-thread-exception?
      (lambda (_exn90026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90026_))
            (let ((_e90028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90026_ 'exception))))
              (macro-inactive-thread-exception? _e90028_))
            (macro-inactive-thread-exception? _exn90026_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90022_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90022_))
            (let ((_e90024_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90022_ 'exception))))
              (if (macro-inactive-thread-exception? _e90024_)
                  (macro-inactive-thread-exception-arguments _e90024_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95213
                                (let ()
                                  (declare (not safe))
                                  (cons _e90024_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95213)))))
            (if (macro-inactive-thread-exception? _exn90022_)
                (macro-inactive-thread-exception-arguments _exn90022_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95212
                              (let ()
                                (declare (not safe))
                                (cons _exn90022_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95212)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90016_))
            (let ((_e90019_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90016_ 'exception))))
              (if (macro-inactive-thread-exception? _e90019_)
                  (macro-inactive-thread-exception-procedure _e90019_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95215
                                (let ()
                                  (declare (not safe))
                                  (cons _e90019_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95215)))))
            (if (macro-inactive-thread-exception? _exn90016_)
                (macro-inactive-thread-exception-procedure _exn90016_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95214
                              (let ()
                                (declare (not safe))
                                (cons _exn90016_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95214)))))))
    (define initialized-thread-exception?
      (lambda (_exn90012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90012_))
            (let ((_e90014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90012_ 'exception))))
              (macro-initialized-thread-exception? _e90014_))
            (macro-initialized-thread-exception? _exn90012_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90008_))
            (let ((_e90010_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90008_ 'exception))))
              (if (macro-initialized-thread-exception? _e90010_)
                  (macro-initialized-thread-exception-arguments _e90010_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95217
                                (let ()
                                  (declare (not safe))
                                  (cons _e90010_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95217)))))
            (if (macro-initialized-thread-exception? _exn90008_)
                (macro-initialized-thread-exception-arguments _exn90008_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95216
                              (let ()
                                (declare (not safe))
                                (cons _exn90008_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95216)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90002_))
            (let ((_e90005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90002_ 'exception))))
              (if (macro-initialized-thread-exception? _e90005_)
                  (macro-initialized-thread-exception-procedure _e90005_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95219
                                (let ()
                                  (declare (not safe))
                                  (cons _e90005_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95219)))))
            (if (macro-initialized-thread-exception? _exn90002_)
                (macro-initialized-thread-exception-procedure _exn90002_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95218
                              (let ()
                                (declare (not safe))
                                (cons _exn90002_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95218)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn89998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89998_))
            (let ((_e90000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89998_ 'exception))))
              (macro-invalid-hash-number-exception? _e90000_))
            (macro-invalid-hash-number-exception? _exn89998_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn89994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89994_))
            (let ((_e89996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89994_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89996_)
                  (macro-invalid-hash-number-exception-arguments _e89996_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95221
                                (let ()
                                  (declare (not safe))
                                  (cons _e89996_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95221)))))
            (if (macro-invalid-hash-number-exception? _exn89994_)
                (macro-invalid-hash-number-exception-arguments _exn89994_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95220
                              (let ()
                                (declare (not safe))
                                (cons _exn89994_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95220)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn89988_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89988_))
            (let ((_e89991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89988_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89991_)
                  (macro-invalid-hash-number-exception-procedure _e89991_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95223
                                (let ()
                                  (declare (not safe))
                                  (cons _e89991_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95223)))))
            (if (macro-invalid-hash-number-exception? _exn89988_)
                (macro-invalid-hash-number-exception-procedure _exn89988_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95222
                              (let ()
                                (declare (not safe))
                                (cons _exn89988_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95222)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn89984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89984_))
            (let ((_e89986_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89984_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e89986_))
            (macro-invalid-utf8-encoding-exception? _exn89984_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn89980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89980_))
            (let ((_e89982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89980_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89982_)
                  (macro-invalid-utf8-encoding-exception-arguments _e89982_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95225
                                (let ()
                                  (declare (not safe))
                                  (cons _e89982_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95225)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89980_)
                (macro-invalid-utf8-encoding-exception-arguments _exn89980_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95224
                              (let ()
                                (declare (not safe))
                                (cons _exn89980_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95224)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89974_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89974_))
            (let ((_e89977_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89974_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89977_)
                  (macro-invalid-utf8-encoding-exception-procedure _e89977_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95227
                                (let ()
                                  (declare (not safe))
                                  (cons _e89977_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95227)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89974_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89974_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95226
                              (let ()
                                (declare (not safe))
                                (cons _exn89974_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95226)))))))
    (define join-timeout-exception?
      (lambda (_exn89970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89970_))
            (let ((_e89972_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89970_ 'exception))))
              (macro-join-timeout-exception? _e89972_))
            (macro-join-timeout-exception? _exn89970_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89966_))
            (let ((_e89968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89966_ 'exception))))
              (if (macro-join-timeout-exception? _e89968_)
                  (macro-join-timeout-exception-arguments _e89968_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95229
                                (let ()
                                  (declare (not safe))
                                  (cons _e89968_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95229)))))
            (if (macro-join-timeout-exception? _exn89966_)
                (macro-join-timeout-exception-arguments _exn89966_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95228
                              (let ()
                                (declare (not safe))
                                (cons _exn89966_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95228)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89960_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89960_))
            (let ((_e89963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89960_ 'exception))))
              (if (macro-join-timeout-exception? _e89963_)
                  (macro-join-timeout-exception-procedure _e89963_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95231
                                (let ()
                                  (declare (not safe))
                                  (cons _e89963_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95231)))))
            (if (macro-join-timeout-exception? _exn89960_)
                (macro-join-timeout-exception-procedure _exn89960_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95230
                              (let ()
                                (declare (not safe))
                                (cons _exn89960_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95230)))))))
    (define keyword-expected-exception?
      (lambda (_exn89956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89956_))
            (let ((_e89958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89956_ 'exception))))
              (macro-keyword-expected-exception? _e89958_))
            (macro-keyword-expected-exception? _exn89956_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89952_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89952_))
            (let ((_e89954_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89952_ 'exception))))
              (if (macro-keyword-expected-exception? _e89954_)
                  (macro-keyword-expected-exception-arguments _e89954_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95233
                                (let ()
                                  (declare (not safe))
                                  (cons _e89954_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95233)))))
            (if (macro-keyword-expected-exception? _exn89952_)
                (macro-keyword-expected-exception-arguments _exn89952_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95232
                              (let ()
                                (declare (not safe))
                                (cons _exn89952_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95232)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89946_))
            (let ((_e89949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89946_ 'exception))))
              (if (macro-keyword-expected-exception? _e89949_)
                  (macro-keyword-expected-exception-procedure _e89949_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95235
                                (let ()
                                  (declare (not safe))
                                  (cons _e89949_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95235)))))
            (if (macro-keyword-expected-exception? _exn89946_)
                (macro-keyword-expected-exception-procedure _exn89946_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95234
                              (let ()
                                (declare (not safe))
                                (cons _exn89946_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95234)))))))
    (define length-mismatch-exception?
      (lambda (_exn89942_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89942_))
            (let ((_e89944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89942_ 'exception))))
              (macro-length-mismatch-exception? _e89944_))
            (macro-length-mismatch-exception? _exn89942_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89938_))
            (let ((_e89940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89938_ 'exception))))
              (if (macro-length-mismatch-exception? _e89940_)
                  (macro-length-mismatch-exception-arg-id _e89940_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95237
                                (let ()
                                  (declare (not safe))
                                  (cons _e89940_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95237)))))
            (if (macro-length-mismatch-exception? _exn89938_)
                (macro-length-mismatch-exception-arg-id _exn89938_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95236
                              (let ()
                                (declare (not safe))
                                (cons _exn89938_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95236)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89934_))
            (let ((_e89936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89934_ 'exception))))
              (if (macro-length-mismatch-exception? _e89936_)
                  (macro-length-mismatch-exception-arguments _e89936_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95239
                                (let ()
                                  (declare (not safe))
                                  (cons _e89936_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95239)))))
            (if (macro-length-mismatch-exception? _exn89934_)
                (macro-length-mismatch-exception-arguments _exn89934_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95238
                              (let ()
                                (declare (not safe))
                                (cons _exn89934_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95238)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89928_))
            (let ((_e89931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89928_ 'exception))))
              (if (macro-length-mismatch-exception? _e89931_)
                  (macro-length-mismatch-exception-procedure _e89931_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95241
                                (let ()
                                  (declare (not safe))
                                  (cons _e89931_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95241)))))
            (if (macro-length-mismatch-exception? _exn89928_)
                (macro-length-mismatch-exception-procedure _exn89928_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95240
                              (let ()
                                (declare (not safe))
                                (cons _exn89928_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95240)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89924_))
            (let ((_e89926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89924_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89926_))
            (macro-mailbox-receive-timeout-exception? _exn89924_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89920_))
            (let ((_e89922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89920_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89922_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89922_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95243
                                (let ()
                                  (declare (not safe))
                                  (cons _e89922_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95243)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89920_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89920_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95242
                              (let ()
                                (declare (not safe))
                                (cons _exn89920_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95242)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89914_))
            (let ((_e89917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89914_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89917_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89917_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95245
                                (let ()
                                  (declare (not safe))
                                  (cons _e89917_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95245)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89914_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89914_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95244
                              (let ()
                                (declare (not safe))
                                (cons _exn89914_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95244)))))))
    (define module-not-found-exception?
      (lambda (_exn89910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89910_))
            (let ((_e89912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89910_ 'exception))))
              (macro-module-not-found-exception? _e89912_))
            (macro-module-not-found-exception? _exn89910_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89906_))
            (let ((_e89908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89906_ 'exception))))
              (if (macro-module-not-found-exception? _e89908_)
                  (macro-module-not-found-exception-arguments _e89908_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95247
                                (let ()
                                  (declare (not safe))
                                  (cons _e89908_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95247)))))
            (if (macro-module-not-found-exception? _exn89906_)
                (macro-module-not-found-exception-arguments _exn89906_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95246
                              (let ()
                                (declare (not safe))
                                (cons _exn89906_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95246)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89900_))
            (let ((_e89903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89900_ 'exception))))
              (if (macro-module-not-found-exception? _e89903_)
                  (macro-module-not-found-exception-procedure _e89903_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95249
                                (let ()
                                  (declare (not safe))
                                  (cons _e89903_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95249)))))
            (if (macro-module-not-found-exception? _exn89900_)
                (macro-module-not-found-exception-procedure _exn89900_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95248
                              (let ()
                                (declare (not safe))
                                (cons _exn89900_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95248)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89894_))
            (let ((_e89897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89894_ 'exception))))
              (macro-multiple-c-return-exception? _e89897_))
            (macro-multiple-c-return-exception? _exn89894_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89890_))
            (let ((_e89892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89890_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89892_))
            (macro-no-such-file-or-directory-exception? _exn89890_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89886_))
            (let ((_e89888_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89886_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89888_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89888_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95251
                                (let ()
                                  (declare (not safe))
                                  (cons _e89888_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95251)))))
            (if (macro-no-such-file-or-directory-exception? _exn89886_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89886_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95250
                              (let ()
                                (declare (not safe))
                                (cons _exn89886_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95250)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89880_))
            (let ((_e89883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89880_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89883_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89883_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95253
                                (let ()
                                  (declare (not safe))
                                  (cons _e89883_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95253)))))
            (if (macro-no-such-file-or-directory-exception? _exn89880_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89880_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95252
                              (let ()
                                (declare (not safe))
                                (cons _exn89880_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95252)))))))
    (define noncontinuable-exception?
      (lambda (_exn89876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89876_))
            (let ((_e89878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89876_ 'exception))))
              (macro-noncontinuable-exception? _e89878_))
            (macro-noncontinuable-exception? _exn89876_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89870_))
            (let ((_e89873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89870_ 'exception))))
              (if (macro-noncontinuable-exception? _e89873_)
                  (macro-noncontinuable-exception-reason _e89873_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95255
                                (let ()
                                  (declare (not safe))
                                  (cons _e89873_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95255)))))
            (if (macro-noncontinuable-exception? _exn89870_)
                (macro-noncontinuable-exception-reason _exn89870_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95254
                              (let ()
                                (declare (not safe))
                                (cons _exn89870_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95254)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89866_))
            (let ((_e89868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89866_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89868_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89866_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89862_))
            (let ((_e89864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89862_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89864_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89864_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95257
                                (let ()
                                  (declare (not safe))
                                  (cons _e89864_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95257)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89862_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89862_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95256
                              (let ()
                                (declare (not safe))
                                (cons _exn89862_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95256)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89856_))
            (let ((_e89859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89856_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89859_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89859_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95259
                                (let ()
                                  (declare (not safe))
                                  (cons _e89859_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95259)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89856_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89856_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95258
                              (let ()
                                (declare (not safe))
                                (cons _exn89856_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95258)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89852_))
            (let ((_e89854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89852_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89854_))
            (macro-nonprocedure-operator-exception? _exn89852_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89848_))
            (let ((_e89850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89848_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89850_)
                  (macro-nonprocedure-operator-exception-arguments _e89850_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95261
                                (let ()
                                  (declare (not safe))
                                  (cons _e89850_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95261)))))
            (if (macro-nonprocedure-operator-exception? _exn89848_)
                (macro-nonprocedure-operator-exception-arguments _exn89848_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95260
                              (let ()
                                (declare (not safe))
                                (cons _exn89848_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95260)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89844_))
            (let ((_e89846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89844_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89846_)
                  (macro-nonprocedure-operator-exception-code _e89846_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95263
                                (let ()
                                  (declare (not safe))
                                  (cons _e89846_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95263)))))
            (if (macro-nonprocedure-operator-exception? _exn89844_)
                (macro-nonprocedure-operator-exception-code _exn89844_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95262
                              (let ()
                                (declare (not safe))
                                (cons _exn89844_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95262)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89840_))
            (let ((_e89842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89840_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89842_)
                  (macro-nonprocedure-operator-exception-operator _e89842_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95265
                                (let ()
                                  (declare (not safe))
                                  (cons _e89842_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95265)))))
            (if (macro-nonprocedure-operator-exception? _exn89840_)
                (macro-nonprocedure-operator-exception-operator _exn89840_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95264
                              (let ()
                                (declare (not safe))
                                (cons _exn89840_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95264)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89834_))
            (let ((_e89837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89834_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89837_)
                  (macro-nonprocedure-operator-exception-rte _e89837_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95267
                                (let ()
                                  (declare (not safe))
                                  (cons _e89837_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95267)))))
            (if (macro-nonprocedure-operator-exception? _exn89834_)
                (macro-nonprocedure-operator-exception-rte _exn89834_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95266
                              (let ()
                                (declare (not safe))
                                (cons _exn89834_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95266)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89830_))
            (let ((_e89832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89830_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89832_))
            (macro-not-in-compilation-context-exception? _exn89830_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89826_))
            (let ((_e89828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89826_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89828_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89828_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95269
                                (let ()
                                  (declare (not safe))
                                  (cons _e89828_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95269)))))
            (if (macro-not-in-compilation-context-exception? _exn89826_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89826_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95268
                              (let ()
                                (declare (not safe))
                                (cons _exn89826_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95268)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89820_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89820_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89823_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89823_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95271
                                (let ()
                                  (declare (not safe))
                                  (cons _e89823_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95271)))))
            (if (macro-not-in-compilation-context-exception? _exn89820_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89820_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95270
                              (let ()
                                (declare (not safe))
                                (cons _exn89820_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95270)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89816_))
            (let ((_e89818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89816_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89818_))
            (macro-number-of-arguments-limit-exception? _exn89816_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89812_))
            (let ((_e89814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89812_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89814_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89814_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95273
                                (let ()
                                  (declare (not safe))
                                  (cons _e89814_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95273)))))
            (if (macro-number-of-arguments-limit-exception? _exn89812_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89812_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95272
                              (let ()
                                (declare (not safe))
                                (cons _exn89812_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95272)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89806_))
            (let ((_e89809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89806_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89809_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89809_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95275
                                (let ()
                                  (declare (not safe))
                                  (cons _e89809_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95275)))))
            (if (macro-number-of-arguments-limit-exception? _exn89806_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89806_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95274
                              (let ()
                                (declare (not safe))
                                (cons _exn89806_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95274)))))))
    (define os-exception?
      (lambda (_exn89802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89802_))
            (let ((_e89804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89802_ 'exception))))
              (macro-os-exception? _e89804_))
            (macro-os-exception? _exn89802_))))
    (define os-exception-arguments
      (lambda (_exn89798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89798_))
            (let ((_e89800_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89798_ 'exception))))
              (if (macro-os-exception? _e89800_)
                  (macro-os-exception-arguments _e89800_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95277
                                (let ()
                                  (declare (not safe))
                                  (cons _e89800_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95277)))))
            (if (macro-os-exception? _exn89798_)
                (macro-os-exception-arguments _exn89798_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95276
                              (let ()
                                (declare (not safe))
                                (cons _exn89798_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95276)))))))
    (define os-exception-code
      (lambda (_exn89794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89794_))
            (let ((_e89796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89794_ 'exception))))
              (if (macro-os-exception? _e89796_)
                  (macro-os-exception-code _e89796_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95279
                                (let ()
                                  (declare (not safe))
                                  (cons _e89796_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95279)))))
            (if (macro-os-exception? _exn89794_)
                (macro-os-exception-code _exn89794_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95278
                              (let ()
                                (declare (not safe))
                                (cons _exn89794_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95278)))))))
    (define os-exception-message
      (lambda (_exn89790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89790_))
            (let ((_e89792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89790_ 'exception))))
              (if (macro-os-exception? _e89792_)
                  (macro-os-exception-message _e89792_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95281
                                (let ()
                                  (declare (not safe))
                                  (cons _e89792_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95281)))))
            (if (macro-os-exception? _exn89790_)
                (macro-os-exception-message _exn89790_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95280
                              (let ()
                                (declare (not safe))
                                (cons _exn89790_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95280)))))))
    (define os-exception-procedure
      (lambda (_exn89784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89784_))
            (let ((_e89787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89784_ 'exception))))
              (if (macro-os-exception? _e89787_)
                  (macro-os-exception-procedure _e89787_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95283
                                (let ()
                                  (declare (not safe))
                                  (cons _e89787_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95283)))))
            (if (macro-os-exception? _exn89784_)
                (macro-os-exception-procedure _exn89784_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95282
                              (let ()
                                (declare (not safe))
                                (cons _exn89784_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95282)))))))
    (define permission-denied-exception?
      (lambda (_exn89780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89780_))
            (let ((_e89782_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89780_ 'exception))))
              (macro-permission-denied-exception? _e89782_))
            (macro-permission-denied-exception? _exn89780_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89776_))
            (let ((_e89778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89776_ 'exception))))
              (if (macro-permission-denied-exception? _e89778_)
                  (macro-permission-denied-exception-arguments _e89778_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95285
                                (let ()
                                  (declare (not safe))
                                  (cons _e89778_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95285)))))
            (if (macro-permission-denied-exception? _exn89776_)
                (macro-permission-denied-exception-arguments _exn89776_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95284
                              (let ()
                                (declare (not safe))
                                (cons _exn89776_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95284)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89770_))
            (let ((_e89773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89770_ 'exception))))
              (if (macro-permission-denied-exception? _e89773_)
                  (macro-permission-denied-exception-procedure _e89773_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95287
                                (let ()
                                  (declare (not safe))
                                  (cons _e89773_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95287)))))
            (if (macro-permission-denied-exception? _exn89770_)
                (macro-permission-denied-exception-procedure _exn89770_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95286
                              (let ()
                                (declare (not safe))
                                (cons _exn89770_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95286)))))))
    (define range-exception?
      (lambda (_exn89766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89766_))
            (let ((_e89768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89766_ 'exception))))
              (macro-range-exception? _e89768_))
            (macro-range-exception? _exn89766_))))
    (define range-exception-arg-id
      (lambda (_exn89762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89762_))
            (let ((_e89764_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89762_ 'exception))))
              (if (macro-range-exception? _e89764_)
                  (macro-range-exception-arg-id _e89764_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95289
                                (let ()
                                  (declare (not safe))
                                  (cons _e89764_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95289)))))
            (if (macro-range-exception? _exn89762_)
                (macro-range-exception-arg-id _exn89762_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95288
                              (let ()
                                (declare (not safe))
                                (cons _exn89762_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95288)))))))
    (define range-exception-arguments
      (lambda (_exn89758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89758_))
            (let ((_e89760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89758_ 'exception))))
              (if (macro-range-exception? _e89760_)
                  (macro-range-exception-arguments _e89760_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95291
                                (let ()
                                  (declare (not safe))
                                  (cons _e89760_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95291)))))
            (if (macro-range-exception? _exn89758_)
                (macro-range-exception-arguments _exn89758_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95290
                              (let ()
                                (declare (not safe))
                                (cons _exn89758_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95290)))))))
    (define range-exception-procedure
      (lambda (_exn89752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89752_))
            (let ((_e89755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89752_ 'exception))))
              (if (macro-range-exception? _e89755_)
                  (macro-range-exception-procedure _e89755_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95293
                                (let ()
                                  (declare (not safe))
                                  (cons _e89755_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95293)))))
            (if (macro-range-exception? _exn89752_)
                (macro-range-exception-procedure _exn89752_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95292
                              (let ()
                                (declare (not safe))
                                (cons _exn89752_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95292)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89748_))
            (let ((_e89750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89748_ 'exception))))
              (macro-rpc-remote-error-exception? _e89750_))
            (macro-rpc-remote-error-exception? _exn89748_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89744_))
            (let ((_e89746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89744_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89746_)
                  (macro-rpc-remote-error-exception-arguments _e89746_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95295
                                (let ()
                                  (declare (not safe))
                                  (cons _e89746_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95295)))))
            (if (macro-rpc-remote-error-exception? _exn89744_)
                (macro-rpc-remote-error-exception-arguments _exn89744_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95294
                              (let ()
                                (declare (not safe))
                                (cons _exn89744_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95294)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89740_))
            (let ((_e89742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89740_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89742_)
                  (macro-rpc-remote-error-exception-message _e89742_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95297
                                (let ()
                                  (declare (not safe))
                                  (cons _e89742_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95297)))))
            (if (macro-rpc-remote-error-exception? _exn89740_)
                (macro-rpc-remote-error-exception-message _exn89740_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95296
                              (let ()
                                (declare (not safe))
                                (cons _exn89740_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95296)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89734_))
            (let ((_e89737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89734_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89737_)
                  (macro-rpc-remote-error-exception-procedure _e89737_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95299
                                (let ()
                                  (declare (not safe))
                                  (cons _e89737_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95299)))))
            (if (macro-rpc-remote-error-exception? _exn89734_)
                (macro-rpc-remote-error-exception-procedure _exn89734_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95298
                              (let ()
                                (declare (not safe))
                                (cons _exn89734_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95298)))))))
    (define scheduler-exception?
      (lambda (_exn89730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89730_))
            (let ((_e89732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89730_ 'exception))))
              (macro-scheduler-exception? _e89732_))
            (macro-scheduler-exception? _exn89730_))))
    (define scheduler-exception-reason
      (lambda (_exn89724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89724_))
            (let ((_e89727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89724_ 'exception))))
              (if (macro-scheduler-exception? _e89727_)
                  (macro-scheduler-exception-reason _e89727_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95301
                                (let ()
                                  (declare (not safe))
                                  (cons _e89727_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95301)))))
            (if (macro-scheduler-exception? _exn89724_)
                (macro-scheduler-exception-reason _exn89724_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95300
                              (let ()
                                (declare (not safe))
                                (cons _exn89724_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95300)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89720_))
            (let ((_e89722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89720_ 'exception))))
              (macro-sfun-conversion-exception? _e89722_))
            (macro-sfun-conversion-exception? _exn89720_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89716_))
            (let ((_e89718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89716_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89718_)
                  (macro-sfun-conversion-exception-arguments _e89718_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95303
                                (let ()
                                  (declare (not safe))
                                  (cons _e89718_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95303)))))
            (if (macro-sfun-conversion-exception? _exn89716_)
                (macro-sfun-conversion-exception-arguments _exn89716_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95302
                              (let ()
                                (declare (not safe))
                                (cons _exn89716_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95302)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89712_))
            (let ((_e89714_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89712_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89714_)
                  (macro-sfun-conversion-exception-code _e89714_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95305
                                (let ()
                                  (declare (not safe))
                                  (cons _e89714_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95305)))))
            (if (macro-sfun-conversion-exception? _exn89712_)
                (macro-sfun-conversion-exception-code _exn89712_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95304
                              (let ()
                                (declare (not safe))
                                (cons _exn89712_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95304)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89708_))
            (let ((_e89710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89708_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89710_)
                  (macro-sfun-conversion-exception-message _e89710_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95307
                                (let ()
                                  (declare (not safe))
                                  (cons _e89710_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95307)))))
            (if (macro-sfun-conversion-exception? _exn89708_)
                (macro-sfun-conversion-exception-message _exn89708_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95306
                              (let ()
                                (declare (not safe))
                                (cons _exn89708_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95306)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89702_))
            (let ((_e89705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89702_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89705_)
                  (macro-sfun-conversion-exception-procedure _e89705_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95309
                                (let ()
                                  (declare (not safe))
                                  (cons _e89705_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95309)))))
            (if (macro-sfun-conversion-exception? _exn89702_)
                (macro-sfun-conversion-exception-procedure _exn89702_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95308
                              (let ()
                                (declare (not safe))
                                (cons _exn89702_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95308)))))))
    (define stack-overflow-exception?
      (lambda (_exn89696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89696_))
            (let ((_e89699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89696_ 'exception))))
              (macro-stack-overflow-exception? _e89699_))
            (macro-stack-overflow-exception? _exn89696_))))
    (define started-thread-exception?
      (lambda (_exn89692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89692_))
            (let ((_e89694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89692_ 'exception))))
              (macro-started-thread-exception? _e89694_))
            (macro-started-thread-exception? _exn89692_))))
    (define started-thread-exception-arguments
      (lambda (_exn89688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89688_))
            (let ((_e89690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89688_ 'exception))))
              (if (macro-started-thread-exception? _e89690_)
                  (macro-started-thread-exception-arguments _e89690_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95311
                                (let ()
                                  (declare (not safe))
                                  (cons _e89690_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95311)))))
            (if (macro-started-thread-exception? _exn89688_)
                (macro-started-thread-exception-arguments _exn89688_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95310
                              (let ()
                                (declare (not safe))
                                (cons _exn89688_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95310)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89682_))
            (let ((_e89685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89682_ 'exception))))
              (if (macro-started-thread-exception? _e89685_)
                  (macro-started-thread-exception-procedure _e89685_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95313
                                (let ()
                                  (declare (not safe))
                                  (cons _e89685_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95313)))))
            (if (macro-started-thread-exception? _exn89682_)
                (macro-started-thread-exception-procedure _exn89682_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95312
                              (let ()
                                (declare (not safe))
                                (cons _exn89682_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95312)))))))
    (define terminated-thread-exception?
      (lambda (_exn89678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89678_))
            (let ((_e89680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89678_ 'exception))))
              (macro-terminated-thread-exception? _e89680_))
            (macro-terminated-thread-exception? _exn89678_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89674_))
            (let ((_e89676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89674_ 'exception))))
              (if (macro-terminated-thread-exception? _e89676_)
                  (macro-terminated-thread-exception-arguments _e89676_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95315
                                (let ()
                                  (declare (not safe))
                                  (cons _e89676_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95315)))))
            (if (macro-terminated-thread-exception? _exn89674_)
                (macro-terminated-thread-exception-arguments _exn89674_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95314
                              (let ()
                                (declare (not safe))
                                (cons _exn89674_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95314)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89668_))
            (let ((_e89671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89668_ 'exception))))
              (if (macro-terminated-thread-exception? _e89671_)
                  (macro-terminated-thread-exception-procedure _e89671_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95317
                                (let ()
                                  (declare (not safe))
                                  (cons _e89671_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95317)))))
            (if (macro-terminated-thread-exception? _exn89668_)
                (macro-terminated-thread-exception-procedure _exn89668_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95316
                              (let ()
                                (declare (not safe))
                                (cons _exn89668_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95316)))))))
    (define type-exception?
      (lambda (_exn89664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89664_))
            (let ((_e89666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89664_ 'exception))))
              (macro-type-exception? _e89666_))
            (macro-type-exception? _exn89664_))))
    (define type-exception-arg-id
      (lambda (_exn89660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89660_))
            (let ((_e89662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89660_ 'exception))))
              (if (macro-type-exception? _e89662_)
                  (macro-type-exception-arg-id _e89662_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95319
                                (let ()
                                  (declare (not safe))
                                  (cons _e89662_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95319)))))
            (if (macro-type-exception? _exn89660_)
                (macro-type-exception-arg-id _exn89660_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95318
                              (let ()
                                (declare (not safe))
                                (cons _exn89660_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95318)))))))
    (define type-exception-arguments
      (lambda (_exn89656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89656_))
            (let ((_e89658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89656_ 'exception))))
              (if (macro-type-exception? _e89658_)
                  (macro-type-exception-arguments _e89658_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95321
                                (let ()
                                  (declare (not safe))
                                  (cons _e89658_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95321)))))
            (if (macro-type-exception? _exn89656_)
                (macro-type-exception-arguments _exn89656_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95320
                              (let ()
                                (declare (not safe))
                                (cons _exn89656_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95320)))))))
    (define type-exception-procedure
      (lambda (_exn89652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89652_))
            (let ((_e89654_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89652_ 'exception))))
              (if (macro-type-exception? _e89654_)
                  (macro-type-exception-procedure _e89654_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95323
                                (let ()
                                  (declare (not safe))
                                  (cons _e89654_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95323)))))
            (if (macro-type-exception? _exn89652_)
                (macro-type-exception-procedure _exn89652_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95322
                              (let ()
                                (declare (not safe))
                                (cons _exn89652_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95322)))))))
    (define type-exception-type-id
      (lambda (_exn89646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89646_))
            (let ((_e89649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89646_ 'exception))))
              (if (macro-type-exception? _e89649_)
                  (macro-type-exception-type-id _e89649_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95325
                                (let ()
                                  (declare (not safe))
                                  (cons _e89649_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95325)))))
            (if (macro-type-exception? _exn89646_)
                (macro-type-exception-type-id _exn89646_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95324
                              (let ()
                                (declare (not safe))
                                (cons _exn89646_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95324)))))))
    (define unbound-global-exception?
      (lambda (_exn89642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89642_))
            (let ((_e89644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89642_ 'exception))))
              (macro-unbound-global-exception? _e89644_))
            (macro-unbound-global-exception? _exn89642_))))
    (define unbound-global-exception-code
      (lambda (_exn89638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89638_))
            (let ((_e89640_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89638_ 'exception))))
              (if (macro-unbound-global-exception? _e89640_)
                  (macro-unbound-global-exception-code _e89640_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95327
                                (let ()
                                  (declare (not safe))
                                  (cons _e89640_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95327)))))
            (if (macro-unbound-global-exception? _exn89638_)
                (macro-unbound-global-exception-code _exn89638_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95326
                              (let ()
                                (declare (not safe))
                                (cons _exn89638_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95326)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89634_))
            (let ((_e89636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89634_ 'exception))))
              (if (macro-unbound-global-exception? _e89636_)
                  (macro-unbound-global-exception-rte _e89636_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95329
                                (let ()
                                  (declare (not safe))
                                  (cons _e89636_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95329)))))
            (if (macro-unbound-global-exception? _exn89634_)
                (macro-unbound-global-exception-rte _exn89634_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95328
                              (let ()
                                (declare (not safe))
                                (cons _exn89634_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95328)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89628_))
            (let ((_e89631_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89628_ 'exception))))
              (if (macro-unbound-global-exception? _e89631_)
                  (macro-unbound-global-exception-variable _e89631_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95331
                                (let ()
                                  (declare (not safe))
                                  (cons _e89631_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95331)))))
            (if (macro-unbound-global-exception? _exn89628_)
                (macro-unbound-global-exception-variable _exn89628_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95330
                              (let ()
                                (declare (not safe))
                                (cons _exn89628_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95330)))))))
    (define unbound-key-exception?
      (lambda (_exn89624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89624_))
            (let ((_e89626_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89624_ 'exception))))
              (macro-unbound-key-exception? _e89626_))
            (macro-unbound-key-exception? _exn89624_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89620_))
            (let ((_e89622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89620_ 'exception))))
              (if (macro-unbound-key-exception? _e89622_)
                  (macro-unbound-key-exception-arguments _e89622_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95333
                                (let ()
                                  (declare (not safe))
                                  (cons _e89622_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95333)))))
            (if (macro-unbound-key-exception? _exn89620_)
                (macro-unbound-key-exception-arguments _exn89620_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95332
                              (let ()
                                (declare (not safe))
                                (cons _exn89620_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95332)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89614_))
            (let ((_e89617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89614_ 'exception))))
              (if (macro-unbound-key-exception? _e89617_)
                  (macro-unbound-key-exception-procedure _e89617_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95335
                                (let ()
                                  (declare (not safe))
                                  (cons _e89617_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95335)))))
            (if (macro-unbound-key-exception? _exn89614_)
                (macro-unbound-key-exception-procedure _exn89614_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95334
                              (let ()
                                (declare (not safe))
                                (cons _exn89614_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95334)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89610_))
            (let ((_e89612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89610_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89612_))
            (macro-unbound-os-environment-variable-exception? _exn89610_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89606_))
            (let ((_e89608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89606_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89608_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89608_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95337
                                (let ()
                                  (declare (not safe))
                                  (cons _e89608_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95337)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89606_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89606_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95336
                              (let ()
                                (declare (not safe))
                                (cons _exn89606_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95336)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89600_))
            (let ((_e89603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89600_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89603_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89603_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95339
                                (let ()
                                  (declare (not safe))
                                  (cons _e89603_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95339)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89600_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89600_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95338
                              (let ()
                                (declare (not safe))
                                (cons _exn89600_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95338)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89596_))
            (let ((_e89598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89596_ 'exception))))
              (macro-unbound-serial-number-exception? _e89598_))
            (macro-unbound-serial-number-exception? _exn89596_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89592_))
            (let ((_e89594_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89592_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89594_)
                  (macro-unbound-serial-number-exception-arguments _e89594_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95341
                                (let ()
                                  (declare (not safe))
                                  (cons _e89594_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95341)))))
            (if (macro-unbound-serial-number-exception? _exn89592_)
                (macro-unbound-serial-number-exception-arguments _exn89592_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95340
                              (let ()
                                (declare (not safe))
                                (cons _exn89592_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95340)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89586_))
            (let ((_e89589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89586_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89589_)
                  (macro-unbound-serial-number-exception-procedure _e89589_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95343
                                (let ()
                                  (declare (not safe))
                                  (cons _e89589_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95343)))))
            (if (macro-unbound-serial-number-exception? _exn89586_)
                (macro-unbound-serial-number-exception-procedure _exn89586_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95342
                              (let ()
                                (declare (not safe))
                                (cons _exn89586_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95342)))))))
    (define uncaught-exception?
      (lambda (_exn89582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89582_))
            (let ((_e89584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89582_ 'exception))))
              (macro-uncaught-exception? _e89584_))
            (macro-uncaught-exception? _exn89582_))))
    (define uncaught-exception-arguments
      (lambda (_exn89578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89578_))
            (let ((_e89580_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89578_ 'exception))))
              (if (macro-uncaught-exception? _e89580_)
                  (macro-uncaught-exception-arguments _e89580_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95345
                                (let ()
                                  (declare (not safe))
                                  (cons _e89580_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95345)))))
            (if (macro-uncaught-exception? _exn89578_)
                (macro-uncaught-exception-arguments _exn89578_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95344
                              (let ()
                                (declare (not safe))
                                (cons _exn89578_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95344)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89574_))
            (let ((_e89576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89574_ 'exception))))
              (if (macro-uncaught-exception? _e89576_)
                  (macro-uncaught-exception-procedure _e89576_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95347
                                (let ()
                                  (declare (not safe))
                                  (cons _e89576_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95347)))))
            (if (macro-uncaught-exception? _exn89574_)
                (macro-uncaught-exception-procedure _exn89574_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95346
                              (let ()
                                (declare (not safe))
                                (cons _exn89574_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95346)))))))
    (define uncaught-exception-reason
      (lambda (_exn89568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89568_))
            (let ((_e89571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89568_ 'exception))))
              (if (macro-uncaught-exception? _e89571_)
                  (macro-uncaught-exception-reason _e89571_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95349
                                (let ()
                                  (declare (not safe))
                                  (cons _e89571_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95349)))))
            (if (macro-uncaught-exception? _exn89568_)
                (macro-uncaught-exception-reason _exn89568_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95348
                              (let ()
                                (declare (not safe))
                                (cons _exn89568_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95348)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89564_))
            (let ((_e89566_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89564_ 'exception))))
              (macro-uninitialized-thread-exception? _e89566_))
            (macro-uninitialized-thread-exception? _exn89564_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89560_))
            (let ((_e89562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89560_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89562_)
                  (macro-uninitialized-thread-exception-arguments _e89562_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95351
                                (let ()
                                  (declare (not safe))
                                  (cons _e89562_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95351)))))
            (if (macro-uninitialized-thread-exception? _exn89560_)
                (macro-uninitialized-thread-exception-arguments _exn89560_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95350
                              (let ()
                                (declare (not safe))
                                (cons _exn89560_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95350)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89554_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89554_))
            (let ((_e89557_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89554_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89557_)
                  (macro-uninitialized-thread-exception-procedure _e89557_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95353
                                (let ()
                                  (declare (not safe))
                                  (cons _e89557_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95353)))))
            (if (macro-uninitialized-thread-exception? _exn89554_)
                (macro-uninitialized-thread-exception-procedure _exn89554_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95352
                              (let ()
                                (declare (not safe))
                                (cons _exn89554_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95352)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89550_))
            (let ((_e89552_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89550_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89552_))
            (macro-unknown-keyword-argument-exception? _exn89550_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89546_))
            (let ((_e89548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89546_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89548_)
                  (macro-unknown-keyword-argument-exception-arguments _e89548_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95355
                                (let ()
                                  (declare (not safe))
                                  (cons _e89548_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95355)))))
            (if (macro-unknown-keyword-argument-exception? _exn89546_)
                (macro-unknown-keyword-argument-exception-arguments _exn89546_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95354
                              (let ()
                                (declare (not safe))
                                (cons _exn89546_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95354)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89540_))
            (let ((_e89543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89540_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89543_)
                  (macro-unknown-keyword-argument-exception-procedure _e89543_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95357
                                (let ()
                                  (declare (not safe))
                                  (cons _e89543_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95357)))))
            (if (macro-unknown-keyword-argument-exception? _exn89540_)
                (macro-unknown-keyword-argument-exception-procedure _exn89540_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95356
                              (let ()
                                (declare (not safe))
                                (cons _exn89540_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95356)))))))
    (define unterminated-process-exception?
      (lambda (_exn89536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89536_))
            (let ((_e89538_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89536_ 'exception))))
              (macro-unterminated-process-exception? _e89538_))
            (macro-unterminated-process-exception? _exn89536_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89532_))
            (let ((_e89534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89532_ 'exception))))
              (if (macro-unterminated-process-exception? _e89534_)
                  (macro-unterminated-process-exception-arguments _e89534_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95359
                                (let ()
                                  (declare (not safe))
                                  (cons _e89534_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95359)))))
            (if (macro-unterminated-process-exception? _exn89532_)
                (macro-unterminated-process-exception-arguments _exn89532_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95358
                              (let ()
                                (declare (not safe))
                                (cons _exn89532_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95358)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89526_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89526_))
            (let ((_e89529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89526_ 'exception))))
              (if (macro-unterminated-process-exception? _e89529_)
                  (macro-unterminated-process-exception-procedure _e89529_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95361
                                (let ()
                                  (declare (not safe))
                                  (cons _e89529_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95361)))))
            (if (macro-unterminated-process-exception? _exn89526_)
                (macro-unterminated-process-exception-procedure _exn89526_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95360
                              (let ()
                                (declare (not safe))
                                (cons _exn89526_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95360)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89522_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89522_))
            (let ((_e89524_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89522_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89524_))
            (macro-wrong-number-of-arguments-exception? _exn89522_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89518_))
            (let ((_e89520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89518_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89520_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89520_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95363
                                (let ()
                                  (declare (not safe))
                                  (cons _e89520_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95363)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89518_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89518_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95362
                              (let ()
                                (declare (not safe))
                                (cons _exn89518_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95362)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89512_))
            (let ((_e89515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89512_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89515_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89515_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95365
                                (let ()
                                  (declare (not safe))
                                  (cons _e89515_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95365)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89512_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89512_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95364
                              (let ()
                                (declare (not safe))
                                (cons _exn89512_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95364)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89508_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89508_))
            (let ((_e89510_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89508_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89510_))
            (macro-wrong-number-of-values-exception? _exn89508_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89504_))
            (let ((_e89506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89504_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89506_)
                  (macro-wrong-number-of-values-exception-code _e89506_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95367
                                (let ()
                                  (declare (not safe))
                                  (cons _e89506_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95367)))))
            (if (macro-wrong-number-of-values-exception? _exn89504_)
                (macro-wrong-number-of-values-exception-code _exn89504_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95366
                              (let ()
                                (declare (not safe))
                                (cons _exn89504_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95366)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89500_))
            (let ((_e89502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89500_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89502_)
                  (macro-wrong-number-of-values-exception-rte _e89502_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95369
                                (let ()
                                  (declare (not safe))
                                  (cons _e89502_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95369)))))
            (if (macro-wrong-number-of-values-exception? _exn89500_)
                (macro-wrong-number-of-values-exception-rte _exn89500_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95368
                              (let ()
                                (declare (not safe))
                                (cons _exn89500_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95368)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89494_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89494_))
            (let ((_e89497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89494_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89497_)
                  (macro-wrong-number-of-values-exception-vals _e89497_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95371
                                (let ()
                                  (declare (not safe))
                                  (cons _e89497_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95371)))))
            (if (macro-wrong-number-of-values-exception? _exn89494_)
                (macro-wrong-number-of-values-exception-vals _exn89494_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95370
                              (let ()
                                (declare (not safe))
                                (cons _exn89494_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95370)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89488_))
            (let ((_e89491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89488_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89491_))
            (macro-wrong-processor-c-return-exception? _exn89488_))))))
