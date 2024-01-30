(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1706581965)
  (begin
    (define Exception::t
      (let ()
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         '()
         '()
         'Exception
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args12434_
        (apply make-class-instance Exception::t _$args12434_)))
    (define StackTrace::t
      (let ()
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         '()
         '(continuation)
         'StackTrace
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args12431_
        (apply make-class-instance StackTrace::t _$args12431_)))
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
      (let ((__tmp12454
             (let ((__tmp12455
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12455))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12454
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12428_ (apply make-class-instance Error::t _$args12428_)))
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
    (define RuntimeException::t
      (let ((__tmp12456
             (let ((__tmp12457
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12457))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12456
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12425_
        (apply make-class-instance RuntimeException::t _$args12425_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define gerbil-exception-handler-hook
      (lambda (_exn12420_ _continue12421_)
        (let ((_exn12423_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12420_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12423_ _continue12421_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12416_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12416_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12416_ 'continuation))
                '#!void
                (let ((__tmp12458
                       (lambda (_cont12418_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12416_
                            'continuation
                            _cont12418_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12458)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12416_))))
    (define error
      (lambda (_message12413_ . _irritants12414_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12413_
                  'irritants:
                  _irritants12414_)))))
    (define with-exception-handler
      (lambda (_handler12406_ _thunk12407_)
        (if (let () (declare (not safe)) (procedure? _handler12406_))
            '#!void
            (raise (let ((__tmp12459
                          (let ()
                            (declare (not safe))
                            (cons _handler12406_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12459))))
        (if (let () (declare (not safe)) (procedure? _thunk12407_))
            '#!void
            (raise (let ((__tmp12460
                          (let ()
                            (declare (not safe))
                            (cons _thunk12407_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12460))))
        (let ((__tmp12461
               (lambda (_exn12409_)
                 (let ((_exn12411_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12409_))))
                   (_handler12406_ _exn12411_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12461 _thunk12407_))))
    (define with-catch
      (lambda (_handler12399_ _thunk12400_)
        (if (let () (declare (not safe)) (procedure? _handler12399_))
            '#!void
            (raise (let ((__tmp12462
                          (let ()
                            (declare (not safe))
                            (cons _handler12399_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12462))))
        (if (let () (declare (not safe)) (procedure? _thunk12400_))
            '#!void
            (raise (let ((__tmp12463
                          (let ()
                            (declare (not safe))
                            (cons _thunk12400_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12463))))
        (let ((__tmp12464
               (lambda (_cont12402_)
                 (with-exception-handler
                  (lambda (_exn12404_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12402_
                       _handler12399_
                       _exn12404_)))
                  _thunk12400_))))
          (declare (not safe))
          (##continuation-capture __tmp12464))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12390_)
        (if (or (heap-overflow-exception? _exn12390_)
                (stack-overflow-exception? _exn12390_))
            _exn12390_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12390_))
                _exn12390_
                (if (macro-exception? _exn12390_)
                    (let ((_rte12395_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12390_))))
                      (let ((__tmp12465
                             (lambda (_cont12397_)
                               (let ((__tmp12466
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12397_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12395_
                                  'continuation
                                  __tmp12466)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12465))
                      _rte12395_)
                    _exn12390_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12385_)
        (let ((_$e12387_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12385_))))
          (if _$e12387_ _$e12387_ (error-exception? _obj12385_)))))
    (define error-message
      (lambda (_obj12383_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12383_))
            (let () (declare (not safe)) (slot-ref _obj12383_ 'message))
            (if (error-exception? _obj12383_)
                (error-exception-message _obj12383_)
                '#f))))
    (define error-irritants
      (lambda (_obj12381_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12381_))
            (let () (declare (not safe)) (slot-ref _obj12381_ 'irritants))
            (if (error-exception? _obj12381_)
                (error-exception-parameters _obj12381_)
                '#f))))
    (define error-trace
      (lambda (_obj12379_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12379_))
            (let () (declare (not safe)) (slot-ref _obj12379_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12361_ _port12362_)
        (let ((_$e12364_
               (let ()
                 (declare (not safe))
                 (method-ref _e12361_ 'display-exception))))
          (if _$e12364_
              ((lambda (_f12367_) (_f12367_ _e12361_ _port12362_)) _$e12364_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12361_ _port12362_))))))
    (define display-exception__0
      (lambda (_e12372_)
        (let ((_port12374_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12372_ _port12374_))))
    (define display-exception
      (lambda _g12468_
        (let ((_g12467_ (let () (declare (not safe)) (##length _g12468_))))
          (cond ((let () (declare (not safe)) (##fx= _g12467_ 1))
                 (apply (lambda (_e12372_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12372_)))
                        _g12468_))
                ((let () (declare (not safe)) (##fx= _g12467_ 2))
                 (apply (lambda (_e12376_ _port12377_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12376_ _port12377_)))
                        _g12468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12468_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12350_ _message12351_ . _rest12352_)
        (let ((_message12358_
               (if (let () (declare (not safe)) (string? _message12351_))
                   _message12351_
                   (call-with-output-string
                    '""
                    (lambda (_g1235312355_)
                      (display _message12351_ _g1235312355_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12350_ 'message _message12358_))
          (apply class-instance-init! _self12350_ _rest12352_))))
    (define Error:::init!::specialize
      (lambda (__t12436)
        (let ((__message12437
               (let ((__tmp12438
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12436 'message))))
                 (if __tmp12438
                     (let () (declare (not safe)) (##fx+ __tmp12438 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12350_ _message12351_ . _rest12352_)
            (let ((_message12358_
                   (if (let () (declare (not safe)) (string? _message12351_))
                       _message12351_
                       (call-with-output-string
                        '""
                        (lambda (_g1235312355_)
                          (display _message12351_ _g1235312355_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12350_
                 _message12358_
                 __message12437
                 __t12436
                 '#f))
              (apply class-instance-init! _self12350_ _rest12352_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self12208_ _port12209_)
        (let ((_tmp-port12211_ (open-output-string))
              (_display-error-newline12212_
               (> (output-port-column _port12209_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12211_))
          (let ((__tmp12469
                 (lambda ()
                   (if _display-error-newline12212_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12215_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12208_ 'where))))
                     (if _$e12215_ (display _$e12215_) (display '"?")))
                   (let ((__tmp12470
                          (let ((__tmp12471
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12208_))))
                            (declare (not safe))
                            (##type-name __tmp12471))))
                     (declare (not safe))
                     (display* '" [" __tmp12470 '"]: "))
                   (let ((__tmp12472
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12208_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12472))
                   (let ((_irritants12218_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12208_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12218_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12220_)
                              (write _obj12220_)
                              (write-char '#\space))
                            _irritants12218_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self12208_))
                            (dump-stack-trace?))
                       (let ((_cont1222112223_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12208_ 'continuation))))
                         (if _cont1222112223_
                             (let ((_cont12226_ _cont1222112223_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12226_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12469
             current-output-port
             _tmp-port12211_))
          (let ((__tmp12473 (get-output-string _tmp-port12211_)))
            (declare (not safe))
            (##write-string __tmp12473 _port12209_)))))
    (define Error::display-exception::specialize
      (lambda (__t12439)
        (let ((__irritants12440
               (let ((__tmp12444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12439 'irritants))))
                 (if __tmp12444
                     (let () (declare (not safe)) (##fx+ __tmp12444 '1))
                     (error '"Unknown slot" 'irritants))))
              (__message12441
               (let ((__tmp12445
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12439 'message))))
                 (if __tmp12445
                     (let () (declare (not safe)) (##fx+ __tmp12445 '1))
                     (error '"Unknown slot" 'message))))
              (__where12442
               (let ((__tmp12446
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12439 'where))))
                 (if __tmp12446
                     (let () (declare (not safe)) (##fx+ __tmp12446 '1))
                     (error '"Unknown slot" 'where))))
              (__continuation12443
               (let ((__tmp12447
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12439 'continuation))))
                 (if __tmp12447
                     (let () (declare (not safe)) (##fx+ __tmp12447 '1))
                     (error '"Unknown slot" 'continuation))))
              (__class12448
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12439))))
          (lambda (_self12208_ _port12209_)
            (let ((_tmp-port12211_ (open-output-string))
                  (_display-error-newline12212_
                   (> (output-port-column _port12209_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12211_))
              (let ((__tmp12474
                     (lambda ()
                       (if _display-error-newline12212_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12215_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12208_
                                 __where12442
                                 __t12439
                                 '#f))))
                         (if _$e12215_ (display _$e12215_) (display '"?")))
                       (let ((__tmp12475
                              (let ((__tmp12476
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12208_))))
                                (declare (not safe))
                                (##type-name __tmp12476))))
                         (declare (not safe))
                         (display* '" [" __tmp12475 '"]: "))
                       (let ((__tmp12477
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12208_
                                 __message12441
                                 __t12439
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12477))
                       (let ((_irritants12218_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12208_
                                 __irritants12440
                                 __t12439
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12218_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12220_)
                                  (write _obj12220_)
                                  (write-char '#\space))
                                _irritants12218_)
                               (newline))))
                       (if (and __class12448 (dump-stack-trace?))
                           (let ((_cont1222112223_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12208_
                                     __continuation12443
                                     __t12439
                                     '#f))))
                             (if _cont1222112223_
                                 (let ((_cont12226_ _cont1222112223_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12226_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12474
                 current-output-port
                 _tmp-port12211_))
              (let ((__tmp12478 (get-output-string _tmp-port12211_)))
                (declare (not safe))
                (##write-string __tmp12478 _port12209_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12075_ _port12076_)
        (let ((_tmp-port12078_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12078_))
          (let ((__tmp12479
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12075_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12479 _tmp-port12078_))
          (let ((_cont1207912081_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12075_ 'continuation))))
            (if _cont1207912081_
                (let ((_cont12084_ _cont1207912081_))
                  (display '"--- continuation backtrace:" _tmp-port12078_)
                  (newline _tmp-port12078_)
                  (display-continuation-backtrace _cont12084_ _tmp-port12078_))
                '#f))
          (let ((__tmp12480 (get-output-string _tmp-port12078_)))
            (declare (not safe))
            (##write-string __tmp12480 _port12076_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12449)
        (let ((__continuation12450
               (let ((__tmp12452
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12449 'continuation))))
                 (if __tmp12452
                     (let () (declare (not safe)) (##fx+ __tmp12452 '1))
                     (error '"Unknown slot" 'continuation))))
              (__exception12451
               (let ((__tmp12453
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12449 'exception))))
                 (if __tmp12453
                     (let () (declare (not safe)) (##fx+ __tmp12453 '1))
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self12075_ _port12076_)
            (let ((_tmp-port12078_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12078_))
              (let ((__tmp12481
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12075_
                        __exception12451
                        __t12449
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12481 _tmp-port12078_))
              (let ((_cont1207912081_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12075_
                        __continuation12450
                        __t12449
                        '#f))))
                (if _cont1207912081_
                    (let ((_cont12084_ _cont1207912081_))
                      (display '"--- continuation backtrace:" _tmp-port12078_)
                      (newline _tmp-port12078_)
                      (display-continuation-backtrace
                       _cont12084_
                       _tmp-port12078_))
                    '#f))
              (let ((__tmp12482 (get-output-string _tmp-port12078_)))
                (declare (not safe))
                (##write-string __tmp12482 _port12076_)))))))
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
      (lambda (_port11947_)
        (if (macro-character-port? _port11947_)
            (let ((_old-width11949_
                   (macro-character-port-output-width _port11947_)))
              (macro-character-port-output-width-set!
               _port11947_
               (lambda (_port11951_) '256))
              _old-width11949_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11944_ _old-width11945_)
        (if (macro-character-port? _port11944_)
            (macro-character-port-output-width-set!
             _port11944_
             _old-width11945_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11942_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11942_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11936_))
            (let ((_e11939_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11936_ 'exception))))
              (macro-abandoned-mutex-exception? _e11939_))
            (macro-abandoned-mutex-exception? _exn11936_))))
    (define cfun-conversion-exception?
      (lambda (_exn11932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11932_))
            (let ((_e11934_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11932_ 'exception))))
              (macro-cfun-conversion-exception? _e11934_))
            (macro-cfun-conversion-exception? _exn11932_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11928_))
            (let ((_e11930_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11928_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11930_)
                  (macro-cfun-conversion-exception-arguments _e11930_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12484
                                (let ()
                                  (declare (not safe))
                                  (cons _e11930_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12484)))))
            (if (macro-cfun-conversion-exception? _exn11928_)
                (macro-cfun-conversion-exception-arguments _exn11928_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12483
                              (let ()
                                (declare (not safe))
                                (cons _exn11928_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12483)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11924_))
            (let ((_e11926_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11924_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11926_)
                  (macro-cfun-conversion-exception-code _e11926_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12486
                                (let ()
                                  (declare (not safe))
                                  (cons _e11926_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12486)))))
            (if (macro-cfun-conversion-exception? _exn11924_)
                (macro-cfun-conversion-exception-code _exn11924_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12485
                              (let ()
                                (declare (not safe))
                                (cons _exn11924_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12485)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11920_))
            (let ((_e11922_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11920_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11922_)
                  (macro-cfun-conversion-exception-message _e11922_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12488
                                (let ()
                                  (declare (not safe))
                                  (cons _e11922_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12488)))))
            (if (macro-cfun-conversion-exception? _exn11920_)
                (macro-cfun-conversion-exception-message _exn11920_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12487
                              (let ()
                                (declare (not safe))
                                (cons _exn11920_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12487)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11914_))
            (let ((_e11917_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11914_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11917_)
                  (macro-cfun-conversion-exception-procedure _e11917_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12490
                                (let ()
                                  (declare (not safe))
                                  (cons _e11917_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12490)))))
            (if (macro-cfun-conversion-exception? _exn11914_)
                (macro-cfun-conversion-exception-procedure _exn11914_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12489
                              (let ()
                                (declare (not safe))
                                (cons _exn11914_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12489)))))))
    (define datum-parsing-exception?
      (lambda (_exn11910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11910_))
            (let ((_e11912_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11910_ 'exception))))
              (macro-datum-parsing-exception? _e11912_))
            (macro-datum-parsing-exception? _exn11910_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11906_))
            (let ((_e11908_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11906_ 'exception))))
              (if (macro-datum-parsing-exception? _e11908_)
                  (macro-datum-parsing-exception-kind _e11908_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12492
                                (let ()
                                  (declare (not safe))
                                  (cons _e11908_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12492)))))
            (if (macro-datum-parsing-exception? _exn11906_)
                (macro-datum-parsing-exception-kind _exn11906_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12491
                              (let ()
                                (declare (not safe))
                                (cons _exn11906_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12491)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11902_))
            (let ((_e11904_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11902_ 'exception))))
              (if (macro-datum-parsing-exception? _e11904_)
                  (macro-datum-parsing-exception-parameters _e11904_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12494
                                (let ()
                                  (declare (not safe))
                                  (cons _e11904_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12494)))))
            (if (macro-datum-parsing-exception? _exn11902_)
                (macro-datum-parsing-exception-parameters _exn11902_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12493
                              (let ()
                                (declare (not safe))
                                (cons _exn11902_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12493)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11896_))
            (let ((_e11899_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11896_ 'exception))))
              (if (macro-datum-parsing-exception? _e11899_)
                  (macro-datum-parsing-exception-readenv _e11899_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12496
                                (let ()
                                  (declare (not safe))
                                  (cons _e11899_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12496)))))
            (if (macro-datum-parsing-exception? _exn11896_)
                (macro-datum-parsing-exception-readenv _exn11896_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12495
                              (let ()
                                (declare (not safe))
                                (cons _exn11896_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12495)))))))
    (define deadlock-exception?
      (lambda (_exn11890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11890_))
            (let ((_e11893_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11890_ 'exception))))
              (macro-deadlock-exception? _e11893_))
            (macro-deadlock-exception? _exn11890_))))
    (define divide-by-zero-exception?
      (lambda (_exn11886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11886_))
            (let ((_e11888_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11886_ 'exception))))
              (macro-divide-by-zero-exception? _e11888_))
            (macro-divide-by-zero-exception? _exn11886_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11882_))
            (let ((_e11884_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11882_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11884_)
                  (macro-divide-by-zero-exception-arguments _e11884_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12498
                                (let ()
                                  (declare (not safe))
                                  (cons _e11884_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12498)))))
            (if (macro-divide-by-zero-exception? _exn11882_)
                (macro-divide-by-zero-exception-arguments _exn11882_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12497
                              (let ()
                                (declare (not safe))
                                (cons _exn11882_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12497)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11876_))
            (let ((_e11879_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11876_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11879_)
                  (macro-divide-by-zero-exception-procedure _e11879_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12500
                                (let ()
                                  (declare (not safe))
                                  (cons _e11879_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12500)))))
            (if (macro-divide-by-zero-exception? _exn11876_)
                (macro-divide-by-zero-exception-procedure _exn11876_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12499
                              (let ()
                                (declare (not safe))
                                (cons _exn11876_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12499)))))))
    (define error-exception?
      (lambda (_exn11872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11872_))
            (let ((_e11874_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11872_ 'exception))))
              (macro-error-exception? _e11874_))
            (macro-error-exception? _exn11872_))))
    (define error-exception-message
      (lambda (_exn11868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11868_))
            (let ((_e11870_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11868_ 'exception))))
              (if (macro-error-exception? _e11870_)
                  (macro-error-exception-message _e11870_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12502
                                (let ()
                                  (declare (not safe))
                                  (cons _e11870_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12502)))))
            (if (macro-error-exception? _exn11868_)
                (macro-error-exception-message _exn11868_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12501
                              (let ()
                                (declare (not safe))
                                (cons _exn11868_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12501)))))))
    (define error-exception-parameters
      (lambda (_exn11862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11862_))
            (let ((_e11865_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11862_ 'exception))))
              (if (macro-error-exception? _e11865_)
                  (macro-error-exception-parameters _e11865_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12504
                                (let ()
                                  (declare (not safe))
                                  (cons _e11865_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12504)))))
            (if (macro-error-exception? _exn11862_)
                (macro-error-exception-parameters _exn11862_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12503
                              (let ()
                                (declare (not safe))
                                (cons _exn11862_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12503)))))))
    (define expression-parsing-exception?
      (lambda (_exn11858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11858_))
            (let ((_e11860_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11858_ 'exception))))
              (macro-expression-parsing-exception? _e11860_))
            (macro-expression-parsing-exception? _exn11858_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11854_))
            (let ((_e11856_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11854_ 'exception))))
              (if (macro-expression-parsing-exception? _e11856_)
                  (macro-expression-parsing-exception-kind _e11856_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12506
                                (let ()
                                  (declare (not safe))
                                  (cons _e11856_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12506)))))
            (if (macro-expression-parsing-exception? _exn11854_)
                (macro-expression-parsing-exception-kind _exn11854_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12505
                              (let ()
                                (declare (not safe))
                                (cons _exn11854_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12505)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11850_))
            (let ((_e11852_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11850_ 'exception))))
              (if (macro-expression-parsing-exception? _e11852_)
                  (macro-expression-parsing-exception-parameters _e11852_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12508
                                (let ()
                                  (declare (not safe))
                                  (cons _e11852_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12508)))))
            (if (macro-expression-parsing-exception? _exn11850_)
                (macro-expression-parsing-exception-parameters _exn11850_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12507
                              (let ()
                                (declare (not safe))
                                (cons _exn11850_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12507)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11844_))
            (let ((_e11847_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11844_ 'exception))))
              (if (macro-expression-parsing-exception? _e11847_)
                  (macro-expression-parsing-exception-source _e11847_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12510
                                (let ()
                                  (declare (not safe))
                                  (cons _e11847_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12510)))))
            (if (macro-expression-parsing-exception? _exn11844_)
                (macro-expression-parsing-exception-source _exn11844_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12509
                              (let ()
                                (declare (not safe))
                                (cons _exn11844_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12509)))))))
    (define file-exists-exception?
      (lambda (_exn11840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11840_))
            (let ((_e11842_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11840_ 'exception))))
              (macro-file-exists-exception? _e11842_))
            (macro-file-exists-exception? _exn11840_))))
    (define file-exists-exception-arguments
      (lambda (_exn11836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11836_))
            (let ((_e11838_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11836_ 'exception))))
              (if (macro-file-exists-exception? _e11838_)
                  (macro-file-exists-exception-arguments _e11838_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12512
                                (let ()
                                  (declare (not safe))
                                  (cons _e11838_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12512)))))
            (if (macro-file-exists-exception? _exn11836_)
                (macro-file-exists-exception-arguments _exn11836_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12511
                              (let ()
                                (declare (not safe))
                                (cons _exn11836_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12511)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11830_))
            (let ((_e11833_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11830_ 'exception))))
              (if (macro-file-exists-exception? _e11833_)
                  (macro-file-exists-exception-procedure _e11833_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12514
                                (let ()
                                  (declare (not safe))
                                  (cons _e11833_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12514)))))
            (if (macro-file-exists-exception? _exn11830_)
                (macro-file-exists-exception-procedure _exn11830_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12513
                              (let ()
                                (declare (not safe))
                                (cons _exn11830_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12513)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11826_))
            (let ((_e11828_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11826_ 'exception))))
              (macro-fixnum-overflow-exception? _e11828_))
            (macro-fixnum-overflow-exception? _exn11826_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11822_))
            (let ((_e11824_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11822_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11824_)
                  (macro-fixnum-overflow-exception-arguments _e11824_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12516
                                (let ()
                                  (declare (not safe))
                                  (cons _e11824_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12516)))))
            (if (macro-fixnum-overflow-exception? _exn11822_)
                (macro-fixnum-overflow-exception-arguments _exn11822_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12515
                              (let ()
                                (declare (not safe))
                                (cons _exn11822_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12515)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11816_))
            (let ((_e11819_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11816_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11819_)
                  (macro-fixnum-overflow-exception-procedure _e11819_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12518
                                (let ()
                                  (declare (not safe))
                                  (cons _e11819_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12518)))))
            (if (macro-fixnum-overflow-exception? _exn11816_)
                (macro-fixnum-overflow-exception-procedure _exn11816_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12517
                              (let ()
                                (declare (not safe))
                                (cons _exn11816_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12517)))))))
    (define heap-overflow-exception?
      (lambda (_exn11810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11810_))
            (let ((_e11813_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11810_ 'exception))))
              (macro-heap-overflow-exception? _e11813_))
            (macro-heap-overflow-exception? _exn11810_))))
    (define inactive-thread-exception?
      (lambda (_exn11806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11806_))
            (let ((_e11808_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11806_ 'exception))))
              (macro-inactive-thread-exception? _e11808_))
            (macro-inactive-thread-exception? _exn11806_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11802_))
            (let ((_e11804_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11802_ 'exception))))
              (if (macro-inactive-thread-exception? _e11804_)
                  (macro-inactive-thread-exception-arguments _e11804_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12520
                                (let ()
                                  (declare (not safe))
                                  (cons _e11804_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12520)))))
            (if (macro-inactive-thread-exception? _exn11802_)
                (macro-inactive-thread-exception-arguments _exn11802_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12519
                              (let ()
                                (declare (not safe))
                                (cons _exn11802_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12519)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11796_))
            (let ((_e11799_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11796_ 'exception))))
              (if (macro-inactive-thread-exception? _e11799_)
                  (macro-inactive-thread-exception-procedure _e11799_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12522
                                (let ()
                                  (declare (not safe))
                                  (cons _e11799_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12522)))))
            (if (macro-inactive-thread-exception? _exn11796_)
                (macro-inactive-thread-exception-procedure _exn11796_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12521
                              (let ()
                                (declare (not safe))
                                (cons _exn11796_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12521)))))))
    (define initialized-thread-exception?
      (lambda (_exn11792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11792_))
            (let ((_e11794_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11792_ 'exception))))
              (macro-initialized-thread-exception? _e11794_))
            (macro-initialized-thread-exception? _exn11792_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11788_))
            (let ((_e11790_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11788_ 'exception))))
              (if (macro-initialized-thread-exception? _e11790_)
                  (macro-initialized-thread-exception-arguments _e11790_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12524
                                (let ()
                                  (declare (not safe))
                                  (cons _e11790_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12524)))))
            (if (macro-initialized-thread-exception? _exn11788_)
                (macro-initialized-thread-exception-arguments _exn11788_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12523
                              (let ()
                                (declare (not safe))
                                (cons _exn11788_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12523)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11782_))
            (let ((_e11785_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11782_ 'exception))))
              (if (macro-initialized-thread-exception? _e11785_)
                  (macro-initialized-thread-exception-procedure _e11785_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12526
                                (let ()
                                  (declare (not safe))
                                  (cons _e11785_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12526)))))
            (if (macro-initialized-thread-exception? _exn11782_)
                (macro-initialized-thread-exception-procedure _exn11782_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12525
                              (let ()
                                (declare (not safe))
                                (cons _exn11782_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12525)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11778_))
            (let ((_e11780_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11778_ 'exception))))
              (macro-invalid-hash-number-exception? _e11780_))
            (macro-invalid-hash-number-exception? _exn11778_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11774_))
            (let ((_e11776_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11774_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11776_)
                  (macro-invalid-hash-number-exception-arguments _e11776_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12528
                                (let ()
                                  (declare (not safe))
                                  (cons _e11776_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12528)))))
            (if (macro-invalid-hash-number-exception? _exn11774_)
                (macro-invalid-hash-number-exception-arguments _exn11774_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12527
                              (let ()
                                (declare (not safe))
                                (cons _exn11774_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12527)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11768_))
            (let ((_e11771_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11768_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11771_)
                  (macro-invalid-hash-number-exception-procedure _e11771_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12530
                                (let ()
                                  (declare (not safe))
                                  (cons _e11771_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12530)))))
            (if (macro-invalid-hash-number-exception? _exn11768_)
                (macro-invalid-hash-number-exception-procedure _exn11768_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12529
                              (let ()
                                (declare (not safe))
                                (cons _exn11768_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12529)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11764_))
            (let ((_e11766_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11764_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11766_))
            (macro-invalid-utf8-encoding-exception? _exn11764_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11760_))
            (let ((_e11762_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11760_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11762_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11762_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12532
                                (let ()
                                  (declare (not safe))
                                  (cons _e11762_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12532)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11760_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11760_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12531
                              (let ()
                                (declare (not safe))
                                (cons _exn11760_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12531)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11754_))
            (let ((_e11757_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11754_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11757_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11757_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12534
                                (let ()
                                  (declare (not safe))
                                  (cons _e11757_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12534)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11754_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11754_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12533
                              (let ()
                                (declare (not safe))
                                (cons _exn11754_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12533)))))))
    (define join-timeout-exception?
      (lambda (_exn11750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11750_))
            (let ((_e11752_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11750_ 'exception))))
              (macro-join-timeout-exception? _e11752_))
            (macro-join-timeout-exception? _exn11750_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11746_))
            (let ((_e11748_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11746_ 'exception))))
              (if (macro-join-timeout-exception? _e11748_)
                  (macro-join-timeout-exception-arguments _e11748_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12536
                                (let ()
                                  (declare (not safe))
                                  (cons _e11748_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12536)))))
            (if (macro-join-timeout-exception? _exn11746_)
                (macro-join-timeout-exception-arguments _exn11746_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12535
                              (let ()
                                (declare (not safe))
                                (cons _exn11746_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12535)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11740_))
            (let ((_e11743_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11740_ 'exception))))
              (if (macro-join-timeout-exception? _e11743_)
                  (macro-join-timeout-exception-procedure _e11743_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12538
                                (let ()
                                  (declare (not safe))
                                  (cons _e11743_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12538)))))
            (if (macro-join-timeout-exception? _exn11740_)
                (macro-join-timeout-exception-procedure _exn11740_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12537
                              (let ()
                                (declare (not safe))
                                (cons _exn11740_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12537)))))))
    (define keyword-expected-exception?
      (lambda (_exn11736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11736_))
            (let ((_e11738_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11736_ 'exception))))
              (macro-keyword-expected-exception? _e11738_))
            (macro-keyword-expected-exception? _exn11736_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11732_))
            (let ((_e11734_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11732_ 'exception))))
              (if (macro-keyword-expected-exception? _e11734_)
                  (macro-keyword-expected-exception-arguments _e11734_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12540
                                (let ()
                                  (declare (not safe))
                                  (cons _e11734_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12540)))))
            (if (macro-keyword-expected-exception? _exn11732_)
                (macro-keyword-expected-exception-arguments _exn11732_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12539
                              (let ()
                                (declare (not safe))
                                (cons _exn11732_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12539)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11726_))
            (let ((_e11729_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11726_ 'exception))))
              (if (macro-keyword-expected-exception? _e11729_)
                  (macro-keyword-expected-exception-procedure _e11729_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12542
                                (let ()
                                  (declare (not safe))
                                  (cons _e11729_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12542)))))
            (if (macro-keyword-expected-exception? _exn11726_)
                (macro-keyword-expected-exception-procedure _exn11726_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12541
                              (let ()
                                (declare (not safe))
                                (cons _exn11726_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12541)))))))
    (define length-mismatch-exception?
      (lambda (_exn11722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11722_))
            (let ((_e11724_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11722_ 'exception))))
              (macro-length-mismatch-exception? _e11724_))
            (macro-length-mismatch-exception? _exn11722_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11718_))
            (let ((_e11720_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11718_ 'exception))))
              (if (macro-length-mismatch-exception? _e11720_)
                  (macro-length-mismatch-exception-arg-id _e11720_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12544
                                (let ()
                                  (declare (not safe))
                                  (cons _e11720_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12544)))))
            (if (macro-length-mismatch-exception? _exn11718_)
                (macro-length-mismatch-exception-arg-id _exn11718_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12543
                              (let ()
                                (declare (not safe))
                                (cons _exn11718_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12543)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11714_))
            (let ((_e11716_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11714_ 'exception))))
              (if (macro-length-mismatch-exception? _e11716_)
                  (macro-length-mismatch-exception-arguments _e11716_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12546
                                (let ()
                                  (declare (not safe))
                                  (cons _e11716_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12546)))))
            (if (macro-length-mismatch-exception? _exn11714_)
                (macro-length-mismatch-exception-arguments _exn11714_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12545
                              (let ()
                                (declare (not safe))
                                (cons _exn11714_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12545)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11708_))
            (let ((_e11711_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11708_ 'exception))))
              (if (macro-length-mismatch-exception? _e11711_)
                  (macro-length-mismatch-exception-procedure _e11711_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12548
                                (let ()
                                  (declare (not safe))
                                  (cons _e11711_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12548)))))
            (if (macro-length-mismatch-exception? _exn11708_)
                (macro-length-mismatch-exception-procedure _exn11708_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12547
                              (let ()
                                (declare (not safe))
                                (cons _exn11708_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12547)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11704_))
            (let ((_e11706_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11704_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11706_))
            (macro-mailbox-receive-timeout-exception? _exn11704_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11700_))
            (let ((_e11702_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11700_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11702_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11702_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12550
                                (let ()
                                  (declare (not safe))
                                  (cons _e11702_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12550)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11700_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11700_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12549
                              (let ()
                                (declare (not safe))
                                (cons _exn11700_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12549)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11694_))
            (let ((_e11697_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11694_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11697_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11697_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12552
                                (let ()
                                  (declare (not safe))
                                  (cons _e11697_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12552)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11694_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11694_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12551
                              (let ()
                                (declare (not safe))
                                (cons _exn11694_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12551)))))))
    (define module-not-found-exception?
      (lambda (_exn11690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11690_))
            (let ((_e11692_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11690_ 'exception))))
              (macro-module-not-found-exception? _e11692_))
            (macro-module-not-found-exception? _exn11690_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11686_))
            (let ((_e11688_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11686_ 'exception))))
              (if (macro-module-not-found-exception? _e11688_)
                  (macro-module-not-found-exception-arguments _e11688_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12554
                                (let ()
                                  (declare (not safe))
                                  (cons _e11688_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12554)))))
            (if (macro-module-not-found-exception? _exn11686_)
                (macro-module-not-found-exception-arguments _exn11686_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12553
                              (let ()
                                (declare (not safe))
                                (cons _exn11686_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12553)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11680_))
            (let ((_e11683_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11680_ 'exception))))
              (if (macro-module-not-found-exception? _e11683_)
                  (macro-module-not-found-exception-procedure _e11683_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12556
                                (let ()
                                  (declare (not safe))
                                  (cons _e11683_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12556)))))
            (if (macro-module-not-found-exception? _exn11680_)
                (macro-module-not-found-exception-procedure _exn11680_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12555
                              (let ()
                                (declare (not safe))
                                (cons _exn11680_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12555)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11674_))
            (let ((_e11677_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11674_ 'exception))))
              (macro-multiple-c-return-exception? _e11677_))
            (macro-multiple-c-return-exception? _exn11674_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11670_))
            (let ((_e11672_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11670_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11672_))
            (macro-no-such-file-or-directory-exception? _exn11670_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11666_))
            (let ((_e11668_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11666_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11668_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11668_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12558
                                (let ()
                                  (declare (not safe))
                                  (cons _e11668_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12558)))))
            (if (macro-no-such-file-or-directory-exception? _exn11666_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11666_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12557
                              (let ()
                                (declare (not safe))
                                (cons _exn11666_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12557)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11660_))
            (let ((_e11663_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11660_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11663_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11663_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12560
                                (let ()
                                  (declare (not safe))
                                  (cons _e11663_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12560)))))
            (if (macro-no-such-file-or-directory-exception? _exn11660_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11660_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12559
                              (let ()
                                (declare (not safe))
                                (cons _exn11660_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12559)))))))
    (define noncontinuable-exception?
      (lambda (_exn11656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11656_))
            (let ((_e11658_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11656_ 'exception))))
              (macro-noncontinuable-exception? _e11658_))
            (macro-noncontinuable-exception? _exn11656_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11650_))
            (let ((_e11653_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11650_ 'exception))))
              (if (macro-noncontinuable-exception? _e11653_)
                  (macro-noncontinuable-exception-reason _e11653_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12562
                                (let ()
                                  (declare (not safe))
                                  (cons _e11653_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12562)))))
            (if (macro-noncontinuable-exception? _exn11650_)
                (macro-noncontinuable-exception-reason _exn11650_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12561
                              (let ()
                                (declare (not safe))
                                (cons _exn11650_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12561)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11646_))
            (let ((_e11648_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11646_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11648_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11646_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11642_))
            (let ((_e11644_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11642_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11644_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11644_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12564
                                (let ()
                                  (declare (not safe))
                                  (cons _e11644_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12564)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11642_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11642_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12563
                              (let ()
                                (declare (not safe))
                                (cons _exn11642_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12563)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11636_))
            (let ((_e11639_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11636_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11639_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11639_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12566
                                (let ()
                                  (declare (not safe))
                                  (cons _e11639_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12566)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11636_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11636_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12565
                              (let ()
                                (declare (not safe))
                                (cons _exn11636_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12565)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11632_))
            (let ((_e11634_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11632_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11634_))
            (macro-nonprocedure-operator-exception? _exn11632_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11628_))
            (let ((_e11630_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11628_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11630_)
                  (macro-nonprocedure-operator-exception-arguments _e11630_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12568
                                (let ()
                                  (declare (not safe))
                                  (cons _e11630_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12568)))))
            (if (macro-nonprocedure-operator-exception? _exn11628_)
                (macro-nonprocedure-operator-exception-arguments _exn11628_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12567
                              (let ()
                                (declare (not safe))
                                (cons _exn11628_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12567)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11624_))
            (let ((_e11626_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11624_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11626_)
                  (macro-nonprocedure-operator-exception-code _e11626_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12570
                                (let ()
                                  (declare (not safe))
                                  (cons _e11626_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12570)))))
            (if (macro-nonprocedure-operator-exception? _exn11624_)
                (macro-nonprocedure-operator-exception-code _exn11624_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12569
                              (let ()
                                (declare (not safe))
                                (cons _exn11624_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12569)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11620_))
            (let ((_e11622_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11620_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11622_)
                  (macro-nonprocedure-operator-exception-operator _e11622_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12572
                                (let ()
                                  (declare (not safe))
                                  (cons _e11622_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12572)))))
            (if (macro-nonprocedure-operator-exception? _exn11620_)
                (macro-nonprocedure-operator-exception-operator _exn11620_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12571
                              (let ()
                                (declare (not safe))
                                (cons _exn11620_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12571)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11614_))
            (let ((_e11617_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11614_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11617_)
                  (macro-nonprocedure-operator-exception-rte _e11617_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12574
                                (let ()
                                  (declare (not safe))
                                  (cons _e11617_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12574)))))
            (if (macro-nonprocedure-operator-exception? _exn11614_)
                (macro-nonprocedure-operator-exception-rte _exn11614_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12573
                              (let ()
                                (declare (not safe))
                                (cons _exn11614_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12573)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11610_))
            (let ((_e11612_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11610_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11612_))
            (macro-not-in-compilation-context-exception? _exn11610_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11606_))
            (let ((_e11608_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11606_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11608_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11608_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12576
                                (let ()
                                  (declare (not safe))
                                  (cons _e11608_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12576)))))
            (if (macro-not-in-compilation-context-exception? _exn11606_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11606_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12575
                              (let ()
                                (declare (not safe))
                                (cons _exn11606_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12575)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11600_))
            (let ((_e11603_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11600_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11603_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11603_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12578
                                (let ()
                                  (declare (not safe))
                                  (cons _e11603_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12578)))))
            (if (macro-not-in-compilation-context-exception? _exn11600_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11600_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12577
                              (let ()
                                (declare (not safe))
                                (cons _exn11600_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12577)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11596_))
            (let ((_e11598_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11596_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11598_))
            (macro-number-of-arguments-limit-exception? _exn11596_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11592_))
            (let ((_e11594_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11592_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11594_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11594_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12580
                                (let ()
                                  (declare (not safe))
                                  (cons _e11594_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12580)))))
            (if (macro-number-of-arguments-limit-exception? _exn11592_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11592_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12579
                              (let ()
                                (declare (not safe))
                                (cons _exn11592_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12579)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11586_))
            (let ((_e11589_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11586_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11589_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11589_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12582
                                (let ()
                                  (declare (not safe))
                                  (cons _e11589_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12582)))))
            (if (macro-number-of-arguments-limit-exception? _exn11586_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11586_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12581
                              (let ()
                                (declare (not safe))
                                (cons _exn11586_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12581)))))))
    (define os-exception?
      (lambda (_exn11582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11582_))
            (let ((_e11584_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11582_ 'exception))))
              (macro-os-exception? _e11584_))
            (macro-os-exception? _exn11582_))))
    (define os-exception-arguments
      (lambda (_exn11578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11578_))
            (let ((_e11580_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11578_ 'exception))))
              (if (macro-os-exception? _e11580_)
                  (macro-os-exception-arguments _e11580_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12584
                                (let ()
                                  (declare (not safe))
                                  (cons _e11580_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12584)))))
            (if (macro-os-exception? _exn11578_)
                (macro-os-exception-arguments _exn11578_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12583
                              (let ()
                                (declare (not safe))
                                (cons _exn11578_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12583)))))))
    (define os-exception-code
      (lambda (_exn11574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11574_))
            (let ((_e11576_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11574_ 'exception))))
              (if (macro-os-exception? _e11576_)
                  (macro-os-exception-code _e11576_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12586
                                (let ()
                                  (declare (not safe))
                                  (cons _e11576_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12586)))))
            (if (macro-os-exception? _exn11574_)
                (macro-os-exception-code _exn11574_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12585
                              (let ()
                                (declare (not safe))
                                (cons _exn11574_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12585)))))))
    (define os-exception-message
      (lambda (_exn11570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11570_))
            (let ((_e11572_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11570_ 'exception))))
              (if (macro-os-exception? _e11572_)
                  (macro-os-exception-message _e11572_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12588
                                (let ()
                                  (declare (not safe))
                                  (cons _e11572_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12588)))))
            (if (macro-os-exception? _exn11570_)
                (macro-os-exception-message _exn11570_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12587
                              (let ()
                                (declare (not safe))
                                (cons _exn11570_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12587)))))))
    (define os-exception-procedure
      (lambda (_exn11564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11564_))
            (let ((_e11567_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11564_ 'exception))))
              (if (macro-os-exception? _e11567_)
                  (macro-os-exception-procedure _e11567_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12590
                                (let ()
                                  (declare (not safe))
                                  (cons _e11567_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12590)))))
            (if (macro-os-exception? _exn11564_)
                (macro-os-exception-procedure _exn11564_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12589
                              (let ()
                                (declare (not safe))
                                (cons _exn11564_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12589)))))))
    (define permission-denied-exception?
      (lambda (_exn11560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11560_))
            (let ((_e11562_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11560_ 'exception))))
              (macro-permission-denied-exception? _e11562_))
            (macro-permission-denied-exception? _exn11560_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11556_))
            (let ((_e11558_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11556_ 'exception))))
              (if (macro-permission-denied-exception? _e11558_)
                  (macro-permission-denied-exception-arguments _e11558_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12592
                                (let ()
                                  (declare (not safe))
                                  (cons _e11558_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12592)))))
            (if (macro-permission-denied-exception? _exn11556_)
                (macro-permission-denied-exception-arguments _exn11556_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12591
                              (let ()
                                (declare (not safe))
                                (cons _exn11556_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12591)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11550_))
            (let ((_e11553_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11550_ 'exception))))
              (if (macro-permission-denied-exception? _e11553_)
                  (macro-permission-denied-exception-procedure _e11553_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12594
                                (let ()
                                  (declare (not safe))
                                  (cons _e11553_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12594)))))
            (if (macro-permission-denied-exception? _exn11550_)
                (macro-permission-denied-exception-procedure _exn11550_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12593
                              (let ()
                                (declare (not safe))
                                (cons _exn11550_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12593)))))))
    (define range-exception?
      (lambda (_exn11546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11546_))
            (let ((_e11548_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11546_ 'exception))))
              (macro-range-exception? _e11548_))
            (macro-range-exception? _exn11546_))))
    (define range-exception-arg-id
      (lambda (_exn11542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11542_))
            (let ((_e11544_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11542_ 'exception))))
              (if (macro-range-exception? _e11544_)
                  (macro-range-exception-arg-id _e11544_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12596
                                (let ()
                                  (declare (not safe))
                                  (cons _e11544_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12596)))))
            (if (macro-range-exception? _exn11542_)
                (macro-range-exception-arg-id _exn11542_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12595
                              (let ()
                                (declare (not safe))
                                (cons _exn11542_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12595)))))))
    (define range-exception-arguments
      (lambda (_exn11538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11538_))
            (let ((_e11540_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11538_ 'exception))))
              (if (macro-range-exception? _e11540_)
                  (macro-range-exception-arguments _e11540_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12598
                                (let ()
                                  (declare (not safe))
                                  (cons _e11540_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12598)))))
            (if (macro-range-exception? _exn11538_)
                (macro-range-exception-arguments _exn11538_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12597
                              (let ()
                                (declare (not safe))
                                (cons _exn11538_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12597)))))))
    (define range-exception-procedure
      (lambda (_exn11532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11532_))
            (let ((_e11535_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11532_ 'exception))))
              (if (macro-range-exception? _e11535_)
                  (macro-range-exception-procedure _e11535_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12600
                                (let ()
                                  (declare (not safe))
                                  (cons _e11535_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12600)))))
            (if (macro-range-exception? _exn11532_)
                (macro-range-exception-procedure _exn11532_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12599
                              (let ()
                                (declare (not safe))
                                (cons _exn11532_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12599)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11528_))
            (let ((_e11530_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11528_ 'exception))))
              (macro-rpc-remote-error-exception? _e11530_))
            (macro-rpc-remote-error-exception? _exn11528_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11524_))
            (let ((_e11526_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11524_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11526_)
                  (macro-rpc-remote-error-exception-arguments _e11526_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12602
                                (let ()
                                  (declare (not safe))
                                  (cons _e11526_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12602)))))
            (if (macro-rpc-remote-error-exception? _exn11524_)
                (macro-rpc-remote-error-exception-arguments _exn11524_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12601
                              (let ()
                                (declare (not safe))
                                (cons _exn11524_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12601)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11520_))
            (let ((_e11522_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11520_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11522_)
                  (macro-rpc-remote-error-exception-message _e11522_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12604
                                (let ()
                                  (declare (not safe))
                                  (cons _e11522_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12604)))))
            (if (macro-rpc-remote-error-exception? _exn11520_)
                (macro-rpc-remote-error-exception-message _exn11520_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12603
                              (let ()
                                (declare (not safe))
                                (cons _exn11520_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12603)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11514_))
            (let ((_e11517_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11514_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11517_)
                  (macro-rpc-remote-error-exception-procedure _e11517_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12606
                                (let ()
                                  (declare (not safe))
                                  (cons _e11517_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12606)))))
            (if (macro-rpc-remote-error-exception? _exn11514_)
                (macro-rpc-remote-error-exception-procedure _exn11514_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12605
                              (let ()
                                (declare (not safe))
                                (cons _exn11514_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12605)))))))
    (define scheduler-exception?
      (lambda (_exn11510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11510_))
            (let ((_e11512_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11510_ 'exception))))
              (macro-scheduler-exception? _e11512_))
            (macro-scheduler-exception? _exn11510_))))
    (define scheduler-exception-reason
      (lambda (_exn11504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11504_))
            (let ((_e11507_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11504_ 'exception))))
              (if (macro-scheduler-exception? _e11507_)
                  (macro-scheduler-exception-reason _e11507_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12608
                                (let ()
                                  (declare (not safe))
                                  (cons _e11507_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12608)))))
            (if (macro-scheduler-exception? _exn11504_)
                (macro-scheduler-exception-reason _exn11504_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12607
                              (let ()
                                (declare (not safe))
                                (cons _exn11504_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12607)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11500_))
            (let ((_e11502_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11500_ 'exception))))
              (macro-sfun-conversion-exception? _e11502_))
            (macro-sfun-conversion-exception? _exn11500_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11496_))
            (let ((_e11498_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11496_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11498_)
                  (macro-sfun-conversion-exception-arguments _e11498_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12610
                                (let ()
                                  (declare (not safe))
                                  (cons _e11498_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12610)))))
            (if (macro-sfun-conversion-exception? _exn11496_)
                (macro-sfun-conversion-exception-arguments _exn11496_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12609
                              (let ()
                                (declare (not safe))
                                (cons _exn11496_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12609)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11492_))
            (let ((_e11494_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11492_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11494_)
                  (macro-sfun-conversion-exception-code _e11494_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12612
                                (let ()
                                  (declare (not safe))
                                  (cons _e11494_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12612)))))
            (if (macro-sfun-conversion-exception? _exn11492_)
                (macro-sfun-conversion-exception-code _exn11492_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12611
                              (let ()
                                (declare (not safe))
                                (cons _exn11492_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12611)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11488_))
            (let ((_e11490_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11488_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11490_)
                  (macro-sfun-conversion-exception-message _e11490_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12614
                                (let ()
                                  (declare (not safe))
                                  (cons _e11490_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12614)))))
            (if (macro-sfun-conversion-exception? _exn11488_)
                (macro-sfun-conversion-exception-message _exn11488_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12613
                              (let ()
                                (declare (not safe))
                                (cons _exn11488_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12613)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11482_))
            (let ((_e11485_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11482_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11485_)
                  (macro-sfun-conversion-exception-procedure _e11485_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12616
                                (let ()
                                  (declare (not safe))
                                  (cons _e11485_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12616)))))
            (if (macro-sfun-conversion-exception? _exn11482_)
                (macro-sfun-conversion-exception-procedure _exn11482_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12615
                              (let ()
                                (declare (not safe))
                                (cons _exn11482_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12615)))))))
    (define stack-overflow-exception?
      (lambda (_exn11476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11476_))
            (let ((_e11479_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11476_ 'exception))))
              (macro-stack-overflow-exception? _e11479_))
            (macro-stack-overflow-exception? _exn11476_))))
    (define started-thread-exception?
      (lambda (_exn11472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11472_))
            (let ((_e11474_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11472_ 'exception))))
              (macro-started-thread-exception? _e11474_))
            (macro-started-thread-exception? _exn11472_))))
    (define started-thread-exception-arguments
      (lambda (_exn11468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11468_))
            (let ((_e11470_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11468_ 'exception))))
              (if (macro-started-thread-exception? _e11470_)
                  (macro-started-thread-exception-arguments _e11470_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12618
                                (let ()
                                  (declare (not safe))
                                  (cons _e11470_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12618)))))
            (if (macro-started-thread-exception? _exn11468_)
                (macro-started-thread-exception-arguments _exn11468_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12617
                              (let ()
                                (declare (not safe))
                                (cons _exn11468_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12617)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11462_))
            (let ((_e11465_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11462_ 'exception))))
              (if (macro-started-thread-exception? _e11465_)
                  (macro-started-thread-exception-procedure _e11465_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12620
                                (let ()
                                  (declare (not safe))
                                  (cons _e11465_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12620)))))
            (if (macro-started-thread-exception? _exn11462_)
                (macro-started-thread-exception-procedure _exn11462_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12619
                              (let ()
                                (declare (not safe))
                                (cons _exn11462_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12619)))))))
    (define terminated-thread-exception?
      (lambda (_exn11458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11458_))
            (let ((_e11460_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11458_ 'exception))))
              (macro-terminated-thread-exception? _e11460_))
            (macro-terminated-thread-exception? _exn11458_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11454_))
            (let ((_e11456_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11454_ 'exception))))
              (if (macro-terminated-thread-exception? _e11456_)
                  (macro-terminated-thread-exception-arguments _e11456_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12622
                                (let ()
                                  (declare (not safe))
                                  (cons _e11456_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12622)))))
            (if (macro-terminated-thread-exception? _exn11454_)
                (macro-terminated-thread-exception-arguments _exn11454_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12621
                              (let ()
                                (declare (not safe))
                                (cons _exn11454_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12621)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11448_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11448_))
            (let ((_e11451_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11448_ 'exception))))
              (if (macro-terminated-thread-exception? _e11451_)
                  (macro-terminated-thread-exception-procedure _e11451_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12624
                                (let ()
                                  (declare (not safe))
                                  (cons _e11451_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12624)))))
            (if (macro-terminated-thread-exception? _exn11448_)
                (macro-terminated-thread-exception-procedure _exn11448_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12623
                              (let ()
                                (declare (not safe))
                                (cons _exn11448_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12623)))))))
    (define type-exception?
      (lambda (_exn11444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11444_))
            (let ((_e11446_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11444_ 'exception))))
              (macro-type-exception? _e11446_))
            (macro-type-exception? _exn11444_))))
    (define type-exception-arg-id
      (lambda (_exn11440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11440_))
            (let ((_e11442_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11440_ 'exception))))
              (if (macro-type-exception? _e11442_)
                  (macro-type-exception-arg-id _e11442_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12626
                                (let ()
                                  (declare (not safe))
                                  (cons _e11442_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12626)))))
            (if (macro-type-exception? _exn11440_)
                (macro-type-exception-arg-id _exn11440_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12625
                              (let ()
                                (declare (not safe))
                                (cons _exn11440_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12625)))))))
    (define type-exception-arguments
      (lambda (_exn11436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11436_))
            (let ((_e11438_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11436_ 'exception))))
              (if (macro-type-exception? _e11438_)
                  (macro-type-exception-arguments _e11438_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12628
                                (let ()
                                  (declare (not safe))
                                  (cons _e11438_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12628)))))
            (if (macro-type-exception? _exn11436_)
                (macro-type-exception-arguments _exn11436_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12627
                              (let ()
                                (declare (not safe))
                                (cons _exn11436_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12627)))))))
    (define type-exception-procedure
      (lambda (_exn11432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11432_))
            (let ((_e11434_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11432_ 'exception))))
              (if (macro-type-exception? _e11434_)
                  (macro-type-exception-procedure _e11434_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12630
                                (let ()
                                  (declare (not safe))
                                  (cons _e11434_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12630)))))
            (if (macro-type-exception? _exn11432_)
                (macro-type-exception-procedure _exn11432_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12629
                              (let ()
                                (declare (not safe))
                                (cons _exn11432_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12629)))))))
    (define type-exception-type-id
      (lambda (_exn11426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11426_))
            (let ((_e11429_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11426_ 'exception))))
              (if (macro-type-exception? _e11429_)
                  (macro-type-exception-type-id _e11429_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12632
                                (let ()
                                  (declare (not safe))
                                  (cons _e11429_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12632)))))
            (if (macro-type-exception? _exn11426_)
                (macro-type-exception-type-id _exn11426_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12631
                              (let ()
                                (declare (not safe))
                                (cons _exn11426_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12631)))))))
    (define unbound-global-exception?
      (lambda (_exn11422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11422_))
            (let ((_e11424_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11422_ 'exception))))
              (macro-unbound-global-exception? _e11424_))
            (macro-unbound-global-exception? _exn11422_))))
    (define unbound-global-exception-code
      (lambda (_exn11418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11418_))
            (let ((_e11420_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11418_ 'exception))))
              (if (macro-unbound-global-exception? _e11420_)
                  (macro-unbound-global-exception-code _e11420_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12634
                                (let ()
                                  (declare (not safe))
                                  (cons _e11420_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12634)))))
            (if (macro-unbound-global-exception? _exn11418_)
                (macro-unbound-global-exception-code _exn11418_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12633
                              (let ()
                                (declare (not safe))
                                (cons _exn11418_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12633)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11414_))
            (let ((_e11416_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11414_ 'exception))))
              (if (macro-unbound-global-exception? _e11416_)
                  (macro-unbound-global-exception-rte _e11416_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12636
                                (let ()
                                  (declare (not safe))
                                  (cons _e11416_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12636)))))
            (if (macro-unbound-global-exception? _exn11414_)
                (macro-unbound-global-exception-rte _exn11414_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12635
                              (let ()
                                (declare (not safe))
                                (cons _exn11414_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12635)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11408_))
            (let ((_e11411_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11408_ 'exception))))
              (if (macro-unbound-global-exception? _e11411_)
                  (macro-unbound-global-exception-variable _e11411_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12638
                                (let ()
                                  (declare (not safe))
                                  (cons _e11411_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12638)))))
            (if (macro-unbound-global-exception? _exn11408_)
                (macro-unbound-global-exception-variable _exn11408_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12637
                              (let ()
                                (declare (not safe))
                                (cons _exn11408_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12637)))))))
    (define unbound-key-exception?
      (lambda (_exn11404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11404_))
            (let ((_e11406_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11404_ 'exception))))
              (macro-unbound-key-exception? _e11406_))
            (macro-unbound-key-exception? _exn11404_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11400_))
            (let ((_e11402_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11400_ 'exception))))
              (if (macro-unbound-key-exception? _e11402_)
                  (macro-unbound-key-exception-arguments _e11402_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12640
                                (let ()
                                  (declare (not safe))
                                  (cons _e11402_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12640)))))
            (if (macro-unbound-key-exception? _exn11400_)
                (macro-unbound-key-exception-arguments _exn11400_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12639
                              (let ()
                                (declare (not safe))
                                (cons _exn11400_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12639)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11394_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11394_))
            (let ((_e11397_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11394_ 'exception))))
              (if (macro-unbound-key-exception? _e11397_)
                  (macro-unbound-key-exception-procedure _e11397_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12642
                                (let ()
                                  (declare (not safe))
                                  (cons _e11397_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12642)))))
            (if (macro-unbound-key-exception? _exn11394_)
                (macro-unbound-key-exception-procedure _exn11394_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12641
                              (let ()
                                (declare (not safe))
                                (cons _exn11394_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12641)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11390_))
            (let ((_e11392_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11390_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11392_))
            (macro-unbound-os-environment-variable-exception? _exn11390_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11386_))
            (let ((_e11388_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11386_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11388_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11388_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12644
                                (let ()
                                  (declare (not safe))
                                  (cons _e11388_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12644)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11386_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11386_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12643
                              (let ()
                                (declare (not safe))
                                (cons _exn11386_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12643)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11380_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11380_))
            (let ((_e11383_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11380_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11383_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11383_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12646
                                (let ()
                                  (declare (not safe))
                                  (cons _e11383_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12646)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11380_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11380_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12645
                              (let ()
                                (declare (not safe))
                                (cons _exn11380_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12645)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11376_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11376_))
            (let ((_e11378_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11376_ 'exception))))
              (macro-unbound-serial-number-exception? _e11378_))
            (macro-unbound-serial-number-exception? _exn11376_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11372_))
            (let ((_e11374_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11372_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11374_)
                  (macro-unbound-serial-number-exception-arguments _e11374_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12648
                                (let ()
                                  (declare (not safe))
                                  (cons _e11374_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12648)))))
            (if (macro-unbound-serial-number-exception? _exn11372_)
                (macro-unbound-serial-number-exception-arguments _exn11372_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12647
                              (let ()
                                (declare (not safe))
                                (cons _exn11372_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12647)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11366_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11366_))
            (let ((_e11369_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11366_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11369_)
                  (macro-unbound-serial-number-exception-procedure _e11369_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12650
                                (let ()
                                  (declare (not safe))
                                  (cons _e11369_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12650)))))
            (if (macro-unbound-serial-number-exception? _exn11366_)
                (macro-unbound-serial-number-exception-procedure _exn11366_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12649
                              (let ()
                                (declare (not safe))
                                (cons _exn11366_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12649)))))))
    (define uncaught-exception?
      (lambda (_exn11362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11362_))
            (let ((_e11364_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11362_ 'exception))))
              (macro-uncaught-exception? _e11364_))
            (macro-uncaught-exception? _exn11362_))))
    (define uncaught-exception-arguments
      (lambda (_exn11358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11358_))
            (let ((_e11360_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11358_ 'exception))))
              (if (macro-uncaught-exception? _e11360_)
                  (macro-uncaught-exception-arguments _e11360_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12652
                                (let ()
                                  (declare (not safe))
                                  (cons _e11360_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12652)))))
            (if (macro-uncaught-exception? _exn11358_)
                (macro-uncaught-exception-arguments _exn11358_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12651
                              (let ()
                                (declare (not safe))
                                (cons _exn11358_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12651)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11354_))
            (let ((_e11356_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11354_ 'exception))))
              (if (macro-uncaught-exception? _e11356_)
                  (macro-uncaught-exception-procedure _e11356_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12654
                                (let ()
                                  (declare (not safe))
                                  (cons _e11356_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12654)))))
            (if (macro-uncaught-exception? _exn11354_)
                (macro-uncaught-exception-procedure _exn11354_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12653
                              (let ()
                                (declare (not safe))
                                (cons _exn11354_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12653)))))))
    (define uncaught-exception-reason
      (lambda (_exn11348_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11348_))
            (let ((_e11351_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11348_ 'exception))))
              (if (macro-uncaught-exception? _e11351_)
                  (macro-uncaught-exception-reason _e11351_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12656
                                (let ()
                                  (declare (not safe))
                                  (cons _e11351_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12656)))))
            (if (macro-uncaught-exception? _exn11348_)
                (macro-uncaught-exception-reason _exn11348_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12655
                              (let ()
                                (declare (not safe))
                                (cons _exn11348_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12655)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11344_))
            (let ((_e11346_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11344_ 'exception))))
              (macro-uninitialized-thread-exception? _e11346_))
            (macro-uninitialized-thread-exception? _exn11344_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11340_))
            (let ((_e11342_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11340_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11342_)
                  (macro-uninitialized-thread-exception-arguments _e11342_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12658
                                (let ()
                                  (declare (not safe))
                                  (cons _e11342_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12658)))))
            (if (macro-uninitialized-thread-exception? _exn11340_)
                (macro-uninitialized-thread-exception-arguments _exn11340_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12657
                              (let ()
                                (declare (not safe))
                                (cons _exn11340_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12657)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11334_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11334_))
            (let ((_e11337_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11334_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11337_)
                  (macro-uninitialized-thread-exception-procedure _e11337_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12660
                                (let ()
                                  (declare (not safe))
                                  (cons _e11337_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12660)))))
            (if (macro-uninitialized-thread-exception? _exn11334_)
                (macro-uninitialized-thread-exception-procedure _exn11334_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12659
                              (let ()
                                (declare (not safe))
                                (cons _exn11334_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12659)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11330_))
            (let ((_e11332_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11330_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11332_))
            (macro-unknown-keyword-argument-exception? _exn11330_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11326_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11326_))
            (let ((_e11328_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11326_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11328_)
                  (macro-unknown-keyword-argument-exception-arguments _e11328_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12662
                                (let ()
                                  (declare (not safe))
                                  (cons _e11328_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12662)))))
            (if (macro-unknown-keyword-argument-exception? _exn11326_)
                (macro-unknown-keyword-argument-exception-arguments _exn11326_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12661
                              (let ()
                                (declare (not safe))
                                (cons _exn11326_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12661)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11320_))
            (let ((_e11323_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11320_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11323_)
                  (macro-unknown-keyword-argument-exception-procedure _e11323_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12664
                                (let ()
                                  (declare (not safe))
                                  (cons _e11323_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12664)))))
            (if (macro-unknown-keyword-argument-exception? _exn11320_)
                (macro-unknown-keyword-argument-exception-procedure _exn11320_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12663
                              (let ()
                                (declare (not safe))
                                (cons _exn11320_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12663)))))))
    (define unterminated-process-exception?
      (lambda (_exn11316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11316_))
            (let ((_e11318_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11316_ 'exception))))
              (macro-unterminated-process-exception? _e11318_))
            (macro-unterminated-process-exception? _exn11316_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11312_))
            (let ((_e11314_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11312_ 'exception))))
              (if (macro-unterminated-process-exception? _e11314_)
                  (macro-unterminated-process-exception-arguments _e11314_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12666
                                (let ()
                                  (declare (not safe))
                                  (cons _e11314_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12666)))))
            (if (macro-unterminated-process-exception? _exn11312_)
                (macro-unterminated-process-exception-arguments _exn11312_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12665
                              (let ()
                                (declare (not safe))
                                (cons _exn11312_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12665)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11306_))
            (let ((_e11309_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11306_ 'exception))))
              (if (macro-unterminated-process-exception? _e11309_)
                  (macro-unterminated-process-exception-procedure _e11309_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12668
                                (let ()
                                  (declare (not safe))
                                  (cons _e11309_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12668)))))
            (if (macro-unterminated-process-exception? _exn11306_)
                (macro-unterminated-process-exception-procedure _exn11306_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12667
                              (let ()
                                (declare (not safe))
                                (cons _exn11306_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12667)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11302_))
            (let ((_e11304_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11302_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11304_))
            (macro-wrong-number-of-arguments-exception? _exn11302_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11298_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11298_))
            (let ((_e11300_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11298_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11300_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11300_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12670
                                (let ()
                                  (declare (not safe))
                                  (cons _e11300_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12670)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11298_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11298_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12669
                              (let ()
                                (declare (not safe))
                                (cons _exn11298_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12669)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11292_))
            (let ((_e11295_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11292_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11295_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11295_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12672
                                (let ()
                                  (declare (not safe))
                                  (cons _e11295_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12672)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11292_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11292_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12671
                              (let ()
                                (declare (not safe))
                                (cons _exn11292_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12671)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11288_))
            (let ((_e11290_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11288_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11290_))
            (macro-wrong-number-of-values-exception? _exn11288_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11284_))
            (let ((_e11286_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11284_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11286_)
                  (macro-wrong-number-of-values-exception-code _e11286_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12674
                                (let ()
                                  (declare (not safe))
                                  (cons _e11286_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12674)))))
            (if (macro-wrong-number-of-values-exception? _exn11284_)
                (macro-wrong-number-of-values-exception-code _exn11284_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12673
                              (let ()
                                (declare (not safe))
                                (cons _exn11284_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12673)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11280_))
            (let ((_e11282_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11280_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11282_)
                  (macro-wrong-number-of-values-exception-rte _e11282_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12676
                                (let ()
                                  (declare (not safe))
                                  (cons _e11282_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12676)))))
            (if (macro-wrong-number-of-values-exception? _exn11280_)
                (macro-wrong-number-of-values-exception-rte _exn11280_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12675
                              (let ()
                                (declare (not safe))
                                (cons _exn11280_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12675)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11274_))
            (let ((_e11277_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11274_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11277_)
                  (macro-wrong-number-of-values-exception-vals _e11277_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12678
                                (let ()
                                  (declare (not safe))
                                  (cons _e11277_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12678)))))
            (if (macro-wrong-number-of-values-exception? _exn11274_)
                (macro-wrong-number-of-values-exception-vals _exn11274_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12677
                              (let ()
                                (declare (not safe))
                                (cons _exn11274_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12677)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11268_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11268_))
            (let ((_e11271_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11268_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11271_))
            (macro-wrong-processor-c-return-exception? _exn11268_))))))
