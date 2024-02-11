(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707647931)
  (begin
    (define Exception::t
      (let ((__tmp95071 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95071
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90574_
        (apply make-class-instance Exception::t _$args90574_)))
    (define StackTrace::t
      (let ((__tmp95072 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95072
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90571_
        (apply make-class-instance StackTrace::t _$args90571_)))
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
      (let ((__tmp95073 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95073
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90568_ (apply make-class-instance Error::t _$args90568_)))
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
      (let ((__tmp95074 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95074
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90565_
        (apply make-class-instance RuntimeException::t _$args90565_)))
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
      (lambda (_exn90560_ _continue90561_)
        (let ((_exn90563_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90560_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90563_ _continue90561_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90556_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90556_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90556_ 'continuation))
                '#!void
                (let ((__tmp95075
                       (lambda (_cont90558_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90556_
                            'continuation
                            _cont90558_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95075)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90556_))))
    (define error
      (lambda (_message90553_ . _irritants90554_)
        (raise (let ((__obj95065
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95065
                  _message90553_
                  'irritants:
                  _irritants90554_)
                 __obj95065))))
    (define with-exception-handler
      (lambda (_handler90546_ _thunk90547_)
        (if (let () (declare (not safe)) (procedure? _handler90546_))
            '#!void
            (raise (let ((__obj95066
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95066
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90546_ '())))
                     __obj95066)))
        (if (let () (declare (not safe)) (procedure? _thunk90547_))
            '#!void
            (raise (let ((__obj95067
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95067
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90547_ '())))
                     __obj95067)))
        (let ((__tmp95076
               (lambda (_exn90549_)
                 (let ((_exn90551_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90549_))))
                   (_handler90546_ _exn90551_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95076 _thunk90547_))))
    (define with-catch
      (lambda (_handler90539_ _thunk90540_)
        (if (let () (declare (not safe)) (procedure? _handler90539_))
            '#!void
            (raise (let ((__obj95068
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95068
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90539_ '())))
                     __obj95068)))
        (if (let () (declare (not safe)) (procedure? _thunk90540_))
            '#!void
            (raise (let ((__obj95069
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95069
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90540_ '())))
                     __obj95069)))
        (let ((__tmp95077
               (lambda (_cont90542_)
                 (with-exception-handler
                  (lambda (_exn90544_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90542_
                       _handler90539_
                       _exn90544_)))
                  _thunk90540_))))
          (declare (not safe))
          (##continuation-capture __tmp95077))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90530_)
        (if (or (heap-overflow-exception? _exn90530_)
                (stack-overflow-exception? _exn90530_))
            _exn90530_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90530_))
                _exn90530_
                (if (macro-exception? _exn90530_)
                    (let ((_rte90535_
                           (let ((__obj95070
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95070
                                _exn90530_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95070)))
                      (let ((__tmp95078
                             (lambda (_cont90537_)
                               (let ((__tmp95079
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90537_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90535_
                                  'continuation
                                  __tmp95079)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95078))
                      _rte90535_)
                    _exn90530_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90525_)
        (let ((_$e90527_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90525_))))
          (if _$e90527_ _$e90527_ (error-exception? _obj90525_)))))
    (define error-message
      (lambda (_obj90523_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90523_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90523_ 'message))
            (if (error-exception? _obj90523_)
                (error-exception-message _obj90523_)
                '#f))))
    (define error-irritants
      (lambda (_obj90521_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90521_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90521_ 'irritants))
            (if (error-exception? _obj90521_)
                (error-exception-parameters _obj90521_)
                '#f))))
    (define error-trace
      (lambda (_obj90519_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90519_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90519_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90501_ _port90502_)
        (let ((_$e90504_
               (let ()
                 (declare (not safe))
                 (method-ref _e90501_ 'display-exception))))
          (if _$e90504_
              ((lambda (_f90507_) (_f90507_ _e90501_ _port90502_)) _$e90504_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90501_ _port90502_))))))
    (define display-exception__0
      (lambda (_e90512_)
        (let ((_port90514_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90512_ _port90514_))))
    (define display-exception
      (lambda _g95081_
        (let ((_g95080_ (let () (declare (not safe)) (##length _g95081_))))
          (cond ((let () (declare (not safe)) (##fx= _g95080_ 1))
                 (apply (lambda (_e90512_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90512_)))
                        _g95081_))
                ((let () (declare (not safe)) (##fx= _g95080_ 2))
                 (apply (lambda (_e90516_ _port90517_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90516_ _port90517_)))
                        _g95081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95081_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90490_ _message90491_ . _rest90492_)
        (let ((_message90498_
               (if (let () (declare (not safe)) (string? _message90491_))
                   _message90491_
                   (call-with-output-string
                    '""
                    (lambda (_g9049390495_)
                      (display _message90491_ _g9049390495_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90490_ 'message _message90498_))
          (apply class-instance-init! _self90490_ _rest90492_))))
    (define Error:::init!::specialize
      (lambda (__t95044)
        (let ((__message95045
               (let ((__tmp95046
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95044 'message))))
                 (if __tmp95046 __tmp95046 (error '"Unknown slot" 'message)))))
          (lambda (_self90490_ _message90491_ . _rest90492_)
            (let ((_message90498_
                   (if (let () (declare (not safe)) (string? _message90491_))
                       _message90491_
                       (call-with-output-string
                        '""
                        (lambda (_g9049390495_)
                          (display _message90491_ _g9049390495_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90490_
                 _message90498_
                 __message95045
                 __t95044
                 '#f))
              (apply class-instance-init! _self90490_ _rest90492_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90348_ _port90349_)
        (let ((_tmp-port90351_ (open-output-string))
              (_display-error-newline90352_
               (> (output-port-column _port90349_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90351_))
          (let ((__tmp95082
                 (lambda ()
                   (if _display-error-newline90352_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90355_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90348_ 'where))))
                     (if _$e90355_ (display _$e90355_) (display '"?")))
                   (let ((__tmp95083
                          (let ((__tmp95084
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90348_))))
                            (declare (not safe))
                            (##type-name __tmp95084))))
                     (declare (not safe))
                     (display* '" [" __tmp95083 '"]: "))
                   (let ((__tmp95085
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90348_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95085))
                   (let ((_irritants90358_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90348_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90358_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90360_)
                              (write _obj90360_)
                              (write-char '#\space))
                            _irritants90358_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90348_))
                            (dump-stack-trace?))
                       (let ((_cont9036190363_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90348_
                                 'continuation))))
                         (if _cont9036190363_
                             (let ((_cont90366_ _cont9036190363_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90366_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95082
             current-output-port
             _tmp-port90351_))
          (let ((__tmp95086 (get-output-string _tmp-port90351_)))
            (declare (not safe))
            (##write-string __tmp95086 _port90349_)))))
    (define Error::display-exception::specialize
      (lambda (__t95047)
        (let ((__where95048
               (let ((__tmp95052
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95047 'where))))
                 (if __tmp95052 __tmp95052 (error '"Unknown slot" 'where))))
              (__irritants95049
               (let ((__tmp95053
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95047 'irritants))))
                 (if __tmp95053
                     __tmp95053
                     (error '"Unknown slot" 'irritants))))
              (__message95050
               (let ((__tmp95054
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95047 'message))))
                 (if __tmp95054 __tmp95054 (error '"Unknown slot" 'message))))
              (__continuation95051
               (let ((__tmp95055
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95047 'continuation))))
                 (if __tmp95055
                     __tmp95055
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90348_ _port90349_)
            (let ((_tmp-port90351_ (open-output-string))
                  (_display-error-newline90352_
                   (> (output-port-column _port90349_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90351_))
              (let ((__tmp95087
                     (lambda ()
                       (if _display-error-newline90352_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90355_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90348_
                                 __where95048
                                 __t95047
                                 '#f))))
                         (if _$e90355_ (display _$e90355_) (display '"?")))
                       (let ((__tmp95088
                              (let ((__tmp95089
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90348_))))
                                (declare (not safe))
                                (##type-name __tmp95089))))
                         (declare (not safe))
                         (display* '" [" __tmp95088 '"]: "))
                       (let ((__tmp95090
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90348_
                                 __message95050
                                 __t95047
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95090))
                       (let ((_irritants90358_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90348_
                                 __irritants95049
                                 __t95047
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90358_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90360_)
                                  (write _obj90360_)
                                  (write-char '#\space))
                                _irritants90358_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90348_))
                                (dump-stack-trace?))
                           (let ((_cont9036190363_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90348_
                                     __continuation95051
                                     __t95047
                                     '#f))))
                             (if _cont9036190363_
                                 (let ((_cont90366_ _cont9036190363_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90366_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95087
                 current-output-port
                 _tmp-port90351_))
              (let ((__tmp95091 (get-output-string _tmp-port90351_)))
                (declare (not safe))
                (##write-string __tmp95091 _port90349_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90215_ _port90216_)
        (let ((_tmp-port90218_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90218_))
          (let ((__tmp95092
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90215_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95092 _tmp-port90218_))
          (if (dump-stack-trace?)
              (let ((_cont9021990221_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90215_ 'continuation))))
                (if _cont9021990221_
                    (let ((_cont90224_ _cont9021990221_))
                      (display '"--- continuation backtrace:" _tmp-port90218_)
                      (newline _tmp-port90218_)
                      (display-continuation-backtrace
                       _cont90224_
                       _tmp-port90218_))
                    '#f))
              '#!void)
          (let ((__tmp95093 (get-output-string _tmp-port90218_)))
            (declare (not safe))
            (##write-string __tmp95093 _port90216_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95056)
        (let ((__exception95057
               (let ((__tmp95059
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95056 'exception))))
                 (if __tmp95059
                     __tmp95059
                     (error '"Unknown slot" 'exception))))
              (__continuation95058
               (let ((__tmp95060
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95056 'continuation))))
                 (if __tmp95060
                     __tmp95060
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90215_ _port90216_)
            (let ((_tmp-port90218_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90218_))
              (let ((__tmp95094
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90215_
                        __exception95057
                        __t95056
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95094 _tmp-port90218_))
              (if (dump-stack-trace?)
                  (let ((_cont9021990221_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90215_
                            __continuation95058
                            __t95056
                            '#f))))
                    (if _cont9021990221_
                        (let ((_cont90224_ _cont9021990221_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90218_)
                          (newline _tmp-port90218_)
                          (display-continuation-backtrace
                           _cont90224_
                           _tmp-port90218_))
                        '#f))
                  '#!void)
              (let ((__tmp95095 (get-output-string _tmp-port90218_)))
                (declare (not safe))
                (##write-string __tmp95095 _port90216_)))))))
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
      (lambda (_port90087_)
        (if (macro-character-port? _port90087_)
            (let ((_old-width90089_
                   (macro-character-port-output-width _port90087_)))
              (macro-character-port-output-width-set!
               _port90087_
               (lambda (_port90091_) '256))
              _old-width90089_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90084_ _old-width90085_)
        (if (macro-character-port? _port90084_)
            (macro-character-port-output-width-set!
             _port90084_
             _old-width90085_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90082_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90082_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90076_))
            (let ((_e90079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90076_ 'exception))))
              (macro-abandoned-mutex-exception? _e90079_))
            (macro-abandoned-mutex-exception? _exn90076_))))
    (define cfun-conversion-exception?
      (lambda (_exn90072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90072_))
            (let ((_e90074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90072_ 'exception))))
              (macro-cfun-conversion-exception? _e90074_))
            (macro-cfun-conversion-exception? _exn90072_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90068_))
            (let ((_e90070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90068_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90070_)
                  (macro-cfun-conversion-exception-arguments _e90070_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95097
                                (let ()
                                  (declare (not safe))
                                  (cons _e90070_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95097)))))
            (if (macro-cfun-conversion-exception? _exn90068_)
                (macro-cfun-conversion-exception-arguments _exn90068_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95096
                              (let ()
                                (declare (not safe))
                                (cons _exn90068_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95096)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90064_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90064_))
            (let ((_e90066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90064_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90066_)
                  (macro-cfun-conversion-exception-code _e90066_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95099
                                (let ()
                                  (declare (not safe))
                                  (cons _e90066_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95099)))))
            (if (macro-cfun-conversion-exception? _exn90064_)
                (macro-cfun-conversion-exception-code _exn90064_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95098
                              (let ()
                                (declare (not safe))
                                (cons _exn90064_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95098)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90060_))
            (let ((_e90062_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90060_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90062_)
                  (macro-cfun-conversion-exception-message _e90062_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95101
                                (let ()
                                  (declare (not safe))
                                  (cons _e90062_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95101)))))
            (if (macro-cfun-conversion-exception? _exn90060_)
                (macro-cfun-conversion-exception-message _exn90060_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95100
                              (let ()
                                (declare (not safe))
                                (cons _exn90060_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95100)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90054_))
            (let ((_e90057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90054_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90057_)
                  (macro-cfun-conversion-exception-procedure _e90057_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95103
                                (let ()
                                  (declare (not safe))
                                  (cons _e90057_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95103)))))
            (if (macro-cfun-conversion-exception? _exn90054_)
                (macro-cfun-conversion-exception-procedure _exn90054_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95102
                              (let ()
                                (declare (not safe))
                                (cons _exn90054_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95102)))))))
    (define datum-parsing-exception?
      (lambda (_exn90050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90050_))
            (let ((_e90052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90050_ 'exception))))
              (macro-datum-parsing-exception? _e90052_))
            (macro-datum-parsing-exception? _exn90050_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90046_))
            (let ((_e90048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90046_ 'exception))))
              (if (macro-datum-parsing-exception? _e90048_)
                  (macro-datum-parsing-exception-kind _e90048_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95105
                                (let ()
                                  (declare (not safe))
                                  (cons _e90048_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95105)))))
            (if (macro-datum-parsing-exception? _exn90046_)
                (macro-datum-parsing-exception-kind _exn90046_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95104
                              (let ()
                                (declare (not safe))
                                (cons _exn90046_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95104)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90042_))
            (let ((_e90044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90042_ 'exception))))
              (if (macro-datum-parsing-exception? _e90044_)
                  (macro-datum-parsing-exception-parameters _e90044_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95107
                                (let ()
                                  (declare (not safe))
                                  (cons _e90044_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95107)))))
            (if (macro-datum-parsing-exception? _exn90042_)
                (macro-datum-parsing-exception-parameters _exn90042_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95106
                              (let ()
                                (declare (not safe))
                                (cons _exn90042_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95106)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90036_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90036_))
            (let ((_e90039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90036_ 'exception))))
              (if (macro-datum-parsing-exception? _e90039_)
                  (macro-datum-parsing-exception-readenv _e90039_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95109
                                (let ()
                                  (declare (not safe))
                                  (cons _e90039_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95109)))))
            (if (macro-datum-parsing-exception? _exn90036_)
                (macro-datum-parsing-exception-readenv _exn90036_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95108
                              (let ()
                                (declare (not safe))
                                (cons _exn90036_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95108)))))))
    (define deadlock-exception?
      (lambda (_exn90030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90030_))
            (let ((_e90033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90030_ 'exception))))
              (macro-deadlock-exception? _e90033_))
            (macro-deadlock-exception? _exn90030_))))
    (define divide-by-zero-exception?
      (lambda (_exn90026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90026_))
            (let ((_e90028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90026_ 'exception))))
              (macro-divide-by-zero-exception? _e90028_))
            (macro-divide-by-zero-exception? _exn90026_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90022_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90022_))
            (let ((_e90024_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90022_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90024_)
                  (macro-divide-by-zero-exception-arguments _e90024_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95111
                                (let ()
                                  (declare (not safe))
                                  (cons _e90024_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95111)))))
            (if (macro-divide-by-zero-exception? _exn90022_)
                (macro-divide-by-zero-exception-arguments _exn90022_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95110
                              (let ()
                                (declare (not safe))
                                (cons _exn90022_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95110)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90016_))
            (let ((_e90019_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90016_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90019_)
                  (macro-divide-by-zero-exception-procedure _e90019_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95113
                                (let ()
                                  (declare (not safe))
                                  (cons _e90019_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95113)))))
            (if (macro-divide-by-zero-exception? _exn90016_)
                (macro-divide-by-zero-exception-procedure _exn90016_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95112
                              (let ()
                                (declare (not safe))
                                (cons _exn90016_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95112)))))))
    (define error-exception?
      (lambda (_exn90012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90012_))
            (let ((_e90014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90012_ 'exception))))
              (macro-error-exception? _e90014_))
            (macro-error-exception? _exn90012_))))
    (define error-exception-message
      (lambda (_exn90008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90008_))
            (let ((_e90010_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90008_ 'exception))))
              (if (macro-error-exception? _e90010_)
                  (macro-error-exception-message _e90010_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95115
                                (let ()
                                  (declare (not safe))
                                  (cons _e90010_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95115)))))
            (if (macro-error-exception? _exn90008_)
                (macro-error-exception-message _exn90008_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95114
                              (let ()
                                (declare (not safe))
                                (cons _exn90008_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95114)))))))
    (define error-exception-parameters
      (lambda (_exn90002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90002_))
            (let ((_e90005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90002_ 'exception))))
              (if (macro-error-exception? _e90005_)
                  (macro-error-exception-parameters _e90005_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95117
                                (let ()
                                  (declare (not safe))
                                  (cons _e90005_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95117)))))
            (if (macro-error-exception? _exn90002_)
                (macro-error-exception-parameters _exn90002_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95116
                              (let ()
                                (declare (not safe))
                                (cons _exn90002_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95116)))))))
    (define expression-parsing-exception?
      (lambda (_exn89998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89998_))
            (let ((_e90000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89998_ 'exception))))
              (macro-expression-parsing-exception? _e90000_))
            (macro-expression-parsing-exception? _exn89998_))))
    (define expression-parsing-exception-kind
      (lambda (_exn89994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89994_))
            (let ((_e89996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89994_ 'exception))))
              (if (macro-expression-parsing-exception? _e89996_)
                  (macro-expression-parsing-exception-kind _e89996_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95119
                                (let ()
                                  (declare (not safe))
                                  (cons _e89996_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95119)))))
            (if (macro-expression-parsing-exception? _exn89994_)
                (macro-expression-parsing-exception-kind _exn89994_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95118
                              (let ()
                                (declare (not safe))
                                (cons _exn89994_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95118)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn89990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89990_))
            (let ((_e89992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89990_ 'exception))))
              (if (macro-expression-parsing-exception? _e89992_)
                  (macro-expression-parsing-exception-parameters _e89992_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95121
                                (let ()
                                  (declare (not safe))
                                  (cons _e89992_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95121)))))
            (if (macro-expression-parsing-exception? _exn89990_)
                (macro-expression-parsing-exception-parameters _exn89990_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95120
                              (let ()
                                (declare (not safe))
                                (cons _exn89990_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95120)))))))
    (define expression-parsing-exception-source
      (lambda (_exn89984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89984_))
            (let ((_e89987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89984_ 'exception))))
              (if (macro-expression-parsing-exception? _e89987_)
                  (macro-expression-parsing-exception-source _e89987_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95123
                                (let ()
                                  (declare (not safe))
                                  (cons _e89987_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95123)))))
            (if (macro-expression-parsing-exception? _exn89984_)
                (macro-expression-parsing-exception-source _exn89984_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95122
                              (let ()
                                (declare (not safe))
                                (cons _exn89984_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95122)))))))
    (define file-exists-exception?
      (lambda (_exn89980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89980_))
            (let ((_e89982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89980_ 'exception))))
              (macro-file-exists-exception? _e89982_))
            (macro-file-exists-exception? _exn89980_))))
    (define file-exists-exception-arguments
      (lambda (_exn89976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89976_))
            (let ((_e89978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89976_ 'exception))))
              (if (macro-file-exists-exception? _e89978_)
                  (macro-file-exists-exception-arguments _e89978_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95125
                                (let ()
                                  (declare (not safe))
                                  (cons _e89978_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95125)))))
            (if (macro-file-exists-exception? _exn89976_)
                (macro-file-exists-exception-arguments _exn89976_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95124
                              (let ()
                                (declare (not safe))
                                (cons _exn89976_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95124)))))))
    (define file-exists-exception-procedure
      (lambda (_exn89970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89970_))
            (let ((_e89973_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89970_ 'exception))))
              (if (macro-file-exists-exception? _e89973_)
                  (macro-file-exists-exception-procedure _e89973_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95127
                                (let ()
                                  (declare (not safe))
                                  (cons _e89973_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95127)))))
            (if (macro-file-exists-exception? _exn89970_)
                (macro-file-exists-exception-procedure _exn89970_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95126
                              (let ()
                                (declare (not safe))
                                (cons _exn89970_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95126)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn89966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89966_))
            (let ((_e89968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89966_ 'exception))))
              (macro-fixnum-overflow-exception? _e89968_))
            (macro-fixnum-overflow-exception? _exn89966_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn89962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89962_))
            (let ((_e89964_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89962_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89964_)
                  (macro-fixnum-overflow-exception-arguments _e89964_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95129
                                (let ()
                                  (declare (not safe))
                                  (cons _e89964_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95129)))))
            (if (macro-fixnum-overflow-exception? _exn89962_)
                (macro-fixnum-overflow-exception-arguments _exn89962_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95128
                              (let ()
                                (declare (not safe))
                                (cons _exn89962_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95128)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn89956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89956_))
            (let ((_e89959_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89956_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89959_)
                  (macro-fixnum-overflow-exception-procedure _e89959_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95131
                                (let ()
                                  (declare (not safe))
                                  (cons _e89959_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95131)))))
            (if (macro-fixnum-overflow-exception? _exn89956_)
                (macro-fixnum-overflow-exception-procedure _exn89956_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95130
                              (let ()
                                (declare (not safe))
                                (cons _exn89956_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95130)))))))
    (define heap-overflow-exception?
      (lambda (_exn89950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89950_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89950_ 'exception))))
              (macro-heap-overflow-exception? _e89953_))
            (macro-heap-overflow-exception? _exn89950_))))
    (define inactive-thread-exception?
      (lambda (_exn89946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89946_))
            (let ((_e89948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89946_ 'exception))))
              (macro-inactive-thread-exception? _e89948_))
            (macro-inactive-thread-exception? _exn89946_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn89942_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89942_))
            (let ((_e89944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89942_ 'exception))))
              (if (macro-inactive-thread-exception? _e89944_)
                  (macro-inactive-thread-exception-arguments _e89944_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95133
                                (let ()
                                  (declare (not safe))
                                  (cons _e89944_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95133)))))
            (if (macro-inactive-thread-exception? _exn89942_)
                (macro-inactive-thread-exception-arguments _exn89942_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95132
                              (let ()
                                (declare (not safe))
                                (cons _exn89942_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95132)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn89936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89936_))
            (let ((_e89939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89936_ 'exception))))
              (if (macro-inactive-thread-exception? _e89939_)
                  (macro-inactive-thread-exception-procedure _e89939_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95135
                                (let ()
                                  (declare (not safe))
                                  (cons _e89939_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95135)))))
            (if (macro-inactive-thread-exception? _exn89936_)
                (macro-inactive-thread-exception-procedure _exn89936_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95134
                              (let ()
                                (declare (not safe))
                                (cons _exn89936_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95134)))))))
    (define initialized-thread-exception?
      (lambda (_exn89932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89932_))
            (let ((_e89934_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89932_ 'exception))))
              (macro-initialized-thread-exception? _e89934_))
            (macro-initialized-thread-exception? _exn89932_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn89928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89928_))
            (let ((_e89930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89928_ 'exception))))
              (if (macro-initialized-thread-exception? _e89930_)
                  (macro-initialized-thread-exception-arguments _e89930_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95137
                                (let ()
                                  (declare (not safe))
                                  (cons _e89930_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95137)))))
            (if (macro-initialized-thread-exception? _exn89928_)
                (macro-initialized-thread-exception-arguments _exn89928_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95136
                              (let ()
                                (declare (not safe))
                                (cons _exn89928_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95136)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn89922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89922_))
            (let ((_e89925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89922_ 'exception))))
              (if (macro-initialized-thread-exception? _e89925_)
                  (macro-initialized-thread-exception-procedure _e89925_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95139
                                (let ()
                                  (declare (not safe))
                                  (cons _e89925_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95139)))))
            (if (macro-initialized-thread-exception? _exn89922_)
                (macro-initialized-thread-exception-procedure _exn89922_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95138
                              (let ()
                                (declare (not safe))
                                (cons _exn89922_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95138)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn89918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89918_))
            (let ((_e89920_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89918_ 'exception))))
              (macro-invalid-hash-number-exception? _e89920_))
            (macro-invalid-hash-number-exception? _exn89918_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn89914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89914_))
            (let ((_e89916_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89914_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89916_)
                  (macro-invalid-hash-number-exception-arguments _e89916_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95141
                                (let ()
                                  (declare (not safe))
                                  (cons _e89916_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95141)))))
            (if (macro-invalid-hash-number-exception? _exn89914_)
                (macro-invalid-hash-number-exception-arguments _exn89914_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95140
                              (let ()
                                (declare (not safe))
                                (cons _exn89914_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95140)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn89908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89908_))
            (let ((_e89911_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89908_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89911_)
                  (macro-invalid-hash-number-exception-procedure _e89911_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95143
                                (let ()
                                  (declare (not safe))
                                  (cons _e89911_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95143)))))
            (if (macro-invalid-hash-number-exception? _exn89908_)
                (macro-invalid-hash-number-exception-procedure _exn89908_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95142
                              (let ()
                                (declare (not safe))
                                (cons _exn89908_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95142)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn89904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89904_))
            (let ((_e89906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89904_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e89906_))
            (macro-invalid-utf8-encoding-exception? _exn89904_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn89900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89900_))
            (let ((_e89902_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89900_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89902_)
                  (macro-invalid-utf8-encoding-exception-arguments _e89902_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95145
                                (let ()
                                  (declare (not safe))
                                  (cons _e89902_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95145)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89900_)
                (macro-invalid-utf8-encoding-exception-arguments _exn89900_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95144
                              (let ()
                                (declare (not safe))
                                (cons _exn89900_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95144)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89894_))
            (let ((_e89897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89894_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89897_)
                  (macro-invalid-utf8-encoding-exception-procedure _e89897_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95147
                                (let ()
                                  (declare (not safe))
                                  (cons _e89897_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95147)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89894_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89894_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95146
                              (let ()
                                (declare (not safe))
                                (cons _exn89894_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95146)))))))
    (define join-timeout-exception?
      (lambda (_exn89890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89890_))
            (let ((_e89892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89890_ 'exception))))
              (macro-join-timeout-exception? _e89892_))
            (macro-join-timeout-exception? _exn89890_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89886_))
            (let ((_e89888_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89886_ 'exception))))
              (if (macro-join-timeout-exception? _e89888_)
                  (macro-join-timeout-exception-arguments _e89888_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95149
                                (let ()
                                  (declare (not safe))
                                  (cons _e89888_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95149)))))
            (if (macro-join-timeout-exception? _exn89886_)
                (macro-join-timeout-exception-arguments _exn89886_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95148
                              (let ()
                                (declare (not safe))
                                (cons _exn89886_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95148)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89880_))
            (let ((_e89883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89880_ 'exception))))
              (if (macro-join-timeout-exception? _e89883_)
                  (macro-join-timeout-exception-procedure _e89883_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95151
                                (let ()
                                  (declare (not safe))
                                  (cons _e89883_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95151)))))
            (if (macro-join-timeout-exception? _exn89880_)
                (macro-join-timeout-exception-procedure _exn89880_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95150
                              (let ()
                                (declare (not safe))
                                (cons _exn89880_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95150)))))))
    (define keyword-expected-exception?
      (lambda (_exn89876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89876_))
            (let ((_e89878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89876_ 'exception))))
              (macro-keyword-expected-exception? _e89878_))
            (macro-keyword-expected-exception? _exn89876_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89872_))
            (let ((_e89874_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89872_ 'exception))))
              (if (macro-keyword-expected-exception? _e89874_)
                  (macro-keyword-expected-exception-arguments _e89874_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95153
                                (let ()
                                  (declare (not safe))
                                  (cons _e89874_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95153)))))
            (if (macro-keyword-expected-exception? _exn89872_)
                (macro-keyword-expected-exception-arguments _exn89872_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95152
                              (let ()
                                (declare (not safe))
                                (cons _exn89872_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95152)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89866_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89866_ 'exception))))
              (if (macro-keyword-expected-exception? _e89869_)
                  (macro-keyword-expected-exception-procedure _e89869_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95155
                                (let ()
                                  (declare (not safe))
                                  (cons _e89869_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95155)))))
            (if (macro-keyword-expected-exception? _exn89866_)
                (macro-keyword-expected-exception-procedure _exn89866_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95154
                              (let ()
                                (declare (not safe))
                                (cons _exn89866_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95154)))))))
    (define length-mismatch-exception?
      (lambda (_exn89862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89862_))
            (let ((_e89864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89862_ 'exception))))
              (macro-length-mismatch-exception? _e89864_))
            (macro-length-mismatch-exception? _exn89862_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89858_))
            (let ((_e89860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89858_ 'exception))))
              (if (macro-length-mismatch-exception? _e89860_)
                  (macro-length-mismatch-exception-arg-id _e89860_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95157
                                (let ()
                                  (declare (not safe))
                                  (cons _e89860_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95157)))))
            (if (macro-length-mismatch-exception? _exn89858_)
                (macro-length-mismatch-exception-arg-id _exn89858_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95156
                              (let ()
                                (declare (not safe))
                                (cons _exn89858_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95156)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89854_))
            (let ((_e89856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89854_ 'exception))))
              (if (macro-length-mismatch-exception? _e89856_)
                  (macro-length-mismatch-exception-arguments _e89856_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95159
                                (let ()
                                  (declare (not safe))
                                  (cons _e89856_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95159)))))
            (if (macro-length-mismatch-exception? _exn89854_)
                (macro-length-mismatch-exception-arguments _exn89854_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95158
                              (let ()
                                (declare (not safe))
                                (cons _exn89854_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95158)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89848_))
            (let ((_e89851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89848_ 'exception))))
              (if (macro-length-mismatch-exception? _e89851_)
                  (macro-length-mismatch-exception-procedure _e89851_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95161
                                (let ()
                                  (declare (not safe))
                                  (cons _e89851_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95161)))))
            (if (macro-length-mismatch-exception? _exn89848_)
                (macro-length-mismatch-exception-procedure _exn89848_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95160
                              (let ()
                                (declare (not safe))
                                (cons _exn89848_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95160)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89844_))
            (let ((_e89846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89844_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89846_))
            (macro-mailbox-receive-timeout-exception? _exn89844_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89840_))
            (let ((_e89842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89840_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89842_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89842_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95163
                                (let ()
                                  (declare (not safe))
                                  (cons _e89842_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95163)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89840_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89840_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95162
                              (let ()
                                (declare (not safe))
                                (cons _exn89840_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95162)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89834_))
            (let ((_e89837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89834_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89837_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89837_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95165
                                (let ()
                                  (declare (not safe))
                                  (cons _e89837_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95165)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89834_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89834_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95164
                              (let ()
                                (declare (not safe))
                                (cons _exn89834_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95164)))))))
    (define module-not-found-exception?
      (lambda (_exn89830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89830_))
            (let ((_e89832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89830_ 'exception))))
              (macro-module-not-found-exception? _e89832_))
            (macro-module-not-found-exception? _exn89830_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89826_))
            (let ((_e89828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89826_ 'exception))))
              (if (macro-module-not-found-exception? _e89828_)
                  (macro-module-not-found-exception-arguments _e89828_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95167
                                (let ()
                                  (declare (not safe))
                                  (cons _e89828_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95167)))))
            (if (macro-module-not-found-exception? _exn89826_)
                (macro-module-not-found-exception-arguments _exn89826_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95166
                              (let ()
                                (declare (not safe))
                                (cons _exn89826_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95166)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89820_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89820_ 'exception))))
              (if (macro-module-not-found-exception? _e89823_)
                  (macro-module-not-found-exception-procedure _e89823_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95169
                                (let ()
                                  (declare (not safe))
                                  (cons _e89823_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95169)))))
            (if (macro-module-not-found-exception? _exn89820_)
                (macro-module-not-found-exception-procedure _exn89820_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95168
                              (let ()
                                (declare (not safe))
                                (cons _exn89820_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95168)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89814_))
            (let ((_e89817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89814_ 'exception))))
              (macro-multiple-c-return-exception? _e89817_))
            (macro-multiple-c-return-exception? _exn89814_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89810_))
            (let ((_e89812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89810_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89812_))
            (macro-no-such-file-or-directory-exception? _exn89810_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89806_))
            (let ((_e89808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89806_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89808_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89808_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95171
                                (let ()
                                  (declare (not safe))
                                  (cons _e89808_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95171)))))
            (if (macro-no-such-file-or-directory-exception? _exn89806_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89806_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95170
                              (let ()
                                (declare (not safe))
                                (cons _exn89806_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95170)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89800_))
            (let ((_e89803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89800_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89803_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89803_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95173
                                (let ()
                                  (declare (not safe))
                                  (cons _e89803_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95173)))))
            (if (macro-no-such-file-or-directory-exception? _exn89800_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89800_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95172
                              (let ()
                                (declare (not safe))
                                (cons _exn89800_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95172)))))))
    (define noncontinuable-exception?
      (lambda (_exn89796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89796_))
            (let ((_e89798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89796_ 'exception))))
              (macro-noncontinuable-exception? _e89798_))
            (macro-noncontinuable-exception? _exn89796_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89790_))
            (let ((_e89793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89790_ 'exception))))
              (if (macro-noncontinuable-exception? _e89793_)
                  (macro-noncontinuable-exception-reason _e89793_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95175
                                (let ()
                                  (declare (not safe))
                                  (cons _e89793_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95175)))))
            (if (macro-noncontinuable-exception? _exn89790_)
                (macro-noncontinuable-exception-reason _exn89790_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95174
                              (let ()
                                (declare (not safe))
                                (cons _exn89790_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95174)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89786_))
            (let ((_e89788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89786_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89788_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89786_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89782_))
            (let ((_e89784_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89782_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89784_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89784_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95177
                                (let ()
                                  (declare (not safe))
                                  (cons _e89784_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95177)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89782_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89782_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95176
                              (let ()
                                (declare (not safe))
                                (cons _exn89782_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95176)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89776_))
            (let ((_e89779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89776_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89779_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89779_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95179
                                (let ()
                                  (declare (not safe))
                                  (cons _e89779_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95179)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89776_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89776_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95178
                              (let ()
                                (declare (not safe))
                                (cons _exn89776_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95178)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89772_))
            (let ((_e89774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89772_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89774_))
            (macro-nonprocedure-operator-exception? _exn89772_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89768_))
            (let ((_e89770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89768_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89770_)
                  (macro-nonprocedure-operator-exception-arguments _e89770_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95181
                                (let ()
                                  (declare (not safe))
                                  (cons _e89770_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95181)))))
            (if (macro-nonprocedure-operator-exception? _exn89768_)
                (macro-nonprocedure-operator-exception-arguments _exn89768_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95180
                              (let ()
                                (declare (not safe))
                                (cons _exn89768_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95180)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89764_))
            (let ((_e89766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89764_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89766_)
                  (macro-nonprocedure-operator-exception-code _e89766_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95183
                                (let ()
                                  (declare (not safe))
                                  (cons _e89766_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95183)))))
            (if (macro-nonprocedure-operator-exception? _exn89764_)
                (macro-nonprocedure-operator-exception-code _exn89764_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95182
                              (let ()
                                (declare (not safe))
                                (cons _exn89764_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95182)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89760_))
            (let ((_e89762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89760_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89762_)
                  (macro-nonprocedure-operator-exception-operator _e89762_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95185
                                (let ()
                                  (declare (not safe))
                                  (cons _e89762_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95185)))))
            (if (macro-nonprocedure-operator-exception? _exn89760_)
                (macro-nonprocedure-operator-exception-operator _exn89760_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95184
                              (let ()
                                (declare (not safe))
                                (cons _exn89760_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95184)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89754_))
            (let ((_e89757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89754_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89757_)
                  (macro-nonprocedure-operator-exception-rte _e89757_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95187
                                (let ()
                                  (declare (not safe))
                                  (cons _e89757_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95187)))))
            (if (macro-nonprocedure-operator-exception? _exn89754_)
                (macro-nonprocedure-operator-exception-rte _exn89754_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95186
                              (let ()
                                (declare (not safe))
                                (cons _exn89754_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95186)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89750_))
            (let ((_e89752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89750_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89752_))
            (macro-not-in-compilation-context-exception? _exn89750_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89746_))
            (let ((_e89748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89746_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89748_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89748_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95189
                                (let ()
                                  (declare (not safe))
                                  (cons _e89748_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95189)))))
            (if (macro-not-in-compilation-context-exception? _exn89746_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89746_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95188
                              (let ()
                                (declare (not safe))
                                (cons _exn89746_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95188)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89740_))
            (let ((_e89743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89740_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89743_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89743_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95191
                                (let ()
                                  (declare (not safe))
                                  (cons _e89743_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95191)))))
            (if (macro-not-in-compilation-context-exception? _exn89740_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89740_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95190
                              (let ()
                                (declare (not safe))
                                (cons _exn89740_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95190)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89736_))
            (let ((_e89738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89736_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89738_))
            (macro-number-of-arguments-limit-exception? _exn89736_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89732_))
            (let ((_e89734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89732_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89734_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89734_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95193
                                (let ()
                                  (declare (not safe))
                                  (cons _e89734_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95193)))))
            (if (macro-number-of-arguments-limit-exception? _exn89732_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89732_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95192
                              (let ()
                                (declare (not safe))
                                (cons _exn89732_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95192)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89726_))
            (let ((_e89729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89726_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89729_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89729_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95195
                                (let ()
                                  (declare (not safe))
                                  (cons _e89729_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95195)))))
            (if (macro-number-of-arguments-limit-exception? _exn89726_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89726_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95194
                              (let ()
                                (declare (not safe))
                                (cons _exn89726_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95194)))))))
    (define os-exception?
      (lambda (_exn89722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89722_))
            (let ((_e89724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89722_ 'exception))))
              (macro-os-exception? _e89724_))
            (macro-os-exception? _exn89722_))))
    (define os-exception-arguments
      (lambda (_exn89718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89718_))
            (let ((_e89720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89718_ 'exception))))
              (if (macro-os-exception? _e89720_)
                  (macro-os-exception-arguments _e89720_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95197
                                (let ()
                                  (declare (not safe))
                                  (cons _e89720_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95197)))))
            (if (macro-os-exception? _exn89718_)
                (macro-os-exception-arguments _exn89718_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95196
                              (let ()
                                (declare (not safe))
                                (cons _exn89718_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95196)))))))
    (define os-exception-code
      (lambda (_exn89714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89714_))
            (let ((_e89716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89714_ 'exception))))
              (if (macro-os-exception? _e89716_)
                  (macro-os-exception-code _e89716_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95199
                                (let ()
                                  (declare (not safe))
                                  (cons _e89716_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95199)))))
            (if (macro-os-exception? _exn89714_)
                (macro-os-exception-code _exn89714_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95198
                              (let ()
                                (declare (not safe))
                                (cons _exn89714_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95198)))))))
    (define os-exception-message
      (lambda (_exn89710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89710_))
            (let ((_e89712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89710_ 'exception))))
              (if (macro-os-exception? _e89712_)
                  (macro-os-exception-message _e89712_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95201
                                (let ()
                                  (declare (not safe))
                                  (cons _e89712_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95201)))))
            (if (macro-os-exception? _exn89710_)
                (macro-os-exception-message _exn89710_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95200
                              (let ()
                                (declare (not safe))
                                (cons _exn89710_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95200)))))))
    (define os-exception-procedure
      (lambda (_exn89704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89704_))
            (let ((_e89707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89704_ 'exception))))
              (if (macro-os-exception? _e89707_)
                  (macro-os-exception-procedure _e89707_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95203
                                (let ()
                                  (declare (not safe))
                                  (cons _e89707_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95203)))))
            (if (macro-os-exception? _exn89704_)
                (macro-os-exception-procedure _exn89704_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95202
                              (let ()
                                (declare (not safe))
                                (cons _exn89704_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95202)))))))
    (define permission-denied-exception?
      (lambda (_exn89700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89700_))
            (let ((_e89702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89700_ 'exception))))
              (macro-permission-denied-exception? _e89702_))
            (macro-permission-denied-exception? _exn89700_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89696_))
            (let ((_e89698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89696_ 'exception))))
              (if (macro-permission-denied-exception? _e89698_)
                  (macro-permission-denied-exception-arguments _e89698_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95205
                                (let ()
                                  (declare (not safe))
                                  (cons _e89698_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95205)))))
            (if (macro-permission-denied-exception? _exn89696_)
                (macro-permission-denied-exception-arguments _exn89696_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95204
                              (let ()
                                (declare (not safe))
                                (cons _exn89696_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95204)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89690_))
            (let ((_e89693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89690_ 'exception))))
              (if (macro-permission-denied-exception? _e89693_)
                  (macro-permission-denied-exception-procedure _e89693_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95207
                                (let ()
                                  (declare (not safe))
                                  (cons _e89693_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95207)))))
            (if (macro-permission-denied-exception? _exn89690_)
                (macro-permission-denied-exception-procedure _exn89690_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95206
                              (let ()
                                (declare (not safe))
                                (cons _exn89690_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95206)))))))
    (define range-exception?
      (lambda (_exn89686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89686_))
            (let ((_e89688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89686_ 'exception))))
              (macro-range-exception? _e89688_))
            (macro-range-exception? _exn89686_))))
    (define range-exception-arg-id
      (lambda (_exn89682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89682_))
            (let ((_e89684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89682_ 'exception))))
              (if (macro-range-exception? _e89684_)
                  (macro-range-exception-arg-id _e89684_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95209
                                (let ()
                                  (declare (not safe))
                                  (cons _e89684_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95209)))))
            (if (macro-range-exception? _exn89682_)
                (macro-range-exception-arg-id _exn89682_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95208
                              (let ()
                                (declare (not safe))
                                (cons _exn89682_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95208)))))))
    (define range-exception-arguments
      (lambda (_exn89678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89678_))
            (let ((_e89680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89678_ 'exception))))
              (if (macro-range-exception? _e89680_)
                  (macro-range-exception-arguments _e89680_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95211
                                (let ()
                                  (declare (not safe))
                                  (cons _e89680_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95211)))))
            (if (macro-range-exception? _exn89678_)
                (macro-range-exception-arguments _exn89678_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95210
                              (let ()
                                (declare (not safe))
                                (cons _exn89678_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95210)))))))
    (define range-exception-procedure
      (lambda (_exn89672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89672_))
            (let ((_e89675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89672_ 'exception))))
              (if (macro-range-exception? _e89675_)
                  (macro-range-exception-procedure _e89675_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95213
                                (let ()
                                  (declare (not safe))
                                  (cons _e89675_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95213)))))
            (if (macro-range-exception? _exn89672_)
                (macro-range-exception-procedure _exn89672_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95212
                              (let ()
                                (declare (not safe))
                                (cons _exn89672_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95212)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89668_))
            (let ((_e89670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89668_ 'exception))))
              (macro-rpc-remote-error-exception? _e89670_))
            (macro-rpc-remote-error-exception? _exn89668_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89664_))
            (let ((_e89666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89664_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89666_)
                  (macro-rpc-remote-error-exception-arguments _e89666_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95215
                                (let ()
                                  (declare (not safe))
                                  (cons _e89666_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95215)))))
            (if (macro-rpc-remote-error-exception? _exn89664_)
                (macro-rpc-remote-error-exception-arguments _exn89664_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95214
                              (let ()
                                (declare (not safe))
                                (cons _exn89664_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95214)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89660_))
            (let ((_e89662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89660_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89662_)
                  (macro-rpc-remote-error-exception-message _e89662_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95217
                                (let ()
                                  (declare (not safe))
                                  (cons _e89662_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95217)))))
            (if (macro-rpc-remote-error-exception? _exn89660_)
                (macro-rpc-remote-error-exception-message _exn89660_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95216
                              (let ()
                                (declare (not safe))
                                (cons _exn89660_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95216)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89654_))
            (let ((_e89657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89654_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89657_)
                  (macro-rpc-remote-error-exception-procedure _e89657_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95219
                                (let ()
                                  (declare (not safe))
                                  (cons _e89657_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95219)))))
            (if (macro-rpc-remote-error-exception? _exn89654_)
                (macro-rpc-remote-error-exception-procedure _exn89654_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95218
                              (let ()
                                (declare (not safe))
                                (cons _exn89654_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95218)))))))
    (define scheduler-exception?
      (lambda (_exn89650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89650_))
            (let ((_e89652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89650_ 'exception))))
              (macro-scheduler-exception? _e89652_))
            (macro-scheduler-exception? _exn89650_))))
    (define scheduler-exception-reason
      (lambda (_exn89644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89644_))
            (let ((_e89647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89644_ 'exception))))
              (if (macro-scheduler-exception? _e89647_)
                  (macro-scheduler-exception-reason _e89647_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95221
                                (let ()
                                  (declare (not safe))
                                  (cons _e89647_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95221)))))
            (if (macro-scheduler-exception? _exn89644_)
                (macro-scheduler-exception-reason _exn89644_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95220
                              (let ()
                                (declare (not safe))
                                (cons _exn89644_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95220)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89640_))
            (let ((_e89642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89640_ 'exception))))
              (macro-sfun-conversion-exception? _e89642_))
            (macro-sfun-conversion-exception? _exn89640_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89636_))
            (let ((_e89638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89636_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89638_)
                  (macro-sfun-conversion-exception-arguments _e89638_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95223
                                (let ()
                                  (declare (not safe))
                                  (cons _e89638_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95223)))))
            (if (macro-sfun-conversion-exception? _exn89636_)
                (macro-sfun-conversion-exception-arguments _exn89636_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95222
                              (let ()
                                (declare (not safe))
                                (cons _exn89636_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95222)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89632_))
            (let ((_e89634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89632_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89634_)
                  (macro-sfun-conversion-exception-code _e89634_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95225
                                (let ()
                                  (declare (not safe))
                                  (cons _e89634_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95225)))))
            (if (macro-sfun-conversion-exception? _exn89632_)
                (macro-sfun-conversion-exception-code _exn89632_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95224
                              (let ()
                                (declare (not safe))
                                (cons _exn89632_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95224)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89628_))
            (let ((_e89630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89628_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89630_)
                  (macro-sfun-conversion-exception-message _e89630_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95227
                                (let ()
                                  (declare (not safe))
                                  (cons _e89630_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95227)))))
            (if (macro-sfun-conversion-exception? _exn89628_)
                (macro-sfun-conversion-exception-message _exn89628_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95226
                              (let ()
                                (declare (not safe))
                                (cons _exn89628_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95226)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89622_))
            (let ((_e89625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89622_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89625_)
                  (macro-sfun-conversion-exception-procedure _e89625_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95229
                                (let ()
                                  (declare (not safe))
                                  (cons _e89625_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95229)))))
            (if (macro-sfun-conversion-exception? _exn89622_)
                (macro-sfun-conversion-exception-procedure _exn89622_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95228
                              (let ()
                                (declare (not safe))
                                (cons _exn89622_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95228)))))))
    (define stack-overflow-exception?
      (lambda (_exn89616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89616_))
            (let ((_e89619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89616_ 'exception))))
              (macro-stack-overflow-exception? _e89619_))
            (macro-stack-overflow-exception? _exn89616_))))
    (define started-thread-exception?
      (lambda (_exn89612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89612_))
            (let ((_e89614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89612_ 'exception))))
              (macro-started-thread-exception? _e89614_))
            (macro-started-thread-exception? _exn89612_))))
    (define started-thread-exception-arguments
      (lambda (_exn89608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89608_))
            (let ((_e89610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89608_ 'exception))))
              (if (macro-started-thread-exception? _e89610_)
                  (macro-started-thread-exception-arguments _e89610_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95231
                                (let ()
                                  (declare (not safe))
                                  (cons _e89610_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95231)))))
            (if (macro-started-thread-exception? _exn89608_)
                (macro-started-thread-exception-arguments _exn89608_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95230
                              (let ()
                                (declare (not safe))
                                (cons _exn89608_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95230)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89602_))
            (let ((_e89605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89602_ 'exception))))
              (if (macro-started-thread-exception? _e89605_)
                  (macro-started-thread-exception-procedure _e89605_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95233
                                (let ()
                                  (declare (not safe))
                                  (cons _e89605_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95233)))))
            (if (macro-started-thread-exception? _exn89602_)
                (macro-started-thread-exception-procedure _exn89602_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95232
                              (let ()
                                (declare (not safe))
                                (cons _exn89602_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95232)))))))
    (define terminated-thread-exception?
      (lambda (_exn89598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89598_))
            (let ((_e89600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89598_ 'exception))))
              (macro-terminated-thread-exception? _e89600_))
            (macro-terminated-thread-exception? _exn89598_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89594_))
            (let ((_e89596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89594_ 'exception))))
              (if (macro-terminated-thread-exception? _e89596_)
                  (macro-terminated-thread-exception-arguments _e89596_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95235
                                (let ()
                                  (declare (not safe))
                                  (cons _e89596_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95235)))))
            (if (macro-terminated-thread-exception? _exn89594_)
                (macro-terminated-thread-exception-arguments _exn89594_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95234
                              (let ()
                                (declare (not safe))
                                (cons _exn89594_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95234)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89588_))
            (let ((_e89591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89588_ 'exception))))
              (if (macro-terminated-thread-exception? _e89591_)
                  (macro-terminated-thread-exception-procedure _e89591_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95237
                                (let ()
                                  (declare (not safe))
                                  (cons _e89591_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95237)))))
            (if (macro-terminated-thread-exception? _exn89588_)
                (macro-terminated-thread-exception-procedure _exn89588_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95236
                              (let ()
                                (declare (not safe))
                                (cons _exn89588_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95236)))))))
    (define type-exception?
      (lambda (_exn89584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89584_))
            (let ((_e89586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89584_ 'exception))))
              (macro-type-exception? _e89586_))
            (macro-type-exception? _exn89584_))))
    (define type-exception-arg-id
      (lambda (_exn89580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89580_))
            (let ((_e89582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89580_ 'exception))))
              (if (macro-type-exception? _e89582_)
                  (macro-type-exception-arg-id _e89582_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95239
                                (let ()
                                  (declare (not safe))
                                  (cons _e89582_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95239)))))
            (if (macro-type-exception? _exn89580_)
                (macro-type-exception-arg-id _exn89580_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95238
                              (let ()
                                (declare (not safe))
                                (cons _exn89580_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95238)))))))
    (define type-exception-arguments
      (lambda (_exn89576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89576_))
            (let ((_e89578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89576_ 'exception))))
              (if (macro-type-exception? _e89578_)
                  (macro-type-exception-arguments _e89578_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95241
                                (let ()
                                  (declare (not safe))
                                  (cons _e89578_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95241)))))
            (if (macro-type-exception? _exn89576_)
                (macro-type-exception-arguments _exn89576_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95240
                              (let ()
                                (declare (not safe))
                                (cons _exn89576_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95240)))))))
    (define type-exception-procedure
      (lambda (_exn89572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89572_))
            (let ((_e89574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89572_ 'exception))))
              (if (macro-type-exception? _e89574_)
                  (macro-type-exception-procedure _e89574_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95243
                                (let ()
                                  (declare (not safe))
                                  (cons _e89574_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95243)))))
            (if (macro-type-exception? _exn89572_)
                (macro-type-exception-procedure _exn89572_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95242
                              (let ()
                                (declare (not safe))
                                (cons _exn89572_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95242)))))))
    (define type-exception-type-id
      (lambda (_exn89566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89566_))
            (let ((_e89569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89566_ 'exception))))
              (if (macro-type-exception? _e89569_)
                  (macro-type-exception-type-id _e89569_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95245
                                (let ()
                                  (declare (not safe))
                                  (cons _e89569_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95245)))))
            (if (macro-type-exception? _exn89566_)
                (macro-type-exception-type-id _exn89566_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95244
                              (let ()
                                (declare (not safe))
                                (cons _exn89566_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95244)))))))
    (define unbound-global-exception?
      (lambda (_exn89562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89562_))
            (let ((_e89564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89562_ 'exception))))
              (macro-unbound-global-exception? _e89564_))
            (macro-unbound-global-exception? _exn89562_))))
    (define unbound-global-exception-code
      (lambda (_exn89558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89558_))
            (let ((_e89560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89558_ 'exception))))
              (if (macro-unbound-global-exception? _e89560_)
                  (macro-unbound-global-exception-code _e89560_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95247
                                (let ()
                                  (declare (not safe))
                                  (cons _e89560_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95247)))))
            (if (macro-unbound-global-exception? _exn89558_)
                (macro-unbound-global-exception-code _exn89558_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95246
                              (let ()
                                (declare (not safe))
                                (cons _exn89558_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95246)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89554_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89554_))
            (let ((_e89556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89554_ 'exception))))
              (if (macro-unbound-global-exception? _e89556_)
                  (macro-unbound-global-exception-rte _e89556_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95249
                                (let ()
                                  (declare (not safe))
                                  (cons _e89556_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95249)))))
            (if (macro-unbound-global-exception? _exn89554_)
                (macro-unbound-global-exception-rte _exn89554_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95248
                              (let ()
                                (declare (not safe))
                                (cons _exn89554_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95248)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89548_))
            (let ((_e89551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89548_ 'exception))))
              (if (macro-unbound-global-exception? _e89551_)
                  (macro-unbound-global-exception-variable _e89551_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95251
                                (let ()
                                  (declare (not safe))
                                  (cons _e89551_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95251)))))
            (if (macro-unbound-global-exception? _exn89548_)
                (macro-unbound-global-exception-variable _exn89548_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95250
                              (let ()
                                (declare (not safe))
                                (cons _exn89548_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95250)))))))
    (define unbound-key-exception?
      (lambda (_exn89544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89544_))
            (let ((_e89546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89544_ 'exception))))
              (macro-unbound-key-exception? _e89546_))
            (macro-unbound-key-exception? _exn89544_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89540_))
            (let ((_e89542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89540_ 'exception))))
              (if (macro-unbound-key-exception? _e89542_)
                  (macro-unbound-key-exception-arguments _e89542_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95253
                                (let ()
                                  (declare (not safe))
                                  (cons _e89542_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95253)))))
            (if (macro-unbound-key-exception? _exn89540_)
                (macro-unbound-key-exception-arguments _exn89540_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95252
                              (let ()
                                (declare (not safe))
                                (cons _exn89540_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95252)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89534_))
            (let ((_e89537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89534_ 'exception))))
              (if (macro-unbound-key-exception? _e89537_)
                  (macro-unbound-key-exception-procedure _e89537_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95255
                                (let ()
                                  (declare (not safe))
                                  (cons _e89537_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95255)))))
            (if (macro-unbound-key-exception? _exn89534_)
                (macro-unbound-key-exception-procedure _exn89534_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95254
                              (let ()
                                (declare (not safe))
                                (cons _exn89534_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95254)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89530_))
            (let ((_e89532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89530_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89532_))
            (macro-unbound-os-environment-variable-exception? _exn89530_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89526_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89526_))
            (let ((_e89528_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89526_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89528_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89528_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95257
                                (let ()
                                  (declare (not safe))
                                  (cons _e89528_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95257)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89526_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89526_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95256
                              (let ()
                                (declare (not safe))
                                (cons _exn89526_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95256)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89520_))
            (let ((_e89523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89520_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89523_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89523_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95259
                                (let ()
                                  (declare (not safe))
                                  (cons _e89523_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95259)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89520_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89520_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95258
                              (let ()
                                (declare (not safe))
                                (cons _exn89520_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95258)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89516_))
            (let ((_e89518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89516_ 'exception))))
              (macro-unbound-serial-number-exception? _e89518_))
            (macro-unbound-serial-number-exception? _exn89516_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89512_))
            (let ((_e89514_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89512_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89514_)
                  (macro-unbound-serial-number-exception-arguments _e89514_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95261
                                (let ()
                                  (declare (not safe))
                                  (cons _e89514_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95261)))))
            (if (macro-unbound-serial-number-exception? _exn89512_)
                (macro-unbound-serial-number-exception-arguments _exn89512_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95260
                              (let ()
                                (declare (not safe))
                                (cons _exn89512_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95260)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89506_))
            (let ((_e89509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89506_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89509_)
                  (macro-unbound-serial-number-exception-procedure _e89509_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95263
                                (let ()
                                  (declare (not safe))
                                  (cons _e89509_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95263)))))
            (if (macro-unbound-serial-number-exception? _exn89506_)
                (macro-unbound-serial-number-exception-procedure _exn89506_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95262
                              (let ()
                                (declare (not safe))
                                (cons _exn89506_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95262)))))))
    (define uncaught-exception?
      (lambda (_exn89502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89502_))
            (let ((_e89504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89502_ 'exception))))
              (macro-uncaught-exception? _e89504_))
            (macro-uncaught-exception? _exn89502_))))
    (define uncaught-exception-arguments
      (lambda (_exn89498_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89498_))
            (let ((_e89500_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89498_ 'exception))))
              (if (macro-uncaught-exception? _e89500_)
                  (macro-uncaught-exception-arguments _e89500_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95265
                                (let ()
                                  (declare (not safe))
                                  (cons _e89500_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95265)))))
            (if (macro-uncaught-exception? _exn89498_)
                (macro-uncaught-exception-arguments _exn89498_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95264
                              (let ()
                                (declare (not safe))
                                (cons _exn89498_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95264)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89494_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89494_))
            (let ((_e89496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89494_ 'exception))))
              (if (macro-uncaught-exception? _e89496_)
                  (macro-uncaught-exception-procedure _e89496_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95267
                                (let ()
                                  (declare (not safe))
                                  (cons _e89496_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95267)))))
            (if (macro-uncaught-exception? _exn89494_)
                (macro-uncaught-exception-procedure _exn89494_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95266
                              (let ()
                                (declare (not safe))
                                (cons _exn89494_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95266)))))))
    (define uncaught-exception-reason
      (lambda (_exn89488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89488_))
            (let ((_e89491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89488_ 'exception))))
              (if (macro-uncaught-exception? _e89491_)
                  (macro-uncaught-exception-reason _e89491_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95269
                                (let ()
                                  (declare (not safe))
                                  (cons _e89491_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95269)))))
            (if (macro-uncaught-exception? _exn89488_)
                (macro-uncaught-exception-reason _exn89488_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95268
                              (let ()
                                (declare (not safe))
                                (cons _exn89488_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95268)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89484_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89484_))
            (let ((_e89486_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89484_ 'exception))))
              (macro-uninitialized-thread-exception? _e89486_))
            (macro-uninitialized-thread-exception? _exn89484_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89480_))
            (let ((_e89482_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89480_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89482_)
                  (macro-uninitialized-thread-exception-arguments _e89482_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95271
                                (let ()
                                  (declare (not safe))
                                  (cons _e89482_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95271)))))
            (if (macro-uninitialized-thread-exception? _exn89480_)
                (macro-uninitialized-thread-exception-arguments _exn89480_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95270
                              (let ()
                                (declare (not safe))
                                (cons _exn89480_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95270)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89474_))
            (let ((_e89477_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89474_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89477_)
                  (macro-uninitialized-thread-exception-procedure _e89477_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95273
                                (let ()
                                  (declare (not safe))
                                  (cons _e89477_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95273)))))
            (if (macro-uninitialized-thread-exception? _exn89474_)
                (macro-uninitialized-thread-exception-procedure _exn89474_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95272
                              (let ()
                                (declare (not safe))
                                (cons _exn89474_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95272)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89470_))
            (let ((_e89472_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89470_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89472_))
            (macro-unknown-keyword-argument-exception? _exn89470_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89466_))
            (let ((_e89468_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89466_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89468_)
                  (macro-unknown-keyword-argument-exception-arguments _e89468_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95275
                                (let ()
                                  (declare (not safe))
                                  (cons _e89468_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95275)))))
            (if (macro-unknown-keyword-argument-exception? _exn89466_)
                (macro-unknown-keyword-argument-exception-arguments _exn89466_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95274
                              (let ()
                                (declare (not safe))
                                (cons _exn89466_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95274)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89460_))
            (let ((_e89463_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89460_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89463_)
                  (macro-unknown-keyword-argument-exception-procedure _e89463_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95277
                                (let ()
                                  (declare (not safe))
                                  (cons _e89463_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95277)))))
            (if (macro-unknown-keyword-argument-exception? _exn89460_)
                (macro-unknown-keyword-argument-exception-procedure _exn89460_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95276
                              (let ()
                                (declare (not safe))
                                (cons _exn89460_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95276)))))))
    (define unterminated-process-exception?
      (lambda (_exn89456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89456_))
            (let ((_e89458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89456_ 'exception))))
              (macro-unterminated-process-exception? _e89458_))
            (macro-unterminated-process-exception? _exn89456_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89452_))
            (let ((_e89454_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89452_ 'exception))))
              (if (macro-unterminated-process-exception? _e89454_)
                  (macro-unterminated-process-exception-arguments _e89454_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95279
                                (let ()
                                  (declare (not safe))
                                  (cons _e89454_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95279)))))
            (if (macro-unterminated-process-exception? _exn89452_)
                (macro-unterminated-process-exception-arguments _exn89452_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95278
                              (let ()
                                (declare (not safe))
                                (cons _exn89452_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95278)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89446_))
            (let ((_e89449_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89446_ 'exception))))
              (if (macro-unterminated-process-exception? _e89449_)
                  (macro-unterminated-process-exception-procedure _e89449_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95281
                                (let ()
                                  (declare (not safe))
                                  (cons _e89449_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95281)))))
            (if (macro-unterminated-process-exception? _exn89446_)
                (macro-unterminated-process-exception-procedure _exn89446_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95280
                              (let ()
                                (declare (not safe))
                                (cons _exn89446_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95280)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89442_))
            (let ((_e89444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89442_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89444_))
            (macro-wrong-number-of-arguments-exception? _exn89442_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89438_))
            (let ((_e89440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89438_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89440_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89440_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95283
                                (let ()
                                  (declare (not safe))
                                  (cons _e89440_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95283)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89438_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89438_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95282
                              (let ()
                                (declare (not safe))
                                (cons _exn89438_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95282)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89432_))
            (let ((_e89435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89432_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89435_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89435_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95285
                                (let ()
                                  (declare (not safe))
                                  (cons _e89435_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95285)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89432_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89432_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95284
                              (let ()
                                (declare (not safe))
                                (cons _exn89432_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95284)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89428_))
            (let ((_e89430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89428_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89430_))
            (macro-wrong-number-of-values-exception? _exn89428_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89424_))
            (let ((_e89426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89424_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89426_)
                  (macro-wrong-number-of-values-exception-code _e89426_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95287
                                (let ()
                                  (declare (not safe))
                                  (cons _e89426_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95287)))))
            (if (macro-wrong-number-of-values-exception? _exn89424_)
                (macro-wrong-number-of-values-exception-code _exn89424_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95286
                              (let ()
                                (declare (not safe))
                                (cons _exn89424_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95286)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89420_))
            (let ((_e89422_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89420_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89422_)
                  (macro-wrong-number-of-values-exception-rte _e89422_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95289
                                (let ()
                                  (declare (not safe))
                                  (cons _e89422_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95289)))))
            (if (macro-wrong-number-of-values-exception? _exn89420_)
                (macro-wrong-number-of-values-exception-rte _exn89420_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95288
                              (let ()
                                (declare (not safe))
                                (cons _exn89420_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95288)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89414_))
            (let ((_e89417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89414_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89417_)
                  (macro-wrong-number-of-values-exception-vals _e89417_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95291
                                (let ()
                                  (declare (not safe))
                                  (cons _e89417_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95291)))))
            (if (macro-wrong-number-of-values-exception? _exn89414_)
                (macro-wrong-number-of-values-exception-vals _exn89414_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95290
                              (let ()
                                (declare (not safe))
                                (cons _exn89414_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95290)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89408_))
            (let ((_e89411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89408_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89411_))
            (macro-wrong-processor-c-return-exception? _exn89408_))))))
