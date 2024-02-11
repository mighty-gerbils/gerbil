(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707657568)
  (begin
    (define Exception::t
      (let ((__tmp95008 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95008
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90511_
        (apply make-class-instance Exception::t _$args90511_)))
    (define StackTrace::t
      (let ((__tmp95009 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95009
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90508_
        (apply make-class-instance StackTrace::t _$args90508_)))
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
      (let ((__tmp95010 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95010
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90505_ (apply make-class-instance Error::t _$args90505_)))
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
      (let ((__tmp95011 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95011
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90502_
        (apply make-class-instance RuntimeException::t _$args90502_)))
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
      (lambda (_exn90497_ _continue90498_)
        (let ((_exn90500_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90497_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90500_ _continue90498_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90493_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90493_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90493_ 'continuation))
                '#!void
                (let ((__tmp95012
                       (lambda (_cont90495_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90493_
                            'continuation
                            _cont90495_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95012)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90493_))))
    (define error
      (lambda (_message90490_ . _irritants90491_)
        (raise (let ((__obj95002
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95002
                  _message90490_
                  'irritants:
                  _irritants90491_)
                 __obj95002))))
    (define with-exception-handler
      (lambda (_handler90483_ _thunk90484_)
        (if (let () (declare (not safe)) (procedure? _handler90483_))
            '#!void
            (raise (let ((__obj95003
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95003
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90483_ '())))
                     __obj95003)))
        (if (let () (declare (not safe)) (procedure? _thunk90484_))
            '#!void
            (raise (let ((__obj95004
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95004
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90484_ '())))
                     __obj95004)))
        (let ((__tmp95013
               (lambda (_exn90486_)
                 (let ((_exn90488_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90486_))))
                   (_handler90483_ _exn90488_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95013 _thunk90484_))))
    (define with-catch
      (lambda (_handler90476_ _thunk90477_)
        (if (let () (declare (not safe)) (procedure? _handler90476_))
            '#!void
            (raise (let ((__obj95005
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95005
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90476_ '())))
                     __obj95005)))
        (if (let () (declare (not safe)) (procedure? _thunk90477_))
            '#!void
            (raise (let ((__obj95006
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95006
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90477_ '())))
                     __obj95006)))
        (let ((__tmp95014
               (lambda (_cont90479_)
                 (with-exception-handler
                  (lambda (_exn90481_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90479_
                       _handler90476_
                       _exn90481_)))
                  _thunk90477_))))
          (declare (not safe))
          (##continuation-capture __tmp95014))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90467_)
        (if (or (heap-overflow-exception? _exn90467_)
                (stack-overflow-exception? _exn90467_))
            _exn90467_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90467_))
                _exn90467_
                (if (macro-exception? _exn90467_)
                    (let ((_rte90472_
                           (let ((__obj95007
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95007
                                _exn90467_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95007)))
                      (let ((__tmp95015
                             (lambda (_cont90474_)
                               (let ((__tmp95016
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90474_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90472_
                                  'continuation
                                  __tmp95016)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95015))
                      _rte90472_)
                    _exn90467_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90462_)
        (let ((_$e90464_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90462_))))
          (if _$e90464_ _$e90464_ (error-exception? _obj90462_)))))
    (define error-message
      (lambda (_obj90460_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90460_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90460_ 'message))
            (if (error-exception? _obj90460_)
                (error-exception-message _obj90460_)
                '#f))))
    (define error-irritants
      (lambda (_obj90458_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90458_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90458_ 'irritants))
            (if (error-exception? _obj90458_)
                (error-exception-parameters _obj90458_)
                '#f))))
    (define error-trace
      (lambda (_obj90456_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90456_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90456_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90438_ _port90439_)
        (let ((_$e90441_
               (let ()
                 (declare (not safe))
                 (method-ref _e90438_ 'display-exception))))
          (if _$e90441_
              ((lambda (_f90444_) (_f90444_ _e90438_ _port90439_)) _$e90441_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90438_ _port90439_))))))
    (define display-exception__0
      (lambda (_e90449_)
        (let ((_port90451_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90449_ _port90451_))))
    (define display-exception
      (lambda _g95018_
        (let ((_g95017_ (let () (declare (not safe)) (##length _g95018_))))
          (cond ((let () (declare (not safe)) (##fx= _g95017_ 1))
                 (apply (lambda (_e90449_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90449_)))
                        _g95018_))
                ((let () (declare (not safe)) (##fx= _g95017_ 2))
                 (apply (lambda (_e90453_ _port90454_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90453_ _port90454_)))
                        _g95018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95018_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90427_ _message90428_ . _rest90429_)
        (let ((_message90435_
               (if (let () (declare (not safe)) (string? _message90428_))
                   _message90428_
                   (call-with-output-string
                    '""
                    (lambda (_g9043090432_)
                      (display _message90428_ _g9043090432_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90427_ 'message _message90435_))
          (apply class-instance-init! _self90427_ _rest90429_))))
    (define Error:::init!::specialize
      (lambda (__t94981)
        (let ((__message94982
               (let ((__tmp94983
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94981 'message))))
                 (if __tmp94983 __tmp94983 (error '"Unknown slot" 'message)))))
          (lambda (_self90427_ _message90428_ . _rest90429_)
            (let ((_message90435_
                   (if (let () (declare (not safe)) (string? _message90428_))
                       _message90428_
                       (call-with-output-string
                        '""
                        (lambda (_g9043090432_)
                          (display _message90428_ _g9043090432_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90427_
                 _message90435_
                 __message94982
                 __t94981
                 '#f))
              (apply class-instance-init! _self90427_ _rest90429_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90285_ _port90286_)
        (let ((_tmp-port90288_ (open-output-string))
              (_display-error-newline90289_
               (> (output-port-column _port90286_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90288_))
          (let ((__tmp95019
                 (lambda ()
                   (if _display-error-newline90289_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90292_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90285_ 'where))))
                     (if _$e90292_ (display _$e90292_) (display '"?")))
                   (let ((__tmp95020
                          (let ((__tmp95021
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90285_))))
                            (declare (not safe))
                            (##type-name __tmp95021))))
                     (declare (not safe))
                     (display* '" [" __tmp95020 '"]: "))
                   (let ((__tmp95022
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90285_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95022))
                   (let ((_irritants90295_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90285_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90295_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90297_)
                              (write _obj90297_)
                              (write-char '#\space))
                            _irritants90295_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90285_))
                            (dump-stack-trace?))
                       (let ((_cont9029890300_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90285_
                                 'continuation))))
                         (if _cont9029890300_
                             (let ((_cont90303_ _cont9029890300_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90303_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95019
             current-output-port
             _tmp-port90288_))
          (let ((__tmp95023 (get-output-string _tmp-port90288_)))
            (declare (not safe))
            (##write-string __tmp95023 _port90286_)))))
    (define Error::display-exception::specialize
      (lambda (__t94984)
        (let ((__message94985
               (let ((__tmp94989
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94984 'message))))
                 (if __tmp94989 __tmp94989 (error '"Unknown slot" 'message))))
              (__irritants94986
               (let ((__tmp94990
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94984 'irritants))))
                 (if __tmp94990
                     __tmp94990
                     (error '"Unknown slot" 'irritants))))
              (__where94987
               (let ((__tmp94991
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94984 'where))))
                 (if __tmp94991 __tmp94991 (error '"Unknown slot" 'where))))
              (__continuation94988
               (let ((__tmp94992
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94984 'continuation))))
                 (if __tmp94992
                     __tmp94992
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90285_ _port90286_)
            (let ((_tmp-port90288_ (open-output-string))
                  (_display-error-newline90289_
                   (> (output-port-column _port90286_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90288_))
              (let ((__tmp95024
                     (lambda ()
                       (if _display-error-newline90289_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90292_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90285_
                                 __where94987
                                 __t94984
                                 '#f))))
                         (if _$e90292_ (display _$e90292_) (display '"?")))
                       (let ((__tmp95025
                              (let ((__tmp95026
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90285_))))
                                (declare (not safe))
                                (##type-name __tmp95026))))
                         (declare (not safe))
                         (display* '" [" __tmp95025 '"]: "))
                       (let ((__tmp95027
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90285_
                                 __message94985
                                 __t94984
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95027))
                       (let ((_irritants90295_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90285_
                                 __irritants94986
                                 __t94984
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90295_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90297_)
                                  (write _obj90297_)
                                  (write-char '#\space))
                                _irritants90295_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90285_))
                                (dump-stack-trace?))
                           (let ((_cont9029890300_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90285_
                                     __continuation94988
                                     __t94984
                                     '#f))))
                             (if _cont9029890300_
                                 (let ((_cont90303_ _cont9029890300_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90303_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95024
                 current-output-port
                 _tmp-port90288_))
              (let ((__tmp95028 (get-output-string _tmp-port90288_)))
                (declare (not safe))
                (##write-string __tmp95028 _port90286_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90152_ _port90153_)
        (let ((_tmp-port90155_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90155_))
          (let ((__tmp95029
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90152_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95029 _tmp-port90155_))
          (if (dump-stack-trace?)
              (let ((_cont9015690158_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90152_ 'continuation))))
                (if _cont9015690158_
                    (let ((_cont90161_ _cont9015690158_))
                      (display '"--- continuation backtrace:" _tmp-port90155_)
                      (newline _tmp-port90155_)
                      (display-continuation-backtrace
                       _cont90161_
                       _tmp-port90155_))
                    '#f))
              '#!void)
          (let ((__tmp95030 (get-output-string _tmp-port90155_)))
            (declare (not safe))
            (##write-string __tmp95030 _port90153_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94993)
        (let ((__exception94994
               (let ((__tmp94996
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94993 'exception))))
                 (if __tmp94996
                     __tmp94996
                     (error '"Unknown slot" 'exception))))
              (__continuation94995
               (let ((__tmp94997
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94993 'continuation))))
                 (if __tmp94997
                     __tmp94997
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90152_ _port90153_)
            (let ((_tmp-port90155_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90155_))
              (let ((__tmp95031
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90152_
                        __exception94994
                        __t94993
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95031 _tmp-port90155_))
              (if (dump-stack-trace?)
                  (let ((_cont9015690158_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90152_
                            __continuation94995
                            __t94993
                            '#f))))
                    (if _cont9015690158_
                        (let ((_cont90161_ _cont9015690158_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90155_)
                          (newline _tmp-port90155_)
                          (display-continuation-backtrace
                           _cont90161_
                           _tmp-port90155_))
                        '#f))
                  '#!void)
              (let ((__tmp95032 (get-output-string _tmp-port90155_)))
                (declare (not safe))
                (##write-string __tmp95032 _port90153_)))))))
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
      (lambda (_port90024_)
        (if (macro-character-port? _port90024_)
            (let ((_old-width90026_
                   (macro-character-port-output-width _port90024_)))
              (macro-character-port-output-width-set!
               _port90024_
               (lambda (_port90028_) '256))
              _old-width90026_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90021_ _old-width90022_)
        (if (macro-character-port? _port90021_)
            (macro-character-port-output-width-set!
             _port90021_
             _old-width90022_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90019_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90019_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90013_))
            (let ((_e90016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90013_ 'exception))))
              (macro-abandoned-mutex-exception? _e90016_))
            (macro-abandoned-mutex-exception? _exn90013_))))
    (define cfun-conversion-exception?
      (lambda (_exn90009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90009_))
            (let ((_e90011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90009_ 'exception))))
              (macro-cfun-conversion-exception? _e90011_))
            (macro-cfun-conversion-exception? _exn90009_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90005_))
            (let ((_e90007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90005_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90007_)
                  (macro-cfun-conversion-exception-arguments _e90007_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95034
                                (let ()
                                  (declare (not safe))
                                  (cons _e90007_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95034)))))
            (if (macro-cfun-conversion-exception? _exn90005_)
                (macro-cfun-conversion-exception-arguments _exn90005_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95033
                              (let ()
                                (declare (not safe))
                                (cons _exn90005_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95033)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90001_))
            (let ((_e90003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90001_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90003_)
                  (macro-cfun-conversion-exception-code _e90003_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95036
                                (let ()
                                  (declare (not safe))
                                  (cons _e90003_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95036)))))
            (if (macro-cfun-conversion-exception? _exn90001_)
                (macro-cfun-conversion-exception-code _exn90001_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95035
                              (let ()
                                (declare (not safe))
                                (cons _exn90001_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95035)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn89997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89997_))
            (let ((_e89999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89997_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89999_)
                  (macro-cfun-conversion-exception-message _e89999_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95038
                                (let ()
                                  (declare (not safe))
                                  (cons _e89999_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95038)))))
            (if (macro-cfun-conversion-exception? _exn89997_)
                (macro-cfun-conversion-exception-message _exn89997_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95037
                              (let ()
                                (declare (not safe))
                                (cons _exn89997_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95037)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn89991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89991_))
            (let ((_e89994_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89991_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89994_)
                  (macro-cfun-conversion-exception-procedure _e89994_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95040
                                (let ()
                                  (declare (not safe))
                                  (cons _e89994_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95040)))))
            (if (macro-cfun-conversion-exception? _exn89991_)
                (macro-cfun-conversion-exception-procedure _exn89991_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95039
                              (let ()
                                (declare (not safe))
                                (cons _exn89991_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95039)))))))
    (define datum-parsing-exception?
      (lambda (_exn89987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89987_))
            (let ((_e89989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89987_ 'exception))))
              (macro-datum-parsing-exception? _e89989_))
            (macro-datum-parsing-exception? _exn89987_))))
    (define datum-parsing-exception-kind
      (lambda (_exn89983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89983_))
            (let ((_e89985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89983_ 'exception))))
              (if (macro-datum-parsing-exception? _e89985_)
                  (macro-datum-parsing-exception-kind _e89985_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95042
                                (let ()
                                  (declare (not safe))
                                  (cons _e89985_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95042)))))
            (if (macro-datum-parsing-exception? _exn89983_)
                (macro-datum-parsing-exception-kind _exn89983_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95041
                              (let ()
                                (declare (not safe))
                                (cons _exn89983_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95041)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn89979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89979_))
            (let ((_e89981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89979_ 'exception))))
              (if (macro-datum-parsing-exception? _e89981_)
                  (macro-datum-parsing-exception-parameters _e89981_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95044
                                (let ()
                                  (declare (not safe))
                                  (cons _e89981_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95044)))))
            (if (macro-datum-parsing-exception? _exn89979_)
                (macro-datum-parsing-exception-parameters _exn89979_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95043
                              (let ()
                                (declare (not safe))
                                (cons _exn89979_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95043)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn89973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89973_))
            (let ((_e89976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89973_ 'exception))))
              (if (macro-datum-parsing-exception? _e89976_)
                  (macro-datum-parsing-exception-readenv _e89976_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95046
                                (let ()
                                  (declare (not safe))
                                  (cons _e89976_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95046)))))
            (if (macro-datum-parsing-exception? _exn89973_)
                (macro-datum-parsing-exception-readenv _exn89973_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95045
                              (let ()
                                (declare (not safe))
                                (cons _exn89973_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95045)))))))
    (define deadlock-exception?
      (lambda (_exn89967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89967_))
            (let ((_e89970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89967_ 'exception))))
              (macro-deadlock-exception? _e89970_))
            (macro-deadlock-exception? _exn89967_))))
    (define divide-by-zero-exception?
      (lambda (_exn89963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89963_))
            (let ((_e89965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89963_ 'exception))))
              (macro-divide-by-zero-exception? _e89965_))
            (macro-divide-by-zero-exception? _exn89963_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn89959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89959_))
            (let ((_e89961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89959_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89961_)
                  (macro-divide-by-zero-exception-arguments _e89961_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95048
                                (let ()
                                  (declare (not safe))
                                  (cons _e89961_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95048)))))
            (if (macro-divide-by-zero-exception? _exn89959_)
                (macro-divide-by-zero-exception-arguments _exn89959_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95047
                              (let ()
                                (declare (not safe))
                                (cons _exn89959_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95047)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn89953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89953_))
            (let ((_e89956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89953_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89956_)
                  (macro-divide-by-zero-exception-procedure _e89956_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95050
                                (let ()
                                  (declare (not safe))
                                  (cons _e89956_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95050)))))
            (if (macro-divide-by-zero-exception? _exn89953_)
                (macro-divide-by-zero-exception-procedure _exn89953_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95049
                              (let ()
                                (declare (not safe))
                                (cons _exn89953_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95049)))))))
    (define error-exception?
      (lambda (_exn89949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89949_))
            (let ((_e89951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89949_ 'exception))))
              (macro-error-exception? _e89951_))
            (macro-error-exception? _exn89949_))))
    (define error-exception-message
      (lambda (_exn89945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89945_))
            (let ((_e89947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89945_ 'exception))))
              (if (macro-error-exception? _e89947_)
                  (macro-error-exception-message _e89947_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95052
                                (let ()
                                  (declare (not safe))
                                  (cons _e89947_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95052)))))
            (if (macro-error-exception? _exn89945_)
                (macro-error-exception-message _exn89945_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95051
                              (let ()
                                (declare (not safe))
                                (cons _exn89945_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95051)))))))
    (define error-exception-parameters
      (lambda (_exn89939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89939_))
            (let ((_e89942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89939_ 'exception))))
              (if (macro-error-exception? _e89942_)
                  (macro-error-exception-parameters _e89942_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95054
                                (let ()
                                  (declare (not safe))
                                  (cons _e89942_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95054)))))
            (if (macro-error-exception? _exn89939_)
                (macro-error-exception-parameters _exn89939_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95053
                              (let ()
                                (declare (not safe))
                                (cons _exn89939_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95053)))))))
    (define expression-parsing-exception?
      (lambda (_exn89935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89935_))
            (let ((_e89937_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89935_ 'exception))))
              (macro-expression-parsing-exception? _e89937_))
            (macro-expression-parsing-exception? _exn89935_))))
    (define expression-parsing-exception-kind
      (lambda (_exn89931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89931_))
            (let ((_e89933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89931_ 'exception))))
              (if (macro-expression-parsing-exception? _e89933_)
                  (macro-expression-parsing-exception-kind _e89933_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95056
                                (let ()
                                  (declare (not safe))
                                  (cons _e89933_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95056)))))
            (if (macro-expression-parsing-exception? _exn89931_)
                (macro-expression-parsing-exception-kind _exn89931_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95055
                              (let ()
                                (declare (not safe))
                                (cons _exn89931_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95055)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn89927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89927_))
            (let ((_e89929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89927_ 'exception))))
              (if (macro-expression-parsing-exception? _e89929_)
                  (macro-expression-parsing-exception-parameters _e89929_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95058
                                (let ()
                                  (declare (not safe))
                                  (cons _e89929_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95058)))))
            (if (macro-expression-parsing-exception? _exn89927_)
                (macro-expression-parsing-exception-parameters _exn89927_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95057
                              (let ()
                                (declare (not safe))
                                (cons _exn89927_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95057)))))))
    (define expression-parsing-exception-source
      (lambda (_exn89921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89921_))
            (let ((_e89924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89921_ 'exception))))
              (if (macro-expression-parsing-exception? _e89924_)
                  (macro-expression-parsing-exception-source _e89924_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95060
                                (let ()
                                  (declare (not safe))
                                  (cons _e89924_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95060)))))
            (if (macro-expression-parsing-exception? _exn89921_)
                (macro-expression-parsing-exception-source _exn89921_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95059
                              (let ()
                                (declare (not safe))
                                (cons _exn89921_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95059)))))))
    (define file-exists-exception?
      (lambda (_exn89917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89917_))
            (let ((_e89919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89917_ 'exception))))
              (macro-file-exists-exception? _e89919_))
            (macro-file-exists-exception? _exn89917_))))
    (define file-exists-exception-arguments
      (lambda (_exn89913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89913_))
            (let ((_e89915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89913_ 'exception))))
              (if (macro-file-exists-exception? _e89915_)
                  (macro-file-exists-exception-arguments _e89915_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95062
                                (let ()
                                  (declare (not safe))
                                  (cons _e89915_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95062)))))
            (if (macro-file-exists-exception? _exn89913_)
                (macro-file-exists-exception-arguments _exn89913_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95061
                              (let ()
                                (declare (not safe))
                                (cons _exn89913_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95061)))))))
    (define file-exists-exception-procedure
      (lambda (_exn89907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89907_))
            (let ((_e89910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89907_ 'exception))))
              (if (macro-file-exists-exception? _e89910_)
                  (macro-file-exists-exception-procedure _e89910_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95064
                                (let ()
                                  (declare (not safe))
                                  (cons _e89910_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95064)))))
            (if (macro-file-exists-exception? _exn89907_)
                (macro-file-exists-exception-procedure _exn89907_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95063
                              (let ()
                                (declare (not safe))
                                (cons _exn89907_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95063)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn89903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89903_))
            (let ((_e89905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89903_ 'exception))))
              (macro-fixnum-overflow-exception? _e89905_))
            (macro-fixnum-overflow-exception? _exn89903_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn89899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89899_))
            (let ((_e89901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89899_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89901_)
                  (macro-fixnum-overflow-exception-arguments _e89901_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95066
                                (let ()
                                  (declare (not safe))
                                  (cons _e89901_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95066)))))
            (if (macro-fixnum-overflow-exception? _exn89899_)
                (macro-fixnum-overflow-exception-arguments _exn89899_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95065
                              (let ()
                                (declare (not safe))
                                (cons _exn89899_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95065)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn89893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89893_))
            (let ((_e89896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89893_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89896_)
                  (macro-fixnum-overflow-exception-procedure _e89896_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95068
                                (let ()
                                  (declare (not safe))
                                  (cons _e89896_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95068)))))
            (if (macro-fixnum-overflow-exception? _exn89893_)
                (macro-fixnum-overflow-exception-procedure _exn89893_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95067
                              (let ()
                                (declare (not safe))
                                (cons _exn89893_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95067)))))))
    (define heap-overflow-exception?
      (lambda (_exn89887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89887_))
            (let ((_e89890_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89887_ 'exception))))
              (macro-heap-overflow-exception? _e89890_))
            (macro-heap-overflow-exception? _exn89887_))))
    (define inactive-thread-exception?
      (lambda (_exn89883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89883_))
            (let ((_e89885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89883_ 'exception))))
              (macro-inactive-thread-exception? _e89885_))
            (macro-inactive-thread-exception? _exn89883_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn89879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89879_))
            (let ((_e89881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89879_ 'exception))))
              (if (macro-inactive-thread-exception? _e89881_)
                  (macro-inactive-thread-exception-arguments _e89881_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95070
                                (let ()
                                  (declare (not safe))
                                  (cons _e89881_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95070)))))
            (if (macro-inactive-thread-exception? _exn89879_)
                (macro-inactive-thread-exception-arguments _exn89879_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95069
                              (let ()
                                (declare (not safe))
                                (cons _exn89879_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95069)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn89873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89873_))
            (let ((_e89876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89873_ 'exception))))
              (if (macro-inactive-thread-exception? _e89876_)
                  (macro-inactive-thread-exception-procedure _e89876_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95072
                                (let ()
                                  (declare (not safe))
                                  (cons _e89876_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95072)))))
            (if (macro-inactive-thread-exception? _exn89873_)
                (macro-inactive-thread-exception-procedure _exn89873_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95071
                              (let ()
                                (declare (not safe))
                                (cons _exn89873_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95071)))))))
    (define initialized-thread-exception?
      (lambda (_exn89869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89869_))
            (let ((_e89871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89869_ 'exception))))
              (macro-initialized-thread-exception? _e89871_))
            (macro-initialized-thread-exception? _exn89869_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn89865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89865_))
            (let ((_e89867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89865_ 'exception))))
              (if (macro-initialized-thread-exception? _e89867_)
                  (macro-initialized-thread-exception-arguments _e89867_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95074
                                (let ()
                                  (declare (not safe))
                                  (cons _e89867_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95074)))))
            (if (macro-initialized-thread-exception? _exn89865_)
                (macro-initialized-thread-exception-arguments _exn89865_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95073
                              (let ()
                                (declare (not safe))
                                (cons _exn89865_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95073)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn89859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89859_))
            (let ((_e89862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89859_ 'exception))))
              (if (macro-initialized-thread-exception? _e89862_)
                  (macro-initialized-thread-exception-procedure _e89862_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95076
                                (let ()
                                  (declare (not safe))
                                  (cons _e89862_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95076)))))
            (if (macro-initialized-thread-exception? _exn89859_)
                (macro-initialized-thread-exception-procedure _exn89859_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95075
                              (let ()
                                (declare (not safe))
                                (cons _exn89859_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95075)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn89855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89855_))
            (let ((_e89857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89855_ 'exception))))
              (macro-invalid-hash-number-exception? _e89857_))
            (macro-invalid-hash-number-exception? _exn89855_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn89851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89851_))
            (let ((_e89853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89851_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89853_)
                  (macro-invalid-hash-number-exception-arguments _e89853_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95078
                                (let ()
                                  (declare (not safe))
                                  (cons _e89853_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95078)))))
            (if (macro-invalid-hash-number-exception? _exn89851_)
                (macro-invalid-hash-number-exception-arguments _exn89851_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95077
                              (let ()
                                (declare (not safe))
                                (cons _exn89851_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95077)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn89845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89845_))
            (let ((_e89848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89845_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89848_)
                  (macro-invalid-hash-number-exception-procedure _e89848_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95080
                                (let ()
                                  (declare (not safe))
                                  (cons _e89848_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95080)))))
            (if (macro-invalid-hash-number-exception? _exn89845_)
                (macro-invalid-hash-number-exception-procedure _exn89845_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95079
                              (let ()
                                (declare (not safe))
                                (cons _exn89845_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95079)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn89841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89841_))
            (let ((_e89843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89841_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e89843_))
            (macro-invalid-utf8-encoding-exception? _exn89841_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn89837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89837_))
            (let ((_e89839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89837_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89839_)
                  (macro-invalid-utf8-encoding-exception-arguments _e89839_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95082
                                (let ()
                                  (declare (not safe))
                                  (cons _e89839_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95082)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89837_)
                (macro-invalid-utf8-encoding-exception-arguments _exn89837_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95081
                              (let ()
                                (declare (not safe))
                                (cons _exn89837_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95081)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89831_))
            (let ((_e89834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89831_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89834_)
                  (macro-invalid-utf8-encoding-exception-procedure _e89834_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95084
                                (let ()
                                  (declare (not safe))
                                  (cons _e89834_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95084)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89831_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89831_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95083
                              (let ()
                                (declare (not safe))
                                (cons _exn89831_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95083)))))))
    (define join-timeout-exception?
      (lambda (_exn89827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89827_))
            (let ((_e89829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89827_ 'exception))))
              (macro-join-timeout-exception? _e89829_))
            (macro-join-timeout-exception? _exn89827_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89823_))
            (let ((_e89825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89823_ 'exception))))
              (if (macro-join-timeout-exception? _e89825_)
                  (macro-join-timeout-exception-arguments _e89825_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95086
                                (let ()
                                  (declare (not safe))
                                  (cons _e89825_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95086)))))
            (if (macro-join-timeout-exception? _exn89823_)
                (macro-join-timeout-exception-arguments _exn89823_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95085
                              (let ()
                                (declare (not safe))
                                (cons _exn89823_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95085)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89817_))
            (let ((_e89820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89817_ 'exception))))
              (if (macro-join-timeout-exception? _e89820_)
                  (macro-join-timeout-exception-procedure _e89820_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95088
                                (let ()
                                  (declare (not safe))
                                  (cons _e89820_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95088)))))
            (if (macro-join-timeout-exception? _exn89817_)
                (macro-join-timeout-exception-procedure _exn89817_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95087
                              (let ()
                                (declare (not safe))
                                (cons _exn89817_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95087)))))))
    (define keyword-expected-exception?
      (lambda (_exn89813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89813_))
            (let ((_e89815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89813_ 'exception))))
              (macro-keyword-expected-exception? _e89815_))
            (macro-keyword-expected-exception? _exn89813_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89809_))
            (let ((_e89811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89809_ 'exception))))
              (if (macro-keyword-expected-exception? _e89811_)
                  (macro-keyword-expected-exception-arguments _e89811_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95090
                                (let ()
                                  (declare (not safe))
                                  (cons _e89811_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95090)))))
            (if (macro-keyword-expected-exception? _exn89809_)
                (macro-keyword-expected-exception-arguments _exn89809_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95089
                              (let ()
                                (declare (not safe))
                                (cons _exn89809_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95089)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89803_))
            (let ((_e89806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89803_ 'exception))))
              (if (macro-keyword-expected-exception? _e89806_)
                  (macro-keyword-expected-exception-procedure _e89806_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95092
                                (let ()
                                  (declare (not safe))
                                  (cons _e89806_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95092)))))
            (if (macro-keyword-expected-exception? _exn89803_)
                (macro-keyword-expected-exception-procedure _exn89803_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95091
                              (let ()
                                (declare (not safe))
                                (cons _exn89803_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95091)))))))
    (define length-mismatch-exception?
      (lambda (_exn89799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89799_))
            (let ((_e89801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89799_ 'exception))))
              (macro-length-mismatch-exception? _e89801_))
            (macro-length-mismatch-exception? _exn89799_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89795_))
            (let ((_e89797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89795_ 'exception))))
              (if (macro-length-mismatch-exception? _e89797_)
                  (macro-length-mismatch-exception-arg-id _e89797_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95094
                                (let ()
                                  (declare (not safe))
                                  (cons _e89797_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95094)))))
            (if (macro-length-mismatch-exception? _exn89795_)
                (macro-length-mismatch-exception-arg-id _exn89795_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95093
                              (let ()
                                (declare (not safe))
                                (cons _exn89795_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95093)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89791_))
            (let ((_e89793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89791_ 'exception))))
              (if (macro-length-mismatch-exception? _e89793_)
                  (macro-length-mismatch-exception-arguments _e89793_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95096
                                (let ()
                                  (declare (not safe))
                                  (cons _e89793_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95096)))))
            (if (macro-length-mismatch-exception? _exn89791_)
                (macro-length-mismatch-exception-arguments _exn89791_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95095
                              (let ()
                                (declare (not safe))
                                (cons _exn89791_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95095)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89785_))
            (let ((_e89788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89785_ 'exception))))
              (if (macro-length-mismatch-exception? _e89788_)
                  (macro-length-mismatch-exception-procedure _e89788_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95098
                                (let ()
                                  (declare (not safe))
                                  (cons _e89788_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95098)))))
            (if (macro-length-mismatch-exception? _exn89785_)
                (macro-length-mismatch-exception-procedure _exn89785_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95097
                              (let ()
                                (declare (not safe))
                                (cons _exn89785_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95097)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89781_))
            (let ((_e89783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89781_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89783_))
            (macro-mailbox-receive-timeout-exception? _exn89781_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89777_))
            (let ((_e89779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89777_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89779_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89779_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95100
                                (let ()
                                  (declare (not safe))
                                  (cons _e89779_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95100)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89777_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89777_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95099
                              (let ()
                                (declare (not safe))
                                (cons _exn89777_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95099)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89771_))
            (let ((_e89774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89771_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89774_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89774_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95102
                                (let ()
                                  (declare (not safe))
                                  (cons _e89774_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95102)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89771_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89771_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95101
                              (let ()
                                (declare (not safe))
                                (cons _exn89771_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95101)))))))
    (define module-not-found-exception?
      (lambda (_exn89767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89767_))
            (let ((_e89769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89767_ 'exception))))
              (macro-module-not-found-exception? _e89769_))
            (macro-module-not-found-exception? _exn89767_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89763_))
            (let ((_e89765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89763_ 'exception))))
              (if (macro-module-not-found-exception? _e89765_)
                  (macro-module-not-found-exception-arguments _e89765_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95104
                                (let ()
                                  (declare (not safe))
                                  (cons _e89765_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95104)))))
            (if (macro-module-not-found-exception? _exn89763_)
                (macro-module-not-found-exception-arguments _exn89763_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95103
                              (let ()
                                (declare (not safe))
                                (cons _exn89763_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95103)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89757_))
            (let ((_e89760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89757_ 'exception))))
              (if (macro-module-not-found-exception? _e89760_)
                  (macro-module-not-found-exception-procedure _e89760_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95106
                                (let ()
                                  (declare (not safe))
                                  (cons _e89760_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95106)))))
            (if (macro-module-not-found-exception? _exn89757_)
                (macro-module-not-found-exception-procedure _exn89757_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95105
                              (let ()
                                (declare (not safe))
                                (cons _exn89757_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95105)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89751_))
            (let ((_e89754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89751_ 'exception))))
              (macro-multiple-c-return-exception? _e89754_))
            (macro-multiple-c-return-exception? _exn89751_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89747_))
            (let ((_e89749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89747_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89749_))
            (macro-no-such-file-or-directory-exception? _exn89747_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89743_))
            (let ((_e89745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89743_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89745_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89745_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95108
                                (let ()
                                  (declare (not safe))
                                  (cons _e89745_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95108)))))
            (if (macro-no-such-file-or-directory-exception? _exn89743_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89743_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95107
                              (let ()
                                (declare (not safe))
                                (cons _exn89743_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95107)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89737_))
            (let ((_e89740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89737_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89740_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89740_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95110
                                (let ()
                                  (declare (not safe))
                                  (cons _e89740_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95110)))))
            (if (macro-no-such-file-or-directory-exception? _exn89737_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89737_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95109
                              (let ()
                                (declare (not safe))
                                (cons _exn89737_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95109)))))))
    (define noncontinuable-exception?
      (lambda (_exn89733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89733_))
            (let ((_e89735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89733_ 'exception))))
              (macro-noncontinuable-exception? _e89735_))
            (macro-noncontinuable-exception? _exn89733_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89727_))
            (let ((_e89730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89727_ 'exception))))
              (if (macro-noncontinuable-exception? _e89730_)
                  (macro-noncontinuable-exception-reason _e89730_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95112
                                (let ()
                                  (declare (not safe))
                                  (cons _e89730_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95112)))))
            (if (macro-noncontinuable-exception? _exn89727_)
                (macro-noncontinuable-exception-reason _exn89727_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95111
                              (let ()
                                (declare (not safe))
                                (cons _exn89727_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95111)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89723_))
            (let ((_e89725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89723_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89725_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89723_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89719_))
            (let ((_e89721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89719_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89721_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89721_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95114
                                (let ()
                                  (declare (not safe))
                                  (cons _e89721_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95114)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89719_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89719_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95113
                              (let ()
                                (declare (not safe))
                                (cons _exn89719_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95113)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89713_))
            (let ((_e89716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89713_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89716_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89716_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95116
                                (let ()
                                  (declare (not safe))
                                  (cons _e89716_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95116)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89713_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89713_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95115
                              (let ()
                                (declare (not safe))
                                (cons _exn89713_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95115)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89709_))
            (let ((_e89711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89709_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89711_))
            (macro-nonprocedure-operator-exception? _exn89709_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89705_))
            (let ((_e89707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89705_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89707_)
                  (macro-nonprocedure-operator-exception-arguments _e89707_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95118
                                (let ()
                                  (declare (not safe))
                                  (cons _e89707_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95118)))))
            (if (macro-nonprocedure-operator-exception? _exn89705_)
                (macro-nonprocedure-operator-exception-arguments _exn89705_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95117
                              (let ()
                                (declare (not safe))
                                (cons _exn89705_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95117)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89701_))
            (let ((_e89703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89701_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89703_)
                  (macro-nonprocedure-operator-exception-code _e89703_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95120
                                (let ()
                                  (declare (not safe))
                                  (cons _e89703_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95120)))))
            (if (macro-nonprocedure-operator-exception? _exn89701_)
                (macro-nonprocedure-operator-exception-code _exn89701_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95119
                              (let ()
                                (declare (not safe))
                                (cons _exn89701_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95119)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89697_))
            (let ((_e89699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89697_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89699_)
                  (macro-nonprocedure-operator-exception-operator _e89699_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95122
                                (let ()
                                  (declare (not safe))
                                  (cons _e89699_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95122)))))
            (if (macro-nonprocedure-operator-exception? _exn89697_)
                (macro-nonprocedure-operator-exception-operator _exn89697_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95121
                              (let ()
                                (declare (not safe))
                                (cons _exn89697_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95121)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89691_))
            (let ((_e89694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89691_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89694_)
                  (macro-nonprocedure-operator-exception-rte _e89694_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95124
                                (let ()
                                  (declare (not safe))
                                  (cons _e89694_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95124)))))
            (if (macro-nonprocedure-operator-exception? _exn89691_)
                (macro-nonprocedure-operator-exception-rte _exn89691_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95123
                              (let ()
                                (declare (not safe))
                                (cons _exn89691_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95123)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89687_))
            (let ((_e89689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89687_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89689_))
            (macro-not-in-compilation-context-exception? _exn89687_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89683_))
            (let ((_e89685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89683_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89685_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89685_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95126
                                (let ()
                                  (declare (not safe))
                                  (cons _e89685_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95126)))))
            (if (macro-not-in-compilation-context-exception? _exn89683_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89683_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95125
                              (let ()
                                (declare (not safe))
                                (cons _exn89683_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95125)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89677_))
            (let ((_e89680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89677_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89680_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89680_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95128
                                (let ()
                                  (declare (not safe))
                                  (cons _e89680_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95128)))))
            (if (macro-not-in-compilation-context-exception? _exn89677_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89677_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95127
                              (let ()
                                (declare (not safe))
                                (cons _exn89677_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95127)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89673_))
            (let ((_e89675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89673_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89675_))
            (macro-number-of-arguments-limit-exception? _exn89673_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89669_))
            (let ((_e89671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89669_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89671_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89671_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95130
                                (let ()
                                  (declare (not safe))
                                  (cons _e89671_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95130)))))
            (if (macro-number-of-arguments-limit-exception? _exn89669_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89669_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95129
                              (let ()
                                (declare (not safe))
                                (cons _exn89669_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95129)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89663_))
            (let ((_e89666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89663_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89666_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89666_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95132
                                (let ()
                                  (declare (not safe))
                                  (cons _e89666_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95132)))))
            (if (macro-number-of-arguments-limit-exception? _exn89663_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89663_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95131
                              (let ()
                                (declare (not safe))
                                (cons _exn89663_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95131)))))))
    (define os-exception?
      (lambda (_exn89659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89659_))
            (let ((_e89661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89659_ 'exception))))
              (macro-os-exception? _e89661_))
            (macro-os-exception? _exn89659_))))
    (define os-exception-arguments
      (lambda (_exn89655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89655_))
            (let ((_e89657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89655_ 'exception))))
              (if (macro-os-exception? _e89657_)
                  (macro-os-exception-arguments _e89657_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95134
                                (let ()
                                  (declare (not safe))
                                  (cons _e89657_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95134)))))
            (if (macro-os-exception? _exn89655_)
                (macro-os-exception-arguments _exn89655_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95133
                              (let ()
                                (declare (not safe))
                                (cons _exn89655_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95133)))))))
    (define os-exception-code
      (lambda (_exn89651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89651_))
            (let ((_e89653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89651_ 'exception))))
              (if (macro-os-exception? _e89653_)
                  (macro-os-exception-code _e89653_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95136
                                (let ()
                                  (declare (not safe))
                                  (cons _e89653_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95136)))))
            (if (macro-os-exception? _exn89651_)
                (macro-os-exception-code _exn89651_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95135
                              (let ()
                                (declare (not safe))
                                (cons _exn89651_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95135)))))))
    (define os-exception-message
      (lambda (_exn89647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89647_))
            (let ((_e89649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89647_ 'exception))))
              (if (macro-os-exception? _e89649_)
                  (macro-os-exception-message _e89649_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95138
                                (let ()
                                  (declare (not safe))
                                  (cons _e89649_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95138)))))
            (if (macro-os-exception? _exn89647_)
                (macro-os-exception-message _exn89647_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95137
                              (let ()
                                (declare (not safe))
                                (cons _exn89647_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95137)))))))
    (define os-exception-procedure
      (lambda (_exn89641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89641_))
            (let ((_e89644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89641_ 'exception))))
              (if (macro-os-exception? _e89644_)
                  (macro-os-exception-procedure _e89644_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95140
                                (let ()
                                  (declare (not safe))
                                  (cons _e89644_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95140)))))
            (if (macro-os-exception? _exn89641_)
                (macro-os-exception-procedure _exn89641_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95139
                              (let ()
                                (declare (not safe))
                                (cons _exn89641_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95139)))))))
    (define permission-denied-exception?
      (lambda (_exn89637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89637_))
            (let ((_e89639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89637_ 'exception))))
              (macro-permission-denied-exception? _e89639_))
            (macro-permission-denied-exception? _exn89637_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89633_))
            (let ((_e89635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89633_ 'exception))))
              (if (macro-permission-denied-exception? _e89635_)
                  (macro-permission-denied-exception-arguments _e89635_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95142
                                (let ()
                                  (declare (not safe))
                                  (cons _e89635_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95142)))))
            (if (macro-permission-denied-exception? _exn89633_)
                (macro-permission-denied-exception-arguments _exn89633_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95141
                              (let ()
                                (declare (not safe))
                                (cons _exn89633_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95141)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89627_))
            (let ((_e89630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89627_ 'exception))))
              (if (macro-permission-denied-exception? _e89630_)
                  (macro-permission-denied-exception-procedure _e89630_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95144
                                (let ()
                                  (declare (not safe))
                                  (cons _e89630_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95144)))))
            (if (macro-permission-denied-exception? _exn89627_)
                (macro-permission-denied-exception-procedure _exn89627_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95143
                              (let ()
                                (declare (not safe))
                                (cons _exn89627_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95143)))))))
    (define range-exception?
      (lambda (_exn89623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89623_))
            (let ((_e89625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89623_ 'exception))))
              (macro-range-exception? _e89625_))
            (macro-range-exception? _exn89623_))))
    (define range-exception-arg-id
      (lambda (_exn89619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89619_))
            (let ((_e89621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89619_ 'exception))))
              (if (macro-range-exception? _e89621_)
                  (macro-range-exception-arg-id _e89621_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95146
                                (let ()
                                  (declare (not safe))
                                  (cons _e89621_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95146)))))
            (if (macro-range-exception? _exn89619_)
                (macro-range-exception-arg-id _exn89619_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95145
                              (let ()
                                (declare (not safe))
                                (cons _exn89619_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95145)))))))
    (define range-exception-arguments
      (lambda (_exn89615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89615_))
            (let ((_e89617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89615_ 'exception))))
              (if (macro-range-exception? _e89617_)
                  (macro-range-exception-arguments _e89617_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95148
                                (let ()
                                  (declare (not safe))
                                  (cons _e89617_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95148)))))
            (if (macro-range-exception? _exn89615_)
                (macro-range-exception-arguments _exn89615_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95147
                              (let ()
                                (declare (not safe))
                                (cons _exn89615_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95147)))))))
    (define range-exception-procedure
      (lambda (_exn89609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89609_))
            (let ((_e89612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89609_ 'exception))))
              (if (macro-range-exception? _e89612_)
                  (macro-range-exception-procedure _e89612_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95150
                                (let ()
                                  (declare (not safe))
                                  (cons _e89612_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95150)))))
            (if (macro-range-exception? _exn89609_)
                (macro-range-exception-procedure _exn89609_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95149
                              (let ()
                                (declare (not safe))
                                (cons _exn89609_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95149)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89605_))
            (let ((_e89607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89605_ 'exception))))
              (macro-rpc-remote-error-exception? _e89607_))
            (macro-rpc-remote-error-exception? _exn89605_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89601_))
            (let ((_e89603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89601_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89603_)
                  (macro-rpc-remote-error-exception-arguments _e89603_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95152
                                (let ()
                                  (declare (not safe))
                                  (cons _e89603_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95152)))))
            (if (macro-rpc-remote-error-exception? _exn89601_)
                (macro-rpc-remote-error-exception-arguments _exn89601_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95151
                              (let ()
                                (declare (not safe))
                                (cons _exn89601_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95151)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89597_))
            (let ((_e89599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89597_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89599_)
                  (macro-rpc-remote-error-exception-message _e89599_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95154
                                (let ()
                                  (declare (not safe))
                                  (cons _e89599_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95154)))))
            (if (macro-rpc-remote-error-exception? _exn89597_)
                (macro-rpc-remote-error-exception-message _exn89597_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95153
                              (let ()
                                (declare (not safe))
                                (cons _exn89597_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95153)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89591_))
            (let ((_e89594_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89591_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89594_)
                  (macro-rpc-remote-error-exception-procedure _e89594_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95156
                                (let ()
                                  (declare (not safe))
                                  (cons _e89594_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95156)))))
            (if (macro-rpc-remote-error-exception? _exn89591_)
                (macro-rpc-remote-error-exception-procedure _exn89591_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95155
                              (let ()
                                (declare (not safe))
                                (cons _exn89591_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95155)))))))
    (define scheduler-exception?
      (lambda (_exn89587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89587_))
            (let ((_e89589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89587_ 'exception))))
              (macro-scheduler-exception? _e89589_))
            (macro-scheduler-exception? _exn89587_))))
    (define scheduler-exception-reason
      (lambda (_exn89581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89581_))
            (let ((_e89584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89581_ 'exception))))
              (if (macro-scheduler-exception? _e89584_)
                  (macro-scheduler-exception-reason _e89584_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95158
                                (let ()
                                  (declare (not safe))
                                  (cons _e89584_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95158)))))
            (if (macro-scheduler-exception? _exn89581_)
                (macro-scheduler-exception-reason _exn89581_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95157
                              (let ()
                                (declare (not safe))
                                (cons _exn89581_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95157)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89577_))
            (let ((_e89579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89577_ 'exception))))
              (macro-sfun-conversion-exception? _e89579_))
            (macro-sfun-conversion-exception? _exn89577_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89573_))
            (let ((_e89575_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89573_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89575_)
                  (macro-sfun-conversion-exception-arguments _e89575_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95160
                                (let ()
                                  (declare (not safe))
                                  (cons _e89575_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95160)))))
            (if (macro-sfun-conversion-exception? _exn89573_)
                (macro-sfun-conversion-exception-arguments _exn89573_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95159
                              (let ()
                                (declare (not safe))
                                (cons _exn89573_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95159)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89569_))
            (let ((_e89571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89569_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89571_)
                  (macro-sfun-conversion-exception-code _e89571_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95162
                                (let ()
                                  (declare (not safe))
                                  (cons _e89571_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95162)))))
            (if (macro-sfun-conversion-exception? _exn89569_)
                (macro-sfun-conversion-exception-code _exn89569_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95161
                              (let ()
                                (declare (not safe))
                                (cons _exn89569_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95161)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89565_))
            (let ((_e89567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89565_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89567_)
                  (macro-sfun-conversion-exception-message _e89567_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95164
                                (let ()
                                  (declare (not safe))
                                  (cons _e89567_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95164)))))
            (if (macro-sfun-conversion-exception? _exn89565_)
                (macro-sfun-conversion-exception-message _exn89565_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95163
                              (let ()
                                (declare (not safe))
                                (cons _exn89565_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95163)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89559_))
            (let ((_e89562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89559_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89562_)
                  (macro-sfun-conversion-exception-procedure _e89562_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95166
                                (let ()
                                  (declare (not safe))
                                  (cons _e89562_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95166)))))
            (if (macro-sfun-conversion-exception? _exn89559_)
                (macro-sfun-conversion-exception-procedure _exn89559_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95165
                              (let ()
                                (declare (not safe))
                                (cons _exn89559_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95165)))))))
    (define stack-overflow-exception?
      (lambda (_exn89553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89553_))
            (let ((_e89556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89553_ 'exception))))
              (macro-stack-overflow-exception? _e89556_))
            (macro-stack-overflow-exception? _exn89553_))))
    (define started-thread-exception?
      (lambda (_exn89549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89549_))
            (let ((_e89551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89549_ 'exception))))
              (macro-started-thread-exception? _e89551_))
            (macro-started-thread-exception? _exn89549_))))
    (define started-thread-exception-arguments
      (lambda (_exn89545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89545_))
            (let ((_e89547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89545_ 'exception))))
              (if (macro-started-thread-exception? _e89547_)
                  (macro-started-thread-exception-arguments _e89547_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95168
                                (let ()
                                  (declare (not safe))
                                  (cons _e89547_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95168)))))
            (if (macro-started-thread-exception? _exn89545_)
                (macro-started-thread-exception-arguments _exn89545_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95167
                              (let ()
                                (declare (not safe))
                                (cons _exn89545_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95167)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89539_))
            (let ((_e89542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89539_ 'exception))))
              (if (macro-started-thread-exception? _e89542_)
                  (macro-started-thread-exception-procedure _e89542_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95170
                                (let ()
                                  (declare (not safe))
                                  (cons _e89542_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95170)))))
            (if (macro-started-thread-exception? _exn89539_)
                (macro-started-thread-exception-procedure _exn89539_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95169
                              (let ()
                                (declare (not safe))
                                (cons _exn89539_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95169)))))))
    (define terminated-thread-exception?
      (lambda (_exn89535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89535_))
            (let ((_e89537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89535_ 'exception))))
              (macro-terminated-thread-exception? _e89537_))
            (macro-terminated-thread-exception? _exn89535_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89531_))
            (let ((_e89533_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89531_ 'exception))))
              (if (macro-terminated-thread-exception? _e89533_)
                  (macro-terminated-thread-exception-arguments _e89533_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95172
                                (let ()
                                  (declare (not safe))
                                  (cons _e89533_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95172)))))
            (if (macro-terminated-thread-exception? _exn89531_)
                (macro-terminated-thread-exception-arguments _exn89531_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95171
                              (let ()
                                (declare (not safe))
                                (cons _exn89531_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95171)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89525_))
            (let ((_e89528_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89525_ 'exception))))
              (if (macro-terminated-thread-exception? _e89528_)
                  (macro-terminated-thread-exception-procedure _e89528_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95174
                                (let ()
                                  (declare (not safe))
                                  (cons _e89528_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95174)))))
            (if (macro-terminated-thread-exception? _exn89525_)
                (macro-terminated-thread-exception-procedure _exn89525_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95173
                              (let ()
                                (declare (not safe))
                                (cons _exn89525_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95173)))))))
    (define type-exception?
      (lambda (_exn89521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89521_))
            (let ((_e89523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89521_ 'exception))))
              (macro-type-exception? _e89523_))
            (macro-type-exception? _exn89521_))))
    (define type-exception-arg-id
      (lambda (_exn89517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89517_))
            (let ((_e89519_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89517_ 'exception))))
              (if (macro-type-exception? _e89519_)
                  (macro-type-exception-arg-id _e89519_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95176
                                (let ()
                                  (declare (not safe))
                                  (cons _e89519_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95176)))))
            (if (macro-type-exception? _exn89517_)
                (macro-type-exception-arg-id _exn89517_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95175
                              (let ()
                                (declare (not safe))
                                (cons _exn89517_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95175)))))))
    (define type-exception-arguments
      (lambda (_exn89513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89513_))
            (let ((_e89515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89513_ 'exception))))
              (if (macro-type-exception? _e89515_)
                  (macro-type-exception-arguments _e89515_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95178
                                (let ()
                                  (declare (not safe))
                                  (cons _e89515_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95178)))))
            (if (macro-type-exception? _exn89513_)
                (macro-type-exception-arguments _exn89513_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95177
                              (let ()
                                (declare (not safe))
                                (cons _exn89513_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95177)))))))
    (define type-exception-procedure
      (lambda (_exn89509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89509_))
            (let ((_e89511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89509_ 'exception))))
              (if (macro-type-exception? _e89511_)
                  (macro-type-exception-procedure _e89511_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95180
                                (let ()
                                  (declare (not safe))
                                  (cons _e89511_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95180)))))
            (if (macro-type-exception? _exn89509_)
                (macro-type-exception-procedure _exn89509_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95179
                              (let ()
                                (declare (not safe))
                                (cons _exn89509_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95179)))))))
    (define type-exception-type-id
      (lambda (_exn89503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89503_))
            (let ((_e89506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89503_ 'exception))))
              (if (macro-type-exception? _e89506_)
                  (macro-type-exception-type-id _e89506_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95182
                                (let ()
                                  (declare (not safe))
                                  (cons _e89506_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95182)))))
            (if (macro-type-exception? _exn89503_)
                (macro-type-exception-type-id _exn89503_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95181
                              (let ()
                                (declare (not safe))
                                (cons _exn89503_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95181)))))))
    (define unbound-global-exception?
      (lambda (_exn89499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89499_))
            (let ((_e89501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89499_ 'exception))))
              (macro-unbound-global-exception? _e89501_))
            (macro-unbound-global-exception? _exn89499_))))
    (define unbound-global-exception-code
      (lambda (_exn89495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89495_))
            (let ((_e89497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89495_ 'exception))))
              (if (macro-unbound-global-exception? _e89497_)
                  (macro-unbound-global-exception-code _e89497_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95184
                                (let ()
                                  (declare (not safe))
                                  (cons _e89497_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95184)))))
            (if (macro-unbound-global-exception? _exn89495_)
                (macro-unbound-global-exception-code _exn89495_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95183
                              (let ()
                                (declare (not safe))
                                (cons _exn89495_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95183)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89491_))
            (let ((_e89493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89491_ 'exception))))
              (if (macro-unbound-global-exception? _e89493_)
                  (macro-unbound-global-exception-rte _e89493_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95186
                                (let ()
                                  (declare (not safe))
                                  (cons _e89493_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95186)))))
            (if (macro-unbound-global-exception? _exn89491_)
                (macro-unbound-global-exception-rte _exn89491_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95185
                              (let ()
                                (declare (not safe))
                                (cons _exn89491_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95185)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89485_))
            (let ((_e89488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89485_ 'exception))))
              (if (macro-unbound-global-exception? _e89488_)
                  (macro-unbound-global-exception-variable _e89488_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95188
                                (let ()
                                  (declare (not safe))
                                  (cons _e89488_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95188)))))
            (if (macro-unbound-global-exception? _exn89485_)
                (macro-unbound-global-exception-variable _exn89485_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95187
                              (let ()
                                (declare (not safe))
                                (cons _exn89485_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95187)))))))
    (define unbound-key-exception?
      (lambda (_exn89481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89481_))
            (let ((_e89483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89481_ 'exception))))
              (macro-unbound-key-exception? _e89483_))
            (macro-unbound-key-exception? _exn89481_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89477_))
            (let ((_e89479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89477_ 'exception))))
              (if (macro-unbound-key-exception? _e89479_)
                  (macro-unbound-key-exception-arguments _e89479_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95190
                                (let ()
                                  (declare (not safe))
                                  (cons _e89479_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95190)))))
            (if (macro-unbound-key-exception? _exn89477_)
                (macro-unbound-key-exception-arguments _exn89477_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95189
                              (let ()
                                (declare (not safe))
                                (cons _exn89477_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95189)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89471_))
            (let ((_e89474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89471_ 'exception))))
              (if (macro-unbound-key-exception? _e89474_)
                  (macro-unbound-key-exception-procedure _e89474_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95192
                                (let ()
                                  (declare (not safe))
                                  (cons _e89474_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95192)))))
            (if (macro-unbound-key-exception? _exn89471_)
                (macro-unbound-key-exception-procedure _exn89471_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95191
                              (let ()
                                (declare (not safe))
                                (cons _exn89471_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95191)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89467_))
            (let ((_e89469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89467_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89469_))
            (macro-unbound-os-environment-variable-exception? _exn89467_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89463_))
            (let ((_e89465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89463_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89465_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89465_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95194
                                (let ()
                                  (declare (not safe))
                                  (cons _e89465_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95194)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89463_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89463_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95193
                              (let ()
                                (declare (not safe))
                                (cons _exn89463_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95193)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89457_))
            (let ((_e89460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89457_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89460_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89460_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95196
                                (let ()
                                  (declare (not safe))
                                  (cons _e89460_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95196)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89457_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89457_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95195
                              (let ()
                                (declare (not safe))
                                (cons _exn89457_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95195)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89453_))
            (let ((_e89455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89453_ 'exception))))
              (macro-unbound-serial-number-exception? _e89455_))
            (macro-unbound-serial-number-exception? _exn89453_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89449_))
            (let ((_e89451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89449_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89451_)
                  (macro-unbound-serial-number-exception-arguments _e89451_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95198
                                (let ()
                                  (declare (not safe))
                                  (cons _e89451_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95198)))))
            (if (macro-unbound-serial-number-exception? _exn89449_)
                (macro-unbound-serial-number-exception-arguments _exn89449_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95197
                              (let ()
                                (declare (not safe))
                                (cons _exn89449_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95197)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89443_))
            (let ((_e89446_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89443_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89446_)
                  (macro-unbound-serial-number-exception-procedure _e89446_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95200
                                (let ()
                                  (declare (not safe))
                                  (cons _e89446_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95200)))))
            (if (macro-unbound-serial-number-exception? _exn89443_)
                (macro-unbound-serial-number-exception-procedure _exn89443_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95199
                              (let ()
                                (declare (not safe))
                                (cons _exn89443_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95199)))))))
    (define uncaught-exception?
      (lambda (_exn89439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89439_))
            (let ((_e89441_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89439_ 'exception))))
              (macro-uncaught-exception? _e89441_))
            (macro-uncaught-exception? _exn89439_))))
    (define uncaught-exception-arguments
      (lambda (_exn89435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89435_))
            (let ((_e89437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89435_ 'exception))))
              (if (macro-uncaught-exception? _e89437_)
                  (macro-uncaught-exception-arguments _e89437_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95202
                                (let ()
                                  (declare (not safe))
                                  (cons _e89437_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95202)))))
            (if (macro-uncaught-exception? _exn89435_)
                (macro-uncaught-exception-arguments _exn89435_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95201
                              (let ()
                                (declare (not safe))
                                (cons _exn89435_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95201)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89431_))
            (let ((_e89433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89431_ 'exception))))
              (if (macro-uncaught-exception? _e89433_)
                  (macro-uncaught-exception-procedure _e89433_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95204
                                (let ()
                                  (declare (not safe))
                                  (cons _e89433_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95204)))))
            (if (macro-uncaught-exception? _exn89431_)
                (macro-uncaught-exception-procedure _exn89431_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95203
                              (let ()
                                (declare (not safe))
                                (cons _exn89431_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95203)))))))
    (define uncaught-exception-reason
      (lambda (_exn89425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89425_))
            (let ((_e89428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89425_ 'exception))))
              (if (macro-uncaught-exception? _e89428_)
                  (macro-uncaught-exception-reason _e89428_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95206
                                (let ()
                                  (declare (not safe))
                                  (cons _e89428_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95206)))))
            (if (macro-uncaught-exception? _exn89425_)
                (macro-uncaught-exception-reason _exn89425_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95205
                              (let ()
                                (declare (not safe))
                                (cons _exn89425_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95205)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89421_))
            (let ((_e89423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89421_ 'exception))))
              (macro-uninitialized-thread-exception? _e89423_))
            (macro-uninitialized-thread-exception? _exn89421_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89417_))
            (let ((_e89419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89417_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89419_)
                  (macro-uninitialized-thread-exception-arguments _e89419_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95208
                                (let ()
                                  (declare (not safe))
                                  (cons _e89419_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95208)))))
            (if (macro-uninitialized-thread-exception? _exn89417_)
                (macro-uninitialized-thread-exception-arguments _exn89417_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95207
                              (let ()
                                (declare (not safe))
                                (cons _exn89417_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95207)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89411_))
            (let ((_e89414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89411_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89414_)
                  (macro-uninitialized-thread-exception-procedure _e89414_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95210
                                (let ()
                                  (declare (not safe))
                                  (cons _e89414_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95210)))))
            (if (macro-uninitialized-thread-exception? _exn89411_)
                (macro-uninitialized-thread-exception-procedure _exn89411_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95209
                              (let ()
                                (declare (not safe))
                                (cons _exn89411_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95209)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89407_))
            (let ((_e89409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89407_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89409_))
            (macro-unknown-keyword-argument-exception? _exn89407_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89403_))
            (let ((_e89405_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89403_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89405_)
                  (macro-unknown-keyword-argument-exception-arguments _e89405_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95212
                                (let ()
                                  (declare (not safe))
                                  (cons _e89405_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95212)))))
            (if (macro-unknown-keyword-argument-exception? _exn89403_)
                (macro-unknown-keyword-argument-exception-arguments _exn89403_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95211
                              (let ()
                                (declare (not safe))
                                (cons _exn89403_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95211)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89397_))
            (let ((_e89400_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89397_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89400_)
                  (macro-unknown-keyword-argument-exception-procedure _e89400_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95214
                                (let ()
                                  (declare (not safe))
                                  (cons _e89400_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95214)))))
            (if (macro-unknown-keyword-argument-exception? _exn89397_)
                (macro-unknown-keyword-argument-exception-procedure _exn89397_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95213
                              (let ()
                                (declare (not safe))
                                (cons _exn89397_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95213)))))))
    (define unterminated-process-exception?
      (lambda (_exn89393_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89393_))
            (let ((_e89395_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89393_ 'exception))))
              (macro-unterminated-process-exception? _e89395_))
            (macro-unterminated-process-exception? _exn89393_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89389_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89389_))
            (let ((_e89391_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89389_ 'exception))))
              (if (macro-unterminated-process-exception? _e89391_)
                  (macro-unterminated-process-exception-arguments _e89391_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95216
                                (let ()
                                  (declare (not safe))
                                  (cons _e89391_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95216)))))
            (if (macro-unterminated-process-exception? _exn89389_)
                (macro-unterminated-process-exception-arguments _exn89389_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95215
                              (let ()
                                (declare (not safe))
                                (cons _exn89389_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95215)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89383_))
            (let ((_e89386_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89383_ 'exception))))
              (if (macro-unterminated-process-exception? _e89386_)
                  (macro-unterminated-process-exception-procedure _e89386_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95218
                                (let ()
                                  (declare (not safe))
                                  (cons _e89386_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95218)))))
            (if (macro-unterminated-process-exception? _exn89383_)
                (macro-unterminated-process-exception-procedure _exn89383_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95217
                              (let ()
                                (declare (not safe))
                                (cons _exn89383_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95217)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89379_))
            (let ((_e89381_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89379_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89381_))
            (macro-wrong-number-of-arguments-exception? _exn89379_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89375_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89375_))
            (let ((_e89377_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89375_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89377_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89377_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95220
                                (let ()
                                  (declare (not safe))
                                  (cons _e89377_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95220)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89375_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89375_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95219
                              (let ()
                                (declare (not safe))
                                (cons _exn89375_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95219)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89369_))
            (let ((_e89372_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89369_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89372_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89372_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95222
                                (let ()
                                  (declare (not safe))
                                  (cons _e89372_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95222)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89369_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89369_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95221
                              (let ()
                                (declare (not safe))
                                (cons _exn89369_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95221)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89365_))
            (let ((_e89367_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89365_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89367_))
            (macro-wrong-number-of-values-exception? _exn89365_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89361_))
            (let ((_e89363_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89361_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89363_)
                  (macro-wrong-number-of-values-exception-code _e89363_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95224
                                (let ()
                                  (declare (not safe))
                                  (cons _e89363_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95224)))))
            (if (macro-wrong-number-of-values-exception? _exn89361_)
                (macro-wrong-number-of-values-exception-code _exn89361_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95223
                              (let ()
                                (declare (not safe))
                                (cons _exn89361_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95223)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89357_))
            (let ((_e89359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89357_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89359_)
                  (macro-wrong-number-of-values-exception-rte _e89359_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95226
                                (let ()
                                  (declare (not safe))
                                  (cons _e89359_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95226)))))
            (if (macro-wrong-number-of-values-exception? _exn89357_)
                (macro-wrong-number-of-values-exception-rte _exn89357_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95225
                              (let ()
                                (declare (not safe))
                                (cons _exn89357_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95225)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89351_))
            (let ((_e89354_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89351_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89354_)
                  (macro-wrong-number-of-values-exception-vals _e89354_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95228
                                (let ()
                                  (declare (not safe))
                                  (cons _e89354_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95228)))))
            (if (macro-wrong-number-of-values-exception? _exn89351_)
                (macro-wrong-number-of-values-exception-vals _exn89351_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95227
                              (let ()
                                (declare (not safe))
                                (cons _exn89351_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95227)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89345_))
            (let ((_e89348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89345_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89348_))
            (macro-wrong-processor-c-return-exception? _exn89345_))))))
