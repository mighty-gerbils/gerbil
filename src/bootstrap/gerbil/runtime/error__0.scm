(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1704735467)
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
      (lambda _$args12438_
        (apply make-class-instance Exception::t _$args12438_)))
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
      (lambda _$args12435_
        (apply make-class-instance StackTrace::t _$args12435_)))
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
      (let ((__tmp12458
             (let ((__tmp12459
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12459))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12458
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12432_ (apply make-class-instance Error::t _$args12432_)))
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
      (let ((__tmp12460
             (let ((__tmp12461
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12461))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12460
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12429_
        (apply make-class-instance RuntimeException::t _$args12429_)))
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
      (lambda (_exn12424_ _continue12425_)
        (let ((_exn12427_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12424_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12427_ _continue12425_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12420_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12420_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12420_ 'continuation))
                '#!void
                (let ((__tmp12462
                       (lambda (_cont12422_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12420_
                            'continuation
                            _cont12422_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12462)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12420_))))
    (define error
      (lambda (_message12417_ . _irritants12418_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12417_
                  'irritants:
                  _irritants12418_)))))
    (define with-exception-handler
      (lambda (_handler12410_ _thunk12411_)
        (if (let () (declare (not safe)) (procedure? _handler12410_))
            '#!void
            (raise (let ((__tmp12463
                          (let ()
                            (declare (not safe))
                            (cons _handler12410_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12463))))
        (if (let () (declare (not safe)) (procedure? _thunk12411_))
            '#!void
            (raise (let ((__tmp12464
                          (let ()
                            (declare (not safe))
                            (cons _thunk12411_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12464))))
        (let ((__tmp12465
               (lambda (_exn12413_)
                 (let ((_exn12415_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12413_))))
                   (_handler12410_ _exn12415_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12465 _thunk12411_))))
    (define with-catch
      (lambda (_handler12403_ _thunk12404_)
        (if (let () (declare (not safe)) (procedure? _handler12403_))
            '#!void
            (raise (let ((__tmp12466
                          (let ()
                            (declare (not safe))
                            (cons _handler12403_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12466))))
        (if (let () (declare (not safe)) (procedure? _thunk12404_))
            '#!void
            (raise (let ((__tmp12467
                          (let ()
                            (declare (not safe))
                            (cons _thunk12404_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12467))))
        (let ((__tmp12468
               (lambda (_cont12406_)
                 (with-exception-handler
                  (lambda (_exn12408_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12406_
                       _handler12403_
                       _exn12408_)))
                  _thunk12404_))))
          (declare (not safe))
          (##continuation-capture __tmp12468))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12394_)
        (if (or (heap-overflow-exception? _exn12394_)
                (stack-overflow-exception? _exn12394_))
            _exn12394_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12394_))
                _exn12394_
                (if (macro-exception? _exn12394_)
                    (let ((_rte12399_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12394_))))
                      (let ((__tmp12469
                             (lambda (_cont12401_)
                               (let ((__tmp12470
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12401_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12399_
                                  'continuation
                                  __tmp12470)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12469))
                      _rte12399_)
                    _exn12394_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12389_)
        (let ((_$e12391_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12389_))))
          (if _$e12391_ _$e12391_ (error-exception? _obj12389_)))))
    (define error-message
      (lambda (_obj12387_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12387_))
            (let () (declare (not safe)) (slot-ref _obj12387_ 'message))
            (if (error-exception? _obj12387_)
                (error-exception-message _obj12387_)
                '#f))))
    (define error-irritants
      (lambda (_obj12385_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12385_))
            (let () (declare (not safe)) (slot-ref _obj12385_ 'irritants))
            (if (error-exception? _obj12385_)
                (error-exception-parameters _obj12385_)
                '#f))))
    (define error-trace
      (lambda (_obj12383_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12383_))
            (let () (declare (not safe)) (slot-ref _obj12383_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12365_ _port12366_)
        (let ((_$e12368_
               (let ()
                 (declare (not safe))
                 (method-ref _e12365_ 'display-exception))))
          (if _$e12368_
              ((lambda (_f12371_) (_f12371_ _e12365_ _port12366_)) _$e12368_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12365_ _port12366_))))))
    (define display-exception__0
      (lambda (_e12376_)
        (let ((_port12378_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12376_ _port12378_))))
    (define display-exception
      (lambda _g12472_
        (let ((_g12471_ (let () (declare (not safe)) (##length _g12472_))))
          (cond ((let () (declare (not safe)) (##fx= _g12471_ 1))
                 (apply (lambda (_e12376_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12376_)))
                        _g12472_))
                ((let () (declare (not safe)) (##fx= _g12471_ 2))
                 (apply (lambda (_e12380_ _port12381_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12380_ _port12381_)))
                        _g12472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12472_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12354_ _message12355_ . _rest12356_)
        (let ((_message12362_
               (if (let () (declare (not safe)) (string? _message12355_))
                   _message12355_
                   (call-with-output-string
                    '""
                    (lambda (_g1235712359_)
                      (display _message12355_ _g1235712359_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12354_ 'message _message12362_))
          (apply class-instance-init! _self12354_ _rest12356_))))
    (define Error:::init!::specialize
      (lambda (__t12440)
        (let ((__message12441
               (let ((__tmp12442
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12440 'message))))
                 (if __tmp12442
                     (let () (declare (not safe)) (##fx+ __tmp12442 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12354_ _message12355_ . _rest12356_)
            (let ((_message12362_
                   (if (let () (declare (not safe)) (string? _message12355_))
                       _message12355_
                       (call-with-output-string
                        '""
                        (lambda (_g1235712359_)
                          (display _message12355_ _g1235712359_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12354_
                 _message12362_
                 __message12441
                 __t12440
                 '#f))
              (apply class-instance-init! _self12354_ _rest12356_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self12212_ _port12213_)
        (let ((_tmp-port12215_ (open-output-string))
              (_display-error-newline12216_
               (> (output-port-column _port12213_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12215_))
          (let ((__tmp12473
                 (lambda ()
                   (if _display-error-newline12216_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12219_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12212_ 'where))))
                     (if _$e12219_ (display _$e12219_) (display '"?")))
                   (let ((__tmp12474
                          (let ((__tmp12475
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12212_))))
                            (declare (not safe))
                            (##type-name __tmp12475))))
                     (declare (not safe))
                     (display* '" [" __tmp12474 '"]: "))
                   (let ((__tmp12476
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12212_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12476))
                   (let ((_irritants12222_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12212_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12222_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12224_)
                              (write _obj12224_)
                              (write-char '#\space))
                            _irritants12222_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self12212_))
                            (dump-stack-trace?))
                       (let ((_cont1222512227_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12212_ 'continuation))))
                         (if _cont1222512227_
                             (let ((_cont12230_ _cont1222512227_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12230_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12473
             current-output-port
             _tmp-port12215_))
          (let ((__tmp12477 (get-output-string _tmp-port12215_)))
            (declare (not safe))
            (##write-string __tmp12477 _port12213_)))))
    (define Error::display-exception::specialize
      (lambda (__t12443)
        (let ((__message12444
               (let ((__tmp12448
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12443 'message))))
                 (if __tmp12448
                     (let () (declare (not safe)) (##fx+ __tmp12448 '1))
                     (error '"Unknown slot" 'message))))
              (__where12445
               (let ((__tmp12449
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12443 'where))))
                 (if __tmp12449
                     (let () (declare (not safe)) (##fx+ __tmp12449 '1))
                     (error '"Unknown slot" 'where))))
              (__irritants12446
               (let ((__tmp12450
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12443 'irritants))))
                 (if __tmp12450
                     (let () (declare (not safe)) (##fx+ __tmp12450 '1))
                     (error '"Unknown slot" 'irritants))))
              (__continuation12447
               (let ((__tmp12451
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12443 'continuation))))
                 (if __tmp12451
                     (let () (declare (not safe)) (##fx+ __tmp12451 '1))
                     (error '"Unknown slot" 'continuation))))
              (__class12452
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12443))))
          (lambda (_self12212_ _port12213_)
            (let ((_tmp-port12215_ (open-output-string))
                  (_display-error-newline12216_
                   (> (output-port-column _port12213_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12215_))
              (let ((__tmp12478
                     (lambda ()
                       (if _display-error-newline12216_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12219_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12212_
                                 __where12445
                                 __t12443
                                 '#f))))
                         (if _$e12219_ (display _$e12219_) (display '"?")))
                       (let ((__tmp12479
                              (let ((__tmp12480
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12212_))))
                                (declare (not safe))
                                (##type-name __tmp12480))))
                         (declare (not safe))
                         (display* '" [" __tmp12479 '"]: "))
                       (let ((__tmp12481
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12212_
                                 __message12444
                                 __t12443
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12481))
                       (let ((_irritants12222_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12212_
                                 __irritants12446
                                 __t12443
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12222_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12224_)
                                  (write _obj12224_)
                                  (write-char '#\space))
                                _irritants12222_)
                               (newline))))
                       (if (and __class12452 (dump-stack-trace?))
                           (let ((_cont1222512227_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12212_
                                     __continuation12447
                                     __t12443
                                     '#f))))
                             (if _cont1222512227_
                                 (let ((_cont12230_ _cont1222512227_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12230_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12478
                 current-output-port
                 _tmp-port12215_))
              (let ((__tmp12482 (get-output-string _tmp-port12215_)))
                (declare (not safe))
                (##write-string __tmp12482 _port12213_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12079_ _port12080_)
        (let ((_tmp-port12082_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12082_))
          (let ((__tmp12483
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12079_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12483 _tmp-port12082_))
          (let ((_cont1208312085_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12079_ 'continuation))))
            (if _cont1208312085_
                (let ((_cont12088_ _cont1208312085_))
                  (display '"--- continuation backtrace:" _tmp-port12082_)
                  (newline _tmp-port12082_)
                  (display-continuation-backtrace _cont12088_ _tmp-port12082_))
                '#f))
          (let ((__tmp12484 (get-output-string _tmp-port12082_)))
            (declare (not safe))
            (##write-string __tmp12484 _port12080_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12453)
        (let ((__continuation12454
               (let ((__tmp12456
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12453 'continuation))))
                 (if __tmp12456
                     (let () (declare (not safe)) (##fx+ __tmp12456 '1))
                     (error '"Unknown slot" 'continuation))))
              (__exception12455
               (let ((__tmp12457
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12453 'exception))))
                 (if __tmp12457
                     (let () (declare (not safe)) (##fx+ __tmp12457 '1))
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self12079_ _port12080_)
            (let ((_tmp-port12082_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12082_))
              (let ((__tmp12485
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12079_
                        __exception12455
                        __t12453
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12485 _tmp-port12082_))
              (let ((_cont1208312085_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12079_
                        __continuation12454
                        __t12453
                        '#f))))
                (if _cont1208312085_
                    (let ((_cont12088_ _cont1208312085_))
                      (display '"--- continuation backtrace:" _tmp-port12082_)
                      (newline _tmp-port12082_)
                      (display-continuation-backtrace
                       _cont12088_
                       _tmp-port12082_))
                    '#f))
              (let ((__tmp12486 (get-output-string _tmp-port12082_)))
                (declare (not safe))
                (##write-string __tmp12486 _port12080_)))))))
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
      (lambda (_port11951_)
        (if (macro-character-port? _port11951_)
            (let ((_old-width11953_
                   (macro-character-port-output-width _port11951_)))
              (macro-character-port-output-width-set!
               _port11951_
               (lambda (_port11955_) '256))
              _old-width11953_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11948_ _old-width11949_)
        (if (macro-character-port? _port11948_)
            (macro-character-port-output-width-set!
             _port11948_
             _old-width11949_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11946_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11946_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11940_))
            (let ((_e11943_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11940_ 'exception))))
              (macro-abandoned-mutex-exception? _e11943_))
            (macro-abandoned-mutex-exception? _exn11940_))))
    (define cfun-conversion-exception?
      (lambda (_exn11936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11936_))
            (let ((_e11938_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11936_ 'exception))))
              (macro-cfun-conversion-exception? _e11938_))
            (macro-cfun-conversion-exception? _exn11936_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11932_))
            (let ((_e11934_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11932_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11934_)
                  (macro-cfun-conversion-exception-arguments _e11934_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12488
                                (let ()
                                  (declare (not safe))
                                  (cons _e11934_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12488)))))
            (if (macro-cfun-conversion-exception? _exn11932_)
                (macro-cfun-conversion-exception-arguments _exn11932_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12487
                              (let ()
                                (declare (not safe))
                                (cons _exn11932_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12487)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11928_))
            (let ((_e11930_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11928_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11930_)
                  (macro-cfun-conversion-exception-code _e11930_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12490
                                (let ()
                                  (declare (not safe))
                                  (cons _e11930_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12490)))))
            (if (macro-cfun-conversion-exception? _exn11928_)
                (macro-cfun-conversion-exception-code _exn11928_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12489
                              (let ()
                                (declare (not safe))
                                (cons _exn11928_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12489)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11924_))
            (let ((_e11926_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11924_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11926_)
                  (macro-cfun-conversion-exception-message _e11926_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12492
                                (let ()
                                  (declare (not safe))
                                  (cons _e11926_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12492)))))
            (if (macro-cfun-conversion-exception? _exn11924_)
                (macro-cfun-conversion-exception-message _exn11924_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12491
                              (let ()
                                (declare (not safe))
                                (cons _exn11924_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12491)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11918_))
            (let ((_e11921_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11918_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11921_)
                  (macro-cfun-conversion-exception-procedure _e11921_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12494
                                (let ()
                                  (declare (not safe))
                                  (cons _e11921_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12494)))))
            (if (macro-cfun-conversion-exception? _exn11918_)
                (macro-cfun-conversion-exception-procedure _exn11918_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12493
                              (let ()
                                (declare (not safe))
                                (cons _exn11918_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12493)))))))
    (define datum-parsing-exception?
      (lambda (_exn11914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11914_))
            (let ((_e11916_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11914_ 'exception))))
              (macro-datum-parsing-exception? _e11916_))
            (macro-datum-parsing-exception? _exn11914_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11910_))
            (let ((_e11912_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11910_ 'exception))))
              (if (macro-datum-parsing-exception? _e11912_)
                  (macro-datum-parsing-exception-kind _e11912_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12496
                                (let ()
                                  (declare (not safe))
                                  (cons _e11912_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12496)))))
            (if (macro-datum-parsing-exception? _exn11910_)
                (macro-datum-parsing-exception-kind _exn11910_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12495
                              (let ()
                                (declare (not safe))
                                (cons _exn11910_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12495)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11906_))
            (let ((_e11908_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11906_ 'exception))))
              (if (macro-datum-parsing-exception? _e11908_)
                  (macro-datum-parsing-exception-parameters _e11908_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12498
                                (let ()
                                  (declare (not safe))
                                  (cons _e11908_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12498)))))
            (if (macro-datum-parsing-exception? _exn11906_)
                (macro-datum-parsing-exception-parameters _exn11906_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12497
                              (let ()
                                (declare (not safe))
                                (cons _exn11906_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12497)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11900_))
            (let ((_e11903_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11900_ 'exception))))
              (if (macro-datum-parsing-exception? _e11903_)
                  (macro-datum-parsing-exception-readenv _e11903_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12500
                                (let ()
                                  (declare (not safe))
                                  (cons _e11903_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12500)))))
            (if (macro-datum-parsing-exception? _exn11900_)
                (macro-datum-parsing-exception-readenv _exn11900_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12499
                              (let ()
                                (declare (not safe))
                                (cons _exn11900_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12499)))))))
    (define deadlock-exception?
      (lambda (_exn11894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11894_))
            (let ((_e11897_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11894_ 'exception))))
              (macro-deadlock-exception? _e11897_))
            (macro-deadlock-exception? _exn11894_))))
    (define divide-by-zero-exception?
      (lambda (_exn11890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11890_))
            (let ((_e11892_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11890_ 'exception))))
              (macro-divide-by-zero-exception? _e11892_))
            (macro-divide-by-zero-exception? _exn11890_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11886_))
            (let ((_e11888_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11886_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11888_)
                  (macro-divide-by-zero-exception-arguments _e11888_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12502
                                (let ()
                                  (declare (not safe))
                                  (cons _e11888_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12502)))))
            (if (macro-divide-by-zero-exception? _exn11886_)
                (macro-divide-by-zero-exception-arguments _exn11886_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12501
                              (let ()
                                (declare (not safe))
                                (cons _exn11886_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12501)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11880_))
            (let ((_e11883_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11880_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11883_)
                  (macro-divide-by-zero-exception-procedure _e11883_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12504
                                (let ()
                                  (declare (not safe))
                                  (cons _e11883_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12504)))))
            (if (macro-divide-by-zero-exception? _exn11880_)
                (macro-divide-by-zero-exception-procedure _exn11880_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12503
                              (let ()
                                (declare (not safe))
                                (cons _exn11880_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12503)))))))
    (define error-exception?
      (lambda (_exn11876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11876_))
            (let ((_e11878_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11876_ 'exception))))
              (macro-error-exception? _e11878_))
            (macro-error-exception? _exn11876_))))
    (define error-exception-message
      (lambda (_exn11872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11872_))
            (let ((_e11874_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11872_ 'exception))))
              (if (macro-error-exception? _e11874_)
                  (macro-error-exception-message _e11874_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12506
                                (let ()
                                  (declare (not safe))
                                  (cons _e11874_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12506)))))
            (if (macro-error-exception? _exn11872_)
                (macro-error-exception-message _exn11872_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12505
                              (let ()
                                (declare (not safe))
                                (cons _exn11872_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12505)))))))
    (define error-exception-parameters
      (lambda (_exn11866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11866_))
            (let ((_e11869_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11866_ 'exception))))
              (if (macro-error-exception? _e11869_)
                  (macro-error-exception-parameters _e11869_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12508
                                (let ()
                                  (declare (not safe))
                                  (cons _e11869_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12508)))))
            (if (macro-error-exception? _exn11866_)
                (macro-error-exception-parameters _exn11866_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12507
                              (let ()
                                (declare (not safe))
                                (cons _exn11866_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12507)))))))
    (define expression-parsing-exception?
      (lambda (_exn11862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11862_))
            (let ((_e11864_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11862_ 'exception))))
              (macro-expression-parsing-exception? _e11864_))
            (macro-expression-parsing-exception? _exn11862_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11858_))
            (let ((_e11860_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11858_ 'exception))))
              (if (macro-expression-parsing-exception? _e11860_)
                  (macro-expression-parsing-exception-kind _e11860_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12510
                                (let ()
                                  (declare (not safe))
                                  (cons _e11860_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12510)))))
            (if (macro-expression-parsing-exception? _exn11858_)
                (macro-expression-parsing-exception-kind _exn11858_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12509
                              (let ()
                                (declare (not safe))
                                (cons _exn11858_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12509)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11854_))
            (let ((_e11856_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11854_ 'exception))))
              (if (macro-expression-parsing-exception? _e11856_)
                  (macro-expression-parsing-exception-parameters _e11856_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12512
                                (let ()
                                  (declare (not safe))
                                  (cons _e11856_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12512)))))
            (if (macro-expression-parsing-exception? _exn11854_)
                (macro-expression-parsing-exception-parameters _exn11854_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12511
                              (let ()
                                (declare (not safe))
                                (cons _exn11854_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12511)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11848_))
            (let ((_e11851_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11848_ 'exception))))
              (if (macro-expression-parsing-exception? _e11851_)
                  (macro-expression-parsing-exception-source _e11851_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12514
                                (let ()
                                  (declare (not safe))
                                  (cons _e11851_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12514)))))
            (if (macro-expression-parsing-exception? _exn11848_)
                (macro-expression-parsing-exception-source _exn11848_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12513
                              (let ()
                                (declare (not safe))
                                (cons _exn11848_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12513)))))))
    (define file-exists-exception?
      (lambda (_exn11844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11844_))
            (let ((_e11846_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11844_ 'exception))))
              (macro-file-exists-exception? _e11846_))
            (macro-file-exists-exception? _exn11844_))))
    (define file-exists-exception-arguments
      (lambda (_exn11840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11840_))
            (let ((_e11842_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11840_ 'exception))))
              (if (macro-file-exists-exception? _e11842_)
                  (macro-file-exists-exception-arguments _e11842_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12516
                                (let ()
                                  (declare (not safe))
                                  (cons _e11842_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12516)))))
            (if (macro-file-exists-exception? _exn11840_)
                (macro-file-exists-exception-arguments _exn11840_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12515
                              (let ()
                                (declare (not safe))
                                (cons _exn11840_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12515)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11834_))
            (let ((_e11837_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11834_ 'exception))))
              (if (macro-file-exists-exception? _e11837_)
                  (macro-file-exists-exception-procedure _e11837_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12518
                                (let ()
                                  (declare (not safe))
                                  (cons _e11837_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12518)))))
            (if (macro-file-exists-exception? _exn11834_)
                (macro-file-exists-exception-procedure _exn11834_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12517
                              (let ()
                                (declare (not safe))
                                (cons _exn11834_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12517)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11830_))
            (let ((_e11832_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11830_ 'exception))))
              (macro-fixnum-overflow-exception? _e11832_))
            (macro-fixnum-overflow-exception? _exn11830_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11826_))
            (let ((_e11828_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11826_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11828_)
                  (macro-fixnum-overflow-exception-arguments _e11828_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12520
                                (let ()
                                  (declare (not safe))
                                  (cons _e11828_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12520)))))
            (if (macro-fixnum-overflow-exception? _exn11826_)
                (macro-fixnum-overflow-exception-arguments _exn11826_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12519
                              (let ()
                                (declare (not safe))
                                (cons _exn11826_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12519)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11820_))
            (let ((_e11823_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11820_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11823_)
                  (macro-fixnum-overflow-exception-procedure _e11823_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12522
                                (let ()
                                  (declare (not safe))
                                  (cons _e11823_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12522)))))
            (if (macro-fixnum-overflow-exception? _exn11820_)
                (macro-fixnum-overflow-exception-procedure _exn11820_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12521
                              (let ()
                                (declare (not safe))
                                (cons _exn11820_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12521)))))))
    (define heap-overflow-exception?
      (lambda (_exn11814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11814_))
            (let ((_e11817_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11814_ 'exception))))
              (macro-heap-overflow-exception? _e11817_))
            (macro-heap-overflow-exception? _exn11814_))))
    (define inactive-thread-exception?
      (lambda (_exn11810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11810_))
            (let ((_e11812_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11810_ 'exception))))
              (macro-inactive-thread-exception? _e11812_))
            (macro-inactive-thread-exception? _exn11810_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11806_))
            (let ((_e11808_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11806_ 'exception))))
              (if (macro-inactive-thread-exception? _e11808_)
                  (macro-inactive-thread-exception-arguments _e11808_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12524
                                (let ()
                                  (declare (not safe))
                                  (cons _e11808_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12524)))))
            (if (macro-inactive-thread-exception? _exn11806_)
                (macro-inactive-thread-exception-arguments _exn11806_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12523
                              (let ()
                                (declare (not safe))
                                (cons _exn11806_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12523)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11800_))
            (let ((_e11803_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11800_ 'exception))))
              (if (macro-inactive-thread-exception? _e11803_)
                  (macro-inactive-thread-exception-procedure _e11803_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12526
                                (let ()
                                  (declare (not safe))
                                  (cons _e11803_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12526)))))
            (if (macro-inactive-thread-exception? _exn11800_)
                (macro-inactive-thread-exception-procedure _exn11800_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12525
                              (let ()
                                (declare (not safe))
                                (cons _exn11800_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12525)))))))
    (define initialized-thread-exception?
      (lambda (_exn11796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11796_))
            (let ((_e11798_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11796_ 'exception))))
              (macro-initialized-thread-exception? _e11798_))
            (macro-initialized-thread-exception? _exn11796_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11792_))
            (let ((_e11794_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11792_ 'exception))))
              (if (macro-initialized-thread-exception? _e11794_)
                  (macro-initialized-thread-exception-arguments _e11794_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12528
                                (let ()
                                  (declare (not safe))
                                  (cons _e11794_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12528)))))
            (if (macro-initialized-thread-exception? _exn11792_)
                (macro-initialized-thread-exception-arguments _exn11792_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12527
                              (let ()
                                (declare (not safe))
                                (cons _exn11792_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12527)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11786_))
            (let ((_e11789_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11786_ 'exception))))
              (if (macro-initialized-thread-exception? _e11789_)
                  (macro-initialized-thread-exception-procedure _e11789_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12530
                                (let ()
                                  (declare (not safe))
                                  (cons _e11789_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12530)))))
            (if (macro-initialized-thread-exception? _exn11786_)
                (macro-initialized-thread-exception-procedure _exn11786_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12529
                              (let ()
                                (declare (not safe))
                                (cons _exn11786_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12529)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11782_))
            (let ((_e11784_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11782_ 'exception))))
              (macro-invalid-hash-number-exception? _e11784_))
            (macro-invalid-hash-number-exception? _exn11782_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11778_))
            (let ((_e11780_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11778_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11780_)
                  (macro-invalid-hash-number-exception-arguments _e11780_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12532
                                (let ()
                                  (declare (not safe))
                                  (cons _e11780_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12532)))))
            (if (macro-invalid-hash-number-exception? _exn11778_)
                (macro-invalid-hash-number-exception-arguments _exn11778_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12531
                              (let ()
                                (declare (not safe))
                                (cons _exn11778_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12531)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11772_))
            (let ((_e11775_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11772_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11775_)
                  (macro-invalid-hash-number-exception-procedure _e11775_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12534
                                (let ()
                                  (declare (not safe))
                                  (cons _e11775_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12534)))))
            (if (macro-invalid-hash-number-exception? _exn11772_)
                (macro-invalid-hash-number-exception-procedure _exn11772_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12533
                              (let ()
                                (declare (not safe))
                                (cons _exn11772_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12533)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11768_))
            (let ((_e11770_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11768_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11770_))
            (macro-invalid-utf8-encoding-exception? _exn11768_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11764_))
            (let ((_e11766_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11764_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11766_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11766_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12536
                                (let ()
                                  (declare (not safe))
                                  (cons _e11766_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12536)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11764_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11764_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12535
                              (let ()
                                (declare (not safe))
                                (cons _exn11764_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12535)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11758_))
            (let ((_e11761_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11758_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11761_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11761_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12538
                                (let ()
                                  (declare (not safe))
                                  (cons _e11761_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12538)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11758_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11758_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12537
                              (let ()
                                (declare (not safe))
                                (cons _exn11758_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12537)))))))
    (define join-timeout-exception?
      (lambda (_exn11754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11754_))
            (let ((_e11756_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11754_ 'exception))))
              (macro-join-timeout-exception? _e11756_))
            (macro-join-timeout-exception? _exn11754_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11750_))
            (let ((_e11752_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11750_ 'exception))))
              (if (macro-join-timeout-exception? _e11752_)
                  (macro-join-timeout-exception-arguments _e11752_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12540
                                (let ()
                                  (declare (not safe))
                                  (cons _e11752_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12540)))))
            (if (macro-join-timeout-exception? _exn11750_)
                (macro-join-timeout-exception-arguments _exn11750_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12539
                              (let ()
                                (declare (not safe))
                                (cons _exn11750_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12539)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11744_))
            (let ((_e11747_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11744_ 'exception))))
              (if (macro-join-timeout-exception? _e11747_)
                  (macro-join-timeout-exception-procedure _e11747_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12542
                                (let ()
                                  (declare (not safe))
                                  (cons _e11747_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12542)))))
            (if (macro-join-timeout-exception? _exn11744_)
                (macro-join-timeout-exception-procedure _exn11744_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12541
                              (let ()
                                (declare (not safe))
                                (cons _exn11744_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12541)))))))
    (define keyword-expected-exception?
      (lambda (_exn11740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11740_))
            (let ((_e11742_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11740_ 'exception))))
              (macro-keyword-expected-exception? _e11742_))
            (macro-keyword-expected-exception? _exn11740_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11736_))
            (let ((_e11738_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11736_ 'exception))))
              (if (macro-keyword-expected-exception? _e11738_)
                  (macro-keyword-expected-exception-arguments _e11738_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12544
                                (let ()
                                  (declare (not safe))
                                  (cons _e11738_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12544)))))
            (if (macro-keyword-expected-exception? _exn11736_)
                (macro-keyword-expected-exception-arguments _exn11736_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12543
                              (let ()
                                (declare (not safe))
                                (cons _exn11736_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12543)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11730_))
            (let ((_e11733_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11730_ 'exception))))
              (if (macro-keyword-expected-exception? _e11733_)
                  (macro-keyword-expected-exception-procedure _e11733_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12546
                                (let ()
                                  (declare (not safe))
                                  (cons _e11733_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12546)))))
            (if (macro-keyword-expected-exception? _exn11730_)
                (macro-keyword-expected-exception-procedure _exn11730_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12545
                              (let ()
                                (declare (not safe))
                                (cons _exn11730_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12545)))))))
    (define length-mismatch-exception?
      (lambda (_exn11726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11726_))
            (let ((_e11728_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11726_ 'exception))))
              (macro-length-mismatch-exception? _e11728_))
            (macro-length-mismatch-exception? _exn11726_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11722_))
            (let ((_e11724_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11722_ 'exception))))
              (if (macro-length-mismatch-exception? _e11724_)
                  (macro-length-mismatch-exception-arg-id _e11724_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12548
                                (let ()
                                  (declare (not safe))
                                  (cons _e11724_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12548)))))
            (if (macro-length-mismatch-exception? _exn11722_)
                (macro-length-mismatch-exception-arg-id _exn11722_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12547
                              (let ()
                                (declare (not safe))
                                (cons _exn11722_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12547)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11718_))
            (let ((_e11720_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11718_ 'exception))))
              (if (macro-length-mismatch-exception? _e11720_)
                  (macro-length-mismatch-exception-arguments _e11720_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12550
                                (let ()
                                  (declare (not safe))
                                  (cons _e11720_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12550)))))
            (if (macro-length-mismatch-exception? _exn11718_)
                (macro-length-mismatch-exception-arguments _exn11718_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12549
                              (let ()
                                (declare (not safe))
                                (cons _exn11718_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12549)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11712_))
            (let ((_e11715_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11712_ 'exception))))
              (if (macro-length-mismatch-exception? _e11715_)
                  (macro-length-mismatch-exception-procedure _e11715_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12552
                                (let ()
                                  (declare (not safe))
                                  (cons _e11715_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12552)))))
            (if (macro-length-mismatch-exception? _exn11712_)
                (macro-length-mismatch-exception-procedure _exn11712_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12551
                              (let ()
                                (declare (not safe))
                                (cons _exn11712_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12551)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11708_))
            (let ((_e11710_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11708_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11710_))
            (macro-mailbox-receive-timeout-exception? _exn11708_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11704_))
            (let ((_e11706_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11704_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11706_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11706_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12554
                                (let ()
                                  (declare (not safe))
                                  (cons _e11706_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12554)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11704_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11704_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12553
                              (let ()
                                (declare (not safe))
                                (cons _exn11704_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12553)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11698_))
            (let ((_e11701_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11698_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11701_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11701_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12556
                                (let ()
                                  (declare (not safe))
                                  (cons _e11701_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12556)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11698_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11698_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12555
                              (let ()
                                (declare (not safe))
                                (cons _exn11698_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12555)))))))
    (define module-not-found-exception?
      (lambda (_exn11694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11694_))
            (let ((_e11696_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11694_ 'exception))))
              (macro-module-not-found-exception? _e11696_))
            (macro-module-not-found-exception? _exn11694_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11690_))
            (let ((_e11692_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11690_ 'exception))))
              (if (macro-module-not-found-exception? _e11692_)
                  (macro-module-not-found-exception-arguments _e11692_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12558
                                (let ()
                                  (declare (not safe))
                                  (cons _e11692_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12558)))))
            (if (macro-module-not-found-exception? _exn11690_)
                (macro-module-not-found-exception-arguments _exn11690_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12557
                              (let ()
                                (declare (not safe))
                                (cons _exn11690_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12557)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11684_))
            (let ((_e11687_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11684_ 'exception))))
              (if (macro-module-not-found-exception? _e11687_)
                  (macro-module-not-found-exception-procedure _e11687_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12560
                                (let ()
                                  (declare (not safe))
                                  (cons _e11687_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12560)))))
            (if (macro-module-not-found-exception? _exn11684_)
                (macro-module-not-found-exception-procedure _exn11684_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12559
                              (let ()
                                (declare (not safe))
                                (cons _exn11684_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12559)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11678_))
            (let ((_e11681_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11678_ 'exception))))
              (macro-multiple-c-return-exception? _e11681_))
            (macro-multiple-c-return-exception? _exn11678_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11674_))
            (let ((_e11676_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11674_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11676_))
            (macro-no-such-file-or-directory-exception? _exn11674_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11670_))
            (let ((_e11672_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11670_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11672_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11672_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12562
                                (let ()
                                  (declare (not safe))
                                  (cons _e11672_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12562)))))
            (if (macro-no-such-file-or-directory-exception? _exn11670_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11670_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12561
                              (let ()
                                (declare (not safe))
                                (cons _exn11670_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12561)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11664_))
            (let ((_e11667_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11664_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11667_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11667_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12564
                                (let ()
                                  (declare (not safe))
                                  (cons _e11667_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12564)))))
            (if (macro-no-such-file-or-directory-exception? _exn11664_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11664_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12563
                              (let ()
                                (declare (not safe))
                                (cons _exn11664_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12563)))))))
    (define noncontinuable-exception?
      (lambda (_exn11660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11660_))
            (let ((_e11662_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11660_ 'exception))))
              (macro-noncontinuable-exception? _e11662_))
            (macro-noncontinuable-exception? _exn11660_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11654_))
            (let ((_e11657_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11654_ 'exception))))
              (if (macro-noncontinuable-exception? _e11657_)
                  (macro-noncontinuable-exception-reason _e11657_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12566
                                (let ()
                                  (declare (not safe))
                                  (cons _e11657_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12566)))))
            (if (macro-noncontinuable-exception? _exn11654_)
                (macro-noncontinuable-exception-reason _exn11654_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12565
                              (let ()
                                (declare (not safe))
                                (cons _exn11654_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12565)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11650_))
            (let ((_e11652_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11650_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11652_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11650_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11646_))
            (let ((_e11648_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11646_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11648_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11648_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12568
                                (let ()
                                  (declare (not safe))
                                  (cons _e11648_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12568)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11646_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11646_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12567
                              (let ()
                                (declare (not safe))
                                (cons _exn11646_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12567)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11640_))
            (let ((_e11643_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11640_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11643_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11643_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12570
                                (let ()
                                  (declare (not safe))
                                  (cons _e11643_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12570)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11640_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11640_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12569
                              (let ()
                                (declare (not safe))
                                (cons _exn11640_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12569)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11636_))
            (let ((_e11638_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11636_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11638_))
            (macro-nonprocedure-operator-exception? _exn11636_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11632_))
            (let ((_e11634_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11632_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11634_)
                  (macro-nonprocedure-operator-exception-arguments _e11634_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12572
                                (let ()
                                  (declare (not safe))
                                  (cons _e11634_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12572)))))
            (if (macro-nonprocedure-operator-exception? _exn11632_)
                (macro-nonprocedure-operator-exception-arguments _exn11632_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12571
                              (let ()
                                (declare (not safe))
                                (cons _exn11632_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12571)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11628_))
            (let ((_e11630_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11628_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11630_)
                  (macro-nonprocedure-operator-exception-code _e11630_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12574
                                (let ()
                                  (declare (not safe))
                                  (cons _e11630_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12574)))))
            (if (macro-nonprocedure-operator-exception? _exn11628_)
                (macro-nonprocedure-operator-exception-code _exn11628_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12573
                              (let ()
                                (declare (not safe))
                                (cons _exn11628_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12573)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11624_))
            (let ((_e11626_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11624_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11626_)
                  (macro-nonprocedure-operator-exception-operator _e11626_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12576
                                (let ()
                                  (declare (not safe))
                                  (cons _e11626_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12576)))))
            (if (macro-nonprocedure-operator-exception? _exn11624_)
                (macro-nonprocedure-operator-exception-operator _exn11624_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12575
                              (let ()
                                (declare (not safe))
                                (cons _exn11624_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12575)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11618_))
            (let ((_e11621_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11618_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11621_)
                  (macro-nonprocedure-operator-exception-rte _e11621_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12578
                                (let ()
                                  (declare (not safe))
                                  (cons _e11621_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12578)))))
            (if (macro-nonprocedure-operator-exception? _exn11618_)
                (macro-nonprocedure-operator-exception-rte _exn11618_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12577
                              (let ()
                                (declare (not safe))
                                (cons _exn11618_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12577)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11614_))
            (let ((_e11616_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11614_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11616_))
            (macro-not-in-compilation-context-exception? _exn11614_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11610_))
            (let ((_e11612_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11610_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11612_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11612_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12580
                                (let ()
                                  (declare (not safe))
                                  (cons _e11612_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12580)))))
            (if (macro-not-in-compilation-context-exception? _exn11610_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11610_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12579
                              (let ()
                                (declare (not safe))
                                (cons _exn11610_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12579)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11604_))
            (let ((_e11607_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11604_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11607_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11607_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12582
                                (let ()
                                  (declare (not safe))
                                  (cons _e11607_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12582)))))
            (if (macro-not-in-compilation-context-exception? _exn11604_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11604_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12581
                              (let ()
                                (declare (not safe))
                                (cons _exn11604_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12581)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11600_))
            (let ((_e11602_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11600_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11602_))
            (macro-number-of-arguments-limit-exception? _exn11600_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11596_))
            (let ((_e11598_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11596_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11598_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11598_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12584
                                (let ()
                                  (declare (not safe))
                                  (cons _e11598_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12584)))))
            (if (macro-number-of-arguments-limit-exception? _exn11596_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11596_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12583
                              (let ()
                                (declare (not safe))
                                (cons _exn11596_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12583)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11590_))
            (let ((_e11593_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11590_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11593_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11593_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12586
                                (let ()
                                  (declare (not safe))
                                  (cons _e11593_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12586)))))
            (if (macro-number-of-arguments-limit-exception? _exn11590_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11590_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12585
                              (let ()
                                (declare (not safe))
                                (cons _exn11590_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12585)))))))
    (define os-exception?
      (lambda (_exn11586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11586_))
            (let ((_e11588_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11586_ 'exception))))
              (macro-os-exception? _e11588_))
            (macro-os-exception? _exn11586_))))
    (define os-exception-arguments
      (lambda (_exn11582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11582_))
            (let ((_e11584_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11582_ 'exception))))
              (if (macro-os-exception? _e11584_)
                  (macro-os-exception-arguments _e11584_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12588
                                (let ()
                                  (declare (not safe))
                                  (cons _e11584_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12588)))))
            (if (macro-os-exception? _exn11582_)
                (macro-os-exception-arguments _exn11582_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12587
                              (let ()
                                (declare (not safe))
                                (cons _exn11582_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12587)))))))
    (define os-exception-code
      (lambda (_exn11578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11578_))
            (let ((_e11580_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11578_ 'exception))))
              (if (macro-os-exception? _e11580_)
                  (macro-os-exception-code _e11580_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12590
                                (let ()
                                  (declare (not safe))
                                  (cons _e11580_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12590)))))
            (if (macro-os-exception? _exn11578_)
                (macro-os-exception-code _exn11578_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12589
                              (let ()
                                (declare (not safe))
                                (cons _exn11578_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12589)))))))
    (define os-exception-message
      (lambda (_exn11574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11574_))
            (let ((_e11576_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11574_ 'exception))))
              (if (macro-os-exception? _e11576_)
                  (macro-os-exception-message _e11576_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12592
                                (let ()
                                  (declare (not safe))
                                  (cons _e11576_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12592)))))
            (if (macro-os-exception? _exn11574_)
                (macro-os-exception-message _exn11574_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12591
                              (let ()
                                (declare (not safe))
                                (cons _exn11574_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12591)))))))
    (define os-exception-procedure
      (lambda (_exn11568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11568_))
            (let ((_e11571_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11568_ 'exception))))
              (if (macro-os-exception? _e11571_)
                  (macro-os-exception-procedure _e11571_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12594
                                (let ()
                                  (declare (not safe))
                                  (cons _e11571_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12594)))))
            (if (macro-os-exception? _exn11568_)
                (macro-os-exception-procedure _exn11568_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12593
                              (let ()
                                (declare (not safe))
                                (cons _exn11568_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12593)))))))
    (define permission-denied-exception?
      (lambda (_exn11564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11564_))
            (let ((_e11566_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11564_ 'exception))))
              (macro-permission-denied-exception? _e11566_))
            (macro-permission-denied-exception? _exn11564_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11560_))
            (let ((_e11562_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11560_ 'exception))))
              (if (macro-permission-denied-exception? _e11562_)
                  (macro-permission-denied-exception-arguments _e11562_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12596
                                (let ()
                                  (declare (not safe))
                                  (cons _e11562_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12596)))))
            (if (macro-permission-denied-exception? _exn11560_)
                (macro-permission-denied-exception-arguments _exn11560_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12595
                              (let ()
                                (declare (not safe))
                                (cons _exn11560_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12595)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11554_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11554_))
            (let ((_e11557_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11554_ 'exception))))
              (if (macro-permission-denied-exception? _e11557_)
                  (macro-permission-denied-exception-procedure _e11557_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12598
                                (let ()
                                  (declare (not safe))
                                  (cons _e11557_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12598)))))
            (if (macro-permission-denied-exception? _exn11554_)
                (macro-permission-denied-exception-procedure _exn11554_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12597
                              (let ()
                                (declare (not safe))
                                (cons _exn11554_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12597)))))))
    (define range-exception?
      (lambda (_exn11550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11550_))
            (let ((_e11552_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11550_ 'exception))))
              (macro-range-exception? _e11552_))
            (macro-range-exception? _exn11550_))))
    (define range-exception-arg-id
      (lambda (_exn11546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11546_))
            (let ((_e11548_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11546_ 'exception))))
              (if (macro-range-exception? _e11548_)
                  (macro-range-exception-arg-id _e11548_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12600
                                (let ()
                                  (declare (not safe))
                                  (cons _e11548_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12600)))))
            (if (macro-range-exception? _exn11546_)
                (macro-range-exception-arg-id _exn11546_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12599
                              (let ()
                                (declare (not safe))
                                (cons _exn11546_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12599)))))))
    (define range-exception-arguments
      (lambda (_exn11542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11542_))
            (let ((_e11544_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11542_ 'exception))))
              (if (macro-range-exception? _e11544_)
                  (macro-range-exception-arguments _e11544_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12602
                                (let ()
                                  (declare (not safe))
                                  (cons _e11544_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12602)))))
            (if (macro-range-exception? _exn11542_)
                (macro-range-exception-arguments _exn11542_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12601
                              (let ()
                                (declare (not safe))
                                (cons _exn11542_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12601)))))))
    (define range-exception-procedure
      (lambda (_exn11536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11536_))
            (let ((_e11539_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11536_ 'exception))))
              (if (macro-range-exception? _e11539_)
                  (macro-range-exception-procedure _e11539_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12604
                                (let ()
                                  (declare (not safe))
                                  (cons _e11539_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12604)))))
            (if (macro-range-exception? _exn11536_)
                (macro-range-exception-procedure _exn11536_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12603
                              (let ()
                                (declare (not safe))
                                (cons _exn11536_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12603)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11532_))
            (let ((_e11534_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11532_ 'exception))))
              (macro-rpc-remote-error-exception? _e11534_))
            (macro-rpc-remote-error-exception? _exn11532_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11528_))
            (let ((_e11530_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11528_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11530_)
                  (macro-rpc-remote-error-exception-arguments _e11530_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12606
                                (let ()
                                  (declare (not safe))
                                  (cons _e11530_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12606)))))
            (if (macro-rpc-remote-error-exception? _exn11528_)
                (macro-rpc-remote-error-exception-arguments _exn11528_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12605
                              (let ()
                                (declare (not safe))
                                (cons _exn11528_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12605)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11524_))
            (let ((_e11526_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11524_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11526_)
                  (macro-rpc-remote-error-exception-message _e11526_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12608
                                (let ()
                                  (declare (not safe))
                                  (cons _e11526_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12608)))))
            (if (macro-rpc-remote-error-exception? _exn11524_)
                (macro-rpc-remote-error-exception-message _exn11524_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12607
                              (let ()
                                (declare (not safe))
                                (cons _exn11524_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12607)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11518_))
            (let ((_e11521_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11518_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11521_)
                  (macro-rpc-remote-error-exception-procedure _e11521_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12610
                                (let ()
                                  (declare (not safe))
                                  (cons _e11521_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12610)))))
            (if (macro-rpc-remote-error-exception? _exn11518_)
                (macro-rpc-remote-error-exception-procedure _exn11518_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12609
                              (let ()
                                (declare (not safe))
                                (cons _exn11518_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12609)))))))
    (define scheduler-exception?
      (lambda (_exn11514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11514_))
            (let ((_e11516_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11514_ 'exception))))
              (macro-scheduler-exception? _e11516_))
            (macro-scheduler-exception? _exn11514_))))
    (define scheduler-exception-reason
      (lambda (_exn11508_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11508_))
            (let ((_e11511_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11508_ 'exception))))
              (if (macro-scheduler-exception? _e11511_)
                  (macro-scheduler-exception-reason _e11511_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12612
                                (let ()
                                  (declare (not safe))
                                  (cons _e11511_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12612)))))
            (if (macro-scheduler-exception? _exn11508_)
                (macro-scheduler-exception-reason _exn11508_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12611
                              (let ()
                                (declare (not safe))
                                (cons _exn11508_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12611)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11504_))
            (let ((_e11506_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11504_ 'exception))))
              (macro-sfun-conversion-exception? _e11506_))
            (macro-sfun-conversion-exception? _exn11504_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11500_))
            (let ((_e11502_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11500_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11502_)
                  (macro-sfun-conversion-exception-arguments _e11502_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12614
                                (let ()
                                  (declare (not safe))
                                  (cons _e11502_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12614)))))
            (if (macro-sfun-conversion-exception? _exn11500_)
                (macro-sfun-conversion-exception-arguments _exn11500_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12613
                              (let ()
                                (declare (not safe))
                                (cons _exn11500_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12613)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11496_))
            (let ((_e11498_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11496_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11498_)
                  (macro-sfun-conversion-exception-code _e11498_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12616
                                (let ()
                                  (declare (not safe))
                                  (cons _e11498_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12616)))))
            (if (macro-sfun-conversion-exception? _exn11496_)
                (macro-sfun-conversion-exception-code _exn11496_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12615
                              (let ()
                                (declare (not safe))
                                (cons _exn11496_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12615)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11492_))
            (let ((_e11494_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11492_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11494_)
                  (macro-sfun-conversion-exception-message _e11494_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12618
                                (let ()
                                  (declare (not safe))
                                  (cons _e11494_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12618)))))
            (if (macro-sfun-conversion-exception? _exn11492_)
                (macro-sfun-conversion-exception-message _exn11492_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12617
                              (let ()
                                (declare (not safe))
                                (cons _exn11492_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12617)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11486_))
            (let ((_e11489_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11486_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11489_)
                  (macro-sfun-conversion-exception-procedure _e11489_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12620
                                (let ()
                                  (declare (not safe))
                                  (cons _e11489_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12620)))))
            (if (macro-sfun-conversion-exception? _exn11486_)
                (macro-sfun-conversion-exception-procedure _exn11486_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12619
                              (let ()
                                (declare (not safe))
                                (cons _exn11486_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12619)))))))
    (define stack-overflow-exception?
      (lambda (_exn11480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11480_))
            (let ((_e11483_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11480_ 'exception))))
              (macro-stack-overflow-exception? _e11483_))
            (macro-stack-overflow-exception? _exn11480_))))
    (define started-thread-exception?
      (lambda (_exn11476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11476_))
            (let ((_e11478_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11476_ 'exception))))
              (macro-started-thread-exception? _e11478_))
            (macro-started-thread-exception? _exn11476_))))
    (define started-thread-exception-arguments
      (lambda (_exn11472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11472_))
            (let ((_e11474_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11472_ 'exception))))
              (if (macro-started-thread-exception? _e11474_)
                  (macro-started-thread-exception-arguments _e11474_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12622
                                (let ()
                                  (declare (not safe))
                                  (cons _e11474_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12622)))))
            (if (macro-started-thread-exception? _exn11472_)
                (macro-started-thread-exception-arguments _exn11472_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12621
                              (let ()
                                (declare (not safe))
                                (cons _exn11472_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12621)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11466_))
            (let ((_e11469_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11466_ 'exception))))
              (if (macro-started-thread-exception? _e11469_)
                  (macro-started-thread-exception-procedure _e11469_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12624
                                (let ()
                                  (declare (not safe))
                                  (cons _e11469_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12624)))))
            (if (macro-started-thread-exception? _exn11466_)
                (macro-started-thread-exception-procedure _exn11466_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12623
                              (let ()
                                (declare (not safe))
                                (cons _exn11466_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12623)))))))
    (define terminated-thread-exception?
      (lambda (_exn11462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11462_))
            (let ((_e11464_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11462_ 'exception))))
              (macro-terminated-thread-exception? _e11464_))
            (macro-terminated-thread-exception? _exn11462_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11458_))
            (let ((_e11460_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11458_ 'exception))))
              (if (macro-terminated-thread-exception? _e11460_)
                  (macro-terminated-thread-exception-arguments _e11460_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12626
                                (let ()
                                  (declare (not safe))
                                  (cons _e11460_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12626)))))
            (if (macro-terminated-thread-exception? _exn11458_)
                (macro-terminated-thread-exception-arguments _exn11458_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12625
                              (let ()
                                (declare (not safe))
                                (cons _exn11458_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12625)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11452_))
            (let ((_e11455_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11452_ 'exception))))
              (if (macro-terminated-thread-exception? _e11455_)
                  (macro-terminated-thread-exception-procedure _e11455_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12628
                                (let ()
                                  (declare (not safe))
                                  (cons _e11455_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12628)))))
            (if (macro-terminated-thread-exception? _exn11452_)
                (macro-terminated-thread-exception-procedure _exn11452_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12627
                              (let ()
                                (declare (not safe))
                                (cons _exn11452_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12627)))))))
    (define type-exception?
      (lambda (_exn11448_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11448_))
            (let ((_e11450_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11448_ 'exception))))
              (macro-type-exception? _e11450_))
            (macro-type-exception? _exn11448_))))
    (define type-exception-arg-id
      (lambda (_exn11444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11444_))
            (let ((_e11446_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11444_ 'exception))))
              (if (macro-type-exception? _e11446_)
                  (macro-type-exception-arg-id _e11446_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12630
                                (let ()
                                  (declare (not safe))
                                  (cons _e11446_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12630)))))
            (if (macro-type-exception? _exn11444_)
                (macro-type-exception-arg-id _exn11444_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12629
                              (let ()
                                (declare (not safe))
                                (cons _exn11444_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12629)))))))
    (define type-exception-arguments
      (lambda (_exn11440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11440_))
            (let ((_e11442_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11440_ 'exception))))
              (if (macro-type-exception? _e11442_)
                  (macro-type-exception-arguments _e11442_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12632
                                (let ()
                                  (declare (not safe))
                                  (cons _e11442_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12632)))))
            (if (macro-type-exception? _exn11440_)
                (macro-type-exception-arguments _exn11440_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12631
                              (let ()
                                (declare (not safe))
                                (cons _exn11440_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12631)))))))
    (define type-exception-procedure
      (lambda (_exn11436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11436_))
            (let ((_e11438_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11436_ 'exception))))
              (if (macro-type-exception? _e11438_)
                  (macro-type-exception-procedure _e11438_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12634
                                (let ()
                                  (declare (not safe))
                                  (cons _e11438_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12634)))))
            (if (macro-type-exception? _exn11436_)
                (macro-type-exception-procedure _exn11436_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12633
                              (let ()
                                (declare (not safe))
                                (cons _exn11436_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12633)))))))
    (define type-exception-type-id
      (lambda (_exn11430_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11430_))
            (let ((_e11433_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11430_ 'exception))))
              (if (macro-type-exception? _e11433_)
                  (macro-type-exception-type-id _e11433_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12636
                                (let ()
                                  (declare (not safe))
                                  (cons _e11433_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12636)))))
            (if (macro-type-exception? _exn11430_)
                (macro-type-exception-type-id _exn11430_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12635
                              (let ()
                                (declare (not safe))
                                (cons _exn11430_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12635)))))))
    (define unbound-global-exception?
      (lambda (_exn11426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11426_))
            (let ((_e11428_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11426_ 'exception))))
              (macro-unbound-global-exception? _e11428_))
            (macro-unbound-global-exception? _exn11426_))))
    (define unbound-global-exception-code
      (lambda (_exn11422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11422_))
            (let ((_e11424_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11422_ 'exception))))
              (if (macro-unbound-global-exception? _e11424_)
                  (macro-unbound-global-exception-code _e11424_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12638
                                (let ()
                                  (declare (not safe))
                                  (cons _e11424_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12638)))))
            (if (macro-unbound-global-exception? _exn11422_)
                (macro-unbound-global-exception-code _exn11422_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12637
                              (let ()
                                (declare (not safe))
                                (cons _exn11422_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12637)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11418_))
            (let ((_e11420_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11418_ 'exception))))
              (if (macro-unbound-global-exception? _e11420_)
                  (macro-unbound-global-exception-rte _e11420_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12640
                                (let ()
                                  (declare (not safe))
                                  (cons _e11420_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12640)))))
            (if (macro-unbound-global-exception? _exn11418_)
                (macro-unbound-global-exception-rte _exn11418_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12639
                              (let ()
                                (declare (not safe))
                                (cons _exn11418_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12639)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11412_))
            (let ((_e11415_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11412_ 'exception))))
              (if (macro-unbound-global-exception? _e11415_)
                  (macro-unbound-global-exception-variable _e11415_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12642
                                (let ()
                                  (declare (not safe))
                                  (cons _e11415_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12642)))))
            (if (macro-unbound-global-exception? _exn11412_)
                (macro-unbound-global-exception-variable _exn11412_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12641
                              (let ()
                                (declare (not safe))
                                (cons _exn11412_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12641)))))))
    (define unbound-key-exception?
      (lambda (_exn11408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11408_))
            (let ((_e11410_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11408_ 'exception))))
              (macro-unbound-key-exception? _e11410_))
            (macro-unbound-key-exception? _exn11408_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11404_))
            (let ((_e11406_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11404_ 'exception))))
              (if (macro-unbound-key-exception? _e11406_)
                  (macro-unbound-key-exception-arguments _e11406_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12644
                                (let ()
                                  (declare (not safe))
                                  (cons _e11406_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12644)))))
            (if (macro-unbound-key-exception? _exn11404_)
                (macro-unbound-key-exception-arguments _exn11404_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12643
                              (let ()
                                (declare (not safe))
                                (cons _exn11404_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12643)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11398_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11398_))
            (let ((_e11401_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11398_ 'exception))))
              (if (macro-unbound-key-exception? _e11401_)
                  (macro-unbound-key-exception-procedure _e11401_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12646
                                (let ()
                                  (declare (not safe))
                                  (cons _e11401_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12646)))))
            (if (macro-unbound-key-exception? _exn11398_)
                (macro-unbound-key-exception-procedure _exn11398_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12645
                              (let ()
                                (declare (not safe))
                                (cons _exn11398_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12645)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11394_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11394_))
            (let ((_e11396_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11394_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11396_))
            (macro-unbound-os-environment-variable-exception? _exn11394_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11390_))
            (let ((_e11392_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11390_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11392_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11392_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12648
                                (let ()
                                  (declare (not safe))
                                  (cons _e11392_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12648)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11390_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11390_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12647
                              (let ()
                                (declare (not safe))
                                (cons _exn11390_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12647)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11384_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11384_))
            (let ((_e11387_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11384_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11387_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11387_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12650
                                (let ()
                                  (declare (not safe))
                                  (cons _e11387_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12650)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11384_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11384_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12649
                              (let ()
                                (declare (not safe))
                                (cons _exn11384_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12649)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11380_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11380_))
            (let ((_e11382_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11380_ 'exception))))
              (macro-unbound-serial-number-exception? _e11382_))
            (macro-unbound-serial-number-exception? _exn11380_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11376_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11376_))
            (let ((_e11378_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11376_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11378_)
                  (macro-unbound-serial-number-exception-arguments _e11378_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12652
                                (let ()
                                  (declare (not safe))
                                  (cons _e11378_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12652)))))
            (if (macro-unbound-serial-number-exception? _exn11376_)
                (macro-unbound-serial-number-exception-arguments _exn11376_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12651
                              (let ()
                                (declare (not safe))
                                (cons _exn11376_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12651)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11370_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11370_))
            (let ((_e11373_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11370_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11373_)
                  (macro-unbound-serial-number-exception-procedure _e11373_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12654
                                (let ()
                                  (declare (not safe))
                                  (cons _e11373_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12654)))))
            (if (macro-unbound-serial-number-exception? _exn11370_)
                (macro-unbound-serial-number-exception-procedure _exn11370_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12653
                              (let ()
                                (declare (not safe))
                                (cons _exn11370_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12653)))))))
    (define uncaught-exception?
      (lambda (_exn11366_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11366_))
            (let ((_e11368_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11366_ 'exception))))
              (macro-uncaught-exception? _e11368_))
            (macro-uncaught-exception? _exn11366_))))
    (define uncaught-exception-arguments
      (lambda (_exn11362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11362_))
            (let ((_e11364_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11362_ 'exception))))
              (if (macro-uncaught-exception? _e11364_)
                  (macro-uncaught-exception-arguments _e11364_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12656
                                (let ()
                                  (declare (not safe))
                                  (cons _e11364_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12656)))))
            (if (macro-uncaught-exception? _exn11362_)
                (macro-uncaught-exception-arguments _exn11362_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12655
                              (let ()
                                (declare (not safe))
                                (cons _exn11362_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12655)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11358_))
            (let ((_e11360_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11358_ 'exception))))
              (if (macro-uncaught-exception? _e11360_)
                  (macro-uncaught-exception-procedure _e11360_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12658
                                (let ()
                                  (declare (not safe))
                                  (cons _e11360_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12658)))))
            (if (macro-uncaught-exception? _exn11358_)
                (macro-uncaught-exception-procedure _exn11358_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12657
                              (let ()
                                (declare (not safe))
                                (cons _exn11358_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12657)))))))
    (define uncaught-exception-reason
      (lambda (_exn11352_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11352_))
            (let ((_e11355_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11352_ 'exception))))
              (if (macro-uncaught-exception? _e11355_)
                  (macro-uncaught-exception-reason _e11355_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12660
                                (let ()
                                  (declare (not safe))
                                  (cons _e11355_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12660)))))
            (if (macro-uncaught-exception? _exn11352_)
                (macro-uncaught-exception-reason _exn11352_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12659
                              (let ()
                                (declare (not safe))
                                (cons _exn11352_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12659)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11348_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11348_))
            (let ((_e11350_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11348_ 'exception))))
              (macro-uninitialized-thread-exception? _e11350_))
            (macro-uninitialized-thread-exception? _exn11348_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11344_))
            (let ((_e11346_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11344_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11346_)
                  (macro-uninitialized-thread-exception-arguments _e11346_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12662
                                (let ()
                                  (declare (not safe))
                                  (cons _e11346_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12662)))))
            (if (macro-uninitialized-thread-exception? _exn11344_)
                (macro-uninitialized-thread-exception-arguments _exn11344_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12661
                              (let ()
                                (declare (not safe))
                                (cons _exn11344_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12661)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11338_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11338_))
            (let ((_e11341_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11338_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11341_)
                  (macro-uninitialized-thread-exception-procedure _e11341_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12664
                                (let ()
                                  (declare (not safe))
                                  (cons _e11341_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12664)))))
            (if (macro-uninitialized-thread-exception? _exn11338_)
                (macro-uninitialized-thread-exception-procedure _exn11338_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12663
                              (let ()
                                (declare (not safe))
                                (cons _exn11338_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12663)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11334_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11334_))
            (let ((_e11336_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11334_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11336_))
            (macro-unknown-keyword-argument-exception? _exn11334_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11330_))
            (let ((_e11332_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11330_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11332_)
                  (macro-unknown-keyword-argument-exception-arguments _e11332_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12666
                                (let ()
                                  (declare (not safe))
                                  (cons _e11332_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12666)))))
            (if (macro-unknown-keyword-argument-exception? _exn11330_)
                (macro-unknown-keyword-argument-exception-arguments _exn11330_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12665
                              (let ()
                                (declare (not safe))
                                (cons _exn11330_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12665)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11324_))
            (let ((_e11327_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11324_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11327_)
                  (macro-unknown-keyword-argument-exception-procedure _e11327_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12668
                                (let ()
                                  (declare (not safe))
                                  (cons _e11327_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12668)))))
            (if (macro-unknown-keyword-argument-exception? _exn11324_)
                (macro-unknown-keyword-argument-exception-procedure _exn11324_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12667
                              (let ()
                                (declare (not safe))
                                (cons _exn11324_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12667)))))))
    (define unterminated-process-exception?
      (lambda (_exn11320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11320_))
            (let ((_e11322_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11320_ 'exception))))
              (macro-unterminated-process-exception? _e11322_))
            (macro-unterminated-process-exception? _exn11320_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11316_))
            (let ((_e11318_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11316_ 'exception))))
              (if (macro-unterminated-process-exception? _e11318_)
                  (macro-unterminated-process-exception-arguments _e11318_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12670
                                (let ()
                                  (declare (not safe))
                                  (cons _e11318_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12670)))))
            (if (macro-unterminated-process-exception? _exn11316_)
                (macro-unterminated-process-exception-arguments _exn11316_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12669
                              (let ()
                                (declare (not safe))
                                (cons _exn11316_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12669)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11310_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11310_))
            (let ((_e11313_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11310_ 'exception))))
              (if (macro-unterminated-process-exception? _e11313_)
                  (macro-unterminated-process-exception-procedure _e11313_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12672
                                (let ()
                                  (declare (not safe))
                                  (cons _e11313_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12672)))))
            (if (macro-unterminated-process-exception? _exn11310_)
                (macro-unterminated-process-exception-procedure _exn11310_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12671
                              (let ()
                                (declare (not safe))
                                (cons _exn11310_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12671)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11306_))
            (let ((_e11308_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11306_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11308_))
            (macro-wrong-number-of-arguments-exception? _exn11306_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11302_))
            (let ((_e11304_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11302_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11304_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11304_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12674
                                (let ()
                                  (declare (not safe))
                                  (cons _e11304_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12674)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11302_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11302_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12673
                              (let ()
                                (declare (not safe))
                                (cons _exn11302_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12673)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11296_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11296_))
            (let ((_e11299_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11296_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11299_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11299_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12676
                                (let ()
                                  (declare (not safe))
                                  (cons _e11299_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12676)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11296_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11296_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12675
                              (let ()
                                (declare (not safe))
                                (cons _exn11296_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12675)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11292_))
            (let ((_e11294_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11292_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11294_))
            (macro-wrong-number-of-values-exception? _exn11292_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11288_))
            (let ((_e11290_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11288_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11290_)
                  (macro-wrong-number-of-values-exception-code _e11290_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12678
                                (let ()
                                  (declare (not safe))
                                  (cons _e11290_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12678)))))
            (if (macro-wrong-number-of-values-exception? _exn11288_)
                (macro-wrong-number-of-values-exception-code _exn11288_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12677
                              (let ()
                                (declare (not safe))
                                (cons _exn11288_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12677)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11284_))
            (let ((_e11286_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11284_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11286_)
                  (macro-wrong-number-of-values-exception-rte _e11286_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12680
                                (let ()
                                  (declare (not safe))
                                  (cons _e11286_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12680)))))
            (if (macro-wrong-number-of-values-exception? _exn11284_)
                (macro-wrong-number-of-values-exception-rte _exn11284_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12679
                              (let ()
                                (declare (not safe))
                                (cons _exn11284_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12679)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11278_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11278_))
            (let ((_e11281_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11278_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11281_)
                  (macro-wrong-number-of-values-exception-vals _e11281_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12682
                                (let ()
                                  (declare (not safe))
                                  (cons _e11281_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12682)))))
            (if (macro-wrong-number-of-values-exception? _exn11278_)
                (macro-wrong-number-of-values-exception-vals _exn11278_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12681
                              (let ()
                                (declare (not safe))
                                (cons _exn11278_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12681)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11272_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11272_))
            (let ((_e11275_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11272_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11275_))
            (macro-wrong-processor-c-return-exception? _exn11272_))))))
