(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707773925)
  (begin
    (define Exception::t
      (let ((__tmp96019 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp96019
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91422_ (apply make-instance Exception::t _$args91422_)))
    (define StackTrace::t
      (let ((__tmp96020 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp96020
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91419_ (apply make-instance StackTrace::t _$args91419_)))
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
      (let ((__tmp96021 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp96021
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91416_ (apply make-instance Error::t _$args91416_)))
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
      (let ((__tmp96022 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp96022
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91413_
        (apply make-instance RuntimeException::t _$args91413_)))
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
      (lambda (_exn91408_ _continue91409_)
        (let ((_exn91411_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91408_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91411_ _continue91409_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91404_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91404_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91404_ 'continuation))
                '#!void
                (let ((__tmp96023
                       (lambda (_cont91406_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91404_
                            'continuation
                            _cont91406_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp96023)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91404_))))
    (define error
      (lambda (_message91401_ . _irritants91402_)
        (raise (let ((__obj96013
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj96013
                  _message91401_
                  'irritants:
                  _irritants91402_)
                 __obj96013))))
    (define with-exception-handler
      (lambda (_handler91394_ _thunk91395_)
        (if (let () (declare (not safe)) (procedure? _handler91394_))
            '#!void
            (raise (let ((__obj96014
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96014
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91394_ '())))
                     __obj96014)))
        (if (let () (declare (not safe)) (procedure? _thunk91395_))
            '#!void
            (raise (let ((__obj96015
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96015
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91395_ '())))
                     __obj96015)))
        (let ((__tmp96024
               (lambda (_exn91397_)
                 (let ((_exn91399_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91397_))))
                   (_handler91394_ _exn91399_)))))
          (declare (not safe))
          (##with-exception-handler __tmp96024 _thunk91395_))))
    (define with-catch
      (lambda (_handler91387_ _thunk91388_)
        (if (let () (declare (not safe)) (procedure? _handler91387_))
            '#!void
            (raise (let ((__obj96016
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96016
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91387_ '())))
                     __obj96016)))
        (if (let () (declare (not safe)) (procedure? _thunk91388_))
            '#!void
            (raise (let ((__obj96017
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96017
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91388_ '())))
                     __obj96017)))
        (let ((__tmp96025
               (lambda (_cont91390_)
                 (with-exception-handler
                  (lambda (_exn91392_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91390_
                       _handler91387_
                       _exn91392_)))
                  _thunk91388_))))
          (declare (not safe))
          (##continuation-capture __tmp96025))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91378_)
        (if (or (heap-overflow-exception? _exn91378_)
                (stack-overflow-exception? _exn91378_))
            _exn91378_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91378_))
                _exn91378_
                (if (macro-exception? _exn91378_)
                    (let ((_rte91383_
                           (let ((__obj96018
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj96018
                                _exn91378_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj96018)))
                      (let ((__tmp96026
                             (lambda (_cont91385_)
                               (let ((__tmp96027
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91385_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91383_
                                  'continuation
                                  __tmp96027)))))
                        (declare (not safe))
                        (##continuation-capture __tmp96026))
                      _rte91383_)
                    _exn91378_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91373_)
        (let ((_$e91375_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91373_))))
          (if _$e91375_ _$e91375_ (error-exception? _obj91373_)))))
    (define error-message
      (lambda (_obj91371_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91371_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91371_ 'message))
            (if (error-exception? _obj91371_)
                (error-exception-message _obj91371_)
                '#f))))
    (define error-irritants
      (lambda (_obj91369_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91369_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91369_ 'irritants))
            (if (error-exception? _obj91369_)
                (error-exception-parameters _obj91369_)
                '#f))))
    (define error-trace
      (lambda (_obj91367_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91367_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91367_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91349_ _port91350_)
        (let ((_$e91352_
               (let ()
                 (declare (not safe))
                 (method-ref _e91349_ 'display-exception))))
          (if _$e91352_
              ((lambda (_f91355_) (_f91355_ _e91349_ _port91350_)) _$e91352_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91349_ _port91350_))))))
    (define display-exception__0
      (lambda (_e91360_)
        (let ((_port91362_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91360_ _port91362_))))
    (define display-exception
      (lambda _g96029_
        (let ((_g96028_ (let () (declare (not safe)) (##length _g96029_))))
          (cond ((let () (declare (not safe)) (##fx= _g96028_ 1))
                 (apply (lambda (_e91360_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91360_)))
                        _g96029_))
                ((let () (declare (not safe)) (##fx= _g96028_ 2))
                 (apply (lambda (_e91364_ _port91365_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91364_ _port91365_)))
                        _g96029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g96029_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91338_ _message91339_ . _rest91340_)
        (let ((_message91346_
               (if (let () (declare (not safe)) (string? _message91339_))
                   _message91339_
                   (call-with-output-string
                    '""
                    (lambda (_g9134191343_)
                      (display _message91339_ _g9134191343_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91338_ 'message _message91346_))
          (apply class-instance-init! _self91338_ _rest91340_))))
    (define Error:::init!::specialize
      (lambda (__t95992)
        (let ((__message95993
               (let ((__tmp95994
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95992 'message))))
                 (if __tmp95994 __tmp95994 (error '"Unknown slot" 'message)))))
          (lambda (_self91338_ _message91339_ . _rest91340_)
            (let ((_message91346_
                   (if (let () (declare (not safe)) (string? _message91339_))
                       _message91339_
                       (call-with-output-string
                        '""
                        (lambda (_g9134191343_)
                          (display _message91339_ _g9134191343_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91338_
                 _message91346_
                 __message95993
                 __t95992
                 '#f))
              (apply class-instance-init! _self91338_ _rest91340_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self91196_ _port91197_)
        (let ((_tmp-port91199_ (open-output-string))
              (_display-error-newline91200_
               (> (output-port-column _port91197_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91199_))
          (let ((__tmp96030
                 (lambda ()
                   (if _display-error-newline91200_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e91203_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91196_ 'where))))
                     (if _$e91203_ (display _$e91203_) (display '"?")))
                   (let ((__tmp96031
                          (let ((__tmp96032
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self91196_))))
                            (declare (not safe))
                            (##type-name __tmp96032))))
                     (declare (not safe))
                     (display* '" [" __tmp96031 '"]: "))
                   (let ((__tmp96033
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91196_ 'message))))
                     (declare (not safe))
                     (displayln __tmp96033))
                   (let ((_irritants91206_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91196_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants91206_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj91208_)
                              (write _obj91208_)
                              (write-char '#\space))
                            _irritants91206_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self91196_))
                            (dump-stack-trace?))
                       (let ((_cont9120991211_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self91196_
                                 'continuation))))
                         (if _cont9120991211_
                             (let ((_cont91214_ _cont9120991211_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont91214_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp96030
             current-output-port
             _tmp-port91199_))
          (let ((__tmp96034 (get-output-string _tmp-port91199_)))
            (declare (not safe))
            (##write-string __tmp96034 _port91197_)))))
    (define Error::display-exception::specialize
      (lambda (__t95995)
        (let ((__where95996
               (let ((__tmp96000
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95995 'where))))
                 (if __tmp96000 __tmp96000 (error '"Unknown slot" 'where))))
              (__continuation95997
               (let ((__tmp96001
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95995 'continuation))))
                 (if __tmp96001
                     __tmp96001
                     (error '"Unknown slot" 'continuation))))
              (__message95998
               (let ((__tmp96002
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95995 'message))))
                 (if __tmp96002 __tmp96002 (error '"Unknown slot" 'message))))
              (__irritants95999
               (let ((__tmp96003
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95995 'irritants))))
                 (if __tmp96003
                     __tmp96003
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self91196_ _port91197_)
            (let ((_tmp-port91199_ (open-output-string))
                  (_display-error-newline91200_
                   (> (output-port-column _port91197_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91199_))
              (let ((__tmp96035
                     (lambda ()
                       (if _display-error-newline91200_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e91203_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91196_
                                 __where95996
                                 __t95995
                                 '#f))))
                         (if _$e91203_ (display _$e91203_) (display '"?")))
                       (let ((__tmp96036
                              (let ((__tmp96037
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self91196_))))
                                (declare (not safe))
                                (##type-name __tmp96037))))
                         (declare (not safe))
                         (display* '" [" __tmp96036 '"]: "))
                       (let ((__tmp96038
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91196_
                                 __message95998
                                 __t95995
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp96038))
                       (let ((_irritants91206_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91196_
                                 __irritants95999
                                 __t95995
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants91206_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj91208_)
                                  (write _obj91208_)
                                  (write-char '#\space))
                                _irritants91206_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self91196_))
                                (dump-stack-trace?))
                           (let ((_cont9120991211_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self91196_
                                     __continuation95997
                                     __t95995
                                     '#f))))
                             (if _cont9120991211_
                                 (let ((_cont91214_ _cont9120991211_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont91214_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp96035
                 current-output-port
                 _tmp-port91199_))
              (let ((__tmp96039 (get-output-string _tmp-port91199_)))
                (declare (not safe))
                (##write-string __tmp96039 _port91197_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self91063_ _port91064_)
        (let ((_tmp-port91066_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91066_))
          (let ((__tmp96040
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self91063_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp96040 _tmp-port91066_))
          (if (dump-stack-trace?)
              (let ((_cont9106791069_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self91063_ 'continuation))))
                (if _cont9106791069_
                    (let ((_cont91072_ _cont9106791069_))
                      (display '"--- continuation backtrace:" _tmp-port91066_)
                      (newline _tmp-port91066_)
                      (display-continuation-backtrace
                       _cont91072_
                       _tmp-port91066_))
                    '#f))
              '#!void)
          (let ((__tmp96041 (get-output-string _tmp-port91066_)))
            (declare (not safe))
            (##write-string __tmp96041 _port91064_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t96004)
        (let ((__exception96005
               (let ((__tmp96007
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96004 'exception))))
                 (if __tmp96007
                     __tmp96007
                     (error '"Unknown slot" 'exception))))
              (__continuation96006
               (let ((__tmp96008
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96004 'continuation))))
                 (if __tmp96008
                     __tmp96008
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self91063_ _port91064_)
            (let ((_tmp-port91066_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91066_))
              (let ((__tmp96042
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self91063_
                        __exception96005
                        __t96004
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp96042 _tmp-port91066_))
              (if (dump-stack-trace?)
                  (let ((_cont9106791069_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self91063_
                            __continuation96006
                            __t96004
                            '#f))))
                    (if _cont9106791069_
                        (let ((_cont91072_ _cont9106791069_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port91066_)
                          (newline _tmp-port91066_)
                          (display-continuation-backtrace
                           _cont91072_
                           _tmp-port91066_))
                        '#f))
                  '#!void)
              (let ((__tmp96043 (get-output-string _tmp-port91066_)))
                (declare (not safe))
                (##write-string __tmp96043 _port91064_)))))))
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
      (lambda (_port90935_)
        (if (macro-character-port? _port90935_)
            (let ((_old-width90937_
                   (macro-character-port-output-width _port90935_)))
              (macro-character-port-output-width-set!
               _port90935_
               (lambda (_port90939_) '256))
              _old-width90937_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90932_ _old-width90933_)
        (if (macro-character-port? _port90932_)
            (macro-character-port-output-width-set!
             _port90932_
             _old-width90933_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90930_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90930_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90924_))
            (let ((_e90927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90924_ 'exception))))
              (macro-abandoned-mutex-exception? _e90927_))
            (macro-abandoned-mutex-exception? _exn90924_))))
    (define cfun-conversion-exception?
      (lambda (_exn90920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90920_))
            (let ((_e90922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90920_ 'exception))))
              (macro-cfun-conversion-exception? _e90922_))
            (macro-cfun-conversion-exception? _exn90920_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90916_))
            (let ((_e90918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90916_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90918_)
                  (macro-cfun-conversion-exception-arguments _e90918_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96045
                                (let ()
                                  (declare (not safe))
                                  (cons _e90918_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp96045)))))
            (if (macro-cfun-conversion-exception? _exn90916_)
                (macro-cfun-conversion-exception-arguments _exn90916_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96044
                              (let ()
                                (declare (not safe))
                                (cons _exn90916_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp96044)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90912_))
            (let ((_e90914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90912_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90914_)
                  (macro-cfun-conversion-exception-code _e90914_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96047
                                (let ()
                                  (declare (not safe))
                                  (cons _e90914_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp96047)))))
            (if (macro-cfun-conversion-exception? _exn90912_)
                (macro-cfun-conversion-exception-code _exn90912_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96046
                              (let ()
                                (declare (not safe))
                                (cons _exn90912_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp96046)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90908_))
            (let ((_e90910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90908_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90910_)
                  (macro-cfun-conversion-exception-message _e90910_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96049
                                (let ()
                                  (declare (not safe))
                                  (cons _e90910_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp96049)))))
            (if (macro-cfun-conversion-exception? _exn90908_)
                (macro-cfun-conversion-exception-message _exn90908_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96048
                              (let ()
                                (declare (not safe))
                                (cons _exn90908_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp96048)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90902_))
            (let ((_e90905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90902_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90905_)
                  (macro-cfun-conversion-exception-procedure _e90905_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96051
                                (let ()
                                  (declare (not safe))
                                  (cons _e90905_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp96051)))))
            (if (macro-cfun-conversion-exception? _exn90902_)
                (macro-cfun-conversion-exception-procedure _exn90902_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96050
                              (let ()
                                (declare (not safe))
                                (cons _exn90902_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp96050)))))))
    (define datum-parsing-exception?
      (lambda (_exn90898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90898_))
            (let ((_e90900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90898_ 'exception))))
              (macro-datum-parsing-exception? _e90900_))
            (macro-datum-parsing-exception? _exn90898_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90894_))
            (let ((_e90896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90894_ 'exception))))
              (if (macro-datum-parsing-exception? _e90896_)
                  (macro-datum-parsing-exception-kind _e90896_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp96053
                                (let ()
                                  (declare (not safe))
                                  (cons _e90896_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp96053)))))
            (if (macro-datum-parsing-exception? _exn90894_)
                (macro-datum-parsing-exception-kind _exn90894_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp96052
                              (let ()
                                (declare (not safe))
                                (cons _exn90894_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp96052)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90890_))
            (let ((_e90892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90890_ 'exception))))
              (if (macro-datum-parsing-exception? _e90892_)
                  (macro-datum-parsing-exception-parameters _e90892_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp96055
                                (let ()
                                  (declare (not safe))
                                  (cons _e90892_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp96055)))))
            (if (macro-datum-parsing-exception? _exn90890_)
                (macro-datum-parsing-exception-parameters _exn90890_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp96054
                              (let ()
                                (declare (not safe))
                                (cons _exn90890_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp96054)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90884_))
            (let ((_e90887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90884_ 'exception))))
              (if (macro-datum-parsing-exception? _e90887_)
                  (macro-datum-parsing-exception-readenv _e90887_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp96057
                                (let ()
                                  (declare (not safe))
                                  (cons _e90887_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp96057)))))
            (if (macro-datum-parsing-exception? _exn90884_)
                (macro-datum-parsing-exception-readenv _exn90884_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp96056
                              (let ()
                                (declare (not safe))
                                (cons _exn90884_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp96056)))))))
    (define deadlock-exception?
      (lambda (_exn90878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90878_))
            (let ((_e90881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90878_ 'exception))))
              (macro-deadlock-exception? _e90881_))
            (macro-deadlock-exception? _exn90878_))))
    (define divide-by-zero-exception?
      (lambda (_exn90874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90874_))
            (let ((_e90876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90874_ 'exception))))
              (macro-divide-by-zero-exception? _e90876_))
            (macro-divide-by-zero-exception? _exn90874_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90870_))
            (let ((_e90872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90870_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90872_)
                  (macro-divide-by-zero-exception-arguments _e90872_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp96059
                                (let ()
                                  (declare (not safe))
                                  (cons _e90872_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp96059)))))
            (if (macro-divide-by-zero-exception? _exn90870_)
                (macro-divide-by-zero-exception-arguments _exn90870_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp96058
                              (let ()
                                (declare (not safe))
                                (cons _exn90870_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp96058)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90864_))
            (let ((_e90867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90864_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90867_)
                  (macro-divide-by-zero-exception-procedure _e90867_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp96061
                                (let ()
                                  (declare (not safe))
                                  (cons _e90867_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp96061)))))
            (if (macro-divide-by-zero-exception? _exn90864_)
                (macro-divide-by-zero-exception-procedure _exn90864_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp96060
                              (let ()
                                (declare (not safe))
                                (cons _exn90864_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp96060)))))))
    (define error-exception?
      (lambda (_exn90860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90860_))
            (let ((_e90862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90860_ 'exception))))
              (macro-error-exception? _e90862_))
            (macro-error-exception? _exn90860_))))
    (define error-exception-message
      (lambda (_exn90856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90856_))
            (let ((_e90858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90856_ 'exception))))
              (if (macro-error-exception? _e90858_)
                  (macro-error-exception-message _e90858_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp96063
                                (let ()
                                  (declare (not safe))
                                  (cons _e90858_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp96063)))))
            (if (macro-error-exception? _exn90856_)
                (macro-error-exception-message _exn90856_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp96062
                              (let ()
                                (declare (not safe))
                                (cons _exn90856_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp96062)))))))
    (define error-exception-parameters
      (lambda (_exn90850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90850_))
            (let ((_e90853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90850_ 'exception))))
              (if (macro-error-exception? _e90853_)
                  (macro-error-exception-parameters _e90853_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp96065
                                (let ()
                                  (declare (not safe))
                                  (cons _e90853_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp96065)))))
            (if (macro-error-exception? _exn90850_)
                (macro-error-exception-parameters _exn90850_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp96064
                              (let ()
                                (declare (not safe))
                                (cons _exn90850_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp96064)))))))
    (define expression-parsing-exception?
      (lambda (_exn90846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90846_))
            (let ((_e90848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90846_ 'exception))))
              (macro-expression-parsing-exception? _e90848_))
            (macro-expression-parsing-exception? _exn90846_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90842_))
            (let ((_e90844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90842_ 'exception))))
              (if (macro-expression-parsing-exception? _e90844_)
                  (macro-expression-parsing-exception-kind _e90844_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp96067
                                (let ()
                                  (declare (not safe))
                                  (cons _e90844_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp96067)))))
            (if (macro-expression-parsing-exception? _exn90842_)
                (macro-expression-parsing-exception-kind _exn90842_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp96066
                              (let ()
                                (declare (not safe))
                                (cons _exn90842_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp96066)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90838_))
            (let ((_e90840_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90838_ 'exception))))
              (if (macro-expression-parsing-exception? _e90840_)
                  (macro-expression-parsing-exception-parameters _e90840_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp96069
                                (let ()
                                  (declare (not safe))
                                  (cons _e90840_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp96069)))))
            (if (macro-expression-parsing-exception? _exn90838_)
                (macro-expression-parsing-exception-parameters _exn90838_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp96068
                              (let ()
                                (declare (not safe))
                                (cons _exn90838_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp96068)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90832_))
            (let ((_e90835_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90832_ 'exception))))
              (if (macro-expression-parsing-exception? _e90835_)
                  (macro-expression-parsing-exception-source _e90835_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp96071
                                (let ()
                                  (declare (not safe))
                                  (cons _e90835_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp96071)))))
            (if (macro-expression-parsing-exception? _exn90832_)
                (macro-expression-parsing-exception-source _exn90832_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp96070
                              (let ()
                                (declare (not safe))
                                (cons _exn90832_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp96070)))))))
    (define file-exists-exception?
      (lambda (_exn90828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90828_))
            (let ((_e90830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90828_ 'exception))))
              (macro-file-exists-exception? _e90830_))
            (macro-file-exists-exception? _exn90828_))))
    (define file-exists-exception-arguments
      (lambda (_exn90824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90824_))
            (let ((_e90826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90824_ 'exception))))
              (if (macro-file-exists-exception? _e90826_)
                  (macro-file-exists-exception-arguments _e90826_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp96073
                                (let ()
                                  (declare (not safe))
                                  (cons _e90826_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp96073)))))
            (if (macro-file-exists-exception? _exn90824_)
                (macro-file-exists-exception-arguments _exn90824_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp96072
                              (let ()
                                (declare (not safe))
                                (cons _exn90824_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp96072)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90818_))
            (let ((_e90821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90818_ 'exception))))
              (if (macro-file-exists-exception? _e90821_)
                  (macro-file-exists-exception-procedure _e90821_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp96075
                                (let ()
                                  (declare (not safe))
                                  (cons _e90821_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp96075)))))
            (if (macro-file-exists-exception? _exn90818_)
                (macro-file-exists-exception-procedure _exn90818_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp96074
                              (let ()
                                (declare (not safe))
                                (cons _exn90818_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp96074)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90814_))
            (let ((_e90816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90814_ 'exception))))
              (macro-fixnum-overflow-exception? _e90816_))
            (macro-fixnum-overflow-exception? _exn90814_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90810_))
            (let ((_e90812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90810_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90812_)
                  (macro-fixnum-overflow-exception-arguments _e90812_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp96077
                                (let ()
                                  (declare (not safe))
                                  (cons _e90812_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp96077)))))
            (if (macro-fixnum-overflow-exception? _exn90810_)
                (macro-fixnum-overflow-exception-arguments _exn90810_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp96076
                              (let ()
                                (declare (not safe))
                                (cons _exn90810_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp96076)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90804_))
            (let ((_e90807_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90804_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90807_)
                  (macro-fixnum-overflow-exception-procedure _e90807_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp96079
                                (let ()
                                  (declare (not safe))
                                  (cons _e90807_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp96079)))))
            (if (macro-fixnum-overflow-exception? _exn90804_)
                (macro-fixnum-overflow-exception-procedure _exn90804_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp96078
                              (let ()
                                (declare (not safe))
                                (cons _exn90804_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp96078)))))))
    (define heap-overflow-exception?
      (lambda (_exn90798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90798_))
            (let ((_e90801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90798_ 'exception))))
              (macro-heap-overflow-exception? _e90801_))
            (macro-heap-overflow-exception? _exn90798_))))
    (define inactive-thread-exception?
      (lambda (_exn90794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90794_))
            (let ((_e90796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90794_ 'exception))))
              (macro-inactive-thread-exception? _e90796_))
            (macro-inactive-thread-exception? _exn90794_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90790_))
            (let ((_e90792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90790_ 'exception))))
              (if (macro-inactive-thread-exception? _e90792_)
                  (macro-inactive-thread-exception-arguments _e90792_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp96081
                                (let ()
                                  (declare (not safe))
                                  (cons _e90792_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp96081)))))
            (if (macro-inactive-thread-exception? _exn90790_)
                (macro-inactive-thread-exception-arguments _exn90790_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp96080
                              (let ()
                                (declare (not safe))
                                (cons _exn90790_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp96080)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90784_))
            (let ((_e90787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90784_ 'exception))))
              (if (macro-inactive-thread-exception? _e90787_)
                  (macro-inactive-thread-exception-procedure _e90787_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp96083
                                (let ()
                                  (declare (not safe))
                                  (cons _e90787_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp96083)))))
            (if (macro-inactive-thread-exception? _exn90784_)
                (macro-inactive-thread-exception-procedure _exn90784_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp96082
                              (let ()
                                (declare (not safe))
                                (cons _exn90784_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp96082)))))))
    (define initialized-thread-exception?
      (lambda (_exn90780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90780_))
            (let ((_e90782_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90780_ 'exception))))
              (macro-initialized-thread-exception? _e90782_))
            (macro-initialized-thread-exception? _exn90780_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90776_))
            (let ((_e90778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90776_ 'exception))))
              (if (macro-initialized-thread-exception? _e90778_)
                  (macro-initialized-thread-exception-arguments _e90778_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp96085
                                (let ()
                                  (declare (not safe))
                                  (cons _e90778_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp96085)))))
            (if (macro-initialized-thread-exception? _exn90776_)
                (macro-initialized-thread-exception-arguments _exn90776_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp96084
                              (let ()
                                (declare (not safe))
                                (cons _exn90776_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp96084)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90770_))
            (let ((_e90773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90770_ 'exception))))
              (if (macro-initialized-thread-exception? _e90773_)
                  (macro-initialized-thread-exception-procedure _e90773_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp96087
                                (let ()
                                  (declare (not safe))
                                  (cons _e90773_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp96087)))))
            (if (macro-initialized-thread-exception? _exn90770_)
                (macro-initialized-thread-exception-procedure _exn90770_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp96086
                              (let ()
                                (declare (not safe))
                                (cons _exn90770_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp96086)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90766_))
            (let ((_e90768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90766_ 'exception))))
              (macro-invalid-hash-number-exception? _e90768_))
            (macro-invalid-hash-number-exception? _exn90766_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90762_))
            (let ((_e90764_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90762_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90764_)
                  (macro-invalid-hash-number-exception-arguments _e90764_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp96089
                                (let ()
                                  (declare (not safe))
                                  (cons _e90764_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp96089)))))
            (if (macro-invalid-hash-number-exception? _exn90762_)
                (macro-invalid-hash-number-exception-arguments _exn90762_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp96088
                              (let ()
                                (declare (not safe))
                                (cons _exn90762_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp96088)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90756_))
            (let ((_e90759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90756_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90759_)
                  (macro-invalid-hash-number-exception-procedure _e90759_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp96091
                                (let ()
                                  (declare (not safe))
                                  (cons _e90759_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp96091)))))
            (if (macro-invalid-hash-number-exception? _exn90756_)
                (macro-invalid-hash-number-exception-procedure _exn90756_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp96090
                              (let ()
                                (declare (not safe))
                                (cons _exn90756_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp96090)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90752_))
            (let ((_e90754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90752_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90754_))
            (macro-invalid-utf8-encoding-exception? _exn90752_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90748_))
            (let ((_e90750_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90748_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90750_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90750_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp96093
                                (let ()
                                  (declare (not safe))
                                  (cons _e90750_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp96093)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90748_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90748_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp96092
                              (let ()
                                (declare (not safe))
                                (cons _exn90748_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp96092)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90742_))
            (let ((_e90745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90742_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90745_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90745_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp96095
                                (let ()
                                  (declare (not safe))
                                  (cons _e90745_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp96095)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90742_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90742_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp96094
                              (let ()
                                (declare (not safe))
                                (cons _exn90742_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp96094)))))))
    (define join-timeout-exception?
      (lambda (_exn90738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90738_))
            (let ((_e90740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90738_ 'exception))))
              (macro-join-timeout-exception? _e90740_))
            (macro-join-timeout-exception? _exn90738_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90734_))
            (let ((_e90736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90734_ 'exception))))
              (if (macro-join-timeout-exception? _e90736_)
                  (macro-join-timeout-exception-arguments _e90736_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp96097
                                (let ()
                                  (declare (not safe))
                                  (cons _e90736_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp96097)))))
            (if (macro-join-timeout-exception? _exn90734_)
                (macro-join-timeout-exception-arguments _exn90734_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp96096
                              (let ()
                                (declare (not safe))
                                (cons _exn90734_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp96096)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90728_))
            (let ((_e90731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90728_ 'exception))))
              (if (macro-join-timeout-exception? _e90731_)
                  (macro-join-timeout-exception-procedure _e90731_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp96099
                                (let ()
                                  (declare (not safe))
                                  (cons _e90731_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp96099)))))
            (if (macro-join-timeout-exception? _exn90728_)
                (macro-join-timeout-exception-procedure _exn90728_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp96098
                              (let ()
                                (declare (not safe))
                                (cons _exn90728_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp96098)))))))
    (define keyword-expected-exception?
      (lambda (_exn90724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90724_))
            (let ((_e90726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90724_ 'exception))))
              (macro-keyword-expected-exception? _e90726_))
            (macro-keyword-expected-exception? _exn90724_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90720_))
            (let ((_e90722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90720_ 'exception))))
              (if (macro-keyword-expected-exception? _e90722_)
                  (macro-keyword-expected-exception-arguments _e90722_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp96101
                                (let ()
                                  (declare (not safe))
                                  (cons _e90722_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp96101)))))
            (if (macro-keyword-expected-exception? _exn90720_)
                (macro-keyword-expected-exception-arguments _exn90720_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp96100
                              (let ()
                                (declare (not safe))
                                (cons _exn90720_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp96100)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90714_))
            (let ((_e90717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90714_ 'exception))))
              (if (macro-keyword-expected-exception? _e90717_)
                  (macro-keyword-expected-exception-procedure _e90717_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp96103
                                (let ()
                                  (declare (not safe))
                                  (cons _e90717_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp96103)))))
            (if (macro-keyword-expected-exception? _exn90714_)
                (macro-keyword-expected-exception-procedure _exn90714_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp96102
                              (let ()
                                (declare (not safe))
                                (cons _exn90714_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp96102)))))))
    (define length-mismatch-exception?
      (lambda (_exn90710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90710_))
            (let ((_e90712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90710_ 'exception))))
              (macro-length-mismatch-exception? _e90712_))
            (macro-length-mismatch-exception? _exn90710_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90706_))
            (let ((_e90708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90706_ 'exception))))
              (if (macro-length-mismatch-exception? _e90708_)
                  (macro-length-mismatch-exception-arg-id _e90708_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp96105
                                (let ()
                                  (declare (not safe))
                                  (cons _e90708_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp96105)))))
            (if (macro-length-mismatch-exception? _exn90706_)
                (macro-length-mismatch-exception-arg-id _exn90706_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp96104
                              (let ()
                                (declare (not safe))
                                (cons _exn90706_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp96104)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90702_))
            (let ((_e90704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90702_ 'exception))))
              (if (macro-length-mismatch-exception? _e90704_)
                  (macro-length-mismatch-exception-arguments _e90704_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp96107
                                (let ()
                                  (declare (not safe))
                                  (cons _e90704_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp96107)))))
            (if (macro-length-mismatch-exception? _exn90702_)
                (macro-length-mismatch-exception-arguments _exn90702_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp96106
                              (let ()
                                (declare (not safe))
                                (cons _exn90702_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp96106)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90696_))
            (let ((_e90699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90696_ 'exception))))
              (if (macro-length-mismatch-exception? _e90699_)
                  (macro-length-mismatch-exception-procedure _e90699_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp96109
                                (let ()
                                  (declare (not safe))
                                  (cons _e90699_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp96109)))))
            (if (macro-length-mismatch-exception? _exn90696_)
                (macro-length-mismatch-exception-procedure _exn90696_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp96108
                              (let ()
                                (declare (not safe))
                                (cons _exn90696_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp96108)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90692_))
            (let ((_e90694_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90692_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90694_))
            (macro-mailbox-receive-timeout-exception? _exn90692_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90688_))
            (let ((_e90690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90688_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90690_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90690_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp96111
                                (let ()
                                  (declare (not safe))
                                  (cons _e90690_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp96111)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90688_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90688_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp96110
                              (let ()
                                (declare (not safe))
                                (cons _exn90688_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp96110)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90682_))
            (let ((_e90685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90682_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90685_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90685_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp96113
                                (let ()
                                  (declare (not safe))
                                  (cons _e90685_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp96113)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90682_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90682_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp96112
                              (let ()
                                (declare (not safe))
                                (cons _exn90682_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp96112)))))))
    (define module-not-found-exception?
      (lambda (_exn90678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90678_))
            (let ((_e90680_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90678_ 'exception))))
              (macro-module-not-found-exception? _e90680_))
            (macro-module-not-found-exception? _exn90678_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90674_))
            (let ((_e90676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90674_ 'exception))))
              (if (macro-module-not-found-exception? _e90676_)
                  (macro-module-not-found-exception-arguments _e90676_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp96115
                                (let ()
                                  (declare (not safe))
                                  (cons _e90676_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp96115)))))
            (if (macro-module-not-found-exception? _exn90674_)
                (macro-module-not-found-exception-arguments _exn90674_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp96114
                              (let ()
                                (declare (not safe))
                                (cons _exn90674_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp96114)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90668_))
            (let ((_e90671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90668_ 'exception))))
              (if (macro-module-not-found-exception? _e90671_)
                  (macro-module-not-found-exception-procedure _e90671_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp96117
                                (let ()
                                  (declare (not safe))
                                  (cons _e90671_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp96117)))))
            (if (macro-module-not-found-exception? _exn90668_)
                (macro-module-not-found-exception-procedure _exn90668_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp96116
                              (let ()
                                (declare (not safe))
                                (cons _exn90668_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp96116)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90662_))
            (let ((_e90665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90662_ 'exception))))
              (macro-multiple-c-return-exception? _e90665_))
            (macro-multiple-c-return-exception? _exn90662_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90658_))
            (let ((_e90660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90658_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90660_))
            (macro-no-such-file-or-directory-exception? _exn90658_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90654_))
            (let ((_e90656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90654_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90656_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90656_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp96119
                                (let ()
                                  (declare (not safe))
                                  (cons _e90656_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp96119)))))
            (if (macro-no-such-file-or-directory-exception? _exn90654_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90654_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp96118
                              (let ()
                                (declare (not safe))
                                (cons _exn90654_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp96118)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90648_))
            (let ((_e90651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90648_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90651_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90651_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp96121
                                (let ()
                                  (declare (not safe))
                                  (cons _e90651_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp96121)))))
            (if (macro-no-such-file-or-directory-exception? _exn90648_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90648_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp96120
                              (let ()
                                (declare (not safe))
                                (cons _exn90648_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp96120)))))))
    (define noncontinuable-exception?
      (lambda (_exn90644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90644_))
            (let ((_e90646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90644_ 'exception))))
              (macro-noncontinuable-exception? _e90646_))
            (macro-noncontinuable-exception? _exn90644_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90638_))
            (let ((_e90641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90638_ 'exception))))
              (if (macro-noncontinuable-exception? _e90641_)
                  (macro-noncontinuable-exception-reason _e90641_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp96123
                                (let ()
                                  (declare (not safe))
                                  (cons _e90641_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp96123)))))
            (if (macro-noncontinuable-exception? _exn90638_)
                (macro-noncontinuable-exception-reason _exn90638_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp96122
                              (let ()
                                (declare (not safe))
                                (cons _exn90638_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp96122)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90634_))
            (let ((_e90636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90634_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90636_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90634_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90630_))
            (let ((_e90632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90630_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90632_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90632_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp96125
                                (let ()
                                  (declare (not safe))
                                  (cons _e90632_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp96125)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90630_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90630_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp96124
                              (let ()
                                (declare (not safe))
                                (cons _exn90630_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp96124)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90624_))
            (let ((_e90627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90624_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90627_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90627_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp96127
                                (let ()
                                  (declare (not safe))
                                  (cons _e90627_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp96127)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90624_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90624_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp96126
                              (let ()
                                (declare (not safe))
                                (cons _exn90624_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp96126)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90620_))
            (let ((_e90622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90620_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90622_))
            (macro-nonprocedure-operator-exception? _exn90620_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90616_))
            (let ((_e90618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90616_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90618_)
                  (macro-nonprocedure-operator-exception-arguments _e90618_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96129
                                (let ()
                                  (declare (not safe))
                                  (cons _e90618_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp96129)))))
            (if (macro-nonprocedure-operator-exception? _exn90616_)
                (macro-nonprocedure-operator-exception-arguments _exn90616_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96128
                              (let ()
                                (declare (not safe))
                                (cons _exn90616_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp96128)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90612_))
            (let ((_e90614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90612_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90614_)
                  (macro-nonprocedure-operator-exception-code _e90614_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96131
                                (let ()
                                  (declare (not safe))
                                  (cons _e90614_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp96131)))))
            (if (macro-nonprocedure-operator-exception? _exn90612_)
                (macro-nonprocedure-operator-exception-code _exn90612_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96130
                              (let ()
                                (declare (not safe))
                                (cons _exn90612_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp96130)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90608_))
            (let ((_e90610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90608_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90610_)
                  (macro-nonprocedure-operator-exception-operator _e90610_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96133
                                (let ()
                                  (declare (not safe))
                                  (cons _e90610_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp96133)))))
            (if (macro-nonprocedure-operator-exception? _exn90608_)
                (macro-nonprocedure-operator-exception-operator _exn90608_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96132
                              (let ()
                                (declare (not safe))
                                (cons _exn90608_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp96132)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90602_))
            (let ((_e90605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90602_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90605_)
                  (macro-nonprocedure-operator-exception-rte _e90605_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96135
                                (let ()
                                  (declare (not safe))
                                  (cons _e90605_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp96135)))))
            (if (macro-nonprocedure-operator-exception? _exn90602_)
                (macro-nonprocedure-operator-exception-rte _exn90602_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96134
                              (let ()
                                (declare (not safe))
                                (cons _exn90602_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp96134)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90598_))
            (let ((_e90600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90598_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90600_))
            (macro-not-in-compilation-context-exception? _exn90598_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90594_))
            (let ((_e90596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90594_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90596_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90596_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp96137
                                (let ()
                                  (declare (not safe))
                                  (cons _e90596_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp96137)))))
            (if (macro-not-in-compilation-context-exception? _exn90594_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90594_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp96136
                              (let ()
                                (declare (not safe))
                                (cons _exn90594_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp96136)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90588_))
            (let ((_e90591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90588_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90591_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90591_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp96139
                                (let ()
                                  (declare (not safe))
                                  (cons _e90591_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp96139)))))
            (if (macro-not-in-compilation-context-exception? _exn90588_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90588_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp96138
                              (let ()
                                (declare (not safe))
                                (cons _exn90588_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp96138)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90584_))
            (let ((_e90586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90584_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90586_))
            (macro-number-of-arguments-limit-exception? _exn90584_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90580_))
            (let ((_e90582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90580_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90582_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90582_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp96141
                                (let ()
                                  (declare (not safe))
                                  (cons _e90582_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp96141)))))
            (if (macro-number-of-arguments-limit-exception? _exn90580_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90580_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp96140
                              (let ()
                                (declare (not safe))
                                (cons _exn90580_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp96140)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90574_))
            (let ((_e90577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90574_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90577_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90577_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp96143
                                (let ()
                                  (declare (not safe))
                                  (cons _e90577_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp96143)))))
            (if (macro-number-of-arguments-limit-exception? _exn90574_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90574_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp96142
                              (let ()
                                (declare (not safe))
                                (cons _exn90574_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp96142)))))))
    (define os-exception?
      (lambda (_exn90570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90570_))
            (let ((_e90572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90570_ 'exception))))
              (macro-os-exception? _e90572_))
            (macro-os-exception? _exn90570_))))
    (define os-exception-arguments
      (lambda (_exn90566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90566_))
            (let ((_e90568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90566_ 'exception))))
              (if (macro-os-exception? _e90568_)
                  (macro-os-exception-arguments _e90568_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96145
                                (let ()
                                  (declare (not safe))
                                  (cons _e90568_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp96145)))))
            (if (macro-os-exception? _exn90566_)
                (macro-os-exception-arguments _exn90566_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96144
                              (let ()
                                (declare (not safe))
                                (cons _exn90566_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp96144)))))))
    (define os-exception-code
      (lambda (_exn90562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90562_))
            (let ((_e90564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90562_ 'exception))))
              (if (macro-os-exception? _e90564_)
                  (macro-os-exception-code _e90564_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96147
                                (let ()
                                  (declare (not safe))
                                  (cons _e90564_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp96147)))))
            (if (macro-os-exception? _exn90562_)
                (macro-os-exception-code _exn90562_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96146
                              (let ()
                                (declare (not safe))
                                (cons _exn90562_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp96146)))))))
    (define os-exception-message
      (lambda (_exn90558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90558_))
            (let ((_e90560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90558_ 'exception))))
              (if (macro-os-exception? _e90560_)
                  (macro-os-exception-message _e90560_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96149
                                (let ()
                                  (declare (not safe))
                                  (cons _e90560_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp96149)))))
            (if (macro-os-exception? _exn90558_)
                (macro-os-exception-message _exn90558_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96148
                              (let ()
                                (declare (not safe))
                                (cons _exn90558_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp96148)))))))
    (define os-exception-procedure
      (lambda (_exn90552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90552_))
            (let ((_e90555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90552_ 'exception))))
              (if (macro-os-exception? _e90555_)
                  (macro-os-exception-procedure _e90555_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96151
                                (let ()
                                  (declare (not safe))
                                  (cons _e90555_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp96151)))))
            (if (macro-os-exception? _exn90552_)
                (macro-os-exception-procedure _exn90552_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96150
                              (let ()
                                (declare (not safe))
                                (cons _exn90552_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp96150)))))))
    (define permission-denied-exception?
      (lambda (_exn90548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90548_))
            (let ((_e90550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90548_ 'exception))))
              (macro-permission-denied-exception? _e90550_))
            (macro-permission-denied-exception? _exn90548_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90544_))
            (let ((_e90546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90544_ 'exception))))
              (if (macro-permission-denied-exception? _e90546_)
                  (macro-permission-denied-exception-arguments _e90546_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp96153
                                (let ()
                                  (declare (not safe))
                                  (cons _e90546_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp96153)))))
            (if (macro-permission-denied-exception? _exn90544_)
                (macro-permission-denied-exception-arguments _exn90544_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp96152
                              (let ()
                                (declare (not safe))
                                (cons _exn90544_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp96152)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90538_))
            (let ((_e90541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90538_ 'exception))))
              (if (macro-permission-denied-exception? _e90541_)
                  (macro-permission-denied-exception-procedure _e90541_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp96155
                                (let ()
                                  (declare (not safe))
                                  (cons _e90541_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp96155)))))
            (if (macro-permission-denied-exception? _exn90538_)
                (macro-permission-denied-exception-procedure _exn90538_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp96154
                              (let ()
                                (declare (not safe))
                                (cons _exn90538_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp96154)))))))
    (define range-exception?
      (lambda (_exn90534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90534_))
            (let ((_e90536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90534_ 'exception))))
              (macro-range-exception? _e90536_))
            (macro-range-exception? _exn90534_))))
    (define range-exception-arg-id
      (lambda (_exn90530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90530_))
            (let ((_e90532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90530_ 'exception))))
              (if (macro-range-exception? _e90532_)
                  (macro-range-exception-arg-id _e90532_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp96157
                                (let ()
                                  (declare (not safe))
                                  (cons _e90532_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp96157)))))
            (if (macro-range-exception? _exn90530_)
                (macro-range-exception-arg-id _exn90530_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp96156
                              (let ()
                                (declare (not safe))
                                (cons _exn90530_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp96156)))))))
    (define range-exception-arguments
      (lambda (_exn90526_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90526_))
            (let ((_e90528_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90526_ 'exception))))
              (if (macro-range-exception? _e90528_)
                  (macro-range-exception-arguments _e90528_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp96159
                                (let ()
                                  (declare (not safe))
                                  (cons _e90528_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp96159)))))
            (if (macro-range-exception? _exn90526_)
                (macro-range-exception-arguments _exn90526_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp96158
                              (let ()
                                (declare (not safe))
                                (cons _exn90526_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp96158)))))))
    (define range-exception-procedure
      (lambda (_exn90520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90520_))
            (let ((_e90523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90520_ 'exception))))
              (if (macro-range-exception? _e90523_)
                  (macro-range-exception-procedure _e90523_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp96161
                                (let ()
                                  (declare (not safe))
                                  (cons _e90523_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp96161)))))
            (if (macro-range-exception? _exn90520_)
                (macro-range-exception-procedure _exn90520_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp96160
                              (let ()
                                (declare (not safe))
                                (cons _exn90520_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp96160)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90516_))
            (let ((_e90518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90516_ 'exception))))
              (macro-rpc-remote-error-exception? _e90518_))
            (macro-rpc-remote-error-exception? _exn90516_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90512_))
            (let ((_e90514_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90512_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90514_)
                  (macro-rpc-remote-error-exception-arguments _e90514_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp96163
                                (let ()
                                  (declare (not safe))
                                  (cons _e90514_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp96163)))))
            (if (macro-rpc-remote-error-exception? _exn90512_)
                (macro-rpc-remote-error-exception-arguments _exn90512_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp96162
                              (let ()
                                (declare (not safe))
                                (cons _exn90512_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp96162)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90508_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90508_))
            (let ((_e90510_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90508_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90510_)
                  (macro-rpc-remote-error-exception-message _e90510_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp96165
                                (let ()
                                  (declare (not safe))
                                  (cons _e90510_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp96165)))))
            (if (macro-rpc-remote-error-exception? _exn90508_)
                (macro-rpc-remote-error-exception-message _exn90508_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp96164
                              (let ()
                                (declare (not safe))
                                (cons _exn90508_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp96164)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90502_))
            (let ((_e90505_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90502_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90505_)
                  (macro-rpc-remote-error-exception-procedure _e90505_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp96167
                                (let ()
                                  (declare (not safe))
                                  (cons _e90505_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp96167)))))
            (if (macro-rpc-remote-error-exception? _exn90502_)
                (macro-rpc-remote-error-exception-procedure _exn90502_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp96166
                              (let ()
                                (declare (not safe))
                                (cons _exn90502_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp96166)))))))
    (define scheduler-exception?
      (lambda (_exn90498_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90498_))
            (let ((_e90500_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90498_ 'exception))))
              (macro-scheduler-exception? _e90500_))
            (macro-scheduler-exception? _exn90498_))))
    (define scheduler-exception-reason
      (lambda (_exn90492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90492_))
            (let ((_e90495_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90492_ 'exception))))
              (if (macro-scheduler-exception? _e90495_)
                  (macro-scheduler-exception-reason _e90495_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp96169
                                (let ()
                                  (declare (not safe))
                                  (cons _e90495_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp96169)))))
            (if (macro-scheduler-exception? _exn90492_)
                (macro-scheduler-exception-reason _exn90492_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp96168
                              (let ()
                                (declare (not safe))
                                (cons _exn90492_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp96168)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90488_))
            (let ((_e90490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90488_ 'exception))))
              (macro-sfun-conversion-exception? _e90490_))
            (macro-sfun-conversion-exception? _exn90488_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90484_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90484_))
            (let ((_e90486_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90484_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90486_)
                  (macro-sfun-conversion-exception-arguments _e90486_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96171
                                (let ()
                                  (declare (not safe))
                                  (cons _e90486_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp96171)))))
            (if (macro-sfun-conversion-exception? _exn90484_)
                (macro-sfun-conversion-exception-arguments _exn90484_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96170
                              (let ()
                                (declare (not safe))
                                (cons _exn90484_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp96170)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90480_))
            (let ((_e90482_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90480_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90482_)
                  (macro-sfun-conversion-exception-code _e90482_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96173
                                (let ()
                                  (declare (not safe))
                                  (cons _e90482_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp96173)))))
            (if (macro-sfun-conversion-exception? _exn90480_)
                (macro-sfun-conversion-exception-code _exn90480_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96172
                              (let ()
                                (declare (not safe))
                                (cons _exn90480_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp96172)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90476_))
            (let ((_e90478_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90476_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90478_)
                  (macro-sfun-conversion-exception-message _e90478_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96175
                                (let ()
                                  (declare (not safe))
                                  (cons _e90478_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp96175)))))
            (if (macro-sfun-conversion-exception? _exn90476_)
                (macro-sfun-conversion-exception-message _exn90476_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96174
                              (let ()
                                (declare (not safe))
                                (cons _exn90476_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp96174)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90470_))
            (let ((_e90473_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90470_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90473_)
                  (macro-sfun-conversion-exception-procedure _e90473_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96177
                                (let ()
                                  (declare (not safe))
                                  (cons _e90473_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp96177)))))
            (if (macro-sfun-conversion-exception? _exn90470_)
                (macro-sfun-conversion-exception-procedure _exn90470_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96176
                              (let ()
                                (declare (not safe))
                                (cons _exn90470_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp96176)))))))
    (define stack-overflow-exception?
      (lambda (_exn90464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90464_))
            (let ((_e90467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90464_ 'exception))))
              (macro-stack-overflow-exception? _e90467_))
            (macro-stack-overflow-exception? _exn90464_))))
    (define started-thread-exception?
      (lambda (_exn90460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90460_))
            (let ((_e90462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90460_ 'exception))))
              (macro-started-thread-exception? _e90462_))
            (macro-started-thread-exception? _exn90460_))))
    (define started-thread-exception-arguments
      (lambda (_exn90456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90456_))
            (let ((_e90458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90456_ 'exception))))
              (if (macro-started-thread-exception? _e90458_)
                  (macro-started-thread-exception-arguments _e90458_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp96179
                                (let ()
                                  (declare (not safe))
                                  (cons _e90458_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp96179)))))
            (if (macro-started-thread-exception? _exn90456_)
                (macro-started-thread-exception-arguments _exn90456_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp96178
                              (let ()
                                (declare (not safe))
                                (cons _exn90456_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp96178)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90450_))
            (let ((_e90453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90450_ 'exception))))
              (if (macro-started-thread-exception? _e90453_)
                  (macro-started-thread-exception-procedure _e90453_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp96181
                                (let ()
                                  (declare (not safe))
                                  (cons _e90453_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp96181)))))
            (if (macro-started-thread-exception? _exn90450_)
                (macro-started-thread-exception-procedure _exn90450_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp96180
                              (let ()
                                (declare (not safe))
                                (cons _exn90450_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp96180)))))))
    (define terminated-thread-exception?
      (lambda (_exn90446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90446_))
            (let ((_e90448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90446_ 'exception))))
              (macro-terminated-thread-exception? _e90448_))
            (macro-terminated-thread-exception? _exn90446_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90442_))
            (let ((_e90444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90442_ 'exception))))
              (if (macro-terminated-thread-exception? _e90444_)
                  (macro-terminated-thread-exception-arguments _e90444_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp96183
                                (let ()
                                  (declare (not safe))
                                  (cons _e90444_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp96183)))))
            (if (macro-terminated-thread-exception? _exn90442_)
                (macro-terminated-thread-exception-arguments _exn90442_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp96182
                              (let ()
                                (declare (not safe))
                                (cons _exn90442_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp96182)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90436_))
            (let ((_e90439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90436_ 'exception))))
              (if (macro-terminated-thread-exception? _e90439_)
                  (macro-terminated-thread-exception-procedure _e90439_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp96185
                                (let ()
                                  (declare (not safe))
                                  (cons _e90439_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp96185)))))
            (if (macro-terminated-thread-exception? _exn90436_)
                (macro-terminated-thread-exception-procedure _exn90436_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp96184
                              (let ()
                                (declare (not safe))
                                (cons _exn90436_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp96184)))))))
    (define type-exception?
      (lambda (_exn90432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90432_))
            (let ((_e90434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90432_ 'exception))))
              (macro-type-exception? _e90434_))
            (macro-type-exception? _exn90432_))))
    (define type-exception-arg-id
      (lambda (_exn90428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90428_))
            (let ((_e90430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90428_ 'exception))))
              (if (macro-type-exception? _e90430_)
                  (macro-type-exception-arg-id _e90430_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96187
                                (let ()
                                  (declare (not safe))
                                  (cons _e90430_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp96187)))))
            (if (macro-type-exception? _exn90428_)
                (macro-type-exception-arg-id _exn90428_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96186
                              (let ()
                                (declare (not safe))
                                (cons _exn90428_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp96186)))))))
    (define type-exception-arguments
      (lambda (_exn90424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90424_))
            (let ((_e90426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90424_ 'exception))))
              (if (macro-type-exception? _e90426_)
                  (macro-type-exception-arguments _e90426_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96189
                                (let ()
                                  (declare (not safe))
                                  (cons _e90426_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp96189)))))
            (if (macro-type-exception? _exn90424_)
                (macro-type-exception-arguments _exn90424_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96188
                              (let ()
                                (declare (not safe))
                                (cons _exn90424_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp96188)))))))
    (define type-exception-procedure
      (lambda (_exn90420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90420_))
            (let ((_e90422_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90420_ 'exception))))
              (if (macro-type-exception? _e90422_)
                  (macro-type-exception-procedure _e90422_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96191
                                (let ()
                                  (declare (not safe))
                                  (cons _e90422_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp96191)))))
            (if (macro-type-exception? _exn90420_)
                (macro-type-exception-procedure _exn90420_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96190
                              (let ()
                                (declare (not safe))
                                (cons _exn90420_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp96190)))))))
    (define type-exception-type-id
      (lambda (_exn90414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90414_))
            (let ((_e90417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90414_ 'exception))))
              (if (macro-type-exception? _e90417_)
                  (macro-type-exception-type-id _e90417_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96193
                                (let ()
                                  (declare (not safe))
                                  (cons _e90417_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp96193)))))
            (if (macro-type-exception? _exn90414_)
                (macro-type-exception-type-id _exn90414_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96192
                              (let ()
                                (declare (not safe))
                                (cons _exn90414_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp96192)))))))
    (define unbound-global-exception?
      (lambda (_exn90410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90410_))
            (let ((_e90412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90410_ 'exception))))
              (macro-unbound-global-exception? _e90412_))
            (macro-unbound-global-exception? _exn90410_))))
    (define unbound-global-exception-code
      (lambda (_exn90406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90406_))
            (let ((_e90408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90406_ 'exception))))
              (if (macro-unbound-global-exception? _e90408_)
                  (macro-unbound-global-exception-code _e90408_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96195
                                (let ()
                                  (declare (not safe))
                                  (cons _e90408_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp96195)))))
            (if (macro-unbound-global-exception? _exn90406_)
                (macro-unbound-global-exception-code _exn90406_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96194
                              (let ()
                                (declare (not safe))
                                (cons _exn90406_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp96194)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90402_))
            (let ((_e90404_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90402_ 'exception))))
              (if (macro-unbound-global-exception? _e90404_)
                  (macro-unbound-global-exception-rte _e90404_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96197
                                (let ()
                                  (declare (not safe))
                                  (cons _e90404_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp96197)))))
            (if (macro-unbound-global-exception? _exn90402_)
                (macro-unbound-global-exception-rte _exn90402_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96196
                              (let ()
                                (declare (not safe))
                                (cons _exn90402_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp96196)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90396_))
            (let ((_e90399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90396_ 'exception))))
              (if (macro-unbound-global-exception? _e90399_)
                  (macro-unbound-global-exception-variable _e90399_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96199
                                (let ()
                                  (declare (not safe))
                                  (cons _e90399_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp96199)))))
            (if (macro-unbound-global-exception? _exn90396_)
                (macro-unbound-global-exception-variable _exn90396_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96198
                              (let ()
                                (declare (not safe))
                                (cons _exn90396_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp96198)))))))
    (define unbound-key-exception?
      (lambda (_exn90392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90392_))
            (let ((_e90394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90392_ 'exception))))
              (macro-unbound-key-exception? _e90394_))
            (macro-unbound-key-exception? _exn90392_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90388_))
            (let ((_e90390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90388_ 'exception))))
              (if (macro-unbound-key-exception? _e90390_)
                  (macro-unbound-key-exception-arguments _e90390_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp96201
                                (let ()
                                  (declare (not safe))
                                  (cons _e90390_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp96201)))))
            (if (macro-unbound-key-exception? _exn90388_)
                (macro-unbound-key-exception-arguments _exn90388_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp96200
                              (let ()
                                (declare (not safe))
                                (cons _exn90388_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp96200)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90382_))
            (let ((_e90385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90382_ 'exception))))
              (if (macro-unbound-key-exception? _e90385_)
                  (macro-unbound-key-exception-procedure _e90385_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp96203
                                (let ()
                                  (declare (not safe))
                                  (cons _e90385_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp96203)))))
            (if (macro-unbound-key-exception? _exn90382_)
                (macro-unbound-key-exception-procedure _exn90382_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp96202
                              (let ()
                                (declare (not safe))
                                (cons _exn90382_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp96202)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90378_))
            (let ((_e90380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90378_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90380_))
            (macro-unbound-os-environment-variable-exception? _exn90378_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90374_))
            (let ((_e90376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90374_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90376_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90376_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp96205
                                (let ()
                                  (declare (not safe))
                                  (cons _e90376_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp96205)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90374_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90374_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp96204
                              (let ()
                                (declare (not safe))
                                (cons _exn90374_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp96204)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90368_))
            (let ((_e90371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90368_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90371_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90371_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp96207
                                (let ()
                                  (declare (not safe))
                                  (cons _e90371_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp96207)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90368_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90368_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp96206
                              (let ()
                                (declare (not safe))
                                (cons _exn90368_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp96206)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90364_))
            (let ((_e90366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90364_ 'exception))))
              (macro-unbound-serial-number-exception? _e90366_))
            (macro-unbound-serial-number-exception? _exn90364_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90360_))
            (let ((_e90362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90360_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90362_)
                  (macro-unbound-serial-number-exception-arguments _e90362_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp96209
                                (let ()
                                  (declare (not safe))
                                  (cons _e90362_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp96209)))))
            (if (macro-unbound-serial-number-exception? _exn90360_)
                (macro-unbound-serial-number-exception-arguments _exn90360_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp96208
                              (let ()
                                (declare (not safe))
                                (cons _exn90360_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp96208)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90354_))
            (let ((_e90357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90354_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90357_)
                  (macro-unbound-serial-number-exception-procedure _e90357_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp96211
                                (let ()
                                  (declare (not safe))
                                  (cons _e90357_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp96211)))))
            (if (macro-unbound-serial-number-exception? _exn90354_)
                (macro-unbound-serial-number-exception-procedure _exn90354_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp96210
                              (let ()
                                (declare (not safe))
                                (cons _exn90354_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp96210)))))))
    (define uncaught-exception?
      (lambda (_exn90350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90350_))
            (let ((_e90352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90350_ 'exception))))
              (macro-uncaught-exception? _e90352_))
            (macro-uncaught-exception? _exn90350_))))
    (define uncaught-exception-arguments
      (lambda (_exn90346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90346_))
            (let ((_e90348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90346_ 'exception))))
              (if (macro-uncaught-exception? _e90348_)
                  (macro-uncaught-exception-arguments _e90348_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96213
                                (let ()
                                  (declare (not safe))
                                  (cons _e90348_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp96213)))))
            (if (macro-uncaught-exception? _exn90346_)
                (macro-uncaught-exception-arguments _exn90346_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96212
                              (let ()
                                (declare (not safe))
                                (cons _exn90346_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp96212)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90342_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90342_))
            (let ((_e90344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90342_ 'exception))))
              (if (macro-uncaught-exception? _e90344_)
                  (macro-uncaught-exception-procedure _e90344_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96215
                                (let ()
                                  (declare (not safe))
                                  (cons _e90344_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp96215)))))
            (if (macro-uncaught-exception? _exn90342_)
                (macro-uncaught-exception-procedure _exn90342_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96214
                              (let ()
                                (declare (not safe))
                                (cons _exn90342_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp96214)))))))
    (define uncaught-exception-reason
      (lambda (_exn90336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90336_))
            (let ((_e90339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90336_ 'exception))))
              (if (macro-uncaught-exception? _e90339_)
                  (macro-uncaught-exception-reason _e90339_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96217
                                (let ()
                                  (declare (not safe))
                                  (cons _e90339_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp96217)))))
            (if (macro-uncaught-exception? _exn90336_)
                (macro-uncaught-exception-reason _exn90336_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96216
                              (let ()
                                (declare (not safe))
                                (cons _exn90336_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp96216)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90332_))
            (let ((_e90334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90332_ 'exception))))
              (macro-uninitialized-thread-exception? _e90334_))
            (macro-uninitialized-thread-exception? _exn90332_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90328_))
            (let ((_e90330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90328_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90330_)
                  (macro-uninitialized-thread-exception-arguments _e90330_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp96219
                                (let ()
                                  (declare (not safe))
                                  (cons _e90330_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp96219)))))
            (if (macro-uninitialized-thread-exception? _exn90328_)
                (macro-uninitialized-thread-exception-arguments _exn90328_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp96218
                              (let ()
                                (declare (not safe))
                                (cons _exn90328_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp96218)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90322_))
            (let ((_e90325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90322_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90325_)
                  (macro-uninitialized-thread-exception-procedure _e90325_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp96221
                                (let ()
                                  (declare (not safe))
                                  (cons _e90325_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp96221)))))
            (if (macro-uninitialized-thread-exception? _exn90322_)
                (macro-uninitialized-thread-exception-procedure _exn90322_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp96220
                              (let ()
                                (declare (not safe))
                                (cons _exn90322_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp96220)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90318_))
            (let ((_e90320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90318_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90320_))
            (macro-unknown-keyword-argument-exception? _exn90318_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90314_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90314_))
            (let ((_e90316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90314_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90316_)
                  (macro-unknown-keyword-argument-exception-arguments _e90316_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96223
                                (let ()
                                  (declare (not safe))
                                  (cons _e90316_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp96223)))))
            (if (macro-unknown-keyword-argument-exception? _exn90314_)
                (macro-unknown-keyword-argument-exception-arguments _exn90314_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96222
                              (let ()
                                (declare (not safe))
                                (cons _exn90314_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp96222)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90308_))
            (let ((_e90311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90308_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90311_)
                  (macro-unknown-keyword-argument-exception-procedure _e90311_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96225
                                (let ()
                                  (declare (not safe))
                                  (cons _e90311_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp96225)))))
            (if (macro-unknown-keyword-argument-exception? _exn90308_)
                (macro-unknown-keyword-argument-exception-procedure _exn90308_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96224
                              (let ()
                                (declare (not safe))
                                (cons _exn90308_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp96224)))))))
    (define unterminated-process-exception?
      (lambda (_exn90304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90304_))
            (let ((_e90306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90304_ 'exception))))
              (macro-unterminated-process-exception? _e90306_))
            (macro-unterminated-process-exception? _exn90304_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90300_))
            (let ((_e90302_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90300_ 'exception))))
              (if (macro-unterminated-process-exception? _e90302_)
                  (macro-unterminated-process-exception-arguments _e90302_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96227
                                (let ()
                                  (declare (not safe))
                                  (cons _e90302_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp96227)))))
            (if (macro-unterminated-process-exception? _exn90300_)
                (macro-unterminated-process-exception-arguments _exn90300_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96226
                              (let ()
                                (declare (not safe))
                                (cons _exn90300_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp96226)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90294_))
            (let ((_e90297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90294_ 'exception))))
              (if (macro-unterminated-process-exception? _e90297_)
                  (macro-unterminated-process-exception-procedure _e90297_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96229
                                (let ()
                                  (declare (not safe))
                                  (cons _e90297_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp96229)))))
            (if (macro-unterminated-process-exception? _exn90294_)
                (macro-unterminated-process-exception-procedure _exn90294_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96228
                              (let ()
                                (declare (not safe))
                                (cons _exn90294_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp96228)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90290_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90290_))
            (let ((_e90292_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90290_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90292_))
            (macro-wrong-number-of-arguments-exception? _exn90290_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90286_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90286_))
            (let ((_e90288_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90286_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90288_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90288_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96231
                                (let ()
                                  (declare (not safe))
                                  (cons _e90288_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp96231)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90286_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90286_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96230
                              (let ()
                                (declare (not safe))
                                (cons _exn90286_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp96230)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90280_))
            (let ((_e90283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90280_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90283_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90283_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96233
                                (let ()
                                  (declare (not safe))
                                  (cons _e90283_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96233)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90280_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90280_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96232
                              (let ()
                                (declare (not safe))
                                (cons _exn90280_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp96232)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90276_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90276_))
            (let ((_e90278_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90276_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90278_))
            (macro-wrong-number-of-values-exception? _exn90276_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90272_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90272_))
            (let ((_e90274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90272_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90274_)
                  (macro-wrong-number-of-values-exception-code _e90274_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96235
                                (let ()
                                  (declare (not safe))
                                  (cons _e90274_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96235)))))
            (if (macro-wrong-number-of-values-exception? _exn90272_)
                (macro-wrong-number-of-values-exception-code _exn90272_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96234
                              (let ()
                                (declare (not safe))
                                (cons _exn90272_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96234)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90268_))
            (let ((_e90270_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90268_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90270_)
                  (macro-wrong-number-of-values-exception-rte _e90270_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96237
                                (let ()
                                  (declare (not safe))
                                  (cons _e90270_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96237)))))
            (if (macro-wrong-number-of-values-exception? _exn90268_)
                (macro-wrong-number-of-values-exception-rte _exn90268_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96236
                              (let ()
                                (declare (not safe))
                                (cons _exn90268_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96236)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90262_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90262_))
            (let ((_e90265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90262_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90265_)
                  (macro-wrong-number-of-values-exception-vals _e90265_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96239
                                (let ()
                                  (declare (not safe))
                                  (cons _e90265_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96239)))))
            (if (macro-wrong-number-of-values-exception? _exn90262_)
                (macro-wrong-number-of-values-exception-vals _exn90262_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96238
                              (let ()
                                (declare (not safe))
                                (cons _exn90262_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96238)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90256_))
            (let ((_e90259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90256_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90259_))
            (macro-wrong-processor-c-return-exception? _exn90256_))))))
