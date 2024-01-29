(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1706556807)
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
      (lambda _$args12436_
        (apply make-class-instance Exception::t _$args12436_)))
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
      (lambda _$args12433_
        (apply make-class-instance StackTrace::t _$args12433_)))
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
      (let ((__tmp12456
             (let ((__tmp12457
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12457))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12456
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12430_ (apply make-class-instance Error::t _$args12430_)))
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
      (let ((__tmp12458
             (let ((__tmp12459
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12459))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12458
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12427_
        (apply make-class-instance RuntimeException::t _$args12427_)))
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
      (lambda (_exn12422_ _continue12423_)
        (let ((_exn12425_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12422_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12425_ _continue12423_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12418_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12418_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12418_ 'continuation))
                '#!void
                (let ((__tmp12460
                       (lambda (_cont12420_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12418_
                            'continuation
                            _cont12420_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12460)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12418_))))
    (define error
      (lambda (_message12415_ . _irritants12416_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12415_
                  'irritants:
                  _irritants12416_)))))
    (define with-exception-handler
      (lambda (_handler12408_ _thunk12409_)
        (if (let () (declare (not safe)) (procedure? _handler12408_))
            '#!void
            (raise (let ((__tmp12461
                          (let ()
                            (declare (not safe))
                            (cons _handler12408_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12461))))
        (if (let () (declare (not safe)) (procedure? _thunk12409_))
            '#!void
            (raise (let ((__tmp12462
                          (let ()
                            (declare (not safe))
                            (cons _thunk12409_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12462))))
        (let ((__tmp12463
               (lambda (_exn12411_)
                 (let ((_exn12413_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12411_))))
                   (_handler12408_ _exn12413_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12463 _thunk12409_))))
    (define with-catch
      (lambda (_handler12401_ _thunk12402_)
        (if (let () (declare (not safe)) (procedure? _handler12401_))
            '#!void
            (raise (let ((__tmp12464
                          (let ()
                            (declare (not safe))
                            (cons _handler12401_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12464))))
        (if (let () (declare (not safe)) (procedure? _thunk12402_))
            '#!void
            (raise (let ((__tmp12465
                          (let ()
                            (declare (not safe))
                            (cons _thunk12402_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12465))))
        (let ((__tmp12466
               (lambda (_cont12404_)
                 (with-exception-handler
                  (lambda (_exn12406_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12404_
                       _handler12401_
                       _exn12406_)))
                  _thunk12402_))))
          (declare (not safe))
          (##continuation-capture __tmp12466))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12392_)
        (if (or (heap-overflow-exception? _exn12392_)
                (stack-overflow-exception? _exn12392_))
            _exn12392_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12392_))
                _exn12392_
                (if (macro-exception? _exn12392_)
                    (let ((_rte12397_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12392_))))
                      (let ((__tmp12467
                             (lambda (_cont12399_)
                               (let ((__tmp12468
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12399_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12397_
                                  'continuation
                                  __tmp12468)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12467))
                      _rte12397_)
                    _exn12392_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12387_)
        (let ((_$e12389_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12387_))))
          (if _$e12389_ _$e12389_ (error-exception? _obj12387_)))))
    (define error-message
      (lambda (_obj12385_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12385_))
            (let () (declare (not safe)) (slot-ref _obj12385_ 'message))
            (if (error-exception? _obj12385_)
                (error-exception-message _obj12385_)
                '#f))))
    (define error-irritants
      (lambda (_obj12383_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12383_))
            (let () (declare (not safe)) (slot-ref _obj12383_ 'irritants))
            (if (error-exception? _obj12383_)
                (error-exception-parameters _obj12383_)
                '#f))))
    (define error-trace
      (lambda (_obj12381_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12381_))
            (let () (declare (not safe)) (slot-ref _obj12381_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12363_ _port12364_)
        (let ((_$e12366_
               (let ()
                 (declare (not safe))
                 (method-ref _e12363_ 'display-exception))))
          (if _$e12366_
              ((lambda (_f12369_) (_f12369_ _e12363_ _port12364_)) _$e12366_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12363_ _port12364_))))))
    (define display-exception__0
      (lambda (_e12374_)
        (let ((_port12376_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12374_ _port12376_))))
    (define display-exception
      (lambda _g12470_
        (let ((_g12469_ (let () (declare (not safe)) (##length _g12470_))))
          (cond ((let () (declare (not safe)) (##fx= _g12469_ 1))
                 (apply (lambda (_e12374_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12374_)))
                        _g12470_))
                ((let () (declare (not safe)) (##fx= _g12469_ 2))
                 (apply (lambda (_e12378_ _port12379_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12378_ _port12379_)))
                        _g12470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12470_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12352_ _message12353_ . _rest12354_)
        (let ((_message12360_
               (if (let () (declare (not safe)) (string? _message12353_))
                   _message12353_
                   (call-with-output-string
                    '""
                    (lambda (_g1235512357_)
                      (display _message12353_ _g1235512357_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12352_ 'message _message12360_))
          (apply class-instance-init! _self12352_ _rest12354_))))
    (define Error:::init!::specialize
      (lambda (__t12438)
        (let ((__message12439
               (let ((__tmp12440
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12438 'message))))
                 (if __tmp12440
                     (let () (declare (not safe)) (##fx+ __tmp12440 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12352_ _message12353_ . _rest12354_)
            (let ((_message12360_
                   (if (let () (declare (not safe)) (string? _message12353_))
                       _message12353_
                       (call-with-output-string
                        '""
                        (lambda (_g1235512357_)
                          (display _message12353_ _g1235512357_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12352_
                 _message12360_
                 __message12439
                 __t12438
                 '#f))
              (apply class-instance-init! _self12352_ _rest12354_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self12210_ _port12211_)
        (let ((_tmp-port12213_ (open-output-string))
              (_display-error-newline12214_
               (> (output-port-column _port12211_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12213_))
          (let ((__tmp12471
                 (lambda ()
                   (if _display-error-newline12214_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12217_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12210_ 'where))))
                     (if _$e12217_ (display _$e12217_) (display '"?")))
                   (let ((__tmp12472
                          (let ((__tmp12473
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12210_))))
                            (declare (not safe))
                            (##type-name __tmp12473))))
                     (declare (not safe))
                     (display* '" [" __tmp12472 '"]: "))
                   (let ((__tmp12474
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12210_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12474))
                   (let ((_irritants12220_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12210_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12220_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12222_)
                              (write _obj12222_)
                              (write-char '#\space))
                            _irritants12220_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self12210_))
                            (dump-stack-trace?))
                       (let ((_cont1222312225_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12210_ 'continuation))))
                         (if _cont1222312225_
                             (let ((_cont12228_ _cont1222312225_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12228_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12471
             current-output-port
             _tmp-port12213_))
          (let ((__tmp12475 (get-output-string _tmp-port12213_)))
            (declare (not safe))
            (##write-string __tmp12475 _port12211_)))))
    (define Error::display-exception::specialize
      (lambda (__t12441)
        (let ((__irritants12442
               (let ((__tmp12446
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12441 'irritants))))
                 (if __tmp12446
                     (let () (declare (not safe)) (##fx+ __tmp12446 '1))
                     (error '"Unknown slot" 'irritants))))
              (__where12443
               (let ((__tmp12447
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12441 'where))))
                 (if __tmp12447
                     (let () (declare (not safe)) (##fx+ __tmp12447 '1))
                     (error '"Unknown slot" 'where))))
              (__message12444
               (let ((__tmp12448
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12441 'message))))
                 (if __tmp12448
                     (let () (declare (not safe)) (##fx+ __tmp12448 '1))
                     (error '"Unknown slot" 'message))))
              (__continuation12445
               (let ((__tmp12449
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12441 'continuation))))
                 (if __tmp12449
                     (let () (declare (not safe)) (##fx+ __tmp12449 '1))
                     (error '"Unknown slot" 'continuation))))
              (__class12450
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12441))))
          (lambda (_self12210_ _port12211_)
            (let ((_tmp-port12213_ (open-output-string))
                  (_display-error-newline12214_
                   (> (output-port-column _port12211_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12213_))
              (let ((__tmp12476
                     (lambda ()
                       (if _display-error-newline12214_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12217_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12210_
                                 __where12443
                                 __t12441
                                 '#f))))
                         (if _$e12217_ (display _$e12217_) (display '"?")))
                       (let ((__tmp12477
                              (let ((__tmp12478
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12210_))))
                                (declare (not safe))
                                (##type-name __tmp12478))))
                         (declare (not safe))
                         (display* '" [" __tmp12477 '"]: "))
                       (let ((__tmp12479
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12210_
                                 __message12444
                                 __t12441
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12479))
                       (let ((_irritants12220_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12210_
                                 __irritants12442
                                 __t12441
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12220_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12222_)
                                  (write _obj12222_)
                                  (write-char '#\space))
                                _irritants12220_)
                               (newline))))
                       (if (and __class12450 (dump-stack-trace?))
                           (let ((_cont1222312225_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12210_
                                     __continuation12445
                                     __t12441
                                     '#f))))
                             (if _cont1222312225_
                                 (let ((_cont12228_ _cont1222312225_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12228_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12476
                 current-output-port
                 _tmp-port12213_))
              (let ((__tmp12480 (get-output-string _tmp-port12213_)))
                (declare (not safe))
                (##write-string __tmp12480 _port12211_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12077_ _port12078_)
        (let ((_tmp-port12080_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12080_))
          (let ((__tmp12481
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12077_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12481 _tmp-port12080_))
          (let ((_cont1208112083_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12077_ 'continuation))))
            (if _cont1208112083_
                (let ((_cont12086_ _cont1208112083_))
                  (display '"--- continuation backtrace:" _tmp-port12080_)
                  (newline _tmp-port12080_)
                  (display-continuation-backtrace _cont12086_ _tmp-port12080_))
                '#f))
          (let ((__tmp12482 (get-output-string _tmp-port12080_)))
            (declare (not safe))
            (##write-string __tmp12482 _port12078_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12451)
        (let ((__exception12452
               (let ((__tmp12454
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12451 'exception))))
                 (if __tmp12454
                     (let () (declare (not safe)) (##fx+ __tmp12454 '1))
                     (error '"Unknown slot" 'exception))))
              (__continuation12453
               (let ((__tmp12455
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12451 'continuation))))
                 (if __tmp12455
                     (let () (declare (not safe)) (##fx+ __tmp12455 '1))
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self12077_ _port12078_)
            (let ((_tmp-port12080_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12080_))
              (let ((__tmp12483
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12077_
                        __exception12452
                        __t12451
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12483 _tmp-port12080_))
              (let ((_cont1208112083_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12077_
                        __continuation12453
                        __t12451
                        '#f))))
                (if _cont1208112083_
                    (let ((_cont12086_ _cont1208112083_))
                      (display '"--- continuation backtrace:" _tmp-port12080_)
                      (newline _tmp-port12080_)
                      (display-continuation-backtrace
                       _cont12086_
                       _tmp-port12080_))
                    '#f))
              (let ((__tmp12484 (get-output-string _tmp-port12080_)))
                (declare (not safe))
                (##write-string __tmp12484 _port12078_)))))))
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
      (lambda (_port11949_)
        (if (macro-character-port? _port11949_)
            (let ((_old-width11951_
                   (macro-character-port-output-width _port11949_)))
              (macro-character-port-output-width-set!
               _port11949_
               (lambda (_port11953_) '256))
              _old-width11951_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11946_ _old-width11947_)
        (if (macro-character-port? _port11946_)
            (macro-character-port-output-width-set!
             _port11946_
             _old-width11947_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11944_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11944_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11938_))
            (let ((_e11941_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11938_ 'exception))))
              (macro-abandoned-mutex-exception? _e11941_))
            (macro-abandoned-mutex-exception? _exn11938_))))
    (define cfun-conversion-exception?
      (lambda (_exn11934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11934_))
            (let ((_e11936_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11934_ 'exception))))
              (macro-cfun-conversion-exception? _e11936_))
            (macro-cfun-conversion-exception? _exn11934_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11930_))
            (let ((_e11932_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11930_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11932_)
                  (macro-cfun-conversion-exception-arguments _e11932_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12486
                                (let ()
                                  (declare (not safe))
                                  (cons _e11932_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12486)))))
            (if (macro-cfun-conversion-exception? _exn11930_)
                (macro-cfun-conversion-exception-arguments _exn11930_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12485
                              (let ()
                                (declare (not safe))
                                (cons _exn11930_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12485)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11926_))
            (let ((_e11928_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11926_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11928_)
                  (macro-cfun-conversion-exception-code _e11928_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12488
                                (let ()
                                  (declare (not safe))
                                  (cons _e11928_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12488)))))
            (if (macro-cfun-conversion-exception? _exn11926_)
                (macro-cfun-conversion-exception-code _exn11926_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12487
                              (let ()
                                (declare (not safe))
                                (cons _exn11926_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12487)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11922_))
            (let ((_e11924_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11922_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11924_)
                  (macro-cfun-conversion-exception-message _e11924_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12490
                                (let ()
                                  (declare (not safe))
                                  (cons _e11924_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12490)))))
            (if (macro-cfun-conversion-exception? _exn11922_)
                (macro-cfun-conversion-exception-message _exn11922_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12489
                              (let ()
                                (declare (not safe))
                                (cons _exn11922_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12489)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11916_))
            (let ((_e11919_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11916_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11919_)
                  (macro-cfun-conversion-exception-procedure _e11919_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12492
                                (let ()
                                  (declare (not safe))
                                  (cons _e11919_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12492)))))
            (if (macro-cfun-conversion-exception? _exn11916_)
                (macro-cfun-conversion-exception-procedure _exn11916_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12491
                              (let ()
                                (declare (not safe))
                                (cons _exn11916_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12491)))))))
    (define datum-parsing-exception?
      (lambda (_exn11912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11912_))
            (let ((_e11914_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11912_ 'exception))))
              (macro-datum-parsing-exception? _e11914_))
            (macro-datum-parsing-exception? _exn11912_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11908_))
            (let ((_e11910_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11908_ 'exception))))
              (if (macro-datum-parsing-exception? _e11910_)
                  (macro-datum-parsing-exception-kind _e11910_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12494
                                (let ()
                                  (declare (not safe))
                                  (cons _e11910_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12494)))))
            (if (macro-datum-parsing-exception? _exn11908_)
                (macro-datum-parsing-exception-kind _exn11908_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12493
                              (let ()
                                (declare (not safe))
                                (cons _exn11908_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12493)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11904_))
            (let ((_e11906_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11904_ 'exception))))
              (if (macro-datum-parsing-exception? _e11906_)
                  (macro-datum-parsing-exception-parameters _e11906_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12496
                                (let ()
                                  (declare (not safe))
                                  (cons _e11906_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12496)))))
            (if (macro-datum-parsing-exception? _exn11904_)
                (macro-datum-parsing-exception-parameters _exn11904_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12495
                              (let ()
                                (declare (not safe))
                                (cons _exn11904_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12495)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11898_))
            (let ((_e11901_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11898_ 'exception))))
              (if (macro-datum-parsing-exception? _e11901_)
                  (macro-datum-parsing-exception-readenv _e11901_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12498
                                (let ()
                                  (declare (not safe))
                                  (cons _e11901_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12498)))))
            (if (macro-datum-parsing-exception? _exn11898_)
                (macro-datum-parsing-exception-readenv _exn11898_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12497
                              (let ()
                                (declare (not safe))
                                (cons _exn11898_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12497)))))))
    (define deadlock-exception?
      (lambda (_exn11892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11892_))
            (let ((_e11895_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11892_ 'exception))))
              (macro-deadlock-exception? _e11895_))
            (macro-deadlock-exception? _exn11892_))))
    (define divide-by-zero-exception?
      (lambda (_exn11888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11888_))
            (let ((_e11890_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11888_ 'exception))))
              (macro-divide-by-zero-exception? _e11890_))
            (macro-divide-by-zero-exception? _exn11888_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11884_))
            (let ((_e11886_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11884_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11886_)
                  (macro-divide-by-zero-exception-arguments _e11886_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12500
                                (let ()
                                  (declare (not safe))
                                  (cons _e11886_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12500)))))
            (if (macro-divide-by-zero-exception? _exn11884_)
                (macro-divide-by-zero-exception-arguments _exn11884_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12499
                              (let ()
                                (declare (not safe))
                                (cons _exn11884_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12499)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11878_))
            (let ((_e11881_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11878_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11881_)
                  (macro-divide-by-zero-exception-procedure _e11881_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12502
                                (let ()
                                  (declare (not safe))
                                  (cons _e11881_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12502)))))
            (if (macro-divide-by-zero-exception? _exn11878_)
                (macro-divide-by-zero-exception-procedure _exn11878_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12501
                              (let ()
                                (declare (not safe))
                                (cons _exn11878_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12501)))))))
    (define error-exception?
      (lambda (_exn11874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11874_))
            (let ((_e11876_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11874_ 'exception))))
              (macro-error-exception? _e11876_))
            (macro-error-exception? _exn11874_))))
    (define error-exception-message
      (lambda (_exn11870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11870_))
            (let ((_e11872_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11870_ 'exception))))
              (if (macro-error-exception? _e11872_)
                  (macro-error-exception-message _e11872_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12504
                                (let ()
                                  (declare (not safe))
                                  (cons _e11872_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12504)))))
            (if (macro-error-exception? _exn11870_)
                (macro-error-exception-message _exn11870_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12503
                              (let ()
                                (declare (not safe))
                                (cons _exn11870_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12503)))))))
    (define error-exception-parameters
      (lambda (_exn11864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11864_))
            (let ((_e11867_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11864_ 'exception))))
              (if (macro-error-exception? _e11867_)
                  (macro-error-exception-parameters _e11867_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12506
                                (let ()
                                  (declare (not safe))
                                  (cons _e11867_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12506)))))
            (if (macro-error-exception? _exn11864_)
                (macro-error-exception-parameters _exn11864_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12505
                              (let ()
                                (declare (not safe))
                                (cons _exn11864_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12505)))))))
    (define expression-parsing-exception?
      (lambda (_exn11860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11860_))
            (let ((_e11862_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11860_ 'exception))))
              (macro-expression-parsing-exception? _e11862_))
            (macro-expression-parsing-exception? _exn11860_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11856_))
            (let ((_e11858_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11856_ 'exception))))
              (if (macro-expression-parsing-exception? _e11858_)
                  (macro-expression-parsing-exception-kind _e11858_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12508
                                (let ()
                                  (declare (not safe))
                                  (cons _e11858_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12508)))))
            (if (macro-expression-parsing-exception? _exn11856_)
                (macro-expression-parsing-exception-kind _exn11856_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12507
                              (let ()
                                (declare (not safe))
                                (cons _exn11856_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12507)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11852_))
            (let ((_e11854_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11852_ 'exception))))
              (if (macro-expression-parsing-exception? _e11854_)
                  (macro-expression-parsing-exception-parameters _e11854_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12510
                                (let ()
                                  (declare (not safe))
                                  (cons _e11854_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12510)))))
            (if (macro-expression-parsing-exception? _exn11852_)
                (macro-expression-parsing-exception-parameters _exn11852_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12509
                              (let ()
                                (declare (not safe))
                                (cons _exn11852_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12509)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11846_))
            (let ((_e11849_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11846_ 'exception))))
              (if (macro-expression-parsing-exception? _e11849_)
                  (macro-expression-parsing-exception-source _e11849_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12512
                                (let ()
                                  (declare (not safe))
                                  (cons _e11849_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12512)))))
            (if (macro-expression-parsing-exception? _exn11846_)
                (macro-expression-parsing-exception-source _exn11846_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12511
                              (let ()
                                (declare (not safe))
                                (cons _exn11846_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12511)))))))
    (define file-exists-exception?
      (lambda (_exn11842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11842_))
            (let ((_e11844_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11842_ 'exception))))
              (macro-file-exists-exception? _e11844_))
            (macro-file-exists-exception? _exn11842_))))
    (define file-exists-exception-arguments
      (lambda (_exn11838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11838_))
            (let ((_e11840_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11838_ 'exception))))
              (if (macro-file-exists-exception? _e11840_)
                  (macro-file-exists-exception-arguments _e11840_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12514
                                (let ()
                                  (declare (not safe))
                                  (cons _e11840_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12514)))))
            (if (macro-file-exists-exception? _exn11838_)
                (macro-file-exists-exception-arguments _exn11838_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12513
                              (let ()
                                (declare (not safe))
                                (cons _exn11838_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12513)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11832_))
            (let ((_e11835_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11832_ 'exception))))
              (if (macro-file-exists-exception? _e11835_)
                  (macro-file-exists-exception-procedure _e11835_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12516
                                (let ()
                                  (declare (not safe))
                                  (cons _e11835_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12516)))))
            (if (macro-file-exists-exception? _exn11832_)
                (macro-file-exists-exception-procedure _exn11832_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12515
                              (let ()
                                (declare (not safe))
                                (cons _exn11832_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12515)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11828_))
            (let ((_e11830_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11828_ 'exception))))
              (macro-fixnum-overflow-exception? _e11830_))
            (macro-fixnum-overflow-exception? _exn11828_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11824_))
            (let ((_e11826_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11824_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11826_)
                  (macro-fixnum-overflow-exception-arguments _e11826_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12518
                                (let ()
                                  (declare (not safe))
                                  (cons _e11826_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12518)))))
            (if (macro-fixnum-overflow-exception? _exn11824_)
                (macro-fixnum-overflow-exception-arguments _exn11824_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12517
                              (let ()
                                (declare (not safe))
                                (cons _exn11824_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12517)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11818_))
            (let ((_e11821_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11818_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11821_)
                  (macro-fixnum-overflow-exception-procedure _e11821_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12520
                                (let ()
                                  (declare (not safe))
                                  (cons _e11821_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12520)))))
            (if (macro-fixnum-overflow-exception? _exn11818_)
                (macro-fixnum-overflow-exception-procedure _exn11818_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12519
                              (let ()
                                (declare (not safe))
                                (cons _exn11818_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12519)))))))
    (define heap-overflow-exception?
      (lambda (_exn11812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11812_))
            (let ((_e11815_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11812_ 'exception))))
              (macro-heap-overflow-exception? _e11815_))
            (macro-heap-overflow-exception? _exn11812_))))
    (define inactive-thread-exception?
      (lambda (_exn11808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11808_))
            (let ((_e11810_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11808_ 'exception))))
              (macro-inactive-thread-exception? _e11810_))
            (macro-inactive-thread-exception? _exn11808_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11804_))
            (let ((_e11806_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11804_ 'exception))))
              (if (macro-inactive-thread-exception? _e11806_)
                  (macro-inactive-thread-exception-arguments _e11806_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12522
                                (let ()
                                  (declare (not safe))
                                  (cons _e11806_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12522)))))
            (if (macro-inactive-thread-exception? _exn11804_)
                (macro-inactive-thread-exception-arguments _exn11804_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12521
                              (let ()
                                (declare (not safe))
                                (cons _exn11804_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12521)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11798_))
            (let ((_e11801_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11798_ 'exception))))
              (if (macro-inactive-thread-exception? _e11801_)
                  (macro-inactive-thread-exception-procedure _e11801_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12524
                                (let ()
                                  (declare (not safe))
                                  (cons _e11801_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12524)))))
            (if (macro-inactive-thread-exception? _exn11798_)
                (macro-inactive-thread-exception-procedure _exn11798_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12523
                              (let ()
                                (declare (not safe))
                                (cons _exn11798_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12523)))))))
    (define initialized-thread-exception?
      (lambda (_exn11794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11794_))
            (let ((_e11796_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11794_ 'exception))))
              (macro-initialized-thread-exception? _e11796_))
            (macro-initialized-thread-exception? _exn11794_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11790_))
            (let ((_e11792_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11790_ 'exception))))
              (if (macro-initialized-thread-exception? _e11792_)
                  (macro-initialized-thread-exception-arguments _e11792_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12526
                                (let ()
                                  (declare (not safe))
                                  (cons _e11792_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12526)))))
            (if (macro-initialized-thread-exception? _exn11790_)
                (macro-initialized-thread-exception-arguments _exn11790_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12525
                              (let ()
                                (declare (not safe))
                                (cons _exn11790_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12525)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11784_))
            (let ((_e11787_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11784_ 'exception))))
              (if (macro-initialized-thread-exception? _e11787_)
                  (macro-initialized-thread-exception-procedure _e11787_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12528
                                (let ()
                                  (declare (not safe))
                                  (cons _e11787_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12528)))))
            (if (macro-initialized-thread-exception? _exn11784_)
                (macro-initialized-thread-exception-procedure _exn11784_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12527
                              (let ()
                                (declare (not safe))
                                (cons _exn11784_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12527)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11780_))
            (let ((_e11782_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11780_ 'exception))))
              (macro-invalid-hash-number-exception? _e11782_))
            (macro-invalid-hash-number-exception? _exn11780_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11776_))
            (let ((_e11778_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11776_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11778_)
                  (macro-invalid-hash-number-exception-arguments _e11778_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12530
                                (let ()
                                  (declare (not safe))
                                  (cons _e11778_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12530)))))
            (if (macro-invalid-hash-number-exception? _exn11776_)
                (macro-invalid-hash-number-exception-arguments _exn11776_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12529
                              (let ()
                                (declare (not safe))
                                (cons _exn11776_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12529)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11770_))
            (let ((_e11773_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11770_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11773_)
                  (macro-invalid-hash-number-exception-procedure _e11773_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12532
                                (let ()
                                  (declare (not safe))
                                  (cons _e11773_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12532)))))
            (if (macro-invalid-hash-number-exception? _exn11770_)
                (macro-invalid-hash-number-exception-procedure _exn11770_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12531
                              (let ()
                                (declare (not safe))
                                (cons _exn11770_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12531)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11766_))
            (let ((_e11768_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11766_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11768_))
            (macro-invalid-utf8-encoding-exception? _exn11766_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11762_))
            (let ((_e11764_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11762_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11764_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11764_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12534
                                (let ()
                                  (declare (not safe))
                                  (cons _e11764_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12534)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11762_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11762_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12533
                              (let ()
                                (declare (not safe))
                                (cons _exn11762_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12533)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11756_))
            (let ((_e11759_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11756_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11759_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11759_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12536
                                (let ()
                                  (declare (not safe))
                                  (cons _e11759_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12536)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11756_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11756_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12535
                              (let ()
                                (declare (not safe))
                                (cons _exn11756_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12535)))))))
    (define join-timeout-exception?
      (lambda (_exn11752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11752_))
            (let ((_e11754_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11752_ 'exception))))
              (macro-join-timeout-exception? _e11754_))
            (macro-join-timeout-exception? _exn11752_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11748_))
            (let ((_e11750_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11748_ 'exception))))
              (if (macro-join-timeout-exception? _e11750_)
                  (macro-join-timeout-exception-arguments _e11750_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12538
                                (let ()
                                  (declare (not safe))
                                  (cons _e11750_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12538)))))
            (if (macro-join-timeout-exception? _exn11748_)
                (macro-join-timeout-exception-arguments _exn11748_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12537
                              (let ()
                                (declare (not safe))
                                (cons _exn11748_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12537)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11742_))
            (let ((_e11745_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11742_ 'exception))))
              (if (macro-join-timeout-exception? _e11745_)
                  (macro-join-timeout-exception-procedure _e11745_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12540
                                (let ()
                                  (declare (not safe))
                                  (cons _e11745_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12540)))))
            (if (macro-join-timeout-exception? _exn11742_)
                (macro-join-timeout-exception-procedure _exn11742_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12539
                              (let ()
                                (declare (not safe))
                                (cons _exn11742_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12539)))))))
    (define keyword-expected-exception?
      (lambda (_exn11738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11738_))
            (let ((_e11740_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11738_ 'exception))))
              (macro-keyword-expected-exception? _e11740_))
            (macro-keyword-expected-exception? _exn11738_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11734_))
            (let ((_e11736_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11734_ 'exception))))
              (if (macro-keyword-expected-exception? _e11736_)
                  (macro-keyword-expected-exception-arguments _e11736_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12542
                                (let ()
                                  (declare (not safe))
                                  (cons _e11736_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12542)))))
            (if (macro-keyword-expected-exception? _exn11734_)
                (macro-keyword-expected-exception-arguments _exn11734_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12541
                              (let ()
                                (declare (not safe))
                                (cons _exn11734_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12541)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11728_))
            (let ((_e11731_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11728_ 'exception))))
              (if (macro-keyword-expected-exception? _e11731_)
                  (macro-keyword-expected-exception-procedure _e11731_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12544
                                (let ()
                                  (declare (not safe))
                                  (cons _e11731_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12544)))))
            (if (macro-keyword-expected-exception? _exn11728_)
                (macro-keyword-expected-exception-procedure _exn11728_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12543
                              (let ()
                                (declare (not safe))
                                (cons _exn11728_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12543)))))))
    (define length-mismatch-exception?
      (lambda (_exn11724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11724_))
            (let ((_e11726_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11724_ 'exception))))
              (macro-length-mismatch-exception? _e11726_))
            (macro-length-mismatch-exception? _exn11724_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11720_))
            (let ((_e11722_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11720_ 'exception))))
              (if (macro-length-mismatch-exception? _e11722_)
                  (macro-length-mismatch-exception-arg-id _e11722_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12546
                                (let ()
                                  (declare (not safe))
                                  (cons _e11722_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12546)))))
            (if (macro-length-mismatch-exception? _exn11720_)
                (macro-length-mismatch-exception-arg-id _exn11720_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12545
                              (let ()
                                (declare (not safe))
                                (cons _exn11720_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12545)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11716_))
            (let ((_e11718_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11716_ 'exception))))
              (if (macro-length-mismatch-exception? _e11718_)
                  (macro-length-mismatch-exception-arguments _e11718_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12548
                                (let ()
                                  (declare (not safe))
                                  (cons _e11718_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12548)))))
            (if (macro-length-mismatch-exception? _exn11716_)
                (macro-length-mismatch-exception-arguments _exn11716_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12547
                              (let ()
                                (declare (not safe))
                                (cons _exn11716_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12547)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11710_))
            (let ((_e11713_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11710_ 'exception))))
              (if (macro-length-mismatch-exception? _e11713_)
                  (macro-length-mismatch-exception-procedure _e11713_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12550
                                (let ()
                                  (declare (not safe))
                                  (cons _e11713_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12550)))))
            (if (macro-length-mismatch-exception? _exn11710_)
                (macro-length-mismatch-exception-procedure _exn11710_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12549
                              (let ()
                                (declare (not safe))
                                (cons _exn11710_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12549)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11706_))
            (let ((_e11708_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11706_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11708_))
            (macro-mailbox-receive-timeout-exception? _exn11706_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11702_))
            (let ((_e11704_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11702_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11704_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11704_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12552
                                (let ()
                                  (declare (not safe))
                                  (cons _e11704_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12552)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11702_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11702_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12551
                              (let ()
                                (declare (not safe))
                                (cons _exn11702_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12551)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11696_))
            (let ((_e11699_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11696_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11699_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11699_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12554
                                (let ()
                                  (declare (not safe))
                                  (cons _e11699_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12554)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11696_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11696_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12553
                              (let ()
                                (declare (not safe))
                                (cons _exn11696_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12553)))))))
    (define module-not-found-exception?
      (lambda (_exn11692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11692_))
            (let ((_e11694_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11692_ 'exception))))
              (macro-module-not-found-exception? _e11694_))
            (macro-module-not-found-exception? _exn11692_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11688_))
            (let ((_e11690_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11688_ 'exception))))
              (if (macro-module-not-found-exception? _e11690_)
                  (macro-module-not-found-exception-arguments _e11690_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12556
                                (let ()
                                  (declare (not safe))
                                  (cons _e11690_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12556)))))
            (if (macro-module-not-found-exception? _exn11688_)
                (macro-module-not-found-exception-arguments _exn11688_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12555
                              (let ()
                                (declare (not safe))
                                (cons _exn11688_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12555)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11682_))
            (let ((_e11685_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11682_ 'exception))))
              (if (macro-module-not-found-exception? _e11685_)
                  (macro-module-not-found-exception-procedure _e11685_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12558
                                (let ()
                                  (declare (not safe))
                                  (cons _e11685_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12558)))))
            (if (macro-module-not-found-exception? _exn11682_)
                (macro-module-not-found-exception-procedure _exn11682_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12557
                              (let ()
                                (declare (not safe))
                                (cons _exn11682_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12557)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11676_))
            (let ((_e11679_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11676_ 'exception))))
              (macro-multiple-c-return-exception? _e11679_))
            (macro-multiple-c-return-exception? _exn11676_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11672_))
            (let ((_e11674_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11672_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11674_))
            (macro-no-such-file-or-directory-exception? _exn11672_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11668_))
            (let ((_e11670_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11668_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11670_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11670_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12560
                                (let ()
                                  (declare (not safe))
                                  (cons _e11670_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12560)))))
            (if (macro-no-such-file-or-directory-exception? _exn11668_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11668_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12559
                              (let ()
                                (declare (not safe))
                                (cons _exn11668_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12559)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11662_))
            (let ((_e11665_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11662_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11665_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11665_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12562
                                (let ()
                                  (declare (not safe))
                                  (cons _e11665_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12562)))))
            (if (macro-no-such-file-or-directory-exception? _exn11662_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11662_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12561
                              (let ()
                                (declare (not safe))
                                (cons _exn11662_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12561)))))))
    (define noncontinuable-exception?
      (lambda (_exn11658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11658_))
            (let ((_e11660_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11658_ 'exception))))
              (macro-noncontinuable-exception? _e11660_))
            (macro-noncontinuable-exception? _exn11658_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11652_))
            (let ((_e11655_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11652_ 'exception))))
              (if (macro-noncontinuable-exception? _e11655_)
                  (macro-noncontinuable-exception-reason _e11655_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12564
                                (let ()
                                  (declare (not safe))
                                  (cons _e11655_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12564)))))
            (if (macro-noncontinuable-exception? _exn11652_)
                (macro-noncontinuable-exception-reason _exn11652_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12563
                              (let ()
                                (declare (not safe))
                                (cons _exn11652_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12563)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11648_))
            (let ((_e11650_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11648_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11650_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11648_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11644_))
            (let ((_e11646_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11644_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11646_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11646_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12566
                                (let ()
                                  (declare (not safe))
                                  (cons _e11646_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12566)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11644_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11644_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12565
                              (let ()
                                (declare (not safe))
                                (cons _exn11644_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12565)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11638_))
            (let ((_e11641_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11638_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11641_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11641_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12568
                                (let ()
                                  (declare (not safe))
                                  (cons _e11641_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12568)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11638_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11638_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12567
                              (let ()
                                (declare (not safe))
                                (cons _exn11638_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12567)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11634_))
            (let ((_e11636_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11634_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11636_))
            (macro-nonprocedure-operator-exception? _exn11634_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11630_))
            (let ((_e11632_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11630_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11632_)
                  (macro-nonprocedure-operator-exception-arguments _e11632_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12570
                                (let ()
                                  (declare (not safe))
                                  (cons _e11632_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12570)))))
            (if (macro-nonprocedure-operator-exception? _exn11630_)
                (macro-nonprocedure-operator-exception-arguments _exn11630_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12569
                              (let ()
                                (declare (not safe))
                                (cons _exn11630_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12569)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11626_))
            (let ((_e11628_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11626_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11628_)
                  (macro-nonprocedure-operator-exception-code _e11628_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12572
                                (let ()
                                  (declare (not safe))
                                  (cons _e11628_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12572)))))
            (if (macro-nonprocedure-operator-exception? _exn11626_)
                (macro-nonprocedure-operator-exception-code _exn11626_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12571
                              (let ()
                                (declare (not safe))
                                (cons _exn11626_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12571)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11622_))
            (let ((_e11624_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11622_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11624_)
                  (macro-nonprocedure-operator-exception-operator _e11624_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12574
                                (let ()
                                  (declare (not safe))
                                  (cons _e11624_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12574)))))
            (if (macro-nonprocedure-operator-exception? _exn11622_)
                (macro-nonprocedure-operator-exception-operator _exn11622_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12573
                              (let ()
                                (declare (not safe))
                                (cons _exn11622_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12573)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11616_))
            (let ((_e11619_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11616_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11619_)
                  (macro-nonprocedure-operator-exception-rte _e11619_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12576
                                (let ()
                                  (declare (not safe))
                                  (cons _e11619_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12576)))))
            (if (macro-nonprocedure-operator-exception? _exn11616_)
                (macro-nonprocedure-operator-exception-rte _exn11616_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12575
                              (let ()
                                (declare (not safe))
                                (cons _exn11616_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12575)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11612_))
            (let ((_e11614_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11612_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11614_))
            (macro-not-in-compilation-context-exception? _exn11612_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11608_))
            (let ((_e11610_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11608_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11610_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11610_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12578
                                (let ()
                                  (declare (not safe))
                                  (cons _e11610_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12578)))))
            (if (macro-not-in-compilation-context-exception? _exn11608_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11608_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12577
                              (let ()
                                (declare (not safe))
                                (cons _exn11608_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12577)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11602_))
            (let ((_e11605_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11602_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11605_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11605_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12580
                                (let ()
                                  (declare (not safe))
                                  (cons _e11605_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12580)))))
            (if (macro-not-in-compilation-context-exception? _exn11602_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11602_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12579
                              (let ()
                                (declare (not safe))
                                (cons _exn11602_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12579)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11598_))
            (let ((_e11600_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11598_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11600_))
            (macro-number-of-arguments-limit-exception? _exn11598_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11594_))
            (let ((_e11596_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11594_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11596_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11596_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12582
                                (let ()
                                  (declare (not safe))
                                  (cons _e11596_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12582)))))
            (if (macro-number-of-arguments-limit-exception? _exn11594_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11594_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12581
                              (let ()
                                (declare (not safe))
                                (cons _exn11594_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12581)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11588_))
            (let ((_e11591_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11588_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11591_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11591_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12584
                                (let ()
                                  (declare (not safe))
                                  (cons _e11591_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12584)))))
            (if (macro-number-of-arguments-limit-exception? _exn11588_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11588_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12583
                              (let ()
                                (declare (not safe))
                                (cons _exn11588_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12583)))))))
    (define os-exception?
      (lambda (_exn11584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11584_))
            (let ((_e11586_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11584_ 'exception))))
              (macro-os-exception? _e11586_))
            (macro-os-exception? _exn11584_))))
    (define os-exception-arguments
      (lambda (_exn11580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11580_))
            (let ((_e11582_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11580_ 'exception))))
              (if (macro-os-exception? _e11582_)
                  (macro-os-exception-arguments _e11582_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12586
                                (let ()
                                  (declare (not safe))
                                  (cons _e11582_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12586)))))
            (if (macro-os-exception? _exn11580_)
                (macro-os-exception-arguments _exn11580_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12585
                              (let ()
                                (declare (not safe))
                                (cons _exn11580_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12585)))))))
    (define os-exception-code
      (lambda (_exn11576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11576_))
            (let ((_e11578_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11576_ 'exception))))
              (if (macro-os-exception? _e11578_)
                  (macro-os-exception-code _e11578_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12588
                                (let ()
                                  (declare (not safe))
                                  (cons _e11578_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12588)))))
            (if (macro-os-exception? _exn11576_)
                (macro-os-exception-code _exn11576_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12587
                              (let ()
                                (declare (not safe))
                                (cons _exn11576_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12587)))))))
    (define os-exception-message
      (lambda (_exn11572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11572_))
            (let ((_e11574_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11572_ 'exception))))
              (if (macro-os-exception? _e11574_)
                  (macro-os-exception-message _e11574_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12590
                                (let ()
                                  (declare (not safe))
                                  (cons _e11574_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12590)))))
            (if (macro-os-exception? _exn11572_)
                (macro-os-exception-message _exn11572_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12589
                              (let ()
                                (declare (not safe))
                                (cons _exn11572_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12589)))))))
    (define os-exception-procedure
      (lambda (_exn11566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11566_))
            (let ((_e11569_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11566_ 'exception))))
              (if (macro-os-exception? _e11569_)
                  (macro-os-exception-procedure _e11569_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12592
                                (let ()
                                  (declare (not safe))
                                  (cons _e11569_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12592)))))
            (if (macro-os-exception? _exn11566_)
                (macro-os-exception-procedure _exn11566_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12591
                              (let ()
                                (declare (not safe))
                                (cons _exn11566_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12591)))))))
    (define permission-denied-exception?
      (lambda (_exn11562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11562_))
            (let ((_e11564_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11562_ 'exception))))
              (macro-permission-denied-exception? _e11564_))
            (macro-permission-denied-exception? _exn11562_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11558_))
            (let ((_e11560_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11558_ 'exception))))
              (if (macro-permission-denied-exception? _e11560_)
                  (macro-permission-denied-exception-arguments _e11560_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12594
                                (let ()
                                  (declare (not safe))
                                  (cons _e11560_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12594)))))
            (if (macro-permission-denied-exception? _exn11558_)
                (macro-permission-denied-exception-arguments _exn11558_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12593
                              (let ()
                                (declare (not safe))
                                (cons _exn11558_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12593)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11552_))
            (let ((_e11555_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11552_ 'exception))))
              (if (macro-permission-denied-exception? _e11555_)
                  (macro-permission-denied-exception-procedure _e11555_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12596
                                (let ()
                                  (declare (not safe))
                                  (cons _e11555_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12596)))))
            (if (macro-permission-denied-exception? _exn11552_)
                (macro-permission-denied-exception-procedure _exn11552_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12595
                              (let ()
                                (declare (not safe))
                                (cons _exn11552_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12595)))))))
    (define range-exception?
      (lambda (_exn11548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11548_))
            (let ((_e11550_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11548_ 'exception))))
              (macro-range-exception? _e11550_))
            (macro-range-exception? _exn11548_))))
    (define range-exception-arg-id
      (lambda (_exn11544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11544_))
            (let ((_e11546_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11544_ 'exception))))
              (if (macro-range-exception? _e11546_)
                  (macro-range-exception-arg-id _e11546_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12598
                                (let ()
                                  (declare (not safe))
                                  (cons _e11546_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12598)))))
            (if (macro-range-exception? _exn11544_)
                (macro-range-exception-arg-id _exn11544_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12597
                              (let ()
                                (declare (not safe))
                                (cons _exn11544_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12597)))))))
    (define range-exception-arguments
      (lambda (_exn11540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11540_))
            (let ((_e11542_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11540_ 'exception))))
              (if (macro-range-exception? _e11542_)
                  (macro-range-exception-arguments _e11542_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12600
                                (let ()
                                  (declare (not safe))
                                  (cons _e11542_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12600)))))
            (if (macro-range-exception? _exn11540_)
                (macro-range-exception-arguments _exn11540_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12599
                              (let ()
                                (declare (not safe))
                                (cons _exn11540_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12599)))))))
    (define range-exception-procedure
      (lambda (_exn11534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11534_))
            (let ((_e11537_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11534_ 'exception))))
              (if (macro-range-exception? _e11537_)
                  (macro-range-exception-procedure _e11537_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12602
                                (let ()
                                  (declare (not safe))
                                  (cons _e11537_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12602)))))
            (if (macro-range-exception? _exn11534_)
                (macro-range-exception-procedure _exn11534_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12601
                              (let ()
                                (declare (not safe))
                                (cons _exn11534_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12601)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11530_))
            (let ((_e11532_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11530_ 'exception))))
              (macro-rpc-remote-error-exception? _e11532_))
            (macro-rpc-remote-error-exception? _exn11530_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11526_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11526_))
            (let ((_e11528_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11526_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11528_)
                  (macro-rpc-remote-error-exception-arguments _e11528_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12604
                                (let ()
                                  (declare (not safe))
                                  (cons _e11528_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12604)))))
            (if (macro-rpc-remote-error-exception? _exn11526_)
                (macro-rpc-remote-error-exception-arguments _exn11526_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12603
                              (let ()
                                (declare (not safe))
                                (cons _exn11526_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12603)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11522_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11522_))
            (let ((_e11524_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11522_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11524_)
                  (macro-rpc-remote-error-exception-message _e11524_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12606
                                (let ()
                                  (declare (not safe))
                                  (cons _e11524_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12606)))))
            (if (macro-rpc-remote-error-exception? _exn11522_)
                (macro-rpc-remote-error-exception-message _exn11522_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12605
                              (let ()
                                (declare (not safe))
                                (cons _exn11522_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12605)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11516_))
            (let ((_e11519_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11516_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11519_)
                  (macro-rpc-remote-error-exception-procedure _e11519_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12608
                                (let ()
                                  (declare (not safe))
                                  (cons _e11519_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12608)))))
            (if (macro-rpc-remote-error-exception? _exn11516_)
                (macro-rpc-remote-error-exception-procedure _exn11516_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12607
                              (let ()
                                (declare (not safe))
                                (cons _exn11516_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12607)))))))
    (define scheduler-exception?
      (lambda (_exn11512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11512_))
            (let ((_e11514_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11512_ 'exception))))
              (macro-scheduler-exception? _e11514_))
            (macro-scheduler-exception? _exn11512_))))
    (define scheduler-exception-reason
      (lambda (_exn11506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11506_))
            (let ((_e11509_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11506_ 'exception))))
              (if (macro-scheduler-exception? _e11509_)
                  (macro-scheduler-exception-reason _e11509_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12610
                                (let ()
                                  (declare (not safe))
                                  (cons _e11509_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12610)))))
            (if (macro-scheduler-exception? _exn11506_)
                (macro-scheduler-exception-reason _exn11506_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12609
                              (let ()
                                (declare (not safe))
                                (cons _exn11506_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12609)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11502_))
            (let ((_e11504_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11502_ 'exception))))
              (macro-sfun-conversion-exception? _e11504_))
            (macro-sfun-conversion-exception? _exn11502_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11498_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11498_))
            (let ((_e11500_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11498_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11500_)
                  (macro-sfun-conversion-exception-arguments _e11500_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12612
                                (let ()
                                  (declare (not safe))
                                  (cons _e11500_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12612)))))
            (if (macro-sfun-conversion-exception? _exn11498_)
                (macro-sfun-conversion-exception-arguments _exn11498_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12611
                              (let ()
                                (declare (not safe))
                                (cons _exn11498_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12611)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11494_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11494_))
            (let ((_e11496_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11494_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11496_)
                  (macro-sfun-conversion-exception-code _e11496_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12614
                                (let ()
                                  (declare (not safe))
                                  (cons _e11496_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12614)))))
            (if (macro-sfun-conversion-exception? _exn11494_)
                (macro-sfun-conversion-exception-code _exn11494_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12613
                              (let ()
                                (declare (not safe))
                                (cons _exn11494_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12613)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11490_))
            (let ((_e11492_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11490_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11492_)
                  (macro-sfun-conversion-exception-message _e11492_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12616
                                (let ()
                                  (declare (not safe))
                                  (cons _e11492_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12616)))))
            (if (macro-sfun-conversion-exception? _exn11490_)
                (macro-sfun-conversion-exception-message _exn11490_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12615
                              (let ()
                                (declare (not safe))
                                (cons _exn11490_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12615)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11484_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11484_))
            (let ((_e11487_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11484_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11487_)
                  (macro-sfun-conversion-exception-procedure _e11487_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12618
                                (let ()
                                  (declare (not safe))
                                  (cons _e11487_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12618)))))
            (if (macro-sfun-conversion-exception? _exn11484_)
                (macro-sfun-conversion-exception-procedure _exn11484_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12617
                              (let ()
                                (declare (not safe))
                                (cons _exn11484_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12617)))))))
    (define stack-overflow-exception?
      (lambda (_exn11478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11478_))
            (let ((_e11481_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11478_ 'exception))))
              (macro-stack-overflow-exception? _e11481_))
            (macro-stack-overflow-exception? _exn11478_))))
    (define started-thread-exception?
      (lambda (_exn11474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11474_))
            (let ((_e11476_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11474_ 'exception))))
              (macro-started-thread-exception? _e11476_))
            (macro-started-thread-exception? _exn11474_))))
    (define started-thread-exception-arguments
      (lambda (_exn11470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11470_))
            (let ((_e11472_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11470_ 'exception))))
              (if (macro-started-thread-exception? _e11472_)
                  (macro-started-thread-exception-arguments _e11472_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12620
                                (let ()
                                  (declare (not safe))
                                  (cons _e11472_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12620)))))
            (if (macro-started-thread-exception? _exn11470_)
                (macro-started-thread-exception-arguments _exn11470_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12619
                              (let ()
                                (declare (not safe))
                                (cons _exn11470_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12619)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11464_))
            (let ((_e11467_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11464_ 'exception))))
              (if (macro-started-thread-exception? _e11467_)
                  (macro-started-thread-exception-procedure _e11467_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12622
                                (let ()
                                  (declare (not safe))
                                  (cons _e11467_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12622)))))
            (if (macro-started-thread-exception? _exn11464_)
                (macro-started-thread-exception-procedure _exn11464_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12621
                              (let ()
                                (declare (not safe))
                                (cons _exn11464_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12621)))))))
    (define terminated-thread-exception?
      (lambda (_exn11460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11460_))
            (let ((_e11462_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11460_ 'exception))))
              (macro-terminated-thread-exception? _e11462_))
            (macro-terminated-thread-exception? _exn11460_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11456_))
            (let ((_e11458_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11456_ 'exception))))
              (if (macro-terminated-thread-exception? _e11458_)
                  (macro-terminated-thread-exception-arguments _e11458_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12624
                                (let ()
                                  (declare (not safe))
                                  (cons _e11458_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12624)))))
            (if (macro-terminated-thread-exception? _exn11456_)
                (macro-terminated-thread-exception-arguments _exn11456_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12623
                              (let ()
                                (declare (not safe))
                                (cons _exn11456_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12623)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11450_))
            (let ((_e11453_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11450_ 'exception))))
              (if (macro-terminated-thread-exception? _e11453_)
                  (macro-terminated-thread-exception-procedure _e11453_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12626
                                (let ()
                                  (declare (not safe))
                                  (cons _e11453_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12626)))))
            (if (macro-terminated-thread-exception? _exn11450_)
                (macro-terminated-thread-exception-procedure _exn11450_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12625
                              (let ()
                                (declare (not safe))
                                (cons _exn11450_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12625)))))))
    (define type-exception?
      (lambda (_exn11446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11446_))
            (let ((_e11448_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11446_ 'exception))))
              (macro-type-exception? _e11448_))
            (macro-type-exception? _exn11446_))))
    (define type-exception-arg-id
      (lambda (_exn11442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11442_))
            (let ((_e11444_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11442_ 'exception))))
              (if (macro-type-exception? _e11444_)
                  (macro-type-exception-arg-id _e11444_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12628
                                (let ()
                                  (declare (not safe))
                                  (cons _e11444_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12628)))))
            (if (macro-type-exception? _exn11442_)
                (macro-type-exception-arg-id _exn11442_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12627
                              (let ()
                                (declare (not safe))
                                (cons _exn11442_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12627)))))))
    (define type-exception-arguments
      (lambda (_exn11438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11438_))
            (let ((_e11440_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11438_ 'exception))))
              (if (macro-type-exception? _e11440_)
                  (macro-type-exception-arguments _e11440_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12630
                                (let ()
                                  (declare (not safe))
                                  (cons _e11440_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12630)))))
            (if (macro-type-exception? _exn11438_)
                (macro-type-exception-arguments _exn11438_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12629
                              (let ()
                                (declare (not safe))
                                (cons _exn11438_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12629)))))))
    (define type-exception-procedure
      (lambda (_exn11434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11434_))
            (let ((_e11436_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11434_ 'exception))))
              (if (macro-type-exception? _e11436_)
                  (macro-type-exception-procedure _e11436_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12632
                                (let ()
                                  (declare (not safe))
                                  (cons _e11436_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12632)))))
            (if (macro-type-exception? _exn11434_)
                (macro-type-exception-procedure _exn11434_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12631
                              (let ()
                                (declare (not safe))
                                (cons _exn11434_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12631)))))))
    (define type-exception-type-id
      (lambda (_exn11428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11428_))
            (let ((_e11431_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11428_ 'exception))))
              (if (macro-type-exception? _e11431_)
                  (macro-type-exception-type-id _e11431_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12634
                                (let ()
                                  (declare (not safe))
                                  (cons _e11431_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12634)))))
            (if (macro-type-exception? _exn11428_)
                (macro-type-exception-type-id _exn11428_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12633
                              (let ()
                                (declare (not safe))
                                (cons _exn11428_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12633)))))))
    (define unbound-global-exception?
      (lambda (_exn11424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11424_))
            (let ((_e11426_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11424_ 'exception))))
              (macro-unbound-global-exception? _e11426_))
            (macro-unbound-global-exception? _exn11424_))))
    (define unbound-global-exception-code
      (lambda (_exn11420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11420_))
            (let ((_e11422_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11420_ 'exception))))
              (if (macro-unbound-global-exception? _e11422_)
                  (macro-unbound-global-exception-code _e11422_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12636
                                (let ()
                                  (declare (not safe))
                                  (cons _e11422_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12636)))))
            (if (macro-unbound-global-exception? _exn11420_)
                (macro-unbound-global-exception-code _exn11420_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12635
                              (let ()
                                (declare (not safe))
                                (cons _exn11420_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12635)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11416_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11416_))
            (let ((_e11418_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11416_ 'exception))))
              (if (macro-unbound-global-exception? _e11418_)
                  (macro-unbound-global-exception-rte _e11418_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12638
                                (let ()
                                  (declare (not safe))
                                  (cons _e11418_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12638)))))
            (if (macro-unbound-global-exception? _exn11416_)
                (macro-unbound-global-exception-rte _exn11416_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12637
                              (let ()
                                (declare (not safe))
                                (cons _exn11416_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12637)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11410_))
            (let ((_e11413_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11410_ 'exception))))
              (if (macro-unbound-global-exception? _e11413_)
                  (macro-unbound-global-exception-variable _e11413_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12640
                                (let ()
                                  (declare (not safe))
                                  (cons _e11413_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12640)))))
            (if (macro-unbound-global-exception? _exn11410_)
                (macro-unbound-global-exception-variable _exn11410_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12639
                              (let ()
                                (declare (not safe))
                                (cons _exn11410_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12639)))))))
    (define unbound-key-exception?
      (lambda (_exn11406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11406_))
            (let ((_e11408_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11406_ 'exception))))
              (macro-unbound-key-exception? _e11408_))
            (macro-unbound-key-exception? _exn11406_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11402_))
            (let ((_e11404_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11402_ 'exception))))
              (if (macro-unbound-key-exception? _e11404_)
                  (macro-unbound-key-exception-arguments _e11404_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12642
                                (let ()
                                  (declare (not safe))
                                  (cons _e11404_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12642)))))
            (if (macro-unbound-key-exception? _exn11402_)
                (macro-unbound-key-exception-arguments _exn11402_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12641
                              (let ()
                                (declare (not safe))
                                (cons _exn11402_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12641)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11396_))
            (let ((_e11399_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11396_ 'exception))))
              (if (macro-unbound-key-exception? _e11399_)
                  (macro-unbound-key-exception-procedure _e11399_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12644
                                (let ()
                                  (declare (not safe))
                                  (cons _e11399_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12644)))))
            (if (macro-unbound-key-exception? _exn11396_)
                (macro-unbound-key-exception-procedure _exn11396_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12643
                              (let ()
                                (declare (not safe))
                                (cons _exn11396_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12643)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11392_))
            (let ((_e11394_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11392_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11394_))
            (macro-unbound-os-environment-variable-exception? _exn11392_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11388_))
            (let ((_e11390_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11388_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11390_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11390_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12646
                                (let ()
                                  (declare (not safe))
                                  (cons _e11390_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12646)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11388_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11388_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12645
                              (let ()
                                (declare (not safe))
                                (cons _exn11388_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12645)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11382_))
            (let ((_e11385_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11382_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11385_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11385_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12648
                                (let ()
                                  (declare (not safe))
                                  (cons _e11385_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12648)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11382_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11382_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12647
                              (let ()
                                (declare (not safe))
                                (cons _exn11382_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12647)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11378_))
            (let ((_e11380_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11378_ 'exception))))
              (macro-unbound-serial-number-exception? _e11380_))
            (macro-unbound-serial-number-exception? _exn11378_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11374_))
            (let ((_e11376_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11374_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11376_)
                  (macro-unbound-serial-number-exception-arguments _e11376_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12650
                                (let ()
                                  (declare (not safe))
                                  (cons _e11376_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12650)))))
            (if (macro-unbound-serial-number-exception? _exn11374_)
                (macro-unbound-serial-number-exception-arguments _exn11374_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12649
                              (let ()
                                (declare (not safe))
                                (cons _exn11374_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12649)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11368_))
            (let ((_e11371_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11368_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11371_)
                  (macro-unbound-serial-number-exception-procedure _e11371_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12652
                                (let ()
                                  (declare (not safe))
                                  (cons _e11371_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12652)))))
            (if (macro-unbound-serial-number-exception? _exn11368_)
                (macro-unbound-serial-number-exception-procedure _exn11368_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12651
                              (let ()
                                (declare (not safe))
                                (cons _exn11368_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12651)))))))
    (define uncaught-exception?
      (lambda (_exn11364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11364_))
            (let ((_e11366_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11364_ 'exception))))
              (macro-uncaught-exception? _e11366_))
            (macro-uncaught-exception? _exn11364_))))
    (define uncaught-exception-arguments
      (lambda (_exn11360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11360_))
            (let ((_e11362_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11360_ 'exception))))
              (if (macro-uncaught-exception? _e11362_)
                  (macro-uncaught-exception-arguments _e11362_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12654
                                (let ()
                                  (declare (not safe))
                                  (cons _e11362_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12654)))))
            (if (macro-uncaught-exception? _exn11360_)
                (macro-uncaught-exception-arguments _exn11360_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12653
                              (let ()
                                (declare (not safe))
                                (cons _exn11360_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12653)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11356_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11356_))
            (let ((_e11358_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11356_ 'exception))))
              (if (macro-uncaught-exception? _e11358_)
                  (macro-uncaught-exception-procedure _e11358_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12656
                                (let ()
                                  (declare (not safe))
                                  (cons _e11358_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12656)))))
            (if (macro-uncaught-exception? _exn11356_)
                (macro-uncaught-exception-procedure _exn11356_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12655
                              (let ()
                                (declare (not safe))
                                (cons _exn11356_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12655)))))))
    (define uncaught-exception-reason
      (lambda (_exn11350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11350_))
            (let ((_e11353_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11350_ 'exception))))
              (if (macro-uncaught-exception? _e11353_)
                  (macro-uncaught-exception-reason _e11353_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12658
                                (let ()
                                  (declare (not safe))
                                  (cons _e11353_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12658)))))
            (if (macro-uncaught-exception? _exn11350_)
                (macro-uncaught-exception-reason _exn11350_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12657
                              (let ()
                                (declare (not safe))
                                (cons _exn11350_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12657)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11346_))
            (let ((_e11348_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11346_ 'exception))))
              (macro-uninitialized-thread-exception? _e11348_))
            (macro-uninitialized-thread-exception? _exn11346_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11342_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11342_))
            (let ((_e11344_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11342_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11344_)
                  (macro-uninitialized-thread-exception-arguments _e11344_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12660
                                (let ()
                                  (declare (not safe))
                                  (cons _e11344_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12660)))))
            (if (macro-uninitialized-thread-exception? _exn11342_)
                (macro-uninitialized-thread-exception-arguments _exn11342_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12659
                              (let ()
                                (declare (not safe))
                                (cons _exn11342_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12659)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11336_))
            (let ((_e11339_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11336_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11339_)
                  (macro-uninitialized-thread-exception-procedure _e11339_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12662
                                (let ()
                                  (declare (not safe))
                                  (cons _e11339_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12662)))))
            (if (macro-uninitialized-thread-exception? _exn11336_)
                (macro-uninitialized-thread-exception-procedure _exn11336_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12661
                              (let ()
                                (declare (not safe))
                                (cons _exn11336_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12661)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11332_))
            (let ((_e11334_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11332_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11334_))
            (macro-unknown-keyword-argument-exception? _exn11332_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11328_))
            (let ((_e11330_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11328_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11330_)
                  (macro-unknown-keyword-argument-exception-arguments _e11330_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12664
                                (let ()
                                  (declare (not safe))
                                  (cons _e11330_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12664)))))
            (if (macro-unknown-keyword-argument-exception? _exn11328_)
                (macro-unknown-keyword-argument-exception-arguments _exn11328_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12663
                              (let ()
                                (declare (not safe))
                                (cons _exn11328_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12663)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11322_))
            (let ((_e11325_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11322_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11325_)
                  (macro-unknown-keyword-argument-exception-procedure _e11325_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12666
                                (let ()
                                  (declare (not safe))
                                  (cons _e11325_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12666)))))
            (if (macro-unknown-keyword-argument-exception? _exn11322_)
                (macro-unknown-keyword-argument-exception-procedure _exn11322_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12665
                              (let ()
                                (declare (not safe))
                                (cons _exn11322_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12665)))))))
    (define unterminated-process-exception?
      (lambda (_exn11318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11318_))
            (let ((_e11320_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11318_ 'exception))))
              (macro-unterminated-process-exception? _e11320_))
            (macro-unterminated-process-exception? _exn11318_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11314_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11314_))
            (let ((_e11316_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11314_ 'exception))))
              (if (macro-unterminated-process-exception? _e11316_)
                  (macro-unterminated-process-exception-arguments _e11316_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12668
                                (let ()
                                  (declare (not safe))
                                  (cons _e11316_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12668)))))
            (if (macro-unterminated-process-exception? _exn11314_)
                (macro-unterminated-process-exception-arguments _exn11314_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12667
                              (let ()
                                (declare (not safe))
                                (cons _exn11314_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12667)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11308_))
            (let ((_e11311_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11308_ 'exception))))
              (if (macro-unterminated-process-exception? _e11311_)
                  (macro-unterminated-process-exception-procedure _e11311_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12670
                                (let ()
                                  (declare (not safe))
                                  (cons _e11311_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12670)))))
            (if (macro-unterminated-process-exception? _exn11308_)
                (macro-unterminated-process-exception-procedure _exn11308_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12669
                              (let ()
                                (declare (not safe))
                                (cons _exn11308_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12669)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11304_))
            (let ((_e11306_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11304_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11306_))
            (macro-wrong-number-of-arguments-exception? _exn11304_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11300_))
            (let ((_e11302_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11300_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11302_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11302_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12672
                                (let ()
                                  (declare (not safe))
                                  (cons _e11302_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12672)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11300_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11300_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12671
                              (let ()
                                (declare (not safe))
                                (cons _exn11300_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12671)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11294_))
            (let ((_e11297_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11294_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11297_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11297_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12674
                                (let ()
                                  (declare (not safe))
                                  (cons _e11297_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12674)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11294_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11294_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12673
                              (let ()
                                (declare (not safe))
                                (cons _exn11294_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12673)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11290_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11290_))
            (let ((_e11292_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11290_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11292_))
            (macro-wrong-number-of-values-exception? _exn11290_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11286_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11286_))
            (let ((_e11288_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11286_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11288_)
                  (macro-wrong-number-of-values-exception-code _e11288_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12676
                                (let ()
                                  (declare (not safe))
                                  (cons _e11288_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12676)))))
            (if (macro-wrong-number-of-values-exception? _exn11286_)
                (macro-wrong-number-of-values-exception-code _exn11286_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12675
                              (let ()
                                (declare (not safe))
                                (cons _exn11286_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12675)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11282_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11282_))
            (let ((_e11284_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11282_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11284_)
                  (macro-wrong-number-of-values-exception-rte _e11284_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12678
                                (let ()
                                  (declare (not safe))
                                  (cons _e11284_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12678)))))
            (if (macro-wrong-number-of-values-exception? _exn11282_)
                (macro-wrong-number-of-values-exception-rte _exn11282_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12677
                              (let ()
                                (declare (not safe))
                                (cons _exn11282_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12677)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11276_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11276_))
            (let ((_e11279_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11276_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11279_)
                  (macro-wrong-number-of-values-exception-vals _e11279_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12680
                                (let ()
                                  (declare (not safe))
                                  (cons _e11279_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12680)))))
            (if (macro-wrong-number-of-values-exception? _exn11276_)
                (macro-wrong-number-of-values-exception-vals _exn11276_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12679
                              (let ()
                                (declare (not safe))
                                (cons _exn11276_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12679)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11270_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11270_))
            (let ((_e11273_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11270_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11273_))
            (macro-wrong-processor-c-return-exception? _exn11270_))))))
