(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708451992)
  (begin
    (define Exception::t
      (let ((__tmp63319 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp63319
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args63287_ (apply make-instance Exception::t _$args63287_)))
    (define StackTrace::t
      (let ((__tmp63320 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp63320
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args63284_ (apply make-instance StackTrace::t _$args63284_)))
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
      (let ((__tmp63321 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp63321
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args63281_ (apply make-instance Error::t _$args63281_)))
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
      (let ((__tmp63322 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp63322
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args63278_
        (apply make-instance RuntimeException::t _$args63278_)))
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
      (lambda (_exn63273_ _continue63274_)
        (let ((_exn63276_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn63273_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn63276_ _continue63274_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn63269_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn63269_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn63269_ 'continuation))
                '#!void
                (let ((__tmp63323
                       (lambda (_cont63271_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn63269_
                            'continuation
                            _cont63271_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp63323)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn63269_))))
    (define error
      (lambda (_message63266_ . _irritants63267_)
        (raise (let ((__obj63313
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj63313
                  _message63266_
                  'irritants:
                  _irritants63267_)
                 __obj63313))))
    (define with-exception-handler
      (lambda (_handler63259_ _thunk63260_)
        (if (let () (declare (not safe)) (procedure? _handler63259_))
            '#!void
            (raise (let ((__obj63314
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63314
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler63259_ '())))
                     __obj63314)))
        (if (let () (declare (not safe)) (procedure? _thunk63260_))
            '#!void
            (raise (let ((__obj63315
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63315
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk63260_ '())))
                     __obj63315)))
        (let ((__tmp63324
               (lambda (_exn63262_)
                 (let ((_exn63264_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn63262_))))
                   (_handler63259_ _exn63264_)))))
          (declare (not safe))
          (##with-exception-handler __tmp63324 _thunk63260_))))
    (define with-catch
      (lambda (_handler63252_ _thunk63253_)
        (if (let () (declare (not safe)) (procedure? _handler63252_))
            '#!void
            (raise (let ((__obj63316
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63316
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler63252_ '())))
                     __obj63316)))
        (if (let () (declare (not safe)) (procedure? _thunk63253_))
            '#!void
            (raise (let ((__obj63317
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63317
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk63253_ '())))
                     __obj63317)))
        (let ((__tmp63325
               (lambda (_cont63255_)
                 (with-exception-handler
                  (lambda (_exn63257_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont63255_
                       _handler63252_
                       _exn63257_)))
                  _thunk63253_))))
          (declare (not safe))
          (##continuation-capture __tmp63325))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn63243_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn63243_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn63243_)))
            _exn63243_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn63243_))
                _exn63243_
                (if (macro-exception? _exn63243_)
                    (let ((_rte63248_
                           (let ((__obj63318
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj63318
                                _exn63243_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj63318)))
                      (let ((__tmp63326
                             (lambda (_cont63250_)
                               (let ((__tmp63327
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont63250_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte63248_
                                  'continuation
                                  __tmp63327)))))
                        (declare (not safe))
                        (##continuation-capture __tmp63326))
                      _rte63248_)
                    _exn63243_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj63238_)
        (let ((_$e63240_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj63238_))))
          (if _$e63240_
              _$e63240_
              (let () (declare (not safe)) (error-exception? _obj63238_))))))
    (define error-message
      (lambda (_obj63236_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj63236_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj63236_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj63236_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj63236_))
                '#f))))
    (define error-irritants
      (lambda (_obj63234_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj63234_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj63234_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj63234_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj63234_))
                '#f))))
    (define error-trace
      (lambda (_obj63232_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj63232_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj63232_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e63214_ _port63215_)
        (let ((_$e63217_
               (let ()
                 (declare (not safe))
                 (method-ref _e63214_ 'display-exception))))
          (if _$e63217_
              ((lambda (_f63220_) (_f63220_ _e63214_ _port63215_)) _$e63217_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e63214_ _port63215_))))))
    (define display-exception__0
      (lambda (_e63225_)
        (let ((_port63227_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e63225_ _port63227_))))
    (define display-exception
      (lambda _g63329_
        (let ((_g63328_ (let () (declare (not safe)) (##length _g63329_))))
          (cond ((let () (declare (not safe)) (##fx= _g63328_ 1))
                 (apply (lambda (_e63225_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e63225_)))
                        _g63329_))
                ((let () (declare (not safe)) (##fx= _g63328_ 2))
                 (apply (lambda (_e63229_ _port63230_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e63229_ _port63230_)))
                        _g63329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g63329_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self63203_ _message63204_ . _rest63205_)
        (let ((_message63211_
               (if (let () (declare (not safe)) (string? _message63204_))
                   _message63204_
                   (call-with-output-string
                    '""
                    (lambda (_g6320663208_)
                      (display _message63204_ _g6320663208_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self63203_ 'message _message63211_))
          (apply class-instance-init! _self63203_ _rest63205_))))
    (define Error:::init!::specialize
      (lambda (__klass63289 __method-table63290)
        (let ((__message63291
               (let ((__slot63292
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63289 'message))))
                 (if __slot63292
                     __slot63292
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self63203_ _message63204_ . _rest63205_)
            (let ((_message63211_
                   (if (let () (declare (not safe)) (string? _message63204_))
                       _message63204_
                       (call-with-output-string
                        '""
                        (lambda (_g6320663208_)
                          (display _message63204_ _g6320663208_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self63203_
                 _message63211_
                 __message63291
                 __klass63289
                 '#f))
              (apply class-instance-init! _self63203_ _rest63205_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self63061_ _port63062_)
        (let ((_tmp-port63064_ (open-output-string))
              (_display-error-newline63065_
               (> (output-port-column _port63062_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port63064_))
          (let ((__tmp63330
                 (lambda ()
                   (if _display-error-newline63065_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e63068_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self63061_ 'where))))
                     (if _$e63068_ (display _$e63068_) (display '"?")))
                   (let ((__tmp63331
                          (let ((__tmp63332 (object-type _self63061_)))
                            (declare (not safe))
                            (##type-name __tmp63332))))
                     (declare (not safe))
                     (display* '" [" __tmp63331 '"]: "))
                   (let ((__tmp63333
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self63061_ 'message))))
                     (declare (not safe))
                     (displayln __tmp63333))
                   (let ((_irritants63071_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self63061_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants63071_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj63073_)
                              (write _obj63073_)
                              (write-char '#\space))
                            _irritants63071_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self63061_))
                            (dump-stack-trace?))
                       (let ((_cont6307463076_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self63061_
                                 'continuation))))
                         (if _cont6307463076_
                             (let ((_cont63079_ _cont6307463076_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont63079_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp63330
             current-output-port
             _tmp-port63064_))
          (let ((__tmp63334 (get-output-string _tmp-port63064_)))
            (declare (not safe))
            (##write-string __tmp63334 _port63062_)))))
    (define Error::display-exception::specialize
      (lambda (__klass63293 __method-table63294)
        (let ((__irritants63295
               (let ((__slot63299
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63293 'irritants))))
                 (if __slot63299
                     __slot63299
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message63296
               (let ((__slot63300
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63293 'message))))
                 (if __slot63300
                     __slot63300
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__continuation63297
               (let ((__slot63301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63293 'continuation))))
                 (if __slot63301
                     __slot63301
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where63298
               (let ((__slot63302
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63293 'where))))
                 (if __slot63302
                     __slot63302
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where))))))
          (lambda (_self63061_ _port63062_)
            (let ((_tmp-port63064_ (open-output-string))
                  (_display-error-newline63065_
                   (> (output-port-column _port63062_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port63064_))
              (let ((__tmp63335
                     (lambda ()
                       (if _display-error-newline63065_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e63068_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self63061_
                                 __where63298
                                 __klass63293
                                 '#f))))
                         (if _$e63068_ (display _$e63068_) (display '"?")))
                       (let ((__tmp63336
                              (let ((__tmp63337 (object-type _self63061_)))
                                (declare (not safe))
                                (##type-name __tmp63337))))
                         (declare (not safe))
                         (display* '" [" __tmp63336 '"]: "))
                       (let ((__tmp63338
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self63061_
                                 __message63296
                                 __klass63293
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp63338))
                       (let ((_irritants63071_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self63061_
                                 __irritants63295
                                 __klass63293
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants63071_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj63073_)
                                  (write _obj63073_)
                                  (write-char '#\space))
                                _irritants63071_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self63061_))
                                (dump-stack-trace?))
                           (let ((_cont6307463076_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self63061_
                                     __continuation63297
                                     __klass63293
                                     '#f))))
                             (if _cont6307463076_
                                 (let ((_cont63079_ _cont6307463076_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont63079_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp63335
                 current-output-port
                 _tmp-port63064_))
              (let ((__tmp63339 (get-output-string _tmp-port63064_)))
                (declare (not safe))
                (##write-string __tmp63339 _port63062_)))))))
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
      (lambda (_self62928_ _port62929_)
        (let ((_tmp-port62931_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port62931_))
          (let ((__tmp63340
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self62928_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp63340 _tmp-port62931_))
          (if (dump-stack-trace?)
              (let ((_cont6293262934_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self62928_ 'continuation))))
                (if _cont6293262934_
                    (let ((_cont62937_ _cont6293262934_))
                      (display '"--- continuation backtrace:" _tmp-port62931_)
                      (newline _tmp-port62931_)
                      (display-continuation-backtrace
                       _cont62937_
                       _tmp-port62931_))
                    '#f))
              '#!void)
          (let ((__tmp63341 (get-output-string _tmp-port62931_)))
            (declare (not safe))
            (##write-string __tmp63341 _port62929_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass63303 __method-table63304)
        (let ((__continuation63305
               (let ((__slot63307
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63303 'continuation))))
                 (if __slot63307
                     __slot63307
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception63306
               (let ((__slot63308
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63303 'exception))))
                 (if __slot63308
                     __slot63308
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self62928_ _port62929_)
            (let ((_tmp-port62931_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port62931_))
              (let ((__tmp63342
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self62928_
                        __exception63306
                        __klass63303
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp63342 _tmp-port62931_))
              (if (dump-stack-trace?)
                  (let ((_cont6293262934_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self62928_
                            __continuation63305
                            __klass63303
                            '#f))))
                    (if _cont6293262934_
                        (let ((_cont62937_ _cont6293262934_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port62931_)
                          (newline _tmp-port62931_)
                          (display-continuation-backtrace
                           _cont62937_
                           _tmp-port62931_))
                        '#f))
                  '#!void)
              (let ((__tmp63343 (get-output-string _tmp-port62931_)))
                (declare (not safe))
                (##write-string __tmp63343 _port62929_)))))))
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
      (lambda (_port62800_)
        (if (macro-character-port? _port62800_)
            (let ((_old-width62802_
                   (macro-character-port-output-width _port62800_)))
              (macro-character-port-output-width-set!
               _port62800_
               (lambda (_port62804_) '256))
              _old-width62802_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port62797_ _old-width62798_)
        (if (macro-character-port? _port62797_)
            (macro-character-port-output-width-set!
             _port62797_
             _old-width62798_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e62795_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e62795_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn62789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62789_))
            (let ((_e62792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62789_ 'exception))))
              (macro-abandoned-mutex-exception? _e62792_))
            (macro-abandoned-mutex-exception? _exn62789_))))
    (define cfun-conversion-exception?
      (lambda (_exn62785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62785_))
            (let ((_e62787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62785_ 'exception))))
              (macro-cfun-conversion-exception? _e62787_))
            (macro-cfun-conversion-exception? _exn62785_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn62781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62781_))
            (let ((_e62783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62781_ 'exception))))
              (if (macro-cfun-conversion-exception? _e62783_)
                  (macro-cfun-conversion-exception-arguments _e62783_)
                  (let ((__tmp63344
                         (let ((__tmp63345
                                (let ()
                                  (declare (not safe))
                                  (cons _e62783_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp63345))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63344))))
            (if (macro-cfun-conversion-exception? _exn62781_)
                (macro-cfun-conversion-exception-arguments _exn62781_)
                (let ((__tmp63346
                       (let ((__tmp63347
                              (let ()
                                (declare (not safe))
                                (cons _exn62781_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp63347))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63346))))))
    (define cfun-conversion-exception-code
      (lambda (_exn62777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62777_))
            (let ((_e62779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62777_ 'exception))))
              (if (macro-cfun-conversion-exception? _e62779_)
                  (macro-cfun-conversion-exception-code _e62779_)
                  (let ((__tmp63348
                         (let ((__tmp63349
                                (let ()
                                  (declare (not safe))
                                  (cons _e62779_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp63349))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63348))))
            (if (macro-cfun-conversion-exception? _exn62777_)
                (macro-cfun-conversion-exception-code _exn62777_)
                (let ((__tmp63350
                       (let ((__tmp63351
                              (let ()
                                (declare (not safe))
                                (cons _exn62777_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp63351))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63350))))))
    (define cfun-conversion-exception-message
      (lambda (_exn62773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62773_))
            (let ((_e62775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62773_ 'exception))))
              (if (macro-cfun-conversion-exception? _e62775_)
                  (macro-cfun-conversion-exception-message _e62775_)
                  (let ((__tmp63352
                         (let ((__tmp63353
                                (let ()
                                  (declare (not safe))
                                  (cons _e62775_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp63353))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63352))))
            (if (macro-cfun-conversion-exception? _exn62773_)
                (macro-cfun-conversion-exception-message _exn62773_)
                (let ((__tmp63354
                       (let ((__tmp63355
                              (let ()
                                (declare (not safe))
                                (cons _exn62773_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp63355))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63354))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn62767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62767_))
            (let ((_e62770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62767_ 'exception))))
              (if (macro-cfun-conversion-exception? _e62770_)
                  (macro-cfun-conversion-exception-procedure _e62770_)
                  (let ((__tmp63356
                         (let ((__tmp63357
                                (let ()
                                  (declare (not safe))
                                  (cons _e62770_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp63357))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63356))))
            (if (macro-cfun-conversion-exception? _exn62767_)
                (macro-cfun-conversion-exception-procedure _exn62767_)
                (let ((__tmp63358
                       (let ((__tmp63359
                              (let ()
                                (declare (not safe))
                                (cons _exn62767_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp63359))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63358))))))
    (define datum-parsing-exception?
      (lambda (_exn62763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62763_))
            (let ((_e62765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62763_ 'exception))))
              (macro-datum-parsing-exception? _e62765_))
            (macro-datum-parsing-exception? _exn62763_))))
    (define datum-parsing-exception-kind
      (lambda (_exn62759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62759_))
            (let ((_e62761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62759_ 'exception))))
              (if (macro-datum-parsing-exception? _e62761_)
                  (macro-datum-parsing-exception-kind _e62761_)
                  (let ((__tmp63360
                         (let ((__tmp63361
                                (let ()
                                  (declare (not safe))
                                  (cons _e62761_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp63361))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp63360))))
            (if (macro-datum-parsing-exception? _exn62759_)
                (macro-datum-parsing-exception-kind _exn62759_)
                (let ((__tmp63362
                       (let ((__tmp63363
                              (let ()
                                (declare (not safe))
                                (cons _exn62759_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp63363))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp63362))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn62755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62755_))
            (let ((_e62757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62755_ 'exception))))
              (if (macro-datum-parsing-exception? _e62757_)
                  (macro-datum-parsing-exception-parameters _e62757_)
                  (let ((__tmp63364
                         (let ((__tmp63365
                                (let ()
                                  (declare (not safe))
                                  (cons _e62757_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp63365))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp63364))))
            (if (macro-datum-parsing-exception? _exn62755_)
                (macro-datum-parsing-exception-parameters _exn62755_)
                (let ((__tmp63366
                       (let ((__tmp63367
                              (let ()
                                (declare (not safe))
                                (cons _exn62755_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp63367))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp63366))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn62749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62749_))
            (let ((_e62752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62749_ 'exception))))
              (if (macro-datum-parsing-exception? _e62752_)
                  (macro-datum-parsing-exception-readenv _e62752_)
                  (let ((__tmp63368
                         (let ((__tmp63369
                                (let ()
                                  (declare (not safe))
                                  (cons _e62752_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp63369))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp63368))))
            (if (macro-datum-parsing-exception? _exn62749_)
                (macro-datum-parsing-exception-readenv _exn62749_)
                (let ((__tmp63370
                       (let ((__tmp63371
                              (let ()
                                (declare (not safe))
                                (cons _exn62749_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp63371))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp63370))))))
    (define deadlock-exception?
      (lambda (_exn62743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62743_))
            (let ((_e62746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62743_ 'exception))))
              (macro-deadlock-exception? _e62746_))
            (macro-deadlock-exception? _exn62743_))))
    (define divide-by-zero-exception?
      (lambda (_exn62739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62739_))
            (let ((_e62741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62739_ 'exception))))
              (macro-divide-by-zero-exception? _e62741_))
            (macro-divide-by-zero-exception? _exn62739_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn62735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62735_))
            (let ((_e62737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62735_ 'exception))))
              (if (macro-divide-by-zero-exception? _e62737_)
                  (macro-divide-by-zero-exception-arguments _e62737_)
                  (let ((__tmp63372
                         (let ((__tmp63373
                                (let ()
                                  (declare (not safe))
                                  (cons _e62737_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp63373))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp63372))))
            (if (macro-divide-by-zero-exception? _exn62735_)
                (macro-divide-by-zero-exception-arguments _exn62735_)
                (let ((__tmp63374
                       (let ((__tmp63375
                              (let ()
                                (declare (not safe))
                                (cons _exn62735_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp63375))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp63374))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn62729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62729_))
            (let ((_e62732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62729_ 'exception))))
              (if (macro-divide-by-zero-exception? _e62732_)
                  (macro-divide-by-zero-exception-procedure _e62732_)
                  (let ((__tmp63376
                         (let ((__tmp63377
                                (let ()
                                  (declare (not safe))
                                  (cons _e62732_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp63377))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp63376))))
            (if (macro-divide-by-zero-exception? _exn62729_)
                (macro-divide-by-zero-exception-procedure _exn62729_)
                (let ((__tmp63378
                       (let ((__tmp63379
                              (let ()
                                (declare (not safe))
                                (cons _exn62729_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp63379))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp63378))))))
    (define error-exception?
      (lambda (_exn62725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62725_))
            (let ((_e62727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62725_ 'exception))))
              (macro-error-exception? _e62727_))
            (macro-error-exception? _exn62725_))))
    (define error-exception-message
      (lambda (_exn62721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62721_))
            (let ((_e62723_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62721_ 'exception))))
              (if (macro-error-exception? _e62723_)
                  (macro-error-exception-message _e62723_)
                  (let ((__tmp63380
                         (let ((__tmp63381
                                (let ()
                                  (declare (not safe))
                                  (cons _e62723_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp63381))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp63380))))
            (if (macro-error-exception? _exn62721_)
                (macro-error-exception-message _exn62721_)
                (let ((__tmp63382
                       (let ((__tmp63383
                              (let ()
                                (declare (not safe))
                                (cons _exn62721_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp63383))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp63382))))))
    (define error-exception-parameters
      (lambda (_exn62715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62715_))
            (let ((_e62718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62715_ 'exception))))
              (if (macro-error-exception? _e62718_)
                  (macro-error-exception-parameters _e62718_)
                  (let ((__tmp63384
                         (let ((__tmp63385
                                (let ()
                                  (declare (not safe))
                                  (cons _e62718_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp63385))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp63384))))
            (if (macro-error-exception? _exn62715_)
                (macro-error-exception-parameters _exn62715_)
                (let ((__tmp63386
                       (let ((__tmp63387
                              (let ()
                                (declare (not safe))
                                (cons _exn62715_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp63387))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp63386))))))
    (define expression-parsing-exception?
      (lambda (_exn62711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62711_))
            (let ((_e62713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62711_ 'exception))))
              (macro-expression-parsing-exception? _e62713_))
            (macro-expression-parsing-exception? _exn62711_))))
    (define expression-parsing-exception-kind
      (lambda (_exn62707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62707_))
            (let ((_e62709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62707_ 'exception))))
              (if (macro-expression-parsing-exception? _e62709_)
                  (macro-expression-parsing-exception-kind _e62709_)
                  (let ((__tmp63388
                         (let ((__tmp63389
                                (let ()
                                  (declare (not safe))
                                  (cons _e62709_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp63389))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp63388))))
            (if (macro-expression-parsing-exception? _exn62707_)
                (macro-expression-parsing-exception-kind _exn62707_)
                (let ((__tmp63390
                       (let ((__tmp63391
                              (let ()
                                (declare (not safe))
                                (cons _exn62707_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp63391))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp63390))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn62703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62703_))
            (let ((_e62705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62703_ 'exception))))
              (if (macro-expression-parsing-exception? _e62705_)
                  (macro-expression-parsing-exception-parameters _e62705_)
                  (let ((__tmp63392
                         (let ((__tmp63393
                                (let ()
                                  (declare (not safe))
                                  (cons _e62705_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp63393))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp63392))))
            (if (macro-expression-parsing-exception? _exn62703_)
                (macro-expression-parsing-exception-parameters _exn62703_)
                (let ((__tmp63394
                       (let ((__tmp63395
                              (let ()
                                (declare (not safe))
                                (cons _exn62703_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp63395))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp63394))))))
    (define expression-parsing-exception-source
      (lambda (_exn62697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62697_))
            (let ((_e62700_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62697_ 'exception))))
              (if (macro-expression-parsing-exception? _e62700_)
                  (macro-expression-parsing-exception-source _e62700_)
                  (let ((__tmp63396
                         (let ((__tmp63397
                                (let ()
                                  (declare (not safe))
                                  (cons _e62700_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp63397))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp63396))))
            (if (macro-expression-parsing-exception? _exn62697_)
                (macro-expression-parsing-exception-source _exn62697_)
                (let ((__tmp63398
                       (let ((__tmp63399
                              (let ()
                                (declare (not safe))
                                (cons _exn62697_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp63399))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp63398))))))
    (define file-exists-exception?
      (lambda (_exn62693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62693_))
            (let ((_e62695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62693_ 'exception))))
              (macro-file-exists-exception? _e62695_))
            (macro-file-exists-exception? _exn62693_))))
    (define file-exists-exception-arguments
      (lambda (_exn62689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62689_))
            (let ((_e62691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62689_ 'exception))))
              (if (macro-file-exists-exception? _e62691_)
                  (macro-file-exists-exception-arguments _e62691_)
                  (let ((__tmp63400
                         (let ((__tmp63401
                                (let ()
                                  (declare (not safe))
                                  (cons _e62691_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp63401))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp63400))))
            (if (macro-file-exists-exception? _exn62689_)
                (macro-file-exists-exception-arguments _exn62689_)
                (let ((__tmp63402
                       (let ((__tmp63403
                              (let ()
                                (declare (not safe))
                                (cons _exn62689_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp63403))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp63402))))))
    (define file-exists-exception-procedure
      (lambda (_exn62683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62683_))
            (let ((_e62686_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62683_ 'exception))))
              (if (macro-file-exists-exception? _e62686_)
                  (macro-file-exists-exception-procedure _e62686_)
                  (let ((__tmp63404
                         (let ((__tmp63405
                                (let ()
                                  (declare (not safe))
                                  (cons _e62686_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp63405))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp63404))))
            (if (macro-file-exists-exception? _exn62683_)
                (macro-file-exists-exception-procedure _exn62683_)
                (let ((__tmp63406
                       (let ((__tmp63407
                              (let ()
                                (declare (not safe))
                                (cons _exn62683_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp63407))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp63406))))))
    (define fixnum-overflow-exception?
      (lambda (_exn62679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62679_))
            (let ((_e62681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62679_ 'exception))))
              (macro-fixnum-overflow-exception? _e62681_))
            (macro-fixnum-overflow-exception? _exn62679_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn62675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62675_))
            (let ((_e62677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62675_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e62677_)
                  (macro-fixnum-overflow-exception-arguments _e62677_)
                  (let ((__tmp63408
                         (let ((__tmp63409
                                (let ()
                                  (declare (not safe))
                                  (cons _e62677_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp63409))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp63408))))
            (if (macro-fixnum-overflow-exception? _exn62675_)
                (macro-fixnum-overflow-exception-arguments _exn62675_)
                (let ((__tmp63410
                       (let ((__tmp63411
                              (let ()
                                (declare (not safe))
                                (cons _exn62675_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp63411))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp63410))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn62669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62669_))
            (let ((_e62672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62669_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e62672_)
                  (macro-fixnum-overflow-exception-procedure _e62672_)
                  (let ((__tmp63412
                         (let ((__tmp63413
                                (let ()
                                  (declare (not safe))
                                  (cons _e62672_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp63413))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp63412))))
            (if (macro-fixnum-overflow-exception? _exn62669_)
                (macro-fixnum-overflow-exception-procedure _exn62669_)
                (let ((__tmp63414
                       (let ((__tmp63415
                              (let ()
                                (declare (not safe))
                                (cons _exn62669_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp63415))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp63414))))))
    (define heap-overflow-exception?
      (lambda (_exn62663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62663_))
            (let ((_e62666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62663_ 'exception))))
              (macro-heap-overflow-exception? _e62666_))
            (macro-heap-overflow-exception? _exn62663_))))
    (define inactive-thread-exception?
      (lambda (_exn62659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62659_))
            (let ((_e62661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62659_ 'exception))))
              (macro-inactive-thread-exception? _e62661_))
            (macro-inactive-thread-exception? _exn62659_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn62655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62655_))
            (let ((_e62657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62655_ 'exception))))
              (if (macro-inactive-thread-exception? _e62657_)
                  (macro-inactive-thread-exception-arguments _e62657_)
                  (let ((__tmp63416
                         (let ((__tmp63417
                                (let ()
                                  (declare (not safe))
                                  (cons _e62657_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp63417))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp63416))))
            (if (macro-inactive-thread-exception? _exn62655_)
                (macro-inactive-thread-exception-arguments _exn62655_)
                (let ((__tmp63418
                       (let ((__tmp63419
                              (let ()
                                (declare (not safe))
                                (cons _exn62655_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp63419))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp63418))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn62649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62649_))
            (let ((_e62652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62649_ 'exception))))
              (if (macro-inactive-thread-exception? _e62652_)
                  (macro-inactive-thread-exception-procedure _e62652_)
                  (let ((__tmp63420
                         (let ((__tmp63421
                                (let ()
                                  (declare (not safe))
                                  (cons _e62652_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp63421))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp63420))))
            (if (macro-inactive-thread-exception? _exn62649_)
                (macro-inactive-thread-exception-procedure _exn62649_)
                (let ((__tmp63422
                       (let ((__tmp63423
                              (let ()
                                (declare (not safe))
                                (cons _exn62649_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp63423))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp63422))))))
    (define initialized-thread-exception?
      (lambda (_exn62645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62645_))
            (let ((_e62647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62645_ 'exception))))
              (macro-initialized-thread-exception? _e62647_))
            (macro-initialized-thread-exception? _exn62645_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn62641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62641_))
            (let ((_e62643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62641_ 'exception))))
              (if (macro-initialized-thread-exception? _e62643_)
                  (macro-initialized-thread-exception-arguments _e62643_)
                  (let ((__tmp63424
                         (let ((__tmp63425
                                (let ()
                                  (declare (not safe))
                                  (cons _e62643_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp63425))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp63424))))
            (if (macro-initialized-thread-exception? _exn62641_)
                (macro-initialized-thread-exception-arguments _exn62641_)
                (let ((__tmp63426
                       (let ((__tmp63427
                              (let ()
                                (declare (not safe))
                                (cons _exn62641_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp63427))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp63426))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn62635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62635_))
            (let ((_e62638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62635_ 'exception))))
              (if (macro-initialized-thread-exception? _e62638_)
                  (macro-initialized-thread-exception-procedure _e62638_)
                  (let ((__tmp63428
                         (let ((__tmp63429
                                (let ()
                                  (declare (not safe))
                                  (cons _e62638_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp63429))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp63428))))
            (if (macro-initialized-thread-exception? _exn62635_)
                (macro-initialized-thread-exception-procedure _exn62635_)
                (let ((__tmp63430
                       (let ((__tmp63431
                              (let ()
                                (declare (not safe))
                                (cons _exn62635_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp63431))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp63430))))))
    (define invalid-hash-number-exception?
      (lambda (_exn62631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62631_))
            (let ((_e62633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62631_ 'exception))))
              (macro-invalid-hash-number-exception? _e62633_))
            (macro-invalid-hash-number-exception? _exn62631_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn62627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62627_))
            (let ((_e62629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62627_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e62629_)
                  (macro-invalid-hash-number-exception-arguments _e62629_)
                  (let ((__tmp63432
                         (let ((__tmp63433
                                (let ()
                                  (declare (not safe))
                                  (cons _e62629_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp63433))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp63432))))
            (if (macro-invalid-hash-number-exception? _exn62627_)
                (macro-invalid-hash-number-exception-arguments _exn62627_)
                (let ((__tmp63434
                       (let ((__tmp63435
                              (let ()
                                (declare (not safe))
                                (cons _exn62627_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp63435))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp63434))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn62621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62621_))
            (let ((_e62624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62621_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e62624_)
                  (macro-invalid-hash-number-exception-procedure _e62624_)
                  (let ((__tmp63436
                         (let ((__tmp63437
                                (let ()
                                  (declare (not safe))
                                  (cons _e62624_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp63437))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp63436))))
            (if (macro-invalid-hash-number-exception? _exn62621_)
                (macro-invalid-hash-number-exception-procedure _exn62621_)
                (let ((__tmp63438
                       (let ((__tmp63439
                              (let ()
                                (declare (not safe))
                                (cons _exn62621_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp63439))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp63438))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn62617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62617_))
            (let ((_e62619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62617_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e62619_))
            (macro-invalid-utf8-encoding-exception? _exn62617_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn62613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62613_))
            (let ((_e62615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62613_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e62615_)
                  (macro-invalid-utf8-encoding-exception-arguments _e62615_)
                  (let ((__tmp63440
                         (let ((__tmp63441
                                (let ()
                                  (declare (not safe))
                                  (cons _e62615_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp63441))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp63440))))
            (if (macro-invalid-utf8-encoding-exception? _exn62613_)
                (macro-invalid-utf8-encoding-exception-arguments _exn62613_)
                (let ((__tmp63442
                       (let ((__tmp63443
                              (let ()
                                (declare (not safe))
                                (cons _exn62613_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp63443))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp63442))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn62607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62607_))
            (let ((_e62610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62607_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e62610_)
                  (macro-invalid-utf8-encoding-exception-procedure _e62610_)
                  (let ((__tmp63444
                         (let ((__tmp63445
                                (let ()
                                  (declare (not safe))
                                  (cons _e62610_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp63445))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp63444))))
            (if (macro-invalid-utf8-encoding-exception? _exn62607_)
                (macro-invalid-utf8-encoding-exception-procedure _exn62607_)
                (let ((__tmp63446
                       (let ((__tmp63447
                              (let ()
                                (declare (not safe))
                                (cons _exn62607_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp63447))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp63446))))))
    (define join-timeout-exception?
      (lambda (_exn62603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62603_))
            (let ((_e62605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62603_ 'exception))))
              (macro-join-timeout-exception? _e62605_))
            (macro-join-timeout-exception? _exn62603_))))
    (define join-timeout-exception-arguments
      (lambda (_exn62599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62599_))
            (let ((_e62601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62599_ 'exception))))
              (if (macro-join-timeout-exception? _e62601_)
                  (macro-join-timeout-exception-arguments _e62601_)
                  (let ((__tmp63448
                         (let ((__tmp63449
                                (let ()
                                  (declare (not safe))
                                  (cons _e62601_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp63449))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp63448))))
            (if (macro-join-timeout-exception? _exn62599_)
                (macro-join-timeout-exception-arguments _exn62599_)
                (let ((__tmp63450
                       (let ((__tmp63451
                              (let ()
                                (declare (not safe))
                                (cons _exn62599_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp63451))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp63450))))))
    (define join-timeout-exception-procedure
      (lambda (_exn62593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62593_))
            (let ((_e62596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62593_ 'exception))))
              (if (macro-join-timeout-exception? _e62596_)
                  (macro-join-timeout-exception-procedure _e62596_)
                  (let ((__tmp63452
                         (let ((__tmp63453
                                (let ()
                                  (declare (not safe))
                                  (cons _e62596_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp63453))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp63452))))
            (if (macro-join-timeout-exception? _exn62593_)
                (macro-join-timeout-exception-procedure _exn62593_)
                (let ((__tmp63454
                       (let ((__tmp63455
                              (let ()
                                (declare (not safe))
                                (cons _exn62593_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp63455))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp63454))))))
    (define keyword-expected-exception?
      (lambda (_exn62589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62589_))
            (let ((_e62591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62589_ 'exception))))
              (macro-keyword-expected-exception? _e62591_))
            (macro-keyword-expected-exception? _exn62589_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn62585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62585_))
            (let ((_e62587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62585_ 'exception))))
              (if (macro-keyword-expected-exception? _e62587_)
                  (macro-keyword-expected-exception-arguments _e62587_)
                  (let ((__tmp63456
                         (let ((__tmp63457
                                (let ()
                                  (declare (not safe))
                                  (cons _e62587_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp63457))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp63456))))
            (if (macro-keyword-expected-exception? _exn62585_)
                (macro-keyword-expected-exception-arguments _exn62585_)
                (let ((__tmp63458
                       (let ((__tmp63459
                              (let ()
                                (declare (not safe))
                                (cons _exn62585_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp63459))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp63458))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn62579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62579_))
            (let ((_e62582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62579_ 'exception))))
              (if (macro-keyword-expected-exception? _e62582_)
                  (macro-keyword-expected-exception-procedure _e62582_)
                  (let ((__tmp63460
                         (let ((__tmp63461
                                (let ()
                                  (declare (not safe))
                                  (cons _e62582_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp63461))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp63460))))
            (if (macro-keyword-expected-exception? _exn62579_)
                (macro-keyword-expected-exception-procedure _exn62579_)
                (let ((__tmp63462
                       (let ((__tmp63463
                              (let ()
                                (declare (not safe))
                                (cons _exn62579_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp63463))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp63462))))))
    (define length-mismatch-exception?
      (lambda (_exn62575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62575_))
            (let ((_e62577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62575_ 'exception))))
              (macro-length-mismatch-exception? _e62577_))
            (macro-length-mismatch-exception? _exn62575_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn62571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62571_))
            (let ((_e62573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62571_ 'exception))))
              (if (macro-length-mismatch-exception? _e62573_)
                  (macro-length-mismatch-exception-arg-id _e62573_)
                  (let ((__tmp63464
                         (let ((__tmp63465
                                (let ()
                                  (declare (not safe))
                                  (cons _e62573_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp63465))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp63464))))
            (if (macro-length-mismatch-exception? _exn62571_)
                (macro-length-mismatch-exception-arg-id _exn62571_)
                (let ((__tmp63466
                       (let ((__tmp63467
                              (let ()
                                (declare (not safe))
                                (cons _exn62571_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp63467))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp63466))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn62567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62567_))
            (let ((_e62569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62567_ 'exception))))
              (if (macro-length-mismatch-exception? _e62569_)
                  (macro-length-mismatch-exception-arguments _e62569_)
                  (let ((__tmp63468
                         (let ((__tmp63469
                                (let ()
                                  (declare (not safe))
                                  (cons _e62569_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp63469))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp63468))))
            (if (macro-length-mismatch-exception? _exn62567_)
                (macro-length-mismatch-exception-arguments _exn62567_)
                (let ((__tmp63470
                       (let ((__tmp63471
                              (let ()
                                (declare (not safe))
                                (cons _exn62567_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp63471))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp63470))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn62561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62561_))
            (let ((_e62564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62561_ 'exception))))
              (if (macro-length-mismatch-exception? _e62564_)
                  (macro-length-mismatch-exception-procedure _e62564_)
                  (let ((__tmp63472
                         (let ((__tmp63473
                                (let ()
                                  (declare (not safe))
                                  (cons _e62564_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp63473))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp63472))))
            (if (macro-length-mismatch-exception? _exn62561_)
                (macro-length-mismatch-exception-procedure _exn62561_)
                (let ((__tmp63474
                       (let ((__tmp63475
                              (let ()
                                (declare (not safe))
                                (cons _exn62561_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp63475))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp63474))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn62557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62557_))
            (let ((_e62559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62557_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e62559_))
            (macro-mailbox-receive-timeout-exception? _exn62557_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn62553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62553_))
            (let ((_e62555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62553_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e62555_)
                  (macro-mailbox-receive-timeout-exception-arguments _e62555_)
                  (let ((__tmp63476
                         (let ((__tmp63477
                                (let ()
                                  (declare (not safe))
                                  (cons _e62555_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp63477))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp63476))))
            (if (macro-mailbox-receive-timeout-exception? _exn62553_)
                (macro-mailbox-receive-timeout-exception-arguments _exn62553_)
                (let ((__tmp63478
                       (let ((__tmp63479
                              (let ()
                                (declare (not safe))
                                (cons _exn62553_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp63479))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp63478))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn62547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62547_))
            (let ((_e62550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62547_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e62550_)
                  (macro-mailbox-receive-timeout-exception-procedure _e62550_)
                  (let ((__tmp63480
                         (let ((__tmp63481
                                (let ()
                                  (declare (not safe))
                                  (cons _e62550_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp63481))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp63480))))
            (if (macro-mailbox-receive-timeout-exception? _exn62547_)
                (macro-mailbox-receive-timeout-exception-procedure _exn62547_)
                (let ((__tmp63482
                       (let ((__tmp63483
                              (let ()
                                (declare (not safe))
                                (cons _exn62547_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp63483))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp63482))))))
    (define module-not-found-exception?
      (lambda (_exn62543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62543_))
            (let ((_e62545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62543_ 'exception))))
              (macro-module-not-found-exception? _e62545_))
            (macro-module-not-found-exception? _exn62543_))))
    (define module-not-found-exception-arguments
      (lambda (_exn62539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62539_))
            (let ((_e62541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62539_ 'exception))))
              (if (macro-module-not-found-exception? _e62541_)
                  (macro-module-not-found-exception-arguments _e62541_)
                  (let ((__tmp63484
                         (let ((__tmp63485
                                (let ()
                                  (declare (not safe))
                                  (cons _e62541_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp63485))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp63484))))
            (if (macro-module-not-found-exception? _exn62539_)
                (macro-module-not-found-exception-arguments _exn62539_)
                (let ((__tmp63486
                       (let ((__tmp63487
                              (let ()
                                (declare (not safe))
                                (cons _exn62539_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp63487))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp63486))))))
    (define module-not-found-exception-procedure
      (lambda (_exn62533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62533_))
            (let ((_e62536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62533_ 'exception))))
              (if (macro-module-not-found-exception? _e62536_)
                  (macro-module-not-found-exception-procedure _e62536_)
                  (let ((__tmp63488
                         (let ((__tmp63489
                                (let ()
                                  (declare (not safe))
                                  (cons _e62536_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp63489))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp63488))))
            (if (macro-module-not-found-exception? _exn62533_)
                (macro-module-not-found-exception-procedure _exn62533_)
                (let ((__tmp63490
                       (let ((__tmp63491
                              (let ()
                                (declare (not safe))
                                (cons _exn62533_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp63491))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp63490))))))
    (define multiple-c-return-exception?
      (lambda (_exn62527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62527_))
            (let ((_e62530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62527_ 'exception))))
              (macro-multiple-c-return-exception? _e62530_))
            (macro-multiple-c-return-exception? _exn62527_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn62523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62523_))
            (let ((_e62525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62523_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e62525_))
            (macro-no-such-file-or-directory-exception? _exn62523_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn62519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62519_))
            (let ((_e62521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62519_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e62521_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e62521_)
                  (let ((__tmp63492
                         (let ((__tmp63493
                                (let ()
                                  (declare (not safe))
                                  (cons _e62521_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp63493))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp63492))))
            (if (macro-no-such-file-or-directory-exception? _exn62519_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn62519_)
                (let ((__tmp63494
                       (let ((__tmp63495
                              (let ()
                                (declare (not safe))
                                (cons _exn62519_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp63495))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp63494))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn62513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62513_))
            (let ((_e62516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62513_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e62516_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e62516_)
                  (let ((__tmp63496
                         (let ((__tmp63497
                                (let ()
                                  (declare (not safe))
                                  (cons _e62516_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp63497))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp63496))))
            (if (macro-no-such-file-or-directory-exception? _exn62513_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn62513_)
                (let ((__tmp63498
                       (let ((__tmp63499
                              (let ()
                                (declare (not safe))
                                (cons _exn62513_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp63499))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp63498))))))
    (define noncontinuable-exception?
      (lambda (_exn62509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62509_))
            (let ((_e62511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62509_ 'exception))))
              (macro-noncontinuable-exception? _e62511_))
            (macro-noncontinuable-exception? _exn62509_))))
    (define noncontinuable-exception-reason
      (lambda (_exn62503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62503_))
            (let ((_e62506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62503_ 'exception))))
              (if (macro-noncontinuable-exception? _e62506_)
                  (macro-noncontinuable-exception-reason _e62506_)
                  (let ((__tmp63500
                         (let ((__tmp63501
                                (let ()
                                  (declare (not safe))
                                  (cons _e62506_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp63501))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp63500))))
            (if (macro-noncontinuable-exception? _exn62503_)
                (macro-noncontinuable-exception-reason _exn62503_)
                (let ((__tmp63502
                       (let ((__tmp63503
                              (let ()
                                (declare (not safe))
                                (cons _exn62503_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp63503))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp63502))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn62499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62499_))
            (let ((_e62501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62499_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e62501_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn62499_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn62495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62495_))
            (let ((_e62497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62495_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e62497_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e62497_)
                  (let ((__tmp63504
                         (let ((__tmp63505
                                (let ()
                                  (declare (not safe))
                                  (cons _e62497_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp63505))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp63504))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn62495_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn62495_)
                (let ((__tmp63506
                       (let ((__tmp63507
                              (let ()
                                (declare (not safe))
                                (cons _exn62495_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp63507))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp63506))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn62489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62489_))
            (let ((_e62492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62489_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e62492_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e62492_)
                  (let ((__tmp63508
                         (let ((__tmp63509
                                (let ()
                                  (declare (not safe))
                                  (cons _e62492_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp63509))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp63508))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn62489_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn62489_)
                (let ((__tmp63510
                       (let ((__tmp63511
                              (let ()
                                (declare (not safe))
                                (cons _exn62489_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp63511))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp63510))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn62485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62485_))
            (let ((_e62487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62485_ 'exception))))
              (macro-nonprocedure-operator-exception? _e62487_))
            (macro-nonprocedure-operator-exception? _exn62485_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn62481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62481_))
            (let ((_e62483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62481_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62483_)
                  (macro-nonprocedure-operator-exception-arguments _e62483_)
                  (let ((__tmp63512
                         (let ((__tmp63513
                                (let ()
                                  (declare (not safe))
                                  (cons _e62483_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp63513))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63512))))
            (if (macro-nonprocedure-operator-exception? _exn62481_)
                (macro-nonprocedure-operator-exception-arguments _exn62481_)
                (let ((__tmp63514
                       (let ((__tmp63515
                              (let ()
                                (declare (not safe))
                                (cons _exn62481_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp63515))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63514))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn62477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62477_))
            (let ((_e62479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62477_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62479_)
                  (macro-nonprocedure-operator-exception-code _e62479_)
                  (let ((__tmp63516
                         (let ((__tmp63517
                                (let ()
                                  (declare (not safe))
                                  (cons _e62479_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp63517))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63516))))
            (if (macro-nonprocedure-operator-exception? _exn62477_)
                (macro-nonprocedure-operator-exception-code _exn62477_)
                (let ((__tmp63518
                       (let ((__tmp63519
                              (let ()
                                (declare (not safe))
                                (cons _exn62477_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp63519))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63518))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn62473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62473_))
            (let ((_e62475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62473_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62475_)
                  (macro-nonprocedure-operator-exception-operator _e62475_)
                  (let ((__tmp63520
                         (let ((__tmp63521
                                (let ()
                                  (declare (not safe))
                                  (cons _e62475_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp63521))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63520))))
            (if (macro-nonprocedure-operator-exception? _exn62473_)
                (macro-nonprocedure-operator-exception-operator _exn62473_)
                (let ((__tmp63522
                       (let ((__tmp63523
                              (let ()
                                (declare (not safe))
                                (cons _exn62473_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp63523))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63522))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn62467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62467_))
            (let ((_e62470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62467_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62470_)
                  (macro-nonprocedure-operator-exception-rte _e62470_)
                  (let ((__tmp63524
                         (let ((__tmp63525
                                (let ()
                                  (declare (not safe))
                                  (cons _e62470_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp63525))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63524))))
            (if (macro-nonprocedure-operator-exception? _exn62467_)
                (macro-nonprocedure-operator-exception-rte _exn62467_)
                (let ((__tmp63526
                       (let ((__tmp63527
                              (let ()
                                (declare (not safe))
                                (cons _exn62467_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp63527))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63526))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn62463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62463_))
            (let ((_e62465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62463_ 'exception))))
              (macro-not-in-compilation-context-exception? _e62465_))
            (macro-not-in-compilation-context-exception? _exn62463_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn62459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62459_))
            (let ((_e62461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62459_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e62461_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e62461_)
                  (let ((__tmp63528
                         (let ((__tmp63529
                                (let ()
                                  (declare (not safe))
                                  (cons _e62461_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp63529))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp63528))))
            (if (macro-not-in-compilation-context-exception? _exn62459_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn62459_)
                (let ((__tmp63530
                       (let ((__tmp63531
                              (let ()
                                (declare (not safe))
                                (cons _exn62459_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp63531))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp63530))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn62453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62453_))
            (let ((_e62456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62453_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e62456_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e62456_)
                  (let ((__tmp63532
                         (let ((__tmp63533
                                (let ()
                                  (declare (not safe))
                                  (cons _e62456_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp63533))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp63532))))
            (if (macro-not-in-compilation-context-exception? _exn62453_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn62453_)
                (let ((__tmp63534
                       (let ((__tmp63535
                              (let ()
                                (declare (not safe))
                                (cons _exn62453_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp63535))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp63534))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn62449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62449_))
            (let ((_e62451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62449_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e62451_))
            (macro-number-of-arguments-limit-exception? _exn62449_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn62445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62445_))
            (let ((_e62447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62445_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e62447_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e62447_)
                  (let ((__tmp63536
                         (let ((__tmp63537
                                (let ()
                                  (declare (not safe))
                                  (cons _e62447_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp63537))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp63536))))
            (if (macro-number-of-arguments-limit-exception? _exn62445_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn62445_)
                (let ((__tmp63538
                       (let ((__tmp63539
                              (let ()
                                (declare (not safe))
                                (cons _exn62445_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp63539))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp63538))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn62439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62439_))
            (let ((_e62442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62439_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e62442_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e62442_)
                  (let ((__tmp63540
                         (let ((__tmp63541
                                (let ()
                                  (declare (not safe))
                                  (cons _e62442_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp63541))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp63540))))
            (if (macro-number-of-arguments-limit-exception? _exn62439_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn62439_)
                (let ((__tmp63542
                       (let ((__tmp63543
                              (let ()
                                (declare (not safe))
                                (cons _exn62439_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp63543))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp63542))))))
    (define os-exception?
      (lambda (_exn62435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62435_))
            (let ((_e62437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62435_ 'exception))))
              (macro-os-exception? _e62437_))
            (macro-os-exception? _exn62435_))))
    (define os-exception-arguments
      (lambda (_exn62431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62431_))
            (let ((_e62433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62431_ 'exception))))
              (if (macro-os-exception? _e62433_)
                  (macro-os-exception-arguments _e62433_)
                  (let ((__tmp63544
                         (let ((__tmp63545
                                (let ()
                                  (declare (not safe))
                                  (cons _e62433_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp63545))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63544))))
            (if (macro-os-exception? _exn62431_)
                (macro-os-exception-arguments _exn62431_)
                (let ((__tmp63546
                       (let ((__tmp63547
                              (let ()
                                (declare (not safe))
                                (cons _exn62431_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp63547))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63546))))))
    (define os-exception-code
      (lambda (_exn62427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62427_))
            (let ((_e62429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62427_ 'exception))))
              (if (macro-os-exception? _e62429_)
                  (macro-os-exception-code _e62429_)
                  (let ((__tmp63548
                         (let ((__tmp63549
                                (let ()
                                  (declare (not safe))
                                  (cons _e62429_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp63549))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63548))))
            (if (macro-os-exception? _exn62427_)
                (macro-os-exception-code _exn62427_)
                (let ((__tmp63550
                       (let ((__tmp63551
                              (let ()
                                (declare (not safe))
                                (cons _exn62427_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp63551))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63550))))))
    (define os-exception-message
      (lambda (_exn62423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62423_))
            (let ((_e62425_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62423_ 'exception))))
              (if (macro-os-exception? _e62425_)
                  (macro-os-exception-message _e62425_)
                  (let ((__tmp63552
                         (let ((__tmp63553
                                (let ()
                                  (declare (not safe))
                                  (cons _e62425_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp63553))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63552))))
            (if (macro-os-exception? _exn62423_)
                (macro-os-exception-message _exn62423_)
                (let ((__tmp63554
                       (let ((__tmp63555
                              (let ()
                                (declare (not safe))
                                (cons _exn62423_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp63555))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63554))))))
    (define os-exception-procedure
      (lambda (_exn62417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62417_))
            (let ((_e62420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62417_ 'exception))))
              (if (macro-os-exception? _e62420_)
                  (macro-os-exception-procedure _e62420_)
                  (let ((__tmp63556
                         (let ((__tmp63557
                                (let ()
                                  (declare (not safe))
                                  (cons _e62420_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp63557))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63556))))
            (if (macro-os-exception? _exn62417_)
                (macro-os-exception-procedure _exn62417_)
                (let ((__tmp63558
                       (let ((__tmp63559
                              (let ()
                                (declare (not safe))
                                (cons _exn62417_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp63559))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63558))))))
    (define permission-denied-exception?
      (lambda (_exn62413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62413_))
            (let ((_e62415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62413_ 'exception))))
              (macro-permission-denied-exception? _e62415_))
            (macro-permission-denied-exception? _exn62413_))))
    (define permission-denied-exception-arguments
      (lambda (_exn62409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62409_))
            (let ((_e62411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62409_ 'exception))))
              (if (macro-permission-denied-exception? _e62411_)
                  (macro-permission-denied-exception-arguments _e62411_)
                  (let ((__tmp63560
                         (let ((__tmp63561
                                (let ()
                                  (declare (not safe))
                                  (cons _e62411_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp63561))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp63560))))
            (if (macro-permission-denied-exception? _exn62409_)
                (macro-permission-denied-exception-arguments _exn62409_)
                (let ((__tmp63562
                       (let ((__tmp63563
                              (let ()
                                (declare (not safe))
                                (cons _exn62409_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp63563))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp63562))))))
    (define permission-denied-exception-procedure
      (lambda (_exn62403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62403_))
            (let ((_e62406_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62403_ 'exception))))
              (if (macro-permission-denied-exception? _e62406_)
                  (macro-permission-denied-exception-procedure _e62406_)
                  (let ((__tmp63564
                         (let ((__tmp63565
                                (let ()
                                  (declare (not safe))
                                  (cons _e62406_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp63565))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp63564))))
            (if (macro-permission-denied-exception? _exn62403_)
                (macro-permission-denied-exception-procedure _exn62403_)
                (let ((__tmp63566
                       (let ((__tmp63567
                              (let ()
                                (declare (not safe))
                                (cons _exn62403_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp63567))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp63566))))))
    (define range-exception?
      (lambda (_exn62399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62399_))
            (let ((_e62401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62399_ 'exception))))
              (macro-range-exception? _e62401_))
            (macro-range-exception? _exn62399_))))
    (define range-exception-arg-id
      (lambda (_exn62395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62395_))
            (let ((_e62397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62395_ 'exception))))
              (if (macro-range-exception? _e62397_)
                  (macro-range-exception-arg-id _e62397_)
                  (let ((__tmp63568
                         (let ((__tmp63569
                                (let ()
                                  (declare (not safe))
                                  (cons _e62397_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp63569))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp63568))))
            (if (macro-range-exception? _exn62395_)
                (macro-range-exception-arg-id _exn62395_)
                (let ((__tmp63570
                       (let ((__tmp63571
                              (let ()
                                (declare (not safe))
                                (cons _exn62395_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp63571))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp63570))))))
    (define range-exception-arguments
      (lambda (_exn62391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62391_))
            (let ((_e62393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62391_ 'exception))))
              (if (macro-range-exception? _e62393_)
                  (macro-range-exception-arguments _e62393_)
                  (let ((__tmp63572
                         (let ((__tmp63573
                                (let ()
                                  (declare (not safe))
                                  (cons _e62393_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp63573))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp63572))))
            (if (macro-range-exception? _exn62391_)
                (macro-range-exception-arguments _exn62391_)
                (let ((__tmp63574
                       (let ((__tmp63575
                              (let ()
                                (declare (not safe))
                                (cons _exn62391_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp63575))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp63574))))))
    (define range-exception-procedure
      (lambda (_exn62385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62385_))
            (let ((_e62388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62385_ 'exception))))
              (if (macro-range-exception? _e62388_)
                  (macro-range-exception-procedure _e62388_)
                  (let ((__tmp63576
                         (let ((__tmp63577
                                (let ()
                                  (declare (not safe))
                                  (cons _e62388_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp63577))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp63576))))
            (if (macro-range-exception? _exn62385_)
                (macro-range-exception-procedure _exn62385_)
                (let ((__tmp63578
                       (let ((__tmp63579
                              (let ()
                                (declare (not safe))
                                (cons _exn62385_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp63579))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp63578))))))
    (define rpc-remote-error-exception?
      (lambda (_exn62381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62381_))
            (let ((_e62383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62381_ 'exception))))
              (macro-rpc-remote-error-exception? _e62383_))
            (macro-rpc-remote-error-exception? _exn62381_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn62377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62377_))
            (let ((_e62379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62377_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e62379_)
                  (macro-rpc-remote-error-exception-arguments _e62379_)
                  (let ((__tmp63580
                         (let ((__tmp63581
                                (let ()
                                  (declare (not safe))
                                  (cons _e62379_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp63581))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp63580))))
            (if (macro-rpc-remote-error-exception? _exn62377_)
                (macro-rpc-remote-error-exception-arguments _exn62377_)
                (let ((__tmp63582
                       (let ((__tmp63583
                              (let ()
                                (declare (not safe))
                                (cons _exn62377_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp63583))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp63582))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn62373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62373_))
            (let ((_e62375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62373_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e62375_)
                  (macro-rpc-remote-error-exception-message _e62375_)
                  (let ((__tmp63584
                         (let ((__tmp63585
                                (let ()
                                  (declare (not safe))
                                  (cons _e62375_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp63585))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp63584))))
            (if (macro-rpc-remote-error-exception? _exn62373_)
                (macro-rpc-remote-error-exception-message _exn62373_)
                (let ((__tmp63586
                       (let ((__tmp63587
                              (let ()
                                (declare (not safe))
                                (cons _exn62373_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp63587))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp63586))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn62367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62367_))
            (let ((_e62370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62367_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e62370_)
                  (macro-rpc-remote-error-exception-procedure _e62370_)
                  (let ((__tmp63588
                         (let ((__tmp63589
                                (let ()
                                  (declare (not safe))
                                  (cons _e62370_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp63589))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp63588))))
            (if (macro-rpc-remote-error-exception? _exn62367_)
                (macro-rpc-remote-error-exception-procedure _exn62367_)
                (let ((__tmp63590
                       (let ((__tmp63591
                              (let ()
                                (declare (not safe))
                                (cons _exn62367_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp63591))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp63590))))))
    (define scheduler-exception?
      (lambda (_exn62363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62363_))
            (let ((_e62365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62363_ 'exception))))
              (macro-scheduler-exception? _e62365_))
            (macro-scheduler-exception? _exn62363_))))
    (define scheduler-exception-reason
      (lambda (_exn62357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62357_))
            (let ((_e62360_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62357_ 'exception))))
              (if (macro-scheduler-exception? _e62360_)
                  (macro-scheduler-exception-reason _e62360_)
                  (let ((__tmp63592
                         (let ((__tmp63593
                                (let ()
                                  (declare (not safe))
                                  (cons _e62360_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp63593))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp63592))))
            (if (macro-scheduler-exception? _exn62357_)
                (macro-scheduler-exception-reason _exn62357_)
                (let ((__tmp63594
                       (let ((__tmp63595
                              (let ()
                                (declare (not safe))
                                (cons _exn62357_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp63595))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp63594))))))
    (define sfun-conversion-exception?
      (lambda (_exn62353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62353_))
            (let ((_e62355_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62353_ 'exception))))
              (macro-sfun-conversion-exception? _e62355_))
            (macro-sfun-conversion-exception? _exn62353_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn62349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62349_))
            (let ((_e62351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62349_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62351_)
                  (macro-sfun-conversion-exception-arguments _e62351_)
                  (let ((__tmp63596
                         (let ((__tmp63597
                                (let ()
                                  (declare (not safe))
                                  (cons _e62351_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp63597))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63596))))
            (if (macro-sfun-conversion-exception? _exn62349_)
                (macro-sfun-conversion-exception-arguments _exn62349_)
                (let ((__tmp63598
                       (let ((__tmp63599
                              (let ()
                                (declare (not safe))
                                (cons _exn62349_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp63599))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63598))))))
    (define sfun-conversion-exception-code
      (lambda (_exn62345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62345_))
            (let ((_e62347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62345_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62347_)
                  (macro-sfun-conversion-exception-code _e62347_)
                  (let ((__tmp63600
                         (let ((__tmp63601
                                (let ()
                                  (declare (not safe))
                                  (cons _e62347_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp63601))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63600))))
            (if (macro-sfun-conversion-exception? _exn62345_)
                (macro-sfun-conversion-exception-code _exn62345_)
                (let ((__tmp63602
                       (let ((__tmp63603
                              (let ()
                                (declare (not safe))
                                (cons _exn62345_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp63603))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63602))))))
    (define sfun-conversion-exception-message
      (lambda (_exn62341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62341_))
            (let ((_e62343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62341_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62343_)
                  (macro-sfun-conversion-exception-message _e62343_)
                  (let ((__tmp63604
                         (let ((__tmp63605
                                (let ()
                                  (declare (not safe))
                                  (cons _e62343_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp63605))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63604))))
            (if (macro-sfun-conversion-exception? _exn62341_)
                (macro-sfun-conversion-exception-message _exn62341_)
                (let ((__tmp63606
                       (let ((__tmp63607
                              (let ()
                                (declare (not safe))
                                (cons _exn62341_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp63607))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63606))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn62335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62335_))
            (let ((_e62338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62335_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62338_)
                  (macro-sfun-conversion-exception-procedure _e62338_)
                  (let ((__tmp63608
                         (let ((__tmp63609
                                (let ()
                                  (declare (not safe))
                                  (cons _e62338_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp63609))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63608))))
            (if (macro-sfun-conversion-exception? _exn62335_)
                (macro-sfun-conversion-exception-procedure _exn62335_)
                (let ((__tmp63610
                       (let ((__tmp63611
                              (let ()
                                (declare (not safe))
                                (cons _exn62335_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp63611))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63610))))))
    (define stack-overflow-exception?
      (lambda (_exn62329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62329_))
            (let ((_e62332_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62329_ 'exception))))
              (macro-stack-overflow-exception? _e62332_))
            (macro-stack-overflow-exception? _exn62329_))))
    (define started-thread-exception?
      (lambda (_exn62325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62325_))
            (let ((_e62327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62325_ 'exception))))
              (macro-started-thread-exception? _e62327_))
            (macro-started-thread-exception? _exn62325_))))
    (define started-thread-exception-arguments
      (lambda (_exn62321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62321_))
            (let ((_e62323_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62321_ 'exception))))
              (if (macro-started-thread-exception? _e62323_)
                  (macro-started-thread-exception-arguments _e62323_)
                  (let ((__tmp63612
                         (let ((__tmp63613
                                (let ()
                                  (declare (not safe))
                                  (cons _e62323_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp63613))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp63612))))
            (if (macro-started-thread-exception? _exn62321_)
                (macro-started-thread-exception-arguments _exn62321_)
                (let ((__tmp63614
                       (let ((__tmp63615
                              (let ()
                                (declare (not safe))
                                (cons _exn62321_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp63615))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp63614))))))
    (define started-thread-exception-procedure
      (lambda (_exn62315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62315_))
            (let ((_e62318_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62315_ 'exception))))
              (if (macro-started-thread-exception? _e62318_)
                  (macro-started-thread-exception-procedure _e62318_)
                  (let ((__tmp63616
                         (let ((__tmp63617
                                (let ()
                                  (declare (not safe))
                                  (cons _e62318_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp63617))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp63616))))
            (if (macro-started-thread-exception? _exn62315_)
                (macro-started-thread-exception-procedure _exn62315_)
                (let ((__tmp63618
                       (let ((__tmp63619
                              (let ()
                                (declare (not safe))
                                (cons _exn62315_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp63619))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp63618))))))
    (define terminated-thread-exception?
      (lambda (_exn62311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62311_))
            (let ((_e62313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62311_ 'exception))))
              (macro-terminated-thread-exception? _e62313_))
            (macro-terminated-thread-exception? _exn62311_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn62307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62307_))
            (let ((_e62309_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62307_ 'exception))))
              (if (macro-terminated-thread-exception? _e62309_)
                  (macro-terminated-thread-exception-arguments _e62309_)
                  (let ((__tmp63620
                         (let ((__tmp63621
                                (let ()
                                  (declare (not safe))
                                  (cons _e62309_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp63621))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp63620))))
            (if (macro-terminated-thread-exception? _exn62307_)
                (macro-terminated-thread-exception-arguments _exn62307_)
                (let ((__tmp63622
                       (let ((__tmp63623
                              (let ()
                                (declare (not safe))
                                (cons _exn62307_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp63623))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp63622))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn62301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62301_))
            (let ((_e62304_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62301_ 'exception))))
              (if (macro-terminated-thread-exception? _e62304_)
                  (macro-terminated-thread-exception-procedure _e62304_)
                  (let ((__tmp63624
                         (let ((__tmp63625
                                (let ()
                                  (declare (not safe))
                                  (cons _e62304_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp63625))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp63624))))
            (if (macro-terminated-thread-exception? _exn62301_)
                (macro-terminated-thread-exception-procedure _exn62301_)
                (let ((__tmp63626
                       (let ((__tmp63627
                              (let ()
                                (declare (not safe))
                                (cons _exn62301_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp63627))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp63626))))))
    (define type-exception?
      (lambda (_exn62297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62297_))
            (let ((_e62299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62297_ 'exception))))
              (macro-type-exception? _e62299_))
            (macro-type-exception? _exn62297_))))
    (define type-exception-arg-id
      (lambda (_exn62293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62293_))
            (let ((_e62295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62293_ 'exception))))
              (if (macro-type-exception? _e62295_)
                  (macro-type-exception-arg-id _e62295_)
                  (let ((__tmp63628
                         (let ((__tmp63629
                                (let ()
                                  (declare (not safe))
                                  (cons _e62295_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp63629))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63628))))
            (if (macro-type-exception? _exn62293_)
                (macro-type-exception-arg-id _exn62293_)
                (let ((__tmp63630
                       (let ((__tmp63631
                              (let ()
                                (declare (not safe))
                                (cons _exn62293_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp63631))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63630))))))
    (define type-exception-arguments
      (lambda (_exn62289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62289_))
            (let ((_e62291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62289_ 'exception))))
              (if (macro-type-exception? _e62291_)
                  (macro-type-exception-arguments _e62291_)
                  (let ((__tmp63632
                         (let ((__tmp63633
                                (let ()
                                  (declare (not safe))
                                  (cons _e62291_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp63633))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63632))))
            (if (macro-type-exception? _exn62289_)
                (macro-type-exception-arguments _exn62289_)
                (let ((__tmp63634
                       (let ((__tmp63635
                              (let ()
                                (declare (not safe))
                                (cons _exn62289_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp63635))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63634))))))
    (define type-exception-procedure
      (lambda (_exn62285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62285_))
            (let ((_e62287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62285_ 'exception))))
              (if (macro-type-exception? _e62287_)
                  (macro-type-exception-procedure _e62287_)
                  (let ((__tmp63636
                         (let ((__tmp63637
                                (let ()
                                  (declare (not safe))
                                  (cons _e62287_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp63637))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63636))))
            (if (macro-type-exception? _exn62285_)
                (macro-type-exception-procedure _exn62285_)
                (let ((__tmp63638
                       (let ((__tmp63639
                              (let ()
                                (declare (not safe))
                                (cons _exn62285_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp63639))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63638))))))
    (define type-exception-type-id
      (lambda (_exn62279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62279_))
            (let ((_e62282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62279_ 'exception))))
              (if (macro-type-exception? _e62282_)
                  (macro-type-exception-type-id _e62282_)
                  (let ((__tmp63640
                         (let ((__tmp63641
                                (let ()
                                  (declare (not safe))
                                  (cons _e62282_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp63641))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63640))))
            (if (macro-type-exception? _exn62279_)
                (macro-type-exception-type-id _exn62279_)
                (let ((__tmp63642
                       (let ((__tmp63643
                              (let ()
                                (declare (not safe))
                                (cons _exn62279_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp63643))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63642))))))
    (define unbound-global-exception?
      (lambda (_exn62275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62275_))
            (let ((_e62277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62275_ 'exception))))
              (macro-unbound-global-exception? _e62277_))
            (macro-unbound-global-exception? _exn62275_))))
    (define unbound-global-exception-code
      (lambda (_exn62271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62271_))
            (let ((_e62273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62271_ 'exception))))
              (if (macro-unbound-global-exception? _e62273_)
                  (macro-unbound-global-exception-code _e62273_)
                  (let ((__tmp63644
                         (let ((__tmp63645
                                (let ()
                                  (declare (not safe))
                                  (cons _e62273_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp63645))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp63644))))
            (if (macro-unbound-global-exception? _exn62271_)
                (macro-unbound-global-exception-code _exn62271_)
                (let ((__tmp63646
                       (let ((__tmp63647
                              (let ()
                                (declare (not safe))
                                (cons _exn62271_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp63647))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp63646))))))
    (define unbound-global-exception-rte
      (lambda (_exn62267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62267_))
            (let ((_e62269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62267_ 'exception))))
              (if (macro-unbound-global-exception? _e62269_)
                  (macro-unbound-global-exception-rte _e62269_)
                  (let ((__tmp63648
                         (let ((__tmp63649
                                (let ()
                                  (declare (not safe))
                                  (cons _e62269_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp63649))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp63648))))
            (if (macro-unbound-global-exception? _exn62267_)
                (macro-unbound-global-exception-rte _exn62267_)
                (let ((__tmp63650
                       (let ((__tmp63651
                              (let ()
                                (declare (not safe))
                                (cons _exn62267_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp63651))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp63650))))))
    (define unbound-global-exception-variable
      (lambda (_exn62261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62261_))
            (let ((_e62264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62261_ 'exception))))
              (if (macro-unbound-global-exception? _e62264_)
                  (macro-unbound-global-exception-variable _e62264_)
                  (let ((__tmp63652
                         (let ((__tmp63653
                                (let ()
                                  (declare (not safe))
                                  (cons _e62264_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp63653))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp63652))))
            (if (macro-unbound-global-exception? _exn62261_)
                (macro-unbound-global-exception-variable _exn62261_)
                (let ((__tmp63654
                       (let ((__tmp63655
                              (let ()
                                (declare (not safe))
                                (cons _exn62261_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp63655))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp63654))))))
    (define unbound-key-exception?
      (lambda (_exn62257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62257_))
            (let ((_e62259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62257_ 'exception))))
              (macro-unbound-key-exception? _e62259_))
            (macro-unbound-key-exception? _exn62257_))))
    (define unbound-key-exception-arguments
      (lambda (_exn62253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62253_))
            (let ((_e62255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62253_ 'exception))))
              (if (macro-unbound-key-exception? _e62255_)
                  (macro-unbound-key-exception-arguments _e62255_)
                  (let ((__tmp63656
                         (let ((__tmp63657
                                (let ()
                                  (declare (not safe))
                                  (cons _e62255_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp63657))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp63656))))
            (if (macro-unbound-key-exception? _exn62253_)
                (macro-unbound-key-exception-arguments _exn62253_)
                (let ((__tmp63658
                       (let ((__tmp63659
                              (let ()
                                (declare (not safe))
                                (cons _exn62253_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp63659))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp63658))))))
    (define unbound-key-exception-procedure
      (lambda (_exn62247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62247_))
            (let ((_e62250_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62247_ 'exception))))
              (if (macro-unbound-key-exception? _e62250_)
                  (macro-unbound-key-exception-procedure _e62250_)
                  (let ((__tmp63660
                         (let ((__tmp63661
                                (let ()
                                  (declare (not safe))
                                  (cons _e62250_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp63661))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp63660))))
            (if (macro-unbound-key-exception? _exn62247_)
                (macro-unbound-key-exception-procedure _exn62247_)
                (let ((__tmp63662
                       (let ((__tmp63663
                              (let ()
                                (declare (not safe))
                                (cons _exn62247_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp63663))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp63662))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn62243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62243_))
            (let ((_e62245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62243_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e62245_))
            (macro-unbound-os-environment-variable-exception? _exn62243_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn62239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62239_))
            (let ((_e62241_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62239_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e62241_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e62241_)
                  (let ((__tmp63664
                         (let ((__tmp63665
                                (let ()
                                  (declare (not safe))
                                  (cons _e62241_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp63665))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp63664))))
            (if (macro-unbound-os-environment-variable-exception? _exn62239_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn62239_)
                (let ((__tmp63666
                       (let ((__tmp63667
                              (let ()
                                (declare (not safe))
                                (cons _exn62239_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp63667))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp63666))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn62233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62233_))
            (let ((_e62236_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62233_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e62236_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e62236_)
                  (let ((__tmp63668
                         (let ((__tmp63669
                                (let ()
                                  (declare (not safe))
                                  (cons _e62236_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp63669))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp63668))))
            (if (macro-unbound-os-environment-variable-exception? _exn62233_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn62233_)
                (let ((__tmp63670
                       (let ((__tmp63671
                              (let ()
                                (declare (not safe))
                                (cons _exn62233_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp63671))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp63670))))))
    (define unbound-serial-number-exception?
      (lambda (_exn62229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62229_))
            (let ((_e62231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62229_ 'exception))))
              (macro-unbound-serial-number-exception? _e62231_))
            (macro-unbound-serial-number-exception? _exn62229_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn62225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62225_))
            (let ((_e62227_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62225_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e62227_)
                  (macro-unbound-serial-number-exception-arguments _e62227_)
                  (let ((__tmp63672
                         (let ((__tmp63673
                                (let ()
                                  (declare (not safe))
                                  (cons _e62227_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp63673))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp63672))))
            (if (macro-unbound-serial-number-exception? _exn62225_)
                (macro-unbound-serial-number-exception-arguments _exn62225_)
                (let ((__tmp63674
                       (let ((__tmp63675
                              (let ()
                                (declare (not safe))
                                (cons _exn62225_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp63675))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp63674))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn62219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62219_))
            (let ((_e62222_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62219_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e62222_)
                  (macro-unbound-serial-number-exception-procedure _e62222_)
                  (let ((__tmp63676
                         (let ((__tmp63677
                                (let ()
                                  (declare (not safe))
                                  (cons _e62222_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp63677))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp63676))))
            (if (macro-unbound-serial-number-exception? _exn62219_)
                (macro-unbound-serial-number-exception-procedure _exn62219_)
                (let ((__tmp63678
                       (let ((__tmp63679
                              (let ()
                                (declare (not safe))
                                (cons _exn62219_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp63679))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp63678))))))
    (define uncaught-exception?
      (lambda (_exn62215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62215_))
            (let ((_e62217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62215_ 'exception))))
              (macro-uncaught-exception? _e62217_))
            (macro-uncaught-exception? _exn62215_))))
    (define uncaught-exception-arguments
      (lambda (_exn62211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62211_))
            (let ((_e62213_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62211_ 'exception))))
              (if (macro-uncaught-exception? _e62213_)
                  (macro-uncaught-exception-arguments _e62213_)
                  (let ((__tmp63680
                         (let ((__tmp63681
                                (let ()
                                  (declare (not safe))
                                  (cons _e62213_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp63681))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp63680))))
            (if (macro-uncaught-exception? _exn62211_)
                (macro-uncaught-exception-arguments _exn62211_)
                (let ((__tmp63682
                       (let ((__tmp63683
                              (let ()
                                (declare (not safe))
                                (cons _exn62211_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp63683))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp63682))))))
    (define uncaught-exception-procedure
      (lambda (_exn62207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62207_))
            (let ((_e62209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62207_ 'exception))))
              (if (macro-uncaught-exception? _e62209_)
                  (macro-uncaught-exception-procedure _e62209_)
                  (let ((__tmp63684
                         (let ((__tmp63685
                                (let ()
                                  (declare (not safe))
                                  (cons _e62209_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp63685))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp63684))))
            (if (macro-uncaught-exception? _exn62207_)
                (macro-uncaught-exception-procedure _exn62207_)
                (let ((__tmp63686
                       (let ((__tmp63687
                              (let ()
                                (declare (not safe))
                                (cons _exn62207_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp63687))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp63686))))))
    (define uncaught-exception-reason
      (lambda (_exn62201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62201_))
            (let ((_e62204_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62201_ 'exception))))
              (if (macro-uncaught-exception? _e62204_)
                  (macro-uncaught-exception-reason _e62204_)
                  (let ((__tmp63688
                         (let ((__tmp63689
                                (let ()
                                  (declare (not safe))
                                  (cons _e62204_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp63689))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp63688))))
            (if (macro-uncaught-exception? _exn62201_)
                (macro-uncaught-exception-reason _exn62201_)
                (let ((__tmp63690
                       (let ((__tmp63691
                              (let ()
                                (declare (not safe))
                                (cons _exn62201_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp63691))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp63690))))))
    (define uninitialized-thread-exception?
      (lambda (_exn62197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62197_))
            (let ((_e62199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62197_ 'exception))))
              (macro-uninitialized-thread-exception? _e62199_))
            (macro-uninitialized-thread-exception? _exn62197_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn62193_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62193_))
            (let ((_e62195_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62193_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e62195_)
                  (macro-uninitialized-thread-exception-arguments _e62195_)
                  (let ((__tmp63692
                         (let ((__tmp63693
                                (let ()
                                  (declare (not safe))
                                  (cons _e62195_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp63693))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp63692))))
            (if (macro-uninitialized-thread-exception? _exn62193_)
                (macro-uninitialized-thread-exception-arguments _exn62193_)
                (let ((__tmp63694
                       (let ((__tmp63695
                              (let ()
                                (declare (not safe))
                                (cons _exn62193_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp63695))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp63694))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn62187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62187_))
            (let ((_e62190_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62187_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e62190_)
                  (macro-uninitialized-thread-exception-procedure _e62190_)
                  (let ((__tmp63696
                         (let ((__tmp63697
                                (let ()
                                  (declare (not safe))
                                  (cons _e62190_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp63697))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp63696))))
            (if (macro-uninitialized-thread-exception? _exn62187_)
                (macro-uninitialized-thread-exception-procedure _exn62187_)
                (let ((__tmp63698
                       (let ((__tmp63699
                              (let ()
                                (declare (not safe))
                                (cons _exn62187_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp63699))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp63698))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn62183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62183_))
            (let ((_e62185_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62183_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e62185_))
            (macro-unknown-keyword-argument-exception? _exn62183_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn62179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62179_))
            (let ((_e62181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62179_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e62181_)
                  (macro-unknown-keyword-argument-exception-arguments _e62181_)
                  (let ((__tmp63700
                         (let ((__tmp63701
                                (let ()
                                  (declare (not safe))
                                  (cons _e62181_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp63701))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp63700))))
            (if (macro-unknown-keyword-argument-exception? _exn62179_)
                (macro-unknown-keyword-argument-exception-arguments _exn62179_)
                (let ((__tmp63702
                       (let ((__tmp63703
                              (let ()
                                (declare (not safe))
                                (cons _exn62179_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp63703))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp63702))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn62173_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62173_))
            (let ((_e62176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62173_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e62176_)
                  (macro-unknown-keyword-argument-exception-procedure _e62176_)
                  (let ((__tmp63704
                         (let ((__tmp63705
                                (let ()
                                  (declare (not safe))
                                  (cons _e62176_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp63705))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp63704))))
            (if (macro-unknown-keyword-argument-exception? _exn62173_)
                (macro-unknown-keyword-argument-exception-procedure _exn62173_)
                (let ((__tmp63706
                       (let ((__tmp63707
                              (let ()
                                (declare (not safe))
                                (cons _exn62173_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp63707))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp63706))))))
    (define unterminated-process-exception?
      (lambda (_exn62169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62169_))
            (let ((_e62171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62169_ 'exception))))
              (macro-unterminated-process-exception? _e62171_))
            (macro-unterminated-process-exception? _exn62169_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn62165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62165_))
            (let ((_e62167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62165_ 'exception))))
              (if (macro-unterminated-process-exception? _e62167_)
                  (macro-unterminated-process-exception-arguments _e62167_)
                  (let ((__tmp63708
                         (let ((__tmp63709
                                (let ()
                                  (declare (not safe))
                                  (cons _e62167_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp63709))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp63708))))
            (if (macro-unterminated-process-exception? _exn62165_)
                (macro-unterminated-process-exception-arguments _exn62165_)
                (let ((__tmp63710
                       (let ((__tmp63711
                              (let ()
                                (declare (not safe))
                                (cons _exn62165_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp63711))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp63710))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn62159_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62159_))
            (let ((_e62162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62159_ 'exception))))
              (if (macro-unterminated-process-exception? _e62162_)
                  (macro-unterminated-process-exception-procedure _e62162_)
                  (let ((__tmp63712
                         (let ((__tmp63713
                                (let ()
                                  (declare (not safe))
                                  (cons _e62162_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp63713))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp63712))))
            (if (macro-unterminated-process-exception? _exn62159_)
                (macro-unterminated-process-exception-procedure _exn62159_)
                (let ((__tmp63714
                       (let ((__tmp63715
                              (let ()
                                (declare (not safe))
                                (cons _exn62159_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp63715))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp63714))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn62155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62155_))
            (let ((_e62157_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62155_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e62157_))
            (macro-wrong-number-of-arguments-exception? _exn62155_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn62151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62151_))
            (let ((_e62153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62151_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e62153_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e62153_)
                  (let ((__tmp63716
                         (let ((__tmp63717
                                (let ()
                                  (declare (not safe))
                                  (cons _e62153_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp63717))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp63716))))
            (if (macro-wrong-number-of-arguments-exception? _exn62151_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn62151_)
                (let ((__tmp63718
                       (let ((__tmp63719
                              (let ()
                                (declare (not safe))
                                (cons _exn62151_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp63719))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp63718))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn62145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62145_))
            (let ((_e62148_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62145_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e62148_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e62148_)
                  (let ((__tmp63720
                         (let ((__tmp63721
                                (let ()
                                  (declare (not safe))
                                  (cons _e62148_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp63721))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp63720))))
            (if (macro-wrong-number-of-arguments-exception? _exn62145_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn62145_)
                (let ((__tmp63722
                       (let ((__tmp63723
                              (let ()
                                (declare (not safe))
                                (cons _exn62145_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp63723))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp63722))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn62141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62141_))
            (let ((_e62143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62141_ 'exception))))
              (macro-wrong-number-of-values-exception? _e62143_))
            (macro-wrong-number-of-values-exception? _exn62141_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn62137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62137_))
            (let ((_e62139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62137_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e62139_)
                  (macro-wrong-number-of-values-exception-code _e62139_)
                  (let ((__tmp63724
                         (let ((__tmp63725
                                (let ()
                                  (declare (not safe))
                                  (cons _e62139_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp63725))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp63724))))
            (if (macro-wrong-number-of-values-exception? _exn62137_)
                (macro-wrong-number-of-values-exception-code _exn62137_)
                (let ((__tmp63726
                       (let ((__tmp63727
                              (let ()
                                (declare (not safe))
                                (cons _exn62137_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp63727))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp63726))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn62133_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62133_))
            (let ((_e62135_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62133_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e62135_)
                  (macro-wrong-number-of-values-exception-rte _e62135_)
                  (let ((__tmp63728
                         (let ((__tmp63729
                                (let ()
                                  (declare (not safe))
                                  (cons _e62135_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp63729))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp63728))))
            (if (macro-wrong-number-of-values-exception? _exn62133_)
                (macro-wrong-number-of-values-exception-rte _exn62133_)
                (let ((__tmp63730
                       (let ((__tmp63731
                              (let ()
                                (declare (not safe))
                                (cons _exn62133_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp63731))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp63730))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn62127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62127_))
            (let ((_e62130_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62127_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e62130_)
                  (macro-wrong-number-of-values-exception-vals _e62130_)
                  (let ((__tmp63732
                         (let ((__tmp63733
                                (let ()
                                  (declare (not safe))
                                  (cons _e62130_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp63733))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp63732))))
            (if (macro-wrong-number-of-values-exception? _exn62127_)
                (macro-wrong-number-of-values-exception-vals _exn62127_)
                (let ((__tmp63734
                       (let ((__tmp63735
                              (let ()
                                (declare (not safe))
                                (cons _exn62127_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp63735))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp63734))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn62121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62121_))
            (let ((_e62124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62121_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e62124_))
            (macro-wrong-processor-c-return-exception? _exn62121_))))))
