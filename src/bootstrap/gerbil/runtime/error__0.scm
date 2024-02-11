(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707651232)
  (begin
    (define Exception::t
      (let ((__tmp94950 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94950
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90453_
        (apply make-class-instance Exception::t _$args90453_)))
    (define StackTrace::t
      (let ((__tmp94951 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94951
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90450_
        (apply make-class-instance StackTrace::t _$args90450_)))
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
      (let ((__tmp94952 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94952
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90447_ (apply make-class-instance Error::t _$args90447_)))
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
      (let ((__tmp94953 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94953
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90444_
        (apply make-class-instance RuntimeException::t _$args90444_)))
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
      (lambda (_exn90439_ _continue90440_)
        (let ((_exn90442_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90439_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90442_ _continue90440_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90435_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90435_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90435_ 'continuation))
                '#!void
                (let ((__tmp94954
                       (lambda (_cont90437_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90435_
                            'continuation
                            _cont90437_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94954)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90435_))))
    (define error
      (lambda (_message90432_ . _irritants90433_)
        (raise (let ((__obj94944
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94944
                  _message90432_
                  'irritants:
                  _irritants90433_)
                 __obj94944))))
    (define with-exception-handler
      (lambda (_handler90425_ _thunk90426_)
        (if (let () (declare (not safe)) (procedure? _handler90425_))
            '#!void
            (raise (let ((__obj94945
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94945
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90425_ '())))
                     __obj94945)))
        (if (let () (declare (not safe)) (procedure? _thunk90426_))
            '#!void
            (raise (let ((__obj94946
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94946
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90426_ '())))
                     __obj94946)))
        (let ((__tmp94955
               (lambda (_exn90428_)
                 (let ((_exn90430_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90428_))))
                   (_handler90425_ _exn90430_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94955 _thunk90426_))))
    (define with-catch
      (lambda (_handler90418_ _thunk90419_)
        (if (let () (declare (not safe)) (procedure? _handler90418_))
            '#!void
            (raise (let ((__obj94947
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94947
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90418_ '())))
                     __obj94947)))
        (if (let () (declare (not safe)) (procedure? _thunk90419_))
            '#!void
            (raise (let ((__obj94948
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94948
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90419_ '())))
                     __obj94948)))
        (let ((__tmp94956
               (lambda (_cont90421_)
                 (with-exception-handler
                  (lambda (_exn90423_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90421_
                       _handler90418_
                       _exn90423_)))
                  _thunk90419_))))
          (declare (not safe))
          (##continuation-capture __tmp94956))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90409_)
        (if (or (heap-overflow-exception? _exn90409_)
                (stack-overflow-exception? _exn90409_))
            _exn90409_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90409_))
                _exn90409_
                (if (macro-exception? _exn90409_)
                    (let ((_rte90414_
                           (let ((__obj94949
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94949
                                _exn90409_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94949)))
                      (let ((__tmp94957
                             (lambda (_cont90416_)
                               (let ((__tmp94958
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90416_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90414_
                                  'continuation
                                  __tmp94958)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94957))
                      _rte90414_)
                    _exn90409_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90404_)
        (let ((_$e90406_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90404_))))
          (if _$e90406_ _$e90406_ (error-exception? _obj90404_)))))
    (define error-message
      (lambda (_obj90402_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90402_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90402_ 'message))
            (if (error-exception? _obj90402_)
                (error-exception-message _obj90402_)
                '#f))))
    (define error-irritants
      (lambda (_obj90400_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90400_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90400_ 'irritants))
            (if (error-exception? _obj90400_)
                (error-exception-parameters _obj90400_)
                '#f))))
    (define error-trace
      (lambda (_obj90398_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90398_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90398_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90380_ _port90381_)
        (let ((_$e90383_
               (let ()
                 (declare (not safe))
                 (method-ref _e90380_ 'display-exception))))
          (if _$e90383_
              ((lambda (_f90386_) (_f90386_ _e90380_ _port90381_)) _$e90383_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90380_ _port90381_))))))
    (define display-exception__0
      (lambda (_e90391_)
        (let ((_port90393_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90391_ _port90393_))))
    (define display-exception
      (lambda _g94960_
        (let ((_g94959_ (let () (declare (not safe)) (##length _g94960_))))
          (cond ((let () (declare (not safe)) (##fx= _g94959_ 1))
                 (apply (lambda (_e90391_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90391_)))
                        _g94960_))
                ((let () (declare (not safe)) (##fx= _g94959_ 2))
                 (apply (lambda (_e90395_ _port90396_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90395_ _port90396_)))
                        _g94960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94960_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90369_ _message90370_ . _rest90371_)
        (let ((_message90377_
               (if (let () (declare (not safe)) (string? _message90370_))
                   _message90370_
                   (call-with-output-string
                    '""
                    (lambda (_g9037290374_)
                      (display _message90370_ _g9037290374_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90369_ 'message _message90377_))
          (apply class-instance-init! _self90369_ _rest90371_))))
    (define Error:::init!::specialize
      (lambda (__t94923)
        (let ((__message94924
               (let ((__tmp94925
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94923 'message))))
                 (if __tmp94925 __tmp94925 (error '"Unknown slot" 'message)))))
          (lambda (_self90369_ _message90370_ . _rest90371_)
            (let ((_message90377_
                   (if (let () (declare (not safe)) (string? _message90370_))
                       _message90370_
                       (call-with-output-string
                        '""
                        (lambda (_g9037290374_)
                          (display _message90370_ _g9037290374_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90369_
                 _message90377_
                 __message94924
                 __t94923
                 '#f))
              (apply class-instance-init! _self90369_ _rest90371_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90227_ _port90228_)
        (let ((_tmp-port90230_ (open-output-string))
              (_display-error-newline90231_
               (> (output-port-column _port90228_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90230_))
          (let ((__tmp94961
                 (lambda ()
                   (if _display-error-newline90231_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90234_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90227_ 'where))))
                     (if _$e90234_ (display _$e90234_) (display '"?")))
                   (let ((__tmp94962
                          (let ((__tmp94963
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90227_))))
                            (declare (not safe))
                            (##type-name __tmp94963))))
                     (declare (not safe))
                     (display* '" [" __tmp94962 '"]: "))
                   (let ((__tmp94964
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90227_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94964))
                   (let ((_irritants90237_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90227_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90237_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90239_)
                              (write _obj90239_)
                              (write-char '#\space))
                            _irritants90237_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90227_))
                            (dump-stack-trace?))
                       (let ((_cont9024090242_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90227_
                                 'continuation))))
                         (if _cont9024090242_
                             (let ((_cont90245_ _cont9024090242_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90245_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94961
             current-output-port
             _tmp-port90230_))
          (let ((__tmp94965 (get-output-string _tmp-port90230_)))
            (declare (not safe))
            (##write-string __tmp94965 _port90228_)))))
    (define Error::display-exception::specialize
      (lambda (__t94926)
        (let ((__irritants94927
               (let ((__tmp94931
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94926 'irritants))))
                 (if __tmp94931
                     __tmp94931
                     (error '"Unknown slot" 'irritants))))
              (__continuation94928
               (let ((__tmp94932
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94926 'continuation))))
                 (if __tmp94932
                     __tmp94932
                     (error '"Unknown slot" 'continuation))))
              (__message94929
               (let ((__tmp94933
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94926 'message))))
                 (if __tmp94933 __tmp94933 (error '"Unknown slot" 'message))))
              (__where94930
               (let ((__tmp94934
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94926 'where))))
                 (if __tmp94934 __tmp94934 (error '"Unknown slot" 'where)))))
          (lambda (_self90227_ _port90228_)
            (let ((_tmp-port90230_ (open-output-string))
                  (_display-error-newline90231_
                   (> (output-port-column _port90228_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90230_))
              (let ((__tmp94966
                     (lambda ()
                       (if _display-error-newline90231_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90234_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90227_
                                 __where94930
                                 __t94926
                                 '#f))))
                         (if _$e90234_ (display _$e90234_) (display '"?")))
                       (let ((__tmp94967
                              (let ((__tmp94968
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90227_))))
                                (declare (not safe))
                                (##type-name __tmp94968))))
                         (declare (not safe))
                         (display* '" [" __tmp94967 '"]: "))
                       (let ((__tmp94969
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90227_
                                 __message94929
                                 __t94926
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94969))
                       (let ((_irritants90237_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90227_
                                 __irritants94927
                                 __t94926
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90237_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90239_)
                                  (write _obj90239_)
                                  (write-char '#\space))
                                _irritants90237_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90227_))
                                (dump-stack-trace?))
                           (let ((_cont9024090242_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90227_
                                     __continuation94928
                                     __t94926
                                     '#f))))
                             (if _cont9024090242_
                                 (let ((_cont90245_ _cont9024090242_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90245_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94966
                 current-output-port
                 _tmp-port90230_))
              (let ((__tmp94970 (get-output-string _tmp-port90230_)))
                (declare (not safe))
                (##write-string __tmp94970 _port90228_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90094_ _port90095_)
        (let ((_tmp-port90097_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90097_))
          (let ((__tmp94971
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90094_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94971 _tmp-port90097_))
          (if (dump-stack-trace?)
              (let ((_cont9009890100_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90094_ 'continuation))))
                (if _cont9009890100_
                    (let ((_cont90103_ _cont9009890100_))
                      (display '"--- continuation backtrace:" _tmp-port90097_)
                      (newline _tmp-port90097_)
                      (display-continuation-backtrace
                       _cont90103_
                       _tmp-port90097_))
                    '#f))
              '#!void)
          (let ((__tmp94972 (get-output-string _tmp-port90097_)))
            (declare (not safe))
            (##write-string __tmp94972 _port90095_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94935)
        (let ((__exception94936
               (let ((__tmp94938
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94935 'exception))))
                 (if __tmp94938
                     __tmp94938
                     (error '"Unknown slot" 'exception))))
              (__continuation94937
               (let ((__tmp94939
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94935 'continuation))))
                 (if __tmp94939
                     __tmp94939
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90094_ _port90095_)
            (let ((_tmp-port90097_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90097_))
              (let ((__tmp94973
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90094_
                        __exception94936
                        __t94935
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94973 _tmp-port90097_))
              (if (dump-stack-trace?)
                  (let ((_cont9009890100_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90094_
                            __continuation94937
                            __t94935
                            '#f))))
                    (if _cont9009890100_
                        (let ((_cont90103_ _cont9009890100_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90097_)
                          (newline _tmp-port90097_)
                          (display-continuation-backtrace
                           _cont90103_
                           _tmp-port90097_))
                        '#f))
                  '#!void)
              (let ((__tmp94974 (get-output-string _tmp-port90097_)))
                (declare (not safe))
                (##write-string __tmp94974 _port90095_)))))))
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
      (lambda (_port89966_)
        (if (macro-character-port? _port89966_)
            (let ((_old-width89968_
                   (macro-character-port-output-width _port89966_)))
              (macro-character-port-output-width-set!
               _port89966_
               (lambda (_port89970_) '256))
              _old-width89968_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port89963_ _old-width89964_)
        (if (macro-character-port? _port89963_)
            (macro-character-port-output-width-set!
             _port89963_
             _old-width89964_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e89961_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e89961_))))
    (define abandoned-mutex-exception?
      (lambda (_exn89955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89955_))
            (let ((_e89958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89955_ 'exception))))
              (macro-abandoned-mutex-exception? _e89958_))
            (macro-abandoned-mutex-exception? _exn89955_))))
    (define cfun-conversion-exception?
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (macro-cfun-conversion-exception? _e89953_))
            (macro-cfun-conversion-exception? _exn89951_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn89947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89947_))
            (let ((_e89949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89947_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89949_)
                  (macro-cfun-conversion-exception-arguments _e89949_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94976
                                (let ()
                                  (declare (not safe))
                                  (cons _e89949_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94976)))))
            (if (macro-cfun-conversion-exception? _exn89947_)
                (macro-cfun-conversion-exception-arguments _exn89947_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94975
                              (let ()
                                (declare (not safe))
                                (cons _exn89947_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94975)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn89943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89943_))
            (let ((_e89945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89943_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89945_)
                  (macro-cfun-conversion-exception-code _e89945_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94978
                                (let ()
                                  (declare (not safe))
                                  (cons _e89945_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp94978)))))
            (if (macro-cfun-conversion-exception? _exn89943_)
                (macro-cfun-conversion-exception-code _exn89943_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94977
                              (let ()
                                (declare (not safe))
                                (cons _exn89943_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp94977)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn89939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89939_))
            (let ((_e89941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89939_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89941_)
                  (macro-cfun-conversion-exception-message _e89941_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94980
                                (let ()
                                  (declare (not safe))
                                  (cons _e89941_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94980)))))
            (if (macro-cfun-conversion-exception? _exn89939_)
                (macro-cfun-conversion-exception-message _exn89939_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94979
                              (let ()
                                (declare (not safe))
                                (cons _exn89939_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94979)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn89933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89933_))
            (let ((_e89936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89933_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89936_)
                  (macro-cfun-conversion-exception-procedure _e89936_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94982
                                (let ()
                                  (declare (not safe))
                                  (cons _e89936_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94982)))))
            (if (macro-cfun-conversion-exception? _exn89933_)
                (macro-cfun-conversion-exception-procedure _exn89933_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94981
                              (let ()
                                (declare (not safe))
                                (cons _exn89933_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94981)))))))
    (define datum-parsing-exception?
      (lambda (_exn89929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89929_))
            (let ((_e89931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89929_ 'exception))))
              (macro-datum-parsing-exception? _e89931_))
            (macro-datum-parsing-exception? _exn89929_))))
    (define datum-parsing-exception-kind
      (lambda (_exn89925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89925_))
            (let ((_e89927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89925_ 'exception))))
              (if (macro-datum-parsing-exception? _e89927_)
                  (macro-datum-parsing-exception-kind _e89927_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94984
                                (let ()
                                  (declare (not safe))
                                  (cons _e89927_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94984)))))
            (if (macro-datum-parsing-exception? _exn89925_)
                (macro-datum-parsing-exception-kind _exn89925_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94983
                              (let ()
                                (declare (not safe))
                                (cons _exn89925_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94983)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn89921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89921_))
            (let ((_e89923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89921_ 'exception))))
              (if (macro-datum-parsing-exception? _e89923_)
                  (macro-datum-parsing-exception-parameters _e89923_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94986
                                (let ()
                                  (declare (not safe))
                                  (cons _e89923_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94986)))))
            (if (macro-datum-parsing-exception? _exn89921_)
                (macro-datum-parsing-exception-parameters _exn89921_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94985
                              (let ()
                                (declare (not safe))
                                (cons _exn89921_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94985)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn89915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89915_))
            (let ((_e89918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89915_ 'exception))))
              (if (macro-datum-parsing-exception? _e89918_)
                  (macro-datum-parsing-exception-readenv _e89918_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94988
                                (let ()
                                  (declare (not safe))
                                  (cons _e89918_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94988)))))
            (if (macro-datum-parsing-exception? _exn89915_)
                (macro-datum-parsing-exception-readenv _exn89915_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94987
                              (let ()
                                (declare (not safe))
                                (cons _exn89915_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp94987)))))))
    (define deadlock-exception?
      (lambda (_exn89909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89909_))
            (let ((_e89912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89909_ 'exception))))
              (macro-deadlock-exception? _e89912_))
            (macro-deadlock-exception? _exn89909_))))
    (define divide-by-zero-exception?
      (lambda (_exn89905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89905_))
            (let ((_e89907_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89905_ 'exception))))
              (macro-divide-by-zero-exception? _e89907_))
            (macro-divide-by-zero-exception? _exn89905_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn89901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89901_))
            (let ((_e89903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89901_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89903_)
                  (macro-divide-by-zero-exception-arguments _e89903_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94990
                                (let ()
                                  (declare (not safe))
                                  (cons _e89903_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94990)))))
            (if (macro-divide-by-zero-exception? _exn89901_)
                (macro-divide-by-zero-exception-arguments _exn89901_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94989
                              (let ()
                                (declare (not safe))
                                (cons _exn89901_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94989)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn89895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89895_))
            (let ((_e89898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89895_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89898_)
                  (macro-divide-by-zero-exception-procedure _e89898_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94992
                                (let ()
                                  (declare (not safe))
                                  (cons _e89898_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94992)))))
            (if (macro-divide-by-zero-exception? _exn89895_)
                (macro-divide-by-zero-exception-procedure _exn89895_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94991
                              (let ()
                                (declare (not safe))
                                (cons _exn89895_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94991)))))))
    (define error-exception?
      (lambda (_exn89891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89891_))
            (let ((_e89893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89891_ 'exception))))
              (macro-error-exception? _e89893_))
            (macro-error-exception? _exn89891_))))
    (define error-exception-message
      (lambda (_exn89887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89887_))
            (let ((_e89889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89887_ 'exception))))
              (if (macro-error-exception? _e89889_)
                  (macro-error-exception-message _e89889_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94994
                                (let ()
                                  (declare (not safe))
                                  (cons _e89889_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94994)))))
            (if (macro-error-exception? _exn89887_)
                (macro-error-exception-message _exn89887_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94993
                              (let ()
                                (declare (not safe))
                                (cons _exn89887_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94993)))))))
    (define error-exception-parameters
      (lambda (_exn89881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89881_))
            (let ((_e89884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89881_ 'exception))))
              (if (macro-error-exception? _e89884_)
                  (macro-error-exception-parameters _e89884_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94996
                                (let ()
                                  (declare (not safe))
                                  (cons _e89884_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94996)))))
            (if (macro-error-exception? _exn89881_)
                (macro-error-exception-parameters _exn89881_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94995
                              (let ()
                                (declare (not safe))
                                (cons _exn89881_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94995)))))))
    (define expression-parsing-exception?
      (lambda (_exn89877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89877_))
            (let ((_e89879_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89877_ 'exception))))
              (macro-expression-parsing-exception? _e89879_))
            (macro-expression-parsing-exception? _exn89877_))))
    (define expression-parsing-exception-kind
      (lambda (_exn89873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89873_))
            (let ((_e89875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89873_ 'exception))))
              (if (macro-expression-parsing-exception? _e89875_)
                  (macro-expression-parsing-exception-kind _e89875_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94998
                                (let ()
                                  (declare (not safe))
                                  (cons _e89875_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94998)))))
            (if (macro-expression-parsing-exception? _exn89873_)
                (macro-expression-parsing-exception-kind _exn89873_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94997
                              (let ()
                                (declare (not safe))
                                (cons _exn89873_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94997)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn89869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89869_))
            (let ((_e89871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89869_ 'exception))))
              (if (macro-expression-parsing-exception? _e89871_)
                  (macro-expression-parsing-exception-parameters _e89871_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95000
                                (let ()
                                  (declare (not safe))
                                  (cons _e89871_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95000)))))
            (if (macro-expression-parsing-exception? _exn89869_)
                (macro-expression-parsing-exception-parameters _exn89869_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94999
                              (let ()
                                (declare (not safe))
                                (cons _exn89869_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94999)))))))
    (define expression-parsing-exception-source
      (lambda (_exn89863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89863_))
            (let ((_e89866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89863_ 'exception))))
              (if (macro-expression-parsing-exception? _e89866_)
                  (macro-expression-parsing-exception-source _e89866_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95002
                                (let ()
                                  (declare (not safe))
                                  (cons _e89866_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95002)))))
            (if (macro-expression-parsing-exception? _exn89863_)
                (macro-expression-parsing-exception-source _exn89863_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95001
                              (let ()
                                (declare (not safe))
                                (cons _exn89863_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95001)))))))
    (define file-exists-exception?
      (lambda (_exn89859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89859_))
            (let ((_e89861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89859_ 'exception))))
              (macro-file-exists-exception? _e89861_))
            (macro-file-exists-exception? _exn89859_))))
    (define file-exists-exception-arguments
      (lambda (_exn89855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89855_))
            (let ((_e89857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89855_ 'exception))))
              (if (macro-file-exists-exception? _e89857_)
                  (macro-file-exists-exception-arguments _e89857_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95004
                                (let ()
                                  (declare (not safe))
                                  (cons _e89857_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95004)))))
            (if (macro-file-exists-exception? _exn89855_)
                (macro-file-exists-exception-arguments _exn89855_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95003
                              (let ()
                                (declare (not safe))
                                (cons _exn89855_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95003)))))))
    (define file-exists-exception-procedure
      (lambda (_exn89849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89849_))
            (let ((_e89852_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89849_ 'exception))))
              (if (macro-file-exists-exception? _e89852_)
                  (macro-file-exists-exception-procedure _e89852_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95006
                                (let ()
                                  (declare (not safe))
                                  (cons _e89852_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95006)))))
            (if (macro-file-exists-exception? _exn89849_)
                (macro-file-exists-exception-procedure _exn89849_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95005
                              (let ()
                                (declare (not safe))
                                (cons _exn89849_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95005)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn89845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89845_))
            (let ((_e89847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89845_ 'exception))))
              (macro-fixnum-overflow-exception? _e89847_))
            (macro-fixnum-overflow-exception? _exn89845_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn89841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89841_))
            (let ((_e89843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89841_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89843_)
                  (macro-fixnum-overflow-exception-arguments _e89843_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95008
                                (let ()
                                  (declare (not safe))
                                  (cons _e89843_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95008)))))
            (if (macro-fixnum-overflow-exception? _exn89841_)
                (macro-fixnum-overflow-exception-arguments _exn89841_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95007
                              (let ()
                                (declare (not safe))
                                (cons _exn89841_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95007)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn89835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89835_))
            (let ((_e89838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89835_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89838_)
                  (macro-fixnum-overflow-exception-procedure _e89838_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95010
                                (let ()
                                  (declare (not safe))
                                  (cons _e89838_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95010)))))
            (if (macro-fixnum-overflow-exception? _exn89835_)
                (macro-fixnum-overflow-exception-procedure _exn89835_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95009
                              (let ()
                                (declare (not safe))
                                (cons _exn89835_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95009)))))))
    (define heap-overflow-exception?
      (lambda (_exn89829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89829_))
            (let ((_e89832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89829_ 'exception))))
              (macro-heap-overflow-exception? _e89832_))
            (macro-heap-overflow-exception? _exn89829_))))
    (define inactive-thread-exception?
      (lambda (_exn89825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89825_))
            (let ((_e89827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89825_ 'exception))))
              (macro-inactive-thread-exception? _e89827_))
            (macro-inactive-thread-exception? _exn89825_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (if (macro-inactive-thread-exception? _e89823_)
                  (macro-inactive-thread-exception-arguments _e89823_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95012
                                (let ()
                                  (declare (not safe))
                                  (cons _e89823_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95012)))))
            (if (macro-inactive-thread-exception? _exn89821_)
                (macro-inactive-thread-exception-arguments _exn89821_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95011
                              (let ()
                                (declare (not safe))
                                (cons _exn89821_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95011)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn89815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89815_))
            (let ((_e89818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89815_ 'exception))))
              (if (macro-inactive-thread-exception? _e89818_)
                  (macro-inactive-thread-exception-procedure _e89818_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95014
                                (let ()
                                  (declare (not safe))
                                  (cons _e89818_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95014)))))
            (if (macro-inactive-thread-exception? _exn89815_)
                (macro-inactive-thread-exception-procedure _exn89815_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95013
                              (let ()
                                (declare (not safe))
                                (cons _exn89815_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95013)))))))
    (define initialized-thread-exception?
      (lambda (_exn89811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89811_))
            (let ((_e89813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89811_ 'exception))))
              (macro-initialized-thread-exception? _e89813_))
            (macro-initialized-thread-exception? _exn89811_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn89807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89807_))
            (let ((_e89809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89807_ 'exception))))
              (if (macro-initialized-thread-exception? _e89809_)
                  (macro-initialized-thread-exception-arguments _e89809_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95016
                                (let ()
                                  (declare (not safe))
                                  (cons _e89809_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95016)))))
            (if (macro-initialized-thread-exception? _exn89807_)
                (macro-initialized-thread-exception-arguments _exn89807_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95015
                              (let ()
                                (declare (not safe))
                                (cons _exn89807_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95015)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn89801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89801_))
            (let ((_e89804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89801_ 'exception))))
              (if (macro-initialized-thread-exception? _e89804_)
                  (macro-initialized-thread-exception-procedure _e89804_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95018
                                (let ()
                                  (declare (not safe))
                                  (cons _e89804_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95018)))))
            (if (macro-initialized-thread-exception? _exn89801_)
                (macro-initialized-thread-exception-procedure _exn89801_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95017
                              (let ()
                                (declare (not safe))
                                (cons _exn89801_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95017)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn89797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89797_))
            (let ((_e89799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89797_ 'exception))))
              (macro-invalid-hash-number-exception? _e89799_))
            (macro-invalid-hash-number-exception? _exn89797_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn89793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89793_))
            (let ((_e89795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89793_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89795_)
                  (macro-invalid-hash-number-exception-arguments _e89795_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95020
                                (let ()
                                  (declare (not safe))
                                  (cons _e89795_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95020)))))
            (if (macro-invalid-hash-number-exception? _exn89793_)
                (macro-invalid-hash-number-exception-arguments _exn89793_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95019
                              (let ()
                                (declare (not safe))
                                (cons _exn89793_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95019)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn89787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89787_))
            (let ((_e89790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89787_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89790_)
                  (macro-invalid-hash-number-exception-procedure _e89790_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95022
                                (let ()
                                  (declare (not safe))
                                  (cons _e89790_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95022)))))
            (if (macro-invalid-hash-number-exception? _exn89787_)
                (macro-invalid-hash-number-exception-procedure _exn89787_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95021
                              (let ()
                                (declare (not safe))
                                (cons _exn89787_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95021)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn89783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89783_))
            (let ((_e89785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89783_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e89785_))
            (macro-invalid-utf8-encoding-exception? _exn89783_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn89779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89779_))
            (let ((_e89781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89779_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89781_)
                  (macro-invalid-utf8-encoding-exception-arguments _e89781_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95024
                                (let ()
                                  (declare (not safe))
                                  (cons _e89781_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95024)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89779_)
                (macro-invalid-utf8-encoding-exception-arguments _exn89779_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95023
                              (let ()
                                (declare (not safe))
                                (cons _exn89779_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95023)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89773_))
            (let ((_e89776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89773_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89776_)
                  (macro-invalid-utf8-encoding-exception-procedure _e89776_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95026
                                (let ()
                                  (declare (not safe))
                                  (cons _e89776_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95026)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89773_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89773_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95025
                              (let ()
                                (declare (not safe))
                                (cons _exn89773_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95025)))))))
    (define join-timeout-exception?
      (lambda (_exn89769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89769_))
            (let ((_e89771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89769_ 'exception))))
              (macro-join-timeout-exception? _e89771_))
            (macro-join-timeout-exception? _exn89769_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89765_))
            (let ((_e89767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89765_ 'exception))))
              (if (macro-join-timeout-exception? _e89767_)
                  (macro-join-timeout-exception-arguments _e89767_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95028
                                (let ()
                                  (declare (not safe))
                                  (cons _e89767_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95028)))))
            (if (macro-join-timeout-exception? _exn89765_)
                (macro-join-timeout-exception-arguments _exn89765_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95027
                              (let ()
                                (declare (not safe))
                                (cons _exn89765_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95027)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89759_))
            (let ((_e89762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89759_ 'exception))))
              (if (macro-join-timeout-exception? _e89762_)
                  (macro-join-timeout-exception-procedure _e89762_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95030
                                (let ()
                                  (declare (not safe))
                                  (cons _e89762_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95030)))))
            (if (macro-join-timeout-exception? _exn89759_)
                (macro-join-timeout-exception-procedure _exn89759_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95029
                              (let ()
                                (declare (not safe))
                                (cons _exn89759_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95029)))))))
    (define keyword-expected-exception?
      (lambda (_exn89755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89755_))
            (let ((_e89757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89755_ 'exception))))
              (macro-keyword-expected-exception? _e89757_))
            (macro-keyword-expected-exception? _exn89755_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89751_))
            (let ((_e89753_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89751_ 'exception))))
              (if (macro-keyword-expected-exception? _e89753_)
                  (macro-keyword-expected-exception-arguments _e89753_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95032
                                (let ()
                                  (declare (not safe))
                                  (cons _e89753_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95032)))))
            (if (macro-keyword-expected-exception? _exn89751_)
                (macro-keyword-expected-exception-arguments _exn89751_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95031
                              (let ()
                                (declare (not safe))
                                (cons _exn89751_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95031)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89745_))
            (let ((_e89748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89745_ 'exception))))
              (if (macro-keyword-expected-exception? _e89748_)
                  (macro-keyword-expected-exception-procedure _e89748_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95034
                                (let ()
                                  (declare (not safe))
                                  (cons _e89748_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95034)))))
            (if (macro-keyword-expected-exception? _exn89745_)
                (macro-keyword-expected-exception-procedure _exn89745_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95033
                              (let ()
                                (declare (not safe))
                                (cons _exn89745_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95033)))))))
    (define length-mismatch-exception?
      (lambda (_exn89741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89741_))
            (let ((_e89743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89741_ 'exception))))
              (macro-length-mismatch-exception? _e89743_))
            (macro-length-mismatch-exception? _exn89741_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89737_))
            (let ((_e89739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89737_ 'exception))))
              (if (macro-length-mismatch-exception? _e89739_)
                  (macro-length-mismatch-exception-arg-id _e89739_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95036
                                (let ()
                                  (declare (not safe))
                                  (cons _e89739_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95036)))))
            (if (macro-length-mismatch-exception? _exn89737_)
                (macro-length-mismatch-exception-arg-id _exn89737_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95035
                              (let ()
                                (declare (not safe))
                                (cons _exn89737_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95035)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89733_))
            (let ((_e89735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89733_ 'exception))))
              (if (macro-length-mismatch-exception? _e89735_)
                  (macro-length-mismatch-exception-arguments _e89735_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95038
                                (let ()
                                  (declare (not safe))
                                  (cons _e89735_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95038)))))
            (if (macro-length-mismatch-exception? _exn89733_)
                (macro-length-mismatch-exception-arguments _exn89733_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95037
                              (let ()
                                (declare (not safe))
                                (cons _exn89733_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95037)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89727_))
            (let ((_e89730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89727_ 'exception))))
              (if (macro-length-mismatch-exception? _e89730_)
                  (macro-length-mismatch-exception-procedure _e89730_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95040
                                (let ()
                                  (declare (not safe))
                                  (cons _e89730_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95040)))))
            (if (macro-length-mismatch-exception? _exn89727_)
                (macro-length-mismatch-exception-procedure _exn89727_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95039
                              (let ()
                                (declare (not safe))
                                (cons _exn89727_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95039)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89723_))
            (let ((_e89725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89723_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89725_))
            (macro-mailbox-receive-timeout-exception? _exn89723_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89719_))
            (let ((_e89721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89719_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89721_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89721_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95042
                                (let ()
                                  (declare (not safe))
                                  (cons _e89721_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95042)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89719_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89719_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95041
                              (let ()
                                (declare (not safe))
                                (cons _exn89719_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95041)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89713_))
            (let ((_e89716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89713_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89716_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89716_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95044
                                (let ()
                                  (declare (not safe))
                                  (cons _e89716_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95044)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89713_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89713_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95043
                              (let ()
                                (declare (not safe))
                                (cons _exn89713_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95043)))))))
    (define module-not-found-exception?
      (lambda (_exn89709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89709_))
            (let ((_e89711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89709_ 'exception))))
              (macro-module-not-found-exception? _e89711_))
            (macro-module-not-found-exception? _exn89709_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89705_))
            (let ((_e89707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89705_ 'exception))))
              (if (macro-module-not-found-exception? _e89707_)
                  (macro-module-not-found-exception-arguments _e89707_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95046
                                (let ()
                                  (declare (not safe))
                                  (cons _e89707_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95046)))))
            (if (macro-module-not-found-exception? _exn89705_)
                (macro-module-not-found-exception-arguments _exn89705_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95045
                              (let ()
                                (declare (not safe))
                                (cons _exn89705_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95045)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89699_))
            (let ((_e89702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89699_ 'exception))))
              (if (macro-module-not-found-exception? _e89702_)
                  (macro-module-not-found-exception-procedure _e89702_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95048
                                (let ()
                                  (declare (not safe))
                                  (cons _e89702_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95048)))))
            (if (macro-module-not-found-exception? _exn89699_)
                (macro-module-not-found-exception-procedure _exn89699_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95047
                              (let ()
                                (declare (not safe))
                                (cons _exn89699_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95047)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89693_))
            (let ((_e89696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89693_ 'exception))))
              (macro-multiple-c-return-exception? _e89696_))
            (macro-multiple-c-return-exception? _exn89693_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89689_))
            (let ((_e89691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89689_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89691_))
            (macro-no-such-file-or-directory-exception? _exn89689_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89685_))
            (let ((_e89687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89685_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89687_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89687_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95050
                                (let ()
                                  (declare (not safe))
                                  (cons _e89687_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95050)))))
            (if (macro-no-such-file-or-directory-exception? _exn89685_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89685_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95049
                              (let ()
                                (declare (not safe))
                                (cons _exn89685_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95049)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89679_))
            (let ((_e89682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89679_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89682_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89682_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95052
                                (let ()
                                  (declare (not safe))
                                  (cons _e89682_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95052)))))
            (if (macro-no-such-file-or-directory-exception? _exn89679_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89679_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95051
                              (let ()
                                (declare (not safe))
                                (cons _exn89679_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95051)))))))
    (define noncontinuable-exception?
      (lambda (_exn89675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89675_))
            (let ((_e89677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89675_ 'exception))))
              (macro-noncontinuable-exception? _e89677_))
            (macro-noncontinuable-exception? _exn89675_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89669_))
            (let ((_e89672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89669_ 'exception))))
              (if (macro-noncontinuable-exception? _e89672_)
                  (macro-noncontinuable-exception-reason _e89672_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95054
                                (let ()
                                  (declare (not safe))
                                  (cons _e89672_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95054)))))
            (if (macro-noncontinuable-exception? _exn89669_)
                (macro-noncontinuable-exception-reason _exn89669_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95053
                              (let ()
                                (declare (not safe))
                                (cons _exn89669_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95053)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89665_))
            (let ((_e89667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89665_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89667_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89665_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89661_))
            (let ((_e89663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89661_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89663_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89663_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95056
                                (let ()
                                  (declare (not safe))
                                  (cons _e89663_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95056)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89661_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89661_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95055
                              (let ()
                                (declare (not safe))
                                (cons _exn89661_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95055)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89655_))
            (let ((_e89658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89655_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89658_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89658_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95058
                                (let ()
                                  (declare (not safe))
                                  (cons _e89658_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95058)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89655_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89655_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95057
                              (let ()
                                (declare (not safe))
                                (cons _exn89655_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95057)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89651_))
            (let ((_e89653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89651_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89653_))
            (macro-nonprocedure-operator-exception? _exn89651_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89647_))
            (let ((_e89649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89647_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89649_)
                  (macro-nonprocedure-operator-exception-arguments _e89649_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95060
                                (let ()
                                  (declare (not safe))
                                  (cons _e89649_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95060)))))
            (if (macro-nonprocedure-operator-exception? _exn89647_)
                (macro-nonprocedure-operator-exception-arguments _exn89647_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95059
                              (let ()
                                (declare (not safe))
                                (cons _exn89647_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95059)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89643_))
            (let ((_e89645_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89643_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89645_)
                  (macro-nonprocedure-operator-exception-code _e89645_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95062
                                (let ()
                                  (declare (not safe))
                                  (cons _e89645_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95062)))))
            (if (macro-nonprocedure-operator-exception? _exn89643_)
                (macro-nonprocedure-operator-exception-code _exn89643_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95061
                              (let ()
                                (declare (not safe))
                                (cons _exn89643_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95061)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89639_))
            (let ((_e89641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89639_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89641_)
                  (macro-nonprocedure-operator-exception-operator _e89641_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95064
                                (let ()
                                  (declare (not safe))
                                  (cons _e89641_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95064)))))
            (if (macro-nonprocedure-operator-exception? _exn89639_)
                (macro-nonprocedure-operator-exception-operator _exn89639_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95063
                              (let ()
                                (declare (not safe))
                                (cons _exn89639_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95063)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89633_))
            (let ((_e89636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89633_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89636_)
                  (macro-nonprocedure-operator-exception-rte _e89636_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95066
                                (let ()
                                  (declare (not safe))
                                  (cons _e89636_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95066)))))
            (if (macro-nonprocedure-operator-exception? _exn89633_)
                (macro-nonprocedure-operator-exception-rte _exn89633_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95065
                              (let ()
                                (declare (not safe))
                                (cons _exn89633_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95065)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89629_))
            (let ((_e89631_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89629_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89631_))
            (macro-not-in-compilation-context-exception? _exn89629_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89625_))
            (let ((_e89627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89625_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89627_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89627_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95068
                                (let ()
                                  (declare (not safe))
                                  (cons _e89627_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95068)))))
            (if (macro-not-in-compilation-context-exception? _exn89625_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89625_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95067
                              (let ()
                                (declare (not safe))
                                (cons _exn89625_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95067)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89619_))
            (let ((_e89622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89619_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89622_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89622_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95070
                                (let ()
                                  (declare (not safe))
                                  (cons _e89622_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95070)))))
            (if (macro-not-in-compilation-context-exception? _exn89619_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89619_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95069
                              (let ()
                                (declare (not safe))
                                (cons _exn89619_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95069)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89615_))
            (let ((_e89617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89615_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89617_))
            (macro-number-of-arguments-limit-exception? _exn89615_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89611_))
            (let ((_e89613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89611_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89613_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89613_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95072
                                (let ()
                                  (declare (not safe))
                                  (cons _e89613_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95072)))))
            (if (macro-number-of-arguments-limit-exception? _exn89611_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89611_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95071
                              (let ()
                                (declare (not safe))
                                (cons _exn89611_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95071)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89605_))
            (let ((_e89608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89605_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89608_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89608_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95074
                                (let ()
                                  (declare (not safe))
                                  (cons _e89608_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95074)))))
            (if (macro-number-of-arguments-limit-exception? _exn89605_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89605_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95073
                              (let ()
                                (declare (not safe))
                                (cons _exn89605_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95073)))))))
    (define os-exception?
      (lambda (_exn89601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89601_))
            (let ((_e89603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89601_ 'exception))))
              (macro-os-exception? _e89603_))
            (macro-os-exception? _exn89601_))))
    (define os-exception-arguments
      (lambda (_exn89597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89597_))
            (let ((_e89599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89597_ 'exception))))
              (if (macro-os-exception? _e89599_)
                  (macro-os-exception-arguments _e89599_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95076
                                (let ()
                                  (declare (not safe))
                                  (cons _e89599_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95076)))))
            (if (macro-os-exception? _exn89597_)
                (macro-os-exception-arguments _exn89597_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95075
                              (let ()
                                (declare (not safe))
                                (cons _exn89597_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95075)))))))
    (define os-exception-code
      (lambda (_exn89593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89593_))
            (let ((_e89595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89593_ 'exception))))
              (if (macro-os-exception? _e89595_)
                  (macro-os-exception-code _e89595_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95078
                                (let ()
                                  (declare (not safe))
                                  (cons _e89595_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95078)))))
            (if (macro-os-exception? _exn89593_)
                (macro-os-exception-code _exn89593_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95077
                              (let ()
                                (declare (not safe))
                                (cons _exn89593_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95077)))))))
    (define os-exception-message
      (lambda (_exn89589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89589_))
            (let ((_e89591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89589_ 'exception))))
              (if (macro-os-exception? _e89591_)
                  (macro-os-exception-message _e89591_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95080
                                (let ()
                                  (declare (not safe))
                                  (cons _e89591_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95080)))))
            (if (macro-os-exception? _exn89589_)
                (macro-os-exception-message _exn89589_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95079
                              (let ()
                                (declare (not safe))
                                (cons _exn89589_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95079)))))))
    (define os-exception-procedure
      (lambda (_exn89583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89583_))
            (let ((_e89586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89583_ 'exception))))
              (if (macro-os-exception? _e89586_)
                  (macro-os-exception-procedure _e89586_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95082
                                (let ()
                                  (declare (not safe))
                                  (cons _e89586_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95082)))))
            (if (macro-os-exception? _exn89583_)
                (macro-os-exception-procedure _exn89583_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95081
                              (let ()
                                (declare (not safe))
                                (cons _exn89583_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95081)))))))
    (define permission-denied-exception?
      (lambda (_exn89579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89579_))
            (let ((_e89581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89579_ 'exception))))
              (macro-permission-denied-exception? _e89581_))
            (macro-permission-denied-exception? _exn89579_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89575_))
            (let ((_e89577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89575_ 'exception))))
              (if (macro-permission-denied-exception? _e89577_)
                  (macro-permission-denied-exception-arguments _e89577_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95084
                                (let ()
                                  (declare (not safe))
                                  (cons _e89577_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95084)))))
            (if (macro-permission-denied-exception? _exn89575_)
                (macro-permission-denied-exception-arguments _exn89575_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95083
                              (let ()
                                (declare (not safe))
                                (cons _exn89575_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95083)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89569_))
            (let ((_e89572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89569_ 'exception))))
              (if (macro-permission-denied-exception? _e89572_)
                  (macro-permission-denied-exception-procedure _e89572_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95086
                                (let ()
                                  (declare (not safe))
                                  (cons _e89572_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95086)))))
            (if (macro-permission-denied-exception? _exn89569_)
                (macro-permission-denied-exception-procedure _exn89569_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95085
                              (let ()
                                (declare (not safe))
                                (cons _exn89569_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95085)))))))
    (define range-exception?
      (lambda (_exn89565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89565_))
            (let ((_e89567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89565_ 'exception))))
              (macro-range-exception? _e89567_))
            (macro-range-exception? _exn89565_))))
    (define range-exception-arg-id
      (lambda (_exn89561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89561_))
            (let ((_e89563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89561_ 'exception))))
              (if (macro-range-exception? _e89563_)
                  (macro-range-exception-arg-id _e89563_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95088
                                (let ()
                                  (declare (not safe))
                                  (cons _e89563_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95088)))))
            (if (macro-range-exception? _exn89561_)
                (macro-range-exception-arg-id _exn89561_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95087
                              (let ()
                                (declare (not safe))
                                (cons _exn89561_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95087)))))))
    (define range-exception-arguments
      (lambda (_exn89557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89557_))
            (let ((_e89559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89557_ 'exception))))
              (if (macro-range-exception? _e89559_)
                  (macro-range-exception-arguments _e89559_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95090
                                (let ()
                                  (declare (not safe))
                                  (cons _e89559_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95090)))))
            (if (macro-range-exception? _exn89557_)
                (macro-range-exception-arguments _exn89557_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95089
                              (let ()
                                (declare (not safe))
                                (cons _exn89557_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95089)))))))
    (define range-exception-procedure
      (lambda (_exn89551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89551_))
            (let ((_e89554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89551_ 'exception))))
              (if (macro-range-exception? _e89554_)
                  (macro-range-exception-procedure _e89554_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95092
                                (let ()
                                  (declare (not safe))
                                  (cons _e89554_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95092)))))
            (if (macro-range-exception? _exn89551_)
                (macro-range-exception-procedure _exn89551_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95091
                              (let ()
                                (declare (not safe))
                                (cons _exn89551_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95091)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89547_))
            (let ((_e89549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89547_ 'exception))))
              (macro-rpc-remote-error-exception? _e89549_))
            (macro-rpc-remote-error-exception? _exn89547_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89543_))
            (let ((_e89545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89543_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89545_)
                  (macro-rpc-remote-error-exception-arguments _e89545_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95094
                                (let ()
                                  (declare (not safe))
                                  (cons _e89545_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95094)))))
            (if (macro-rpc-remote-error-exception? _exn89543_)
                (macro-rpc-remote-error-exception-arguments _exn89543_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95093
                              (let ()
                                (declare (not safe))
                                (cons _exn89543_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95093)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89539_))
            (let ((_e89541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89539_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89541_)
                  (macro-rpc-remote-error-exception-message _e89541_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95096
                                (let ()
                                  (declare (not safe))
                                  (cons _e89541_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95096)))))
            (if (macro-rpc-remote-error-exception? _exn89539_)
                (macro-rpc-remote-error-exception-message _exn89539_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95095
                              (let ()
                                (declare (not safe))
                                (cons _exn89539_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95095)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89533_))
            (let ((_e89536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89533_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89536_)
                  (macro-rpc-remote-error-exception-procedure _e89536_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95098
                                (let ()
                                  (declare (not safe))
                                  (cons _e89536_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95098)))))
            (if (macro-rpc-remote-error-exception? _exn89533_)
                (macro-rpc-remote-error-exception-procedure _exn89533_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95097
                              (let ()
                                (declare (not safe))
                                (cons _exn89533_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95097)))))))
    (define scheduler-exception?
      (lambda (_exn89529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89529_))
            (let ((_e89531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89529_ 'exception))))
              (macro-scheduler-exception? _e89531_))
            (macro-scheduler-exception? _exn89529_))))
    (define scheduler-exception-reason
      (lambda (_exn89523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89523_))
            (let ((_e89526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89523_ 'exception))))
              (if (macro-scheduler-exception? _e89526_)
                  (macro-scheduler-exception-reason _e89526_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95100
                                (let ()
                                  (declare (not safe))
                                  (cons _e89526_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95100)))))
            (if (macro-scheduler-exception? _exn89523_)
                (macro-scheduler-exception-reason _exn89523_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95099
                              (let ()
                                (declare (not safe))
                                (cons _exn89523_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95099)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89519_))
            (let ((_e89521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89519_ 'exception))))
              (macro-sfun-conversion-exception? _e89521_))
            (macro-sfun-conversion-exception? _exn89519_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89515_))
            (let ((_e89517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89515_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89517_)
                  (macro-sfun-conversion-exception-arguments _e89517_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95102
                                (let ()
                                  (declare (not safe))
                                  (cons _e89517_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95102)))))
            (if (macro-sfun-conversion-exception? _exn89515_)
                (macro-sfun-conversion-exception-arguments _exn89515_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95101
                              (let ()
                                (declare (not safe))
                                (cons _exn89515_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95101)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89511_))
            (let ((_e89513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89511_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89513_)
                  (macro-sfun-conversion-exception-code _e89513_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95104
                                (let ()
                                  (declare (not safe))
                                  (cons _e89513_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95104)))))
            (if (macro-sfun-conversion-exception? _exn89511_)
                (macro-sfun-conversion-exception-code _exn89511_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95103
                              (let ()
                                (declare (not safe))
                                (cons _exn89511_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95103)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89507_))
            (let ((_e89509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89507_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89509_)
                  (macro-sfun-conversion-exception-message _e89509_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95106
                                (let ()
                                  (declare (not safe))
                                  (cons _e89509_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95106)))))
            (if (macro-sfun-conversion-exception? _exn89507_)
                (macro-sfun-conversion-exception-message _exn89507_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95105
                              (let ()
                                (declare (not safe))
                                (cons _exn89507_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95105)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89501_))
            (let ((_e89504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89501_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89504_)
                  (macro-sfun-conversion-exception-procedure _e89504_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95108
                                (let ()
                                  (declare (not safe))
                                  (cons _e89504_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95108)))))
            (if (macro-sfun-conversion-exception? _exn89501_)
                (macro-sfun-conversion-exception-procedure _exn89501_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95107
                              (let ()
                                (declare (not safe))
                                (cons _exn89501_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95107)))))))
    (define stack-overflow-exception?
      (lambda (_exn89495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89495_))
            (let ((_e89498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89495_ 'exception))))
              (macro-stack-overflow-exception? _e89498_))
            (macro-stack-overflow-exception? _exn89495_))))
    (define started-thread-exception?
      (lambda (_exn89491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89491_))
            (let ((_e89493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89491_ 'exception))))
              (macro-started-thread-exception? _e89493_))
            (macro-started-thread-exception? _exn89491_))))
    (define started-thread-exception-arguments
      (lambda (_exn89487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89487_))
            (let ((_e89489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89487_ 'exception))))
              (if (macro-started-thread-exception? _e89489_)
                  (macro-started-thread-exception-arguments _e89489_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95110
                                (let ()
                                  (declare (not safe))
                                  (cons _e89489_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95110)))))
            (if (macro-started-thread-exception? _exn89487_)
                (macro-started-thread-exception-arguments _exn89487_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95109
                              (let ()
                                (declare (not safe))
                                (cons _exn89487_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95109)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89481_))
            (let ((_e89484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89481_ 'exception))))
              (if (macro-started-thread-exception? _e89484_)
                  (macro-started-thread-exception-procedure _e89484_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95112
                                (let ()
                                  (declare (not safe))
                                  (cons _e89484_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95112)))))
            (if (macro-started-thread-exception? _exn89481_)
                (macro-started-thread-exception-procedure _exn89481_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95111
                              (let ()
                                (declare (not safe))
                                (cons _exn89481_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95111)))))))
    (define terminated-thread-exception?
      (lambda (_exn89477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89477_))
            (let ((_e89479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89477_ 'exception))))
              (macro-terminated-thread-exception? _e89479_))
            (macro-terminated-thread-exception? _exn89477_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89473_))
            (let ((_e89475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89473_ 'exception))))
              (if (macro-terminated-thread-exception? _e89475_)
                  (macro-terminated-thread-exception-arguments _e89475_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95114
                                (let ()
                                  (declare (not safe))
                                  (cons _e89475_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95114)))))
            (if (macro-terminated-thread-exception? _exn89473_)
                (macro-terminated-thread-exception-arguments _exn89473_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95113
                              (let ()
                                (declare (not safe))
                                (cons _exn89473_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95113)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89467_))
            (let ((_e89470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89467_ 'exception))))
              (if (macro-terminated-thread-exception? _e89470_)
                  (macro-terminated-thread-exception-procedure _e89470_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95116
                                (let ()
                                  (declare (not safe))
                                  (cons _e89470_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95116)))))
            (if (macro-terminated-thread-exception? _exn89467_)
                (macro-terminated-thread-exception-procedure _exn89467_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95115
                              (let ()
                                (declare (not safe))
                                (cons _exn89467_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95115)))))))
    (define type-exception?
      (lambda (_exn89463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89463_))
            (let ((_e89465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89463_ 'exception))))
              (macro-type-exception? _e89465_))
            (macro-type-exception? _exn89463_))))
    (define type-exception-arg-id
      (lambda (_exn89459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89459_))
            (let ((_e89461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89459_ 'exception))))
              (if (macro-type-exception? _e89461_)
                  (macro-type-exception-arg-id _e89461_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95118
                                (let ()
                                  (declare (not safe))
                                  (cons _e89461_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95118)))))
            (if (macro-type-exception? _exn89459_)
                (macro-type-exception-arg-id _exn89459_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95117
                              (let ()
                                (declare (not safe))
                                (cons _exn89459_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95117)))))))
    (define type-exception-arguments
      (lambda (_exn89455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89455_))
            (let ((_e89457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89455_ 'exception))))
              (if (macro-type-exception? _e89457_)
                  (macro-type-exception-arguments _e89457_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95120
                                (let ()
                                  (declare (not safe))
                                  (cons _e89457_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95120)))))
            (if (macro-type-exception? _exn89455_)
                (macro-type-exception-arguments _exn89455_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95119
                              (let ()
                                (declare (not safe))
                                (cons _exn89455_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95119)))))))
    (define type-exception-procedure
      (lambda (_exn89451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89451_))
            (let ((_e89453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89451_ 'exception))))
              (if (macro-type-exception? _e89453_)
                  (macro-type-exception-procedure _e89453_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95122
                                (let ()
                                  (declare (not safe))
                                  (cons _e89453_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95122)))))
            (if (macro-type-exception? _exn89451_)
                (macro-type-exception-procedure _exn89451_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95121
                              (let ()
                                (declare (not safe))
                                (cons _exn89451_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95121)))))))
    (define type-exception-type-id
      (lambda (_exn89445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89445_))
            (let ((_e89448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89445_ 'exception))))
              (if (macro-type-exception? _e89448_)
                  (macro-type-exception-type-id _e89448_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95124
                                (let ()
                                  (declare (not safe))
                                  (cons _e89448_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95124)))))
            (if (macro-type-exception? _exn89445_)
                (macro-type-exception-type-id _exn89445_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95123
                              (let ()
                                (declare (not safe))
                                (cons _exn89445_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95123)))))))
    (define unbound-global-exception?
      (lambda (_exn89441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89441_))
            (let ((_e89443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89441_ 'exception))))
              (macro-unbound-global-exception? _e89443_))
            (macro-unbound-global-exception? _exn89441_))))
    (define unbound-global-exception-code
      (lambda (_exn89437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89437_))
            (let ((_e89439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89437_ 'exception))))
              (if (macro-unbound-global-exception? _e89439_)
                  (macro-unbound-global-exception-code _e89439_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95126
                                (let ()
                                  (declare (not safe))
                                  (cons _e89439_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95126)))))
            (if (macro-unbound-global-exception? _exn89437_)
                (macro-unbound-global-exception-code _exn89437_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95125
                              (let ()
                                (declare (not safe))
                                (cons _exn89437_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95125)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89433_))
            (let ((_e89435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89433_ 'exception))))
              (if (macro-unbound-global-exception? _e89435_)
                  (macro-unbound-global-exception-rte _e89435_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95128
                                (let ()
                                  (declare (not safe))
                                  (cons _e89435_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95128)))))
            (if (macro-unbound-global-exception? _exn89433_)
                (macro-unbound-global-exception-rte _exn89433_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95127
                              (let ()
                                (declare (not safe))
                                (cons _exn89433_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95127)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89427_))
            (let ((_e89430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89427_ 'exception))))
              (if (macro-unbound-global-exception? _e89430_)
                  (macro-unbound-global-exception-variable _e89430_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95130
                                (let ()
                                  (declare (not safe))
                                  (cons _e89430_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95130)))))
            (if (macro-unbound-global-exception? _exn89427_)
                (macro-unbound-global-exception-variable _exn89427_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95129
                              (let ()
                                (declare (not safe))
                                (cons _exn89427_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95129)))))))
    (define unbound-key-exception?
      (lambda (_exn89423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89423_))
            (let ((_e89425_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89423_ 'exception))))
              (macro-unbound-key-exception? _e89425_))
            (macro-unbound-key-exception? _exn89423_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89419_))
            (let ((_e89421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89419_ 'exception))))
              (if (macro-unbound-key-exception? _e89421_)
                  (macro-unbound-key-exception-arguments _e89421_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95132
                                (let ()
                                  (declare (not safe))
                                  (cons _e89421_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95132)))))
            (if (macro-unbound-key-exception? _exn89419_)
                (macro-unbound-key-exception-arguments _exn89419_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95131
                              (let ()
                                (declare (not safe))
                                (cons _exn89419_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95131)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89413_))
            (let ((_e89416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89413_ 'exception))))
              (if (macro-unbound-key-exception? _e89416_)
                  (macro-unbound-key-exception-procedure _e89416_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95134
                                (let ()
                                  (declare (not safe))
                                  (cons _e89416_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95134)))))
            (if (macro-unbound-key-exception? _exn89413_)
                (macro-unbound-key-exception-procedure _exn89413_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95133
                              (let ()
                                (declare (not safe))
                                (cons _exn89413_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95133)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89409_))
            (let ((_e89411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89409_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89411_))
            (macro-unbound-os-environment-variable-exception? _exn89409_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89405_))
            (let ((_e89407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89405_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89407_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89407_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95136
                                (let ()
                                  (declare (not safe))
                                  (cons _e89407_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95136)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89405_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89405_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95135
                              (let ()
                                (declare (not safe))
                                (cons _exn89405_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95135)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89399_))
            (let ((_e89402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89399_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89402_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89402_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95138
                                (let ()
                                  (declare (not safe))
                                  (cons _e89402_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95138)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89399_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89399_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95137
                              (let ()
                                (declare (not safe))
                                (cons _exn89399_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95137)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89395_))
            (let ((_e89397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89395_ 'exception))))
              (macro-unbound-serial-number-exception? _e89397_))
            (macro-unbound-serial-number-exception? _exn89395_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89391_))
            (let ((_e89393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89391_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89393_)
                  (macro-unbound-serial-number-exception-arguments _e89393_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95140
                                (let ()
                                  (declare (not safe))
                                  (cons _e89393_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95140)))))
            (if (macro-unbound-serial-number-exception? _exn89391_)
                (macro-unbound-serial-number-exception-arguments _exn89391_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95139
                              (let ()
                                (declare (not safe))
                                (cons _exn89391_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95139)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89385_))
            (let ((_e89388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89385_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89388_)
                  (macro-unbound-serial-number-exception-procedure _e89388_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95142
                                (let ()
                                  (declare (not safe))
                                  (cons _e89388_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95142)))))
            (if (macro-unbound-serial-number-exception? _exn89385_)
                (macro-unbound-serial-number-exception-procedure _exn89385_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95141
                              (let ()
                                (declare (not safe))
                                (cons _exn89385_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95141)))))))
    (define uncaught-exception?
      (lambda (_exn89381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89381_))
            (let ((_e89383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89381_ 'exception))))
              (macro-uncaught-exception? _e89383_))
            (macro-uncaught-exception? _exn89381_))))
    (define uncaught-exception-arguments
      (lambda (_exn89377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89377_))
            (let ((_e89379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89377_ 'exception))))
              (if (macro-uncaught-exception? _e89379_)
                  (macro-uncaught-exception-arguments _e89379_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95144
                                (let ()
                                  (declare (not safe))
                                  (cons _e89379_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95144)))))
            (if (macro-uncaught-exception? _exn89377_)
                (macro-uncaught-exception-arguments _exn89377_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95143
                              (let ()
                                (declare (not safe))
                                (cons _exn89377_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95143)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89373_))
            (let ((_e89375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89373_ 'exception))))
              (if (macro-uncaught-exception? _e89375_)
                  (macro-uncaught-exception-procedure _e89375_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95146
                                (let ()
                                  (declare (not safe))
                                  (cons _e89375_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95146)))))
            (if (macro-uncaught-exception? _exn89373_)
                (macro-uncaught-exception-procedure _exn89373_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95145
                              (let ()
                                (declare (not safe))
                                (cons _exn89373_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95145)))))))
    (define uncaught-exception-reason
      (lambda (_exn89367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89367_))
            (let ((_e89370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89367_ 'exception))))
              (if (macro-uncaught-exception? _e89370_)
                  (macro-uncaught-exception-reason _e89370_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95148
                                (let ()
                                  (declare (not safe))
                                  (cons _e89370_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95148)))))
            (if (macro-uncaught-exception? _exn89367_)
                (macro-uncaught-exception-reason _exn89367_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95147
                              (let ()
                                (declare (not safe))
                                (cons _exn89367_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95147)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89363_))
            (let ((_e89365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89363_ 'exception))))
              (macro-uninitialized-thread-exception? _e89365_))
            (macro-uninitialized-thread-exception? _exn89363_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89359_))
            (let ((_e89361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89359_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89361_)
                  (macro-uninitialized-thread-exception-arguments _e89361_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95150
                                (let ()
                                  (declare (not safe))
                                  (cons _e89361_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95150)))))
            (if (macro-uninitialized-thread-exception? _exn89359_)
                (macro-uninitialized-thread-exception-arguments _exn89359_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95149
                              (let ()
                                (declare (not safe))
                                (cons _exn89359_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95149)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89353_))
            (let ((_e89356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89353_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89356_)
                  (macro-uninitialized-thread-exception-procedure _e89356_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95152
                                (let ()
                                  (declare (not safe))
                                  (cons _e89356_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95152)))))
            (if (macro-uninitialized-thread-exception? _exn89353_)
                (macro-uninitialized-thread-exception-procedure _exn89353_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95151
                              (let ()
                                (declare (not safe))
                                (cons _exn89353_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95151)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89349_))
            (let ((_e89351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89349_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89351_))
            (macro-unknown-keyword-argument-exception? _exn89349_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89345_))
            (let ((_e89347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89345_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89347_)
                  (macro-unknown-keyword-argument-exception-arguments _e89347_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95154
                                (let ()
                                  (declare (not safe))
                                  (cons _e89347_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95154)))))
            (if (macro-unknown-keyword-argument-exception? _exn89345_)
                (macro-unknown-keyword-argument-exception-arguments _exn89345_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95153
                              (let ()
                                (declare (not safe))
                                (cons _exn89345_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95153)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89339_))
            (let ((_e89342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89339_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89342_)
                  (macro-unknown-keyword-argument-exception-procedure _e89342_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95156
                                (let ()
                                  (declare (not safe))
                                  (cons _e89342_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95156)))))
            (if (macro-unknown-keyword-argument-exception? _exn89339_)
                (macro-unknown-keyword-argument-exception-procedure _exn89339_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95155
                              (let ()
                                (declare (not safe))
                                (cons _exn89339_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95155)))))))
    (define unterminated-process-exception?
      (lambda (_exn89335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89335_))
            (let ((_e89337_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89335_ 'exception))))
              (macro-unterminated-process-exception? _e89337_))
            (macro-unterminated-process-exception? _exn89335_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89331_))
            (let ((_e89333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89331_ 'exception))))
              (if (macro-unterminated-process-exception? _e89333_)
                  (macro-unterminated-process-exception-arguments _e89333_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95158
                                (let ()
                                  (declare (not safe))
                                  (cons _e89333_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95158)))))
            (if (macro-unterminated-process-exception? _exn89331_)
                (macro-unterminated-process-exception-arguments _exn89331_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95157
                              (let ()
                                (declare (not safe))
                                (cons _exn89331_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95157)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89325_))
            (let ((_e89328_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89325_ 'exception))))
              (if (macro-unterminated-process-exception? _e89328_)
                  (macro-unterminated-process-exception-procedure _e89328_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95160
                                (let ()
                                  (declare (not safe))
                                  (cons _e89328_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95160)))))
            (if (macro-unterminated-process-exception? _exn89325_)
                (macro-unterminated-process-exception-procedure _exn89325_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95159
                              (let ()
                                (declare (not safe))
                                (cons _exn89325_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95159)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89321_))
            (let ((_e89323_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89321_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89323_))
            (macro-wrong-number-of-arguments-exception? _exn89321_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89317_))
            (let ((_e89319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89317_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89319_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89319_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95162
                                (let ()
                                  (declare (not safe))
                                  (cons _e89319_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95162)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89317_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89317_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95161
                              (let ()
                                (declare (not safe))
                                (cons _exn89317_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95161)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89311_))
            (let ((_e89314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89311_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89314_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89314_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95164
                                (let ()
                                  (declare (not safe))
                                  (cons _e89314_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95164)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89311_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89311_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95163
                              (let ()
                                (declare (not safe))
                                (cons _exn89311_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95163)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89307_))
            (let ((_e89309_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89307_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89309_))
            (macro-wrong-number-of-values-exception? _exn89307_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89303_))
            (let ((_e89305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89303_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89305_)
                  (macro-wrong-number-of-values-exception-code _e89305_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95166
                                (let ()
                                  (declare (not safe))
                                  (cons _e89305_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95166)))))
            (if (macro-wrong-number-of-values-exception? _exn89303_)
                (macro-wrong-number-of-values-exception-code _exn89303_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95165
                              (let ()
                                (declare (not safe))
                                (cons _exn89303_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95165)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89299_))
            (let ((_e89301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89299_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89301_)
                  (macro-wrong-number-of-values-exception-rte _e89301_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95168
                                (let ()
                                  (declare (not safe))
                                  (cons _e89301_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95168)))))
            (if (macro-wrong-number-of-values-exception? _exn89299_)
                (macro-wrong-number-of-values-exception-rte _exn89299_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95167
                              (let ()
                                (declare (not safe))
                                (cons _exn89299_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95167)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89293_))
            (let ((_e89296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89293_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89296_)
                  (macro-wrong-number-of-values-exception-vals _e89296_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95170
                                (let ()
                                  (declare (not safe))
                                  (cons _e89296_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95170)))))
            (if (macro-wrong-number-of-values-exception? _exn89293_)
                (macro-wrong-number-of-values-exception-vals _exn89293_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95169
                              (let ()
                                (declare (not safe))
                                (cons _exn89293_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95169)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89287_))
            (let ((_e89290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89287_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89290_))
            (macro-wrong-processor-c-return-exception? _exn89287_))))))
