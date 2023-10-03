(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1696372335)
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
      (lambda _$args12481_
        (apply make-class-instance Exception::t _$args12481_)))
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
      (lambda _$args12478_
        (apply make-class-instance StackTrace::t _$args12478_)))
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
      (let ((__tmp12501
             (let ((__tmp12502
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12502))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12501
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12475_ (apply make-class-instance Error::t _$args12475_)))
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
      (let ((__tmp12503
             (let ((__tmp12504
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12504))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12503
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12472_
        (apply make-class-instance RuntimeException::t _$args12472_)))
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
      (lambda (_exn12467_ _continue12468_)
        (let ((_exn12470_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12467_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12470_ _continue12468_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12463_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12463_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12463_ 'continuation))
                '#!void
                (let ((__tmp12505
                       (lambda (_cont12465_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12463_
                            'continuation
                            _cont12465_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12505)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12463_))))
    (define error
      (lambda (_message12460_ . _irritants12461_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12460_
                  'irritants:
                  _irritants12461_)))))
    (define with-exception-handler
      (lambda (_handler12453_ _thunk12454_)
        (if (let () (declare (not safe)) (procedure? _handler12453_))
            '#!void
            (raise (let ((__tmp12506
                          (let ()
                            (declare (not safe))
                            (cons _handler12453_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12506))))
        (if (let () (declare (not safe)) (procedure? _thunk12454_))
            '#!void
            (raise (let ((__tmp12507
                          (let ()
                            (declare (not safe))
                            (cons _thunk12454_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12507))))
        (let ((__tmp12508
               (lambda (_exn12456_)
                 (let ((_exn12458_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12456_))))
                   (_handler12453_ _exn12458_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12508 _thunk12454_))))
    (define with-catch
      (lambda (_handler12446_ _thunk12447_)
        (if (let () (declare (not safe)) (procedure? _handler12446_))
            '#!void
            (raise (let ((__tmp12509
                          (let ()
                            (declare (not safe))
                            (cons _handler12446_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12509))))
        (if (let () (declare (not safe)) (procedure? _thunk12447_))
            '#!void
            (raise (let ((__tmp12510
                          (let ()
                            (declare (not safe))
                            (cons _thunk12447_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12510))))
        (let ((__tmp12511
               (lambda (_cont12449_)
                 (with-exception-handler
                  (lambda (_exn12451_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12449_
                       _handler12446_
                       _exn12451_)))
                  _thunk12447_))))
          (declare (not safe))
          (##continuation-capture __tmp12511))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12437_)
        (if (or (heap-overflow-exception? _exn12437_)
                (stack-overflow-exception? _exn12437_))
            _exn12437_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12437_))
                _exn12437_
                (if (macro-exception? _exn12437_)
                    (let ((_rte12442_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12437_))))
                      (let ((__tmp12512
                             (lambda (_cont12444_)
                               (let ((__tmp12513
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12444_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12442_
                                  'continuation
                                  __tmp12513)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12512))
                      _rte12442_)
                    _exn12437_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12432_)
        (let ((_$e12434_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12432_))))
          (if _$e12434_ _$e12434_ (error-exception? _obj12432_)))))
    (define error-message
      (lambda (_obj12430_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12430_))
            (let () (declare (not safe)) (slot-ref _obj12430_ 'message))
            (if (error-exception? _obj12430_)
                (error-exception-message _obj12430_)
                '#f))))
    (define error-irritants
      (lambda (_obj12428_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12428_))
            (let () (declare (not safe)) (slot-ref _obj12428_ 'irritants))
            (if (error-exception? _obj12428_)
                (error-exception-parameters _obj12428_)
                '#f))))
    (define error-trace
      (lambda (_obj12426_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12426_))
            (let () (declare (not safe)) (slot-ref _obj12426_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12408_ _port12409_)
        (let ((_$e12411_
               (let ()
                 (declare (not safe))
                 (method-ref _e12408_ 'display-exception))))
          (if _$e12411_
              ((lambda (_f12414_) (_f12414_ _e12408_ _port12409_)) _$e12411_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12408_ _port12409_))))))
    (define display-exception__0
      (lambda (_e12419_)
        (let ((_port12421_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12419_ _port12421_))))
    (define display-exception
      (lambda _g12515_
        (let ((_g12514_ (let () (declare (not safe)) (##length _g12515_))))
          (cond ((let () (declare (not safe)) (##fx= _g12514_ 1))
                 (apply (lambda (_e12419_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12419_)))
                        _g12515_))
                ((let () (declare (not safe)) (##fx= _g12514_ 2))
                 (apply (lambda (_e12423_ _port12424_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12423_ _port12424_)))
                        _g12515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12515_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12397_ _message12398_ . _rest12399_)
        (let ((_message12405_
               (if (let () (declare (not safe)) (string? _message12398_))
                   _message12398_
                   (call-with-output-string
                    '""
                    (lambda (_g1240012402_)
                      (display _message12398_ _g1240012402_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12397_ 'message _message12405_))
          (apply class-instance-init! _self12397_ _rest12399_))))
    (define Error:::init!::specialize
      (lambda (__t12483)
        (let ((__message12484
               (let ((__tmp12485
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12483 'message))))
                 (if __tmp12485
                     (let () (declare (not safe)) (##fx+ __tmp12485 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12397_ _message12398_ . _rest12399_)
            (let ((_message12405_
                   (if (let () (declare (not safe)) (string? _message12398_))
                       _message12398_
                       (call-with-output-string
                        '""
                        (lambda (_g1240012402_)
                          (display _message12398_ _g1240012402_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12397_
                 _message12405_
                 __message12484
                 __t12483
                 '#f))
              (apply class-instance-init! _self12397_ _rest12399_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define Error::display-exception
      (lambda (_self12255_ _port12256_)
        (let ((_tmp-port12258_ (open-output-string))
              (_display-error-newline12259_
               (> (output-port-column _port12256_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12258_))
          (let ((__tmp12516
                 (lambda ()
                   (if _display-error-newline12259_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12262_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12255_ 'where))))
                     (if _$e12262_ (display _$e12262_) (display '"?")))
                   (let ((__tmp12517
                          (let ((__tmp12518
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12255_))))
                            (declare (not safe))
                            (##type-name __tmp12518))))
                     (declare (not safe))
                     (display* '" [" __tmp12517 '"]: "))
                   (let ((__tmp12519
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12255_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12519))
                   (let ((_irritants12265_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12255_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12265_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12267_)
                              (write _obj12267_)
                              (write-char '#\space))
                            _irritants12265_)
                           (newline))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance? StackTrace::t _self12255_))
                       (let ((_cont1226812270_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12255_ 'continuation))))
                         (if _cont1226812270_
                             (let ((_cont12273_ _cont1226812270_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12273_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12516
             current-output-port
             _tmp-port12258_))
          (let ((__tmp12520 (get-output-string _tmp-port12258_)))
            (declare (not safe))
            (##write-string __tmp12520 _port12256_)))))
    (define Error::display-exception::specialize
      (lambda (__t12486)
        (let ((__irritants12487
               (let ((__tmp12491
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12486 'irritants))))
                 (if __tmp12491
                     (let () (declare (not safe)) (##fx+ __tmp12491 '1))
                     (error '"Unknown slot" 'irritants))))
              (__message12488
               (let ((__tmp12492
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12486 'message))))
                 (if __tmp12492
                     (let () (declare (not safe)) (##fx+ __tmp12492 '1))
                     (error '"Unknown slot" 'message))))
              (__continuation12489
               (let ((__tmp12493
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12486 'continuation))))
                 (if __tmp12493
                     (let () (declare (not safe)) (##fx+ __tmp12493 '1))
                     (error '"Unknown slot" 'continuation))))
              (__where12490
               (let ((__tmp12494
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12486 'where))))
                 (if __tmp12494
                     (let () (declare (not safe)) (##fx+ __tmp12494 '1))
                     (error '"Unknown slot" 'where))))
              (__class12495
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12486))))
          (lambda (_self12255_ _port12256_)
            (let ((_tmp-port12258_ (open-output-string))
                  (_display-error-newline12259_
                   (> (output-port-column _port12256_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12258_))
              (let ((__tmp12521
                     (lambda ()
                       (if _display-error-newline12259_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12262_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12255_
                                 __where12490
                                 __t12486
                                 '#f))))
                         (if _$e12262_ (display _$e12262_) (display '"?")))
                       (let ((__tmp12522
                              (let ((__tmp12523
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12255_))))
                                (declare (not safe))
                                (##type-name __tmp12523))))
                         (declare (not safe))
                         (display* '" [" __tmp12522 '"]: "))
                       (let ((__tmp12524
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12255_
                                 __message12488
                                 __t12486
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12524))
                       (let ((_irritants12265_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12255_
                                 __irritants12487
                                 __t12486
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12265_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12267_)
                                  (write _obj12267_)
                                  (write-char '#\space))
                                _irritants12265_)
                               (newline))))
                       (if __class12495
                           (let ((_cont1226812270_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12255_
                                     __continuation12489
                                     __t12486
                                     '#f))))
                             (if _cont1226812270_
                                 (let ((_cont12273_ _cont1226812270_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12273_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12521
                 current-output-port
                 _tmp-port12258_))
              (let ((__tmp12525 (get-output-string _tmp-port12258_)))
                (declare (not safe))
                (##write-string __tmp12525 _port12256_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12122_ _port12123_)
        (let ((_tmp-port12125_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12125_))
          (let ((__tmp12526
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12122_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12526 _tmp-port12125_))
          (let ((_cont1212612128_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12122_ 'continuation))))
            (if _cont1212612128_
                (let ((_cont12131_ _cont1212612128_))
                  (display '"--- continuation backtrace:" _tmp-port12125_)
                  (newline _tmp-port12125_)
                  (display-continuation-backtrace _cont12131_ _tmp-port12125_))
                '#f))
          (let ((__tmp12527 (get-output-string _tmp-port12125_)))
            (declare (not safe))
            (##write-string __tmp12527 _port12123_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12496)
        (let ((__exception12497
               (let ((__tmp12499
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12496 'exception))))
                 (if __tmp12499
                     (let () (declare (not safe)) (##fx+ __tmp12499 '1))
                     (error '"Unknown slot" 'exception))))
              (__continuation12498
               (let ((__tmp12500
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12496 'continuation))))
                 (if __tmp12500
                     (let () (declare (not safe)) (##fx+ __tmp12500 '1))
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self12122_ _port12123_)
            (let ((_tmp-port12125_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12125_))
              (let ((__tmp12528
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12122_
                        __exception12497
                        __t12496
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12528 _tmp-port12125_))
              (let ((_cont1212612128_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12122_
                        __continuation12498
                        __t12496
                        '#f))))
                (if _cont1212612128_
                    (let ((_cont12131_ _cont1212612128_))
                      (display '"--- continuation backtrace:" _tmp-port12125_)
                      (newline _tmp-port12125_)
                      (display-continuation-backtrace
                       _cont12131_
                       _tmp-port12125_))
                    '#f))
              (let ((__tmp12529 (get-output-string _tmp-port12125_)))
                (declare (not safe))
                (##write-string __tmp12529 _port12123_)))))))
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
      (lambda (_port11994_)
        (if (macro-character-port? _port11994_)
            (let ((_old-width11996_
                   (macro-character-port-output-width _port11994_)))
              (macro-character-port-output-width-set!
               _port11994_
               (lambda (_port11998_) '256))
              _old-width11996_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11991_ _old-width11992_)
        (if (macro-character-port? _port11991_)
            (macro-character-port-output-width-set!
             _port11991_
             _old-width11992_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11989_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11989_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11983_))
            (let ((_e11986_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11983_ 'exception))))
              (macro-abandoned-mutex-exception? _e11986_))
            (macro-abandoned-mutex-exception? _exn11983_))))
    (define cfun-conversion-exception?
      (lambda (_exn11979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11979_))
            (let ((_e11981_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11979_ 'exception))))
              (macro-cfun-conversion-exception? _e11981_))
            (macro-cfun-conversion-exception? _exn11979_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11975_))
            (let ((_e11977_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11975_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11977_)
                  (macro-cfun-conversion-exception-arguments _e11977_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12531
                                (let ()
                                  (declare (not safe))
                                  (cons _e11977_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12531)))))
            (if (macro-cfun-conversion-exception? _exn11975_)
                (macro-cfun-conversion-exception-arguments _exn11975_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12530
                              (let ()
                                (declare (not safe))
                                (cons _exn11975_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12530)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11971_))
            (let ((_e11973_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11971_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11973_)
                  (macro-cfun-conversion-exception-code _e11973_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12533
                                (let ()
                                  (declare (not safe))
                                  (cons _e11973_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12533)))))
            (if (macro-cfun-conversion-exception? _exn11971_)
                (macro-cfun-conversion-exception-code _exn11971_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12532
                              (let ()
                                (declare (not safe))
                                (cons _exn11971_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12532)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11967_))
            (let ((_e11969_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11967_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11969_)
                  (macro-cfun-conversion-exception-message _e11969_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12535
                                (let ()
                                  (declare (not safe))
                                  (cons _e11969_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12535)))))
            (if (macro-cfun-conversion-exception? _exn11967_)
                (macro-cfun-conversion-exception-message _exn11967_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12534
                              (let ()
                                (declare (not safe))
                                (cons _exn11967_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12534)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11961_))
            (let ((_e11964_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11961_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11964_)
                  (macro-cfun-conversion-exception-procedure _e11964_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12537
                                (let ()
                                  (declare (not safe))
                                  (cons _e11964_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12537)))))
            (if (macro-cfun-conversion-exception? _exn11961_)
                (macro-cfun-conversion-exception-procedure _exn11961_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12536
                              (let ()
                                (declare (not safe))
                                (cons _exn11961_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12536)))))))
    (define datum-parsing-exception?
      (lambda (_exn11957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11957_))
            (let ((_e11959_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11957_ 'exception))))
              (macro-datum-parsing-exception? _e11959_))
            (macro-datum-parsing-exception? _exn11957_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11953_))
            (let ((_e11955_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11953_ 'exception))))
              (if (macro-datum-parsing-exception? _e11955_)
                  (macro-datum-parsing-exception-kind _e11955_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12539
                                (let ()
                                  (declare (not safe))
                                  (cons _e11955_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12539)))))
            (if (macro-datum-parsing-exception? _exn11953_)
                (macro-datum-parsing-exception-kind _exn11953_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12538
                              (let ()
                                (declare (not safe))
                                (cons _exn11953_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12538)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11949_))
            (let ((_e11951_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11949_ 'exception))))
              (if (macro-datum-parsing-exception? _e11951_)
                  (macro-datum-parsing-exception-parameters _e11951_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12541
                                (let ()
                                  (declare (not safe))
                                  (cons _e11951_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12541)))))
            (if (macro-datum-parsing-exception? _exn11949_)
                (macro-datum-parsing-exception-parameters _exn11949_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12540
                              (let ()
                                (declare (not safe))
                                (cons _exn11949_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12540)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11943_))
            (let ((_e11946_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11943_ 'exception))))
              (if (macro-datum-parsing-exception? _e11946_)
                  (macro-datum-parsing-exception-readenv _e11946_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12543
                                (let ()
                                  (declare (not safe))
                                  (cons _e11946_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12543)))))
            (if (macro-datum-parsing-exception? _exn11943_)
                (macro-datum-parsing-exception-readenv _exn11943_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12542
                              (let ()
                                (declare (not safe))
                                (cons _exn11943_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12542)))))))
    (define deadlock-exception?
      (lambda (_exn11937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11937_))
            (let ((_e11940_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11937_ 'exception))))
              (macro-deadlock-exception? _e11940_))
            (macro-deadlock-exception? _exn11937_))))
    (define divide-by-zero-exception?
      (lambda (_exn11933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11933_))
            (let ((_e11935_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11933_ 'exception))))
              (macro-divide-by-zero-exception? _e11935_))
            (macro-divide-by-zero-exception? _exn11933_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11929_))
            (let ((_e11931_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11929_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11931_)
                  (macro-divide-by-zero-exception-arguments _e11931_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12545
                                (let ()
                                  (declare (not safe))
                                  (cons _e11931_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12545)))))
            (if (macro-divide-by-zero-exception? _exn11929_)
                (macro-divide-by-zero-exception-arguments _exn11929_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12544
                              (let ()
                                (declare (not safe))
                                (cons _exn11929_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12544)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11923_))
            (let ((_e11926_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11923_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11926_)
                  (macro-divide-by-zero-exception-procedure _e11926_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12547
                                (let ()
                                  (declare (not safe))
                                  (cons _e11926_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12547)))))
            (if (macro-divide-by-zero-exception? _exn11923_)
                (macro-divide-by-zero-exception-procedure _exn11923_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12546
                              (let ()
                                (declare (not safe))
                                (cons _exn11923_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12546)))))))
    (define error-exception?
      (lambda (_exn11919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11919_))
            (let ((_e11921_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11919_ 'exception))))
              (macro-error-exception? _e11921_))
            (macro-error-exception? _exn11919_))))
    (define error-exception-message
      (lambda (_exn11915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11915_))
            (let ((_e11917_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11915_ 'exception))))
              (if (macro-error-exception? _e11917_)
                  (macro-error-exception-message _e11917_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12549
                                (let ()
                                  (declare (not safe))
                                  (cons _e11917_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12549)))))
            (if (macro-error-exception? _exn11915_)
                (macro-error-exception-message _exn11915_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12548
                              (let ()
                                (declare (not safe))
                                (cons _exn11915_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12548)))))))
    (define error-exception-parameters
      (lambda (_exn11909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11909_))
            (let ((_e11912_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11909_ 'exception))))
              (if (macro-error-exception? _e11912_)
                  (macro-error-exception-parameters _e11912_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12551
                                (let ()
                                  (declare (not safe))
                                  (cons _e11912_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12551)))))
            (if (macro-error-exception? _exn11909_)
                (macro-error-exception-parameters _exn11909_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12550
                              (let ()
                                (declare (not safe))
                                (cons _exn11909_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12550)))))))
    (define expression-parsing-exception?
      (lambda (_exn11905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11905_))
            (let ((_e11907_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11905_ 'exception))))
              (macro-expression-parsing-exception? _e11907_))
            (macro-expression-parsing-exception? _exn11905_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11901_))
            (let ((_e11903_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11901_ 'exception))))
              (if (macro-expression-parsing-exception? _e11903_)
                  (macro-expression-parsing-exception-kind _e11903_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12553
                                (let ()
                                  (declare (not safe))
                                  (cons _e11903_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12553)))))
            (if (macro-expression-parsing-exception? _exn11901_)
                (macro-expression-parsing-exception-kind _exn11901_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12552
                              (let ()
                                (declare (not safe))
                                (cons _exn11901_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12552)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11897_))
            (let ((_e11899_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11897_ 'exception))))
              (if (macro-expression-parsing-exception? _e11899_)
                  (macro-expression-parsing-exception-parameters _e11899_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12555
                                (let ()
                                  (declare (not safe))
                                  (cons _e11899_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12555)))))
            (if (macro-expression-parsing-exception? _exn11897_)
                (macro-expression-parsing-exception-parameters _exn11897_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12554
                              (let ()
                                (declare (not safe))
                                (cons _exn11897_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12554)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11891_))
            (let ((_e11894_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11891_ 'exception))))
              (if (macro-expression-parsing-exception? _e11894_)
                  (macro-expression-parsing-exception-source _e11894_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12557
                                (let ()
                                  (declare (not safe))
                                  (cons _e11894_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12557)))))
            (if (macro-expression-parsing-exception? _exn11891_)
                (macro-expression-parsing-exception-source _exn11891_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12556
                              (let ()
                                (declare (not safe))
                                (cons _exn11891_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12556)))))))
    (define file-exists-exception?
      (lambda (_exn11887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11887_))
            (let ((_e11889_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11887_ 'exception))))
              (macro-file-exists-exception? _e11889_))
            (macro-file-exists-exception? _exn11887_))))
    (define file-exists-exception-arguments
      (lambda (_exn11883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11883_))
            (let ((_e11885_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11883_ 'exception))))
              (if (macro-file-exists-exception? _e11885_)
                  (macro-file-exists-exception-arguments _e11885_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12559
                                (let ()
                                  (declare (not safe))
                                  (cons _e11885_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12559)))))
            (if (macro-file-exists-exception? _exn11883_)
                (macro-file-exists-exception-arguments _exn11883_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12558
                              (let ()
                                (declare (not safe))
                                (cons _exn11883_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12558)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11877_))
            (let ((_e11880_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11877_ 'exception))))
              (if (macro-file-exists-exception? _e11880_)
                  (macro-file-exists-exception-procedure _e11880_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12561
                                (let ()
                                  (declare (not safe))
                                  (cons _e11880_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12561)))))
            (if (macro-file-exists-exception? _exn11877_)
                (macro-file-exists-exception-procedure _exn11877_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12560
                              (let ()
                                (declare (not safe))
                                (cons _exn11877_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12560)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11873_))
            (let ((_e11875_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11873_ 'exception))))
              (macro-fixnum-overflow-exception? _e11875_))
            (macro-fixnum-overflow-exception? _exn11873_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11869_))
            (let ((_e11871_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11869_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11871_)
                  (macro-fixnum-overflow-exception-arguments _e11871_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12563
                                (let ()
                                  (declare (not safe))
                                  (cons _e11871_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12563)))))
            (if (macro-fixnum-overflow-exception? _exn11869_)
                (macro-fixnum-overflow-exception-arguments _exn11869_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12562
                              (let ()
                                (declare (not safe))
                                (cons _exn11869_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12562)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11863_))
            (let ((_e11866_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11863_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11866_)
                  (macro-fixnum-overflow-exception-procedure _e11866_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12565
                                (let ()
                                  (declare (not safe))
                                  (cons _e11866_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12565)))))
            (if (macro-fixnum-overflow-exception? _exn11863_)
                (macro-fixnum-overflow-exception-procedure _exn11863_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12564
                              (let ()
                                (declare (not safe))
                                (cons _exn11863_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12564)))))))
    (define heap-overflow-exception?
      (lambda (_exn11857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11857_))
            (let ((_e11860_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11857_ 'exception))))
              (macro-heap-overflow-exception? _e11860_))
            (macro-heap-overflow-exception? _exn11857_))))
    (define inactive-thread-exception?
      (lambda (_exn11853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11853_))
            (let ((_e11855_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11853_ 'exception))))
              (macro-inactive-thread-exception? _e11855_))
            (macro-inactive-thread-exception? _exn11853_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11849_))
            (let ((_e11851_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11849_ 'exception))))
              (if (macro-inactive-thread-exception? _e11851_)
                  (macro-inactive-thread-exception-arguments _e11851_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12567
                                (let ()
                                  (declare (not safe))
                                  (cons _e11851_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12567)))))
            (if (macro-inactive-thread-exception? _exn11849_)
                (macro-inactive-thread-exception-arguments _exn11849_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12566
                              (let ()
                                (declare (not safe))
                                (cons _exn11849_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12566)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11843_))
            (let ((_e11846_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11843_ 'exception))))
              (if (macro-inactive-thread-exception? _e11846_)
                  (macro-inactive-thread-exception-procedure _e11846_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12569
                                (let ()
                                  (declare (not safe))
                                  (cons _e11846_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12569)))))
            (if (macro-inactive-thread-exception? _exn11843_)
                (macro-inactive-thread-exception-procedure _exn11843_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12568
                              (let ()
                                (declare (not safe))
                                (cons _exn11843_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12568)))))))
    (define initialized-thread-exception?
      (lambda (_exn11839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11839_))
            (let ((_e11841_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11839_ 'exception))))
              (macro-initialized-thread-exception? _e11841_))
            (macro-initialized-thread-exception? _exn11839_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11835_))
            (let ((_e11837_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11835_ 'exception))))
              (if (macro-initialized-thread-exception? _e11837_)
                  (macro-initialized-thread-exception-arguments _e11837_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12571
                                (let ()
                                  (declare (not safe))
                                  (cons _e11837_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12571)))))
            (if (macro-initialized-thread-exception? _exn11835_)
                (macro-initialized-thread-exception-arguments _exn11835_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12570
                              (let ()
                                (declare (not safe))
                                (cons _exn11835_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12570)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11829_))
            (let ((_e11832_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11829_ 'exception))))
              (if (macro-initialized-thread-exception? _e11832_)
                  (macro-initialized-thread-exception-procedure _e11832_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12573
                                (let ()
                                  (declare (not safe))
                                  (cons _e11832_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12573)))))
            (if (macro-initialized-thread-exception? _exn11829_)
                (macro-initialized-thread-exception-procedure _exn11829_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12572
                              (let ()
                                (declare (not safe))
                                (cons _exn11829_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12572)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11825_))
            (let ((_e11827_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11825_ 'exception))))
              (macro-invalid-hash-number-exception? _e11827_))
            (macro-invalid-hash-number-exception? _exn11825_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11821_))
            (let ((_e11823_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11821_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11823_)
                  (macro-invalid-hash-number-exception-arguments _e11823_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12575
                                (let ()
                                  (declare (not safe))
                                  (cons _e11823_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12575)))))
            (if (macro-invalid-hash-number-exception? _exn11821_)
                (macro-invalid-hash-number-exception-arguments _exn11821_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12574
                              (let ()
                                (declare (not safe))
                                (cons _exn11821_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12574)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11815_))
            (let ((_e11818_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11815_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11818_)
                  (macro-invalid-hash-number-exception-procedure _e11818_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12577
                                (let ()
                                  (declare (not safe))
                                  (cons _e11818_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12577)))))
            (if (macro-invalid-hash-number-exception? _exn11815_)
                (macro-invalid-hash-number-exception-procedure _exn11815_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12576
                              (let ()
                                (declare (not safe))
                                (cons _exn11815_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12576)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11811_))
            (let ((_e11813_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11811_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11813_))
            (macro-invalid-utf8-encoding-exception? _exn11811_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11807_))
            (let ((_e11809_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11807_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11809_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11809_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12579
                                (let ()
                                  (declare (not safe))
                                  (cons _e11809_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12579)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11807_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11807_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12578
                              (let ()
                                (declare (not safe))
                                (cons _exn11807_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12578)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11801_))
            (let ((_e11804_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11801_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11804_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11804_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12581
                                (let ()
                                  (declare (not safe))
                                  (cons _e11804_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12581)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11801_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11801_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12580
                              (let ()
                                (declare (not safe))
                                (cons _exn11801_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12580)))))))
    (define join-timeout-exception?
      (lambda (_exn11797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11797_))
            (let ((_e11799_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11797_ 'exception))))
              (macro-join-timeout-exception? _e11799_))
            (macro-join-timeout-exception? _exn11797_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11793_))
            (let ((_e11795_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11793_ 'exception))))
              (if (macro-join-timeout-exception? _e11795_)
                  (macro-join-timeout-exception-arguments _e11795_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12583
                                (let ()
                                  (declare (not safe))
                                  (cons _e11795_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12583)))))
            (if (macro-join-timeout-exception? _exn11793_)
                (macro-join-timeout-exception-arguments _exn11793_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12582
                              (let ()
                                (declare (not safe))
                                (cons _exn11793_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12582)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11787_))
            (let ((_e11790_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11787_ 'exception))))
              (if (macro-join-timeout-exception? _e11790_)
                  (macro-join-timeout-exception-procedure _e11790_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12585
                                (let ()
                                  (declare (not safe))
                                  (cons _e11790_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12585)))))
            (if (macro-join-timeout-exception? _exn11787_)
                (macro-join-timeout-exception-procedure _exn11787_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12584
                              (let ()
                                (declare (not safe))
                                (cons _exn11787_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12584)))))))
    (define keyword-expected-exception?
      (lambda (_exn11783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11783_))
            (let ((_e11785_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11783_ 'exception))))
              (macro-keyword-expected-exception? _e11785_))
            (macro-keyword-expected-exception? _exn11783_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11779_))
            (let ((_e11781_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11779_ 'exception))))
              (if (macro-keyword-expected-exception? _e11781_)
                  (macro-keyword-expected-exception-arguments _e11781_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12587
                                (let ()
                                  (declare (not safe))
                                  (cons _e11781_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12587)))))
            (if (macro-keyword-expected-exception? _exn11779_)
                (macro-keyword-expected-exception-arguments _exn11779_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12586
                              (let ()
                                (declare (not safe))
                                (cons _exn11779_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12586)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11773_))
            (let ((_e11776_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11773_ 'exception))))
              (if (macro-keyword-expected-exception? _e11776_)
                  (macro-keyword-expected-exception-procedure _e11776_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12589
                                (let ()
                                  (declare (not safe))
                                  (cons _e11776_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12589)))))
            (if (macro-keyword-expected-exception? _exn11773_)
                (macro-keyword-expected-exception-procedure _exn11773_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12588
                              (let ()
                                (declare (not safe))
                                (cons _exn11773_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12588)))))))
    (define length-mismatch-exception?
      (lambda (_exn11769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11769_))
            (let ((_e11771_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11769_ 'exception))))
              (macro-length-mismatch-exception? _e11771_))
            (macro-length-mismatch-exception? _exn11769_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11765_))
            (let ((_e11767_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11765_ 'exception))))
              (if (macro-length-mismatch-exception? _e11767_)
                  (macro-length-mismatch-exception-arg-id _e11767_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12591
                                (let ()
                                  (declare (not safe))
                                  (cons _e11767_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12591)))))
            (if (macro-length-mismatch-exception? _exn11765_)
                (macro-length-mismatch-exception-arg-id _exn11765_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12590
                              (let ()
                                (declare (not safe))
                                (cons _exn11765_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12590)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11761_))
            (let ((_e11763_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11761_ 'exception))))
              (if (macro-length-mismatch-exception? _e11763_)
                  (macro-length-mismatch-exception-arguments _e11763_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12593
                                (let ()
                                  (declare (not safe))
                                  (cons _e11763_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12593)))))
            (if (macro-length-mismatch-exception? _exn11761_)
                (macro-length-mismatch-exception-arguments _exn11761_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12592
                              (let ()
                                (declare (not safe))
                                (cons _exn11761_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12592)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11755_))
            (let ((_e11758_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11755_ 'exception))))
              (if (macro-length-mismatch-exception? _e11758_)
                  (macro-length-mismatch-exception-procedure _e11758_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12595
                                (let ()
                                  (declare (not safe))
                                  (cons _e11758_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12595)))))
            (if (macro-length-mismatch-exception? _exn11755_)
                (macro-length-mismatch-exception-procedure _exn11755_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12594
                              (let ()
                                (declare (not safe))
                                (cons _exn11755_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12594)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11751_))
            (let ((_e11753_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11751_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11753_))
            (macro-mailbox-receive-timeout-exception? _exn11751_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11747_))
            (let ((_e11749_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11747_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11749_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11749_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12597
                                (let ()
                                  (declare (not safe))
                                  (cons _e11749_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12597)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11747_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11747_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12596
                              (let ()
                                (declare (not safe))
                                (cons _exn11747_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12596)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11741_))
            (let ((_e11744_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11741_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11744_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11744_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12599
                                (let ()
                                  (declare (not safe))
                                  (cons _e11744_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12599)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11741_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11741_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12598
                              (let ()
                                (declare (not safe))
                                (cons _exn11741_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12598)))))))
    (define module-not-found-exception?
      (lambda (_exn11737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11737_))
            (let ((_e11739_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11737_ 'exception))))
              (macro-module-not-found-exception? _e11739_))
            (macro-module-not-found-exception? _exn11737_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11733_))
            (let ((_e11735_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11733_ 'exception))))
              (if (macro-module-not-found-exception? _e11735_)
                  (macro-module-not-found-exception-arguments _e11735_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12601
                                (let ()
                                  (declare (not safe))
                                  (cons _e11735_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12601)))))
            (if (macro-module-not-found-exception? _exn11733_)
                (macro-module-not-found-exception-arguments _exn11733_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12600
                              (let ()
                                (declare (not safe))
                                (cons _exn11733_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12600)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11727_))
            (let ((_e11730_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11727_ 'exception))))
              (if (macro-module-not-found-exception? _e11730_)
                  (macro-module-not-found-exception-procedure _e11730_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12603
                                (let ()
                                  (declare (not safe))
                                  (cons _e11730_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12603)))))
            (if (macro-module-not-found-exception? _exn11727_)
                (macro-module-not-found-exception-procedure _exn11727_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12602
                              (let ()
                                (declare (not safe))
                                (cons _exn11727_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12602)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11721_))
            (let ((_e11724_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11721_ 'exception))))
              (macro-multiple-c-return-exception? _e11724_))
            (macro-multiple-c-return-exception? _exn11721_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11717_))
            (let ((_e11719_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11717_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11719_))
            (macro-no-such-file-or-directory-exception? _exn11717_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11713_))
            (let ((_e11715_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11713_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11715_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11715_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12605
                                (let ()
                                  (declare (not safe))
                                  (cons _e11715_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12605)))))
            (if (macro-no-such-file-or-directory-exception? _exn11713_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11713_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12604
                              (let ()
                                (declare (not safe))
                                (cons _exn11713_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12604)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11707_))
            (let ((_e11710_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11707_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11710_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11710_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12607
                                (let ()
                                  (declare (not safe))
                                  (cons _e11710_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12607)))))
            (if (macro-no-such-file-or-directory-exception? _exn11707_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11707_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12606
                              (let ()
                                (declare (not safe))
                                (cons _exn11707_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12606)))))))
    (define noncontinuable-exception?
      (lambda (_exn11703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11703_))
            (let ((_e11705_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11703_ 'exception))))
              (macro-noncontinuable-exception? _e11705_))
            (macro-noncontinuable-exception? _exn11703_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11697_))
            (let ((_e11700_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11697_ 'exception))))
              (if (macro-noncontinuable-exception? _e11700_)
                  (macro-noncontinuable-exception-reason _e11700_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12609
                                (let ()
                                  (declare (not safe))
                                  (cons _e11700_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12609)))))
            (if (macro-noncontinuable-exception? _exn11697_)
                (macro-noncontinuable-exception-reason _exn11697_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12608
                              (let ()
                                (declare (not safe))
                                (cons _exn11697_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12608)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11693_))
            (let ((_e11695_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11693_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11695_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11693_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11689_))
            (let ((_e11691_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11689_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11691_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11691_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12611
                                (let ()
                                  (declare (not safe))
                                  (cons _e11691_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12611)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11689_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11689_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12610
                              (let ()
                                (declare (not safe))
                                (cons _exn11689_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12610)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11683_))
            (let ((_e11686_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11683_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11686_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11686_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12613
                                (let ()
                                  (declare (not safe))
                                  (cons _e11686_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12613)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11683_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11683_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12612
                              (let ()
                                (declare (not safe))
                                (cons _exn11683_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12612)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11679_))
            (let ((_e11681_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11679_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11681_))
            (macro-nonprocedure-operator-exception? _exn11679_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11675_))
            (let ((_e11677_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11675_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11677_)
                  (macro-nonprocedure-operator-exception-arguments _e11677_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12615
                                (let ()
                                  (declare (not safe))
                                  (cons _e11677_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12615)))))
            (if (macro-nonprocedure-operator-exception? _exn11675_)
                (macro-nonprocedure-operator-exception-arguments _exn11675_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12614
                              (let ()
                                (declare (not safe))
                                (cons _exn11675_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12614)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11671_))
            (let ((_e11673_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11671_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11673_)
                  (macro-nonprocedure-operator-exception-code _e11673_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12617
                                (let ()
                                  (declare (not safe))
                                  (cons _e11673_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12617)))))
            (if (macro-nonprocedure-operator-exception? _exn11671_)
                (macro-nonprocedure-operator-exception-code _exn11671_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12616
                              (let ()
                                (declare (not safe))
                                (cons _exn11671_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12616)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11667_))
            (let ((_e11669_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11667_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11669_)
                  (macro-nonprocedure-operator-exception-operator _e11669_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12619
                                (let ()
                                  (declare (not safe))
                                  (cons _e11669_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12619)))))
            (if (macro-nonprocedure-operator-exception? _exn11667_)
                (macro-nonprocedure-operator-exception-operator _exn11667_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12618
                              (let ()
                                (declare (not safe))
                                (cons _exn11667_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12618)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11661_))
            (let ((_e11664_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11661_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11664_)
                  (macro-nonprocedure-operator-exception-rte _e11664_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12621
                                (let ()
                                  (declare (not safe))
                                  (cons _e11664_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12621)))))
            (if (macro-nonprocedure-operator-exception? _exn11661_)
                (macro-nonprocedure-operator-exception-rte _exn11661_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12620
                              (let ()
                                (declare (not safe))
                                (cons _exn11661_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12620)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11657_))
            (let ((_e11659_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11657_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11659_))
            (macro-not-in-compilation-context-exception? _exn11657_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11653_))
            (let ((_e11655_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11653_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11655_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11655_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12623
                                (let ()
                                  (declare (not safe))
                                  (cons _e11655_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12623)))))
            (if (macro-not-in-compilation-context-exception? _exn11653_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11653_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12622
                              (let ()
                                (declare (not safe))
                                (cons _exn11653_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12622)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11647_))
            (let ((_e11650_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11647_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11650_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11650_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12625
                                (let ()
                                  (declare (not safe))
                                  (cons _e11650_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12625)))))
            (if (macro-not-in-compilation-context-exception? _exn11647_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11647_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12624
                              (let ()
                                (declare (not safe))
                                (cons _exn11647_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12624)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11643_))
            (let ((_e11645_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11643_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11645_))
            (macro-number-of-arguments-limit-exception? _exn11643_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11639_))
            (let ((_e11641_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11639_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11641_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11641_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12627
                                (let ()
                                  (declare (not safe))
                                  (cons _e11641_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12627)))))
            (if (macro-number-of-arguments-limit-exception? _exn11639_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11639_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12626
                              (let ()
                                (declare (not safe))
                                (cons _exn11639_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12626)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11633_))
            (let ((_e11636_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11633_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11636_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11636_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12629
                                (let ()
                                  (declare (not safe))
                                  (cons _e11636_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12629)))))
            (if (macro-number-of-arguments-limit-exception? _exn11633_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11633_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12628
                              (let ()
                                (declare (not safe))
                                (cons _exn11633_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12628)))))))
    (define os-exception?
      (lambda (_exn11629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11629_))
            (let ((_e11631_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11629_ 'exception))))
              (macro-os-exception? _e11631_))
            (macro-os-exception? _exn11629_))))
    (define os-exception-arguments
      (lambda (_exn11625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11625_))
            (let ((_e11627_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11625_ 'exception))))
              (if (macro-os-exception? _e11627_)
                  (macro-os-exception-arguments _e11627_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12631
                                (let ()
                                  (declare (not safe))
                                  (cons _e11627_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12631)))))
            (if (macro-os-exception? _exn11625_)
                (macro-os-exception-arguments _exn11625_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12630
                              (let ()
                                (declare (not safe))
                                (cons _exn11625_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12630)))))))
    (define os-exception-code
      (lambda (_exn11621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11621_))
            (let ((_e11623_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11621_ 'exception))))
              (if (macro-os-exception? _e11623_)
                  (macro-os-exception-code _e11623_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12633
                                (let ()
                                  (declare (not safe))
                                  (cons _e11623_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12633)))))
            (if (macro-os-exception? _exn11621_)
                (macro-os-exception-code _exn11621_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12632
                              (let ()
                                (declare (not safe))
                                (cons _exn11621_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12632)))))))
    (define os-exception-message
      (lambda (_exn11617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11617_))
            (let ((_e11619_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11617_ 'exception))))
              (if (macro-os-exception? _e11619_)
                  (macro-os-exception-message _e11619_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12635
                                (let ()
                                  (declare (not safe))
                                  (cons _e11619_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12635)))))
            (if (macro-os-exception? _exn11617_)
                (macro-os-exception-message _exn11617_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12634
                              (let ()
                                (declare (not safe))
                                (cons _exn11617_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12634)))))))
    (define os-exception-procedure
      (lambda (_exn11611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11611_))
            (let ((_e11614_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11611_ 'exception))))
              (if (macro-os-exception? _e11614_)
                  (macro-os-exception-procedure _e11614_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12637
                                (let ()
                                  (declare (not safe))
                                  (cons _e11614_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12637)))))
            (if (macro-os-exception? _exn11611_)
                (macro-os-exception-procedure _exn11611_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12636
                              (let ()
                                (declare (not safe))
                                (cons _exn11611_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12636)))))))
    (define permission-denied-exception?
      (lambda (_exn11607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11607_))
            (let ((_e11609_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11607_ 'exception))))
              (macro-permission-denied-exception? _e11609_))
            (macro-permission-denied-exception? _exn11607_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11603_))
            (let ((_e11605_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11603_ 'exception))))
              (if (macro-permission-denied-exception? _e11605_)
                  (macro-permission-denied-exception-arguments _e11605_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12639
                                (let ()
                                  (declare (not safe))
                                  (cons _e11605_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12639)))))
            (if (macro-permission-denied-exception? _exn11603_)
                (macro-permission-denied-exception-arguments _exn11603_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12638
                              (let ()
                                (declare (not safe))
                                (cons _exn11603_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12638)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11597_))
            (let ((_e11600_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11597_ 'exception))))
              (if (macro-permission-denied-exception? _e11600_)
                  (macro-permission-denied-exception-procedure _e11600_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12641
                                (let ()
                                  (declare (not safe))
                                  (cons _e11600_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12641)))))
            (if (macro-permission-denied-exception? _exn11597_)
                (macro-permission-denied-exception-procedure _exn11597_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12640
                              (let ()
                                (declare (not safe))
                                (cons _exn11597_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12640)))))))
    (define range-exception?
      (lambda (_exn11593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11593_))
            (let ((_e11595_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11593_ 'exception))))
              (macro-range-exception? _e11595_))
            (macro-range-exception? _exn11593_))))
    (define range-exception-arg-id
      (lambda (_exn11589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11589_))
            (let ((_e11591_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11589_ 'exception))))
              (if (macro-range-exception? _e11591_)
                  (macro-range-exception-arg-id _e11591_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12643
                                (let ()
                                  (declare (not safe))
                                  (cons _e11591_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12643)))))
            (if (macro-range-exception? _exn11589_)
                (macro-range-exception-arg-id _exn11589_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12642
                              (let ()
                                (declare (not safe))
                                (cons _exn11589_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12642)))))))
    (define range-exception-arguments
      (lambda (_exn11585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11585_))
            (let ((_e11587_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11585_ 'exception))))
              (if (macro-range-exception? _e11587_)
                  (macro-range-exception-arguments _e11587_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12645
                                (let ()
                                  (declare (not safe))
                                  (cons _e11587_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12645)))))
            (if (macro-range-exception? _exn11585_)
                (macro-range-exception-arguments _exn11585_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12644
                              (let ()
                                (declare (not safe))
                                (cons _exn11585_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12644)))))))
    (define range-exception-procedure
      (lambda (_exn11579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11579_))
            (let ((_e11582_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11579_ 'exception))))
              (if (macro-range-exception? _e11582_)
                  (macro-range-exception-procedure _e11582_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12647
                                (let ()
                                  (declare (not safe))
                                  (cons _e11582_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12647)))))
            (if (macro-range-exception? _exn11579_)
                (macro-range-exception-procedure _exn11579_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12646
                              (let ()
                                (declare (not safe))
                                (cons _exn11579_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12646)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11575_))
            (let ((_e11577_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11575_ 'exception))))
              (macro-rpc-remote-error-exception? _e11577_))
            (macro-rpc-remote-error-exception? _exn11575_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11571_))
            (let ((_e11573_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11571_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11573_)
                  (macro-rpc-remote-error-exception-arguments _e11573_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12649
                                (let ()
                                  (declare (not safe))
                                  (cons _e11573_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12649)))))
            (if (macro-rpc-remote-error-exception? _exn11571_)
                (macro-rpc-remote-error-exception-arguments _exn11571_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12648
                              (let ()
                                (declare (not safe))
                                (cons _exn11571_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12648)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11567_))
            (let ((_e11569_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11567_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11569_)
                  (macro-rpc-remote-error-exception-message _e11569_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12651
                                (let ()
                                  (declare (not safe))
                                  (cons _e11569_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12651)))))
            (if (macro-rpc-remote-error-exception? _exn11567_)
                (macro-rpc-remote-error-exception-message _exn11567_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12650
                              (let ()
                                (declare (not safe))
                                (cons _exn11567_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12650)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11561_))
            (let ((_e11564_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11561_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11564_)
                  (macro-rpc-remote-error-exception-procedure _e11564_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12653
                                (let ()
                                  (declare (not safe))
                                  (cons _e11564_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12653)))))
            (if (macro-rpc-remote-error-exception? _exn11561_)
                (macro-rpc-remote-error-exception-procedure _exn11561_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12652
                              (let ()
                                (declare (not safe))
                                (cons _exn11561_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12652)))))))
    (define scheduler-exception?
      (lambda (_exn11557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11557_))
            (let ((_e11559_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11557_ 'exception))))
              (macro-scheduler-exception? _e11559_))
            (macro-scheduler-exception? _exn11557_))))
    (define scheduler-exception-reason
      (lambda (_exn11551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11551_))
            (let ((_e11554_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11551_ 'exception))))
              (if (macro-scheduler-exception? _e11554_)
                  (macro-scheduler-exception-reason _e11554_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12655
                                (let ()
                                  (declare (not safe))
                                  (cons _e11554_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12655)))))
            (if (macro-scheduler-exception? _exn11551_)
                (macro-scheduler-exception-reason _exn11551_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12654
                              (let ()
                                (declare (not safe))
                                (cons _exn11551_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12654)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11547_))
            (let ((_e11549_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11547_ 'exception))))
              (macro-sfun-conversion-exception? _e11549_))
            (macro-sfun-conversion-exception? _exn11547_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11543_))
            (let ((_e11545_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11543_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11545_)
                  (macro-sfun-conversion-exception-arguments _e11545_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12657
                                (let ()
                                  (declare (not safe))
                                  (cons _e11545_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12657)))))
            (if (macro-sfun-conversion-exception? _exn11543_)
                (macro-sfun-conversion-exception-arguments _exn11543_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12656
                              (let ()
                                (declare (not safe))
                                (cons _exn11543_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12656)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11539_))
            (let ((_e11541_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11539_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11541_)
                  (macro-sfun-conversion-exception-code _e11541_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12659
                                (let ()
                                  (declare (not safe))
                                  (cons _e11541_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12659)))))
            (if (macro-sfun-conversion-exception? _exn11539_)
                (macro-sfun-conversion-exception-code _exn11539_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12658
                              (let ()
                                (declare (not safe))
                                (cons _exn11539_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12658)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11535_))
            (let ((_e11537_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11535_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11537_)
                  (macro-sfun-conversion-exception-message _e11537_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12661
                                (let ()
                                  (declare (not safe))
                                  (cons _e11537_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12661)))))
            (if (macro-sfun-conversion-exception? _exn11535_)
                (macro-sfun-conversion-exception-message _exn11535_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12660
                              (let ()
                                (declare (not safe))
                                (cons _exn11535_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12660)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11529_))
            (let ((_e11532_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11529_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11532_)
                  (macro-sfun-conversion-exception-procedure _e11532_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12663
                                (let ()
                                  (declare (not safe))
                                  (cons _e11532_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12663)))))
            (if (macro-sfun-conversion-exception? _exn11529_)
                (macro-sfun-conversion-exception-procedure _exn11529_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12662
                              (let ()
                                (declare (not safe))
                                (cons _exn11529_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12662)))))))
    (define stack-overflow-exception?
      (lambda (_exn11523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11523_))
            (let ((_e11526_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11523_ 'exception))))
              (macro-stack-overflow-exception? _e11526_))
            (macro-stack-overflow-exception? _exn11523_))))
    (define started-thread-exception?
      (lambda (_exn11519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11519_))
            (let ((_e11521_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11519_ 'exception))))
              (macro-started-thread-exception? _e11521_))
            (macro-started-thread-exception? _exn11519_))))
    (define started-thread-exception-arguments
      (lambda (_exn11515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11515_))
            (let ((_e11517_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11515_ 'exception))))
              (if (macro-started-thread-exception? _e11517_)
                  (macro-started-thread-exception-arguments _e11517_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12665
                                (let ()
                                  (declare (not safe))
                                  (cons _e11517_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12665)))))
            (if (macro-started-thread-exception? _exn11515_)
                (macro-started-thread-exception-arguments _exn11515_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12664
                              (let ()
                                (declare (not safe))
                                (cons _exn11515_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12664)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11509_))
            (let ((_e11512_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11509_ 'exception))))
              (if (macro-started-thread-exception? _e11512_)
                  (macro-started-thread-exception-procedure _e11512_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12667
                                (let ()
                                  (declare (not safe))
                                  (cons _e11512_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12667)))))
            (if (macro-started-thread-exception? _exn11509_)
                (macro-started-thread-exception-procedure _exn11509_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12666
                              (let ()
                                (declare (not safe))
                                (cons _exn11509_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12666)))))))
    (define terminated-thread-exception?
      (lambda (_exn11505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11505_))
            (let ((_e11507_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11505_ 'exception))))
              (macro-terminated-thread-exception? _e11507_))
            (macro-terminated-thread-exception? _exn11505_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11501_))
            (let ((_e11503_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11501_ 'exception))))
              (if (macro-terminated-thread-exception? _e11503_)
                  (macro-terminated-thread-exception-arguments _e11503_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12669
                                (let ()
                                  (declare (not safe))
                                  (cons _e11503_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12669)))))
            (if (macro-terminated-thread-exception? _exn11501_)
                (macro-terminated-thread-exception-arguments _exn11501_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12668
                              (let ()
                                (declare (not safe))
                                (cons _exn11501_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12668)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11495_))
            (let ((_e11498_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11495_ 'exception))))
              (if (macro-terminated-thread-exception? _e11498_)
                  (macro-terminated-thread-exception-procedure _e11498_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12671
                                (let ()
                                  (declare (not safe))
                                  (cons _e11498_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12671)))))
            (if (macro-terminated-thread-exception? _exn11495_)
                (macro-terminated-thread-exception-procedure _exn11495_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12670
                              (let ()
                                (declare (not safe))
                                (cons _exn11495_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12670)))))))
    (define type-exception?
      (lambda (_exn11491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11491_))
            (let ((_e11493_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11491_ 'exception))))
              (macro-type-exception? _e11493_))
            (macro-type-exception? _exn11491_))))
    (define type-exception-arg-id
      (lambda (_exn11487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11487_))
            (let ((_e11489_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11487_ 'exception))))
              (if (macro-type-exception? _e11489_)
                  (macro-type-exception-arg-id _e11489_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12673
                                (let ()
                                  (declare (not safe))
                                  (cons _e11489_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12673)))))
            (if (macro-type-exception? _exn11487_)
                (macro-type-exception-arg-id _exn11487_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12672
                              (let ()
                                (declare (not safe))
                                (cons _exn11487_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12672)))))))
    (define type-exception-arguments
      (lambda (_exn11483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11483_))
            (let ((_e11485_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11483_ 'exception))))
              (if (macro-type-exception? _e11485_)
                  (macro-type-exception-arguments _e11485_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12675
                                (let ()
                                  (declare (not safe))
                                  (cons _e11485_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12675)))))
            (if (macro-type-exception? _exn11483_)
                (macro-type-exception-arguments _exn11483_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12674
                              (let ()
                                (declare (not safe))
                                (cons _exn11483_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12674)))))))
    (define type-exception-procedure
      (lambda (_exn11479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11479_))
            (let ((_e11481_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11479_ 'exception))))
              (if (macro-type-exception? _e11481_)
                  (macro-type-exception-procedure _e11481_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12677
                                (let ()
                                  (declare (not safe))
                                  (cons _e11481_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12677)))))
            (if (macro-type-exception? _exn11479_)
                (macro-type-exception-procedure _exn11479_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12676
                              (let ()
                                (declare (not safe))
                                (cons _exn11479_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12676)))))))
    (define type-exception-type-id
      (lambda (_exn11473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11473_))
            (let ((_e11476_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11473_ 'exception))))
              (if (macro-type-exception? _e11476_)
                  (macro-type-exception-type-id _e11476_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12679
                                (let ()
                                  (declare (not safe))
                                  (cons _e11476_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12679)))))
            (if (macro-type-exception? _exn11473_)
                (macro-type-exception-type-id _exn11473_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12678
                              (let ()
                                (declare (not safe))
                                (cons _exn11473_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12678)))))))
    (define unbound-global-exception?
      (lambda (_exn11469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11469_))
            (let ((_e11471_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11469_ 'exception))))
              (macro-unbound-global-exception? _e11471_))
            (macro-unbound-global-exception? _exn11469_))))
    (define unbound-global-exception-code
      (lambda (_exn11465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11465_))
            (let ((_e11467_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11465_ 'exception))))
              (if (macro-unbound-global-exception? _e11467_)
                  (macro-unbound-global-exception-code _e11467_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12681
                                (let ()
                                  (declare (not safe))
                                  (cons _e11467_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12681)))))
            (if (macro-unbound-global-exception? _exn11465_)
                (macro-unbound-global-exception-code _exn11465_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12680
                              (let ()
                                (declare (not safe))
                                (cons _exn11465_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12680)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11461_))
            (let ((_e11463_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11461_ 'exception))))
              (if (macro-unbound-global-exception? _e11463_)
                  (macro-unbound-global-exception-rte _e11463_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12683
                                (let ()
                                  (declare (not safe))
                                  (cons _e11463_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12683)))))
            (if (macro-unbound-global-exception? _exn11461_)
                (macro-unbound-global-exception-rte _exn11461_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12682
                              (let ()
                                (declare (not safe))
                                (cons _exn11461_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12682)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11455_))
            (let ((_e11458_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11455_ 'exception))))
              (if (macro-unbound-global-exception? _e11458_)
                  (macro-unbound-global-exception-variable _e11458_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12685
                                (let ()
                                  (declare (not safe))
                                  (cons _e11458_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12685)))))
            (if (macro-unbound-global-exception? _exn11455_)
                (macro-unbound-global-exception-variable _exn11455_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12684
                              (let ()
                                (declare (not safe))
                                (cons _exn11455_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12684)))))))
    (define unbound-key-exception?
      (lambda (_exn11451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11451_))
            (let ((_e11453_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11451_ 'exception))))
              (macro-unbound-key-exception? _e11453_))
            (macro-unbound-key-exception? _exn11451_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11447_))
            (let ((_e11449_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11447_ 'exception))))
              (if (macro-unbound-key-exception? _e11449_)
                  (macro-unbound-key-exception-arguments _e11449_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12687
                                (let ()
                                  (declare (not safe))
                                  (cons _e11449_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12687)))))
            (if (macro-unbound-key-exception? _exn11447_)
                (macro-unbound-key-exception-arguments _exn11447_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12686
                              (let ()
                                (declare (not safe))
                                (cons _exn11447_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12686)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11441_))
            (let ((_e11444_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11441_ 'exception))))
              (if (macro-unbound-key-exception? _e11444_)
                  (macro-unbound-key-exception-procedure _e11444_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12689
                                (let ()
                                  (declare (not safe))
                                  (cons _e11444_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12689)))))
            (if (macro-unbound-key-exception? _exn11441_)
                (macro-unbound-key-exception-procedure _exn11441_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12688
                              (let ()
                                (declare (not safe))
                                (cons _exn11441_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12688)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11437_))
            (let ((_e11439_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11437_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11439_))
            (macro-unbound-os-environment-variable-exception? _exn11437_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11433_))
            (let ((_e11435_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11433_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11435_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11435_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12691
                                (let ()
                                  (declare (not safe))
                                  (cons _e11435_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12691)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11433_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11433_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12690
                              (let ()
                                (declare (not safe))
                                (cons _exn11433_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12690)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11427_))
            (let ((_e11430_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11427_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11430_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11430_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12693
                                (let ()
                                  (declare (not safe))
                                  (cons _e11430_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12693)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11427_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11427_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12692
                              (let ()
                                (declare (not safe))
                                (cons _exn11427_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12692)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11423_))
            (let ((_e11425_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11423_ 'exception))))
              (macro-unbound-serial-number-exception? _e11425_))
            (macro-unbound-serial-number-exception? _exn11423_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11419_))
            (let ((_e11421_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11419_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11421_)
                  (macro-unbound-serial-number-exception-arguments _e11421_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12695
                                (let ()
                                  (declare (not safe))
                                  (cons _e11421_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12695)))))
            (if (macro-unbound-serial-number-exception? _exn11419_)
                (macro-unbound-serial-number-exception-arguments _exn11419_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12694
                              (let ()
                                (declare (not safe))
                                (cons _exn11419_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12694)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11413_))
            (let ((_e11416_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11413_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11416_)
                  (macro-unbound-serial-number-exception-procedure _e11416_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12697
                                (let ()
                                  (declare (not safe))
                                  (cons _e11416_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12697)))))
            (if (macro-unbound-serial-number-exception? _exn11413_)
                (macro-unbound-serial-number-exception-procedure _exn11413_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12696
                              (let ()
                                (declare (not safe))
                                (cons _exn11413_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12696)))))))
    (define uncaught-exception?
      (lambda (_exn11409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11409_))
            (let ((_e11411_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11409_ 'exception))))
              (macro-uncaught-exception? _e11411_))
            (macro-uncaught-exception? _exn11409_))))
    (define uncaught-exception-arguments
      (lambda (_exn11405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11405_))
            (let ((_e11407_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11405_ 'exception))))
              (if (macro-uncaught-exception? _e11407_)
                  (macro-uncaught-exception-arguments _e11407_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12699
                                (let ()
                                  (declare (not safe))
                                  (cons _e11407_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12699)))))
            (if (macro-uncaught-exception? _exn11405_)
                (macro-uncaught-exception-arguments _exn11405_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12698
                              (let ()
                                (declare (not safe))
                                (cons _exn11405_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12698)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11401_))
            (let ((_e11403_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11401_ 'exception))))
              (if (macro-uncaught-exception? _e11403_)
                  (macro-uncaught-exception-procedure _e11403_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12701
                                (let ()
                                  (declare (not safe))
                                  (cons _e11403_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12701)))))
            (if (macro-uncaught-exception? _exn11401_)
                (macro-uncaught-exception-procedure _exn11401_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12700
                              (let ()
                                (declare (not safe))
                                (cons _exn11401_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12700)))))))
    (define uncaught-exception-reason
      (lambda (_exn11395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11395_))
            (let ((_e11398_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11395_ 'exception))))
              (if (macro-uncaught-exception? _e11398_)
                  (macro-uncaught-exception-reason _e11398_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12703
                                (let ()
                                  (declare (not safe))
                                  (cons _e11398_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12703)))))
            (if (macro-uncaught-exception? _exn11395_)
                (macro-uncaught-exception-reason _exn11395_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12702
                              (let ()
                                (declare (not safe))
                                (cons _exn11395_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12702)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11391_))
            (let ((_e11393_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11391_ 'exception))))
              (macro-uninitialized-thread-exception? _e11393_))
            (macro-uninitialized-thread-exception? _exn11391_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11387_))
            (let ((_e11389_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11387_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11389_)
                  (macro-uninitialized-thread-exception-arguments _e11389_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12705
                                (let ()
                                  (declare (not safe))
                                  (cons _e11389_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12705)))))
            (if (macro-uninitialized-thread-exception? _exn11387_)
                (macro-uninitialized-thread-exception-arguments _exn11387_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12704
                              (let ()
                                (declare (not safe))
                                (cons _exn11387_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12704)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11381_))
            (let ((_e11384_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11381_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11384_)
                  (macro-uninitialized-thread-exception-procedure _e11384_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12707
                                (let ()
                                  (declare (not safe))
                                  (cons _e11384_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12707)))))
            (if (macro-uninitialized-thread-exception? _exn11381_)
                (macro-uninitialized-thread-exception-procedure _exn11381_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12706
                              (let ()
                                (declare (not safe))
                                (cons _exn11381_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12706)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11377_))
            (let ((_e11379_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11377_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11379_))
            (macro-unknown-keyword-argument-exception? _exn11377_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11373_))
            (let ((_e11375_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11373_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11375_)
                  (macro-unknown-keyword-argument-exception-arguments _e11375_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12709
                                (let ()
                                  (declare (not safe))
                                  (cons _e11375_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12709)))))
            (if (macro-unknown-keyword-argument-exception? _exn11373_)
                (macro-unknown-keyword-argument-exception-arguments _exn11373_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12708
                              (let ()
                                (declare (not safe))
                                (cons _exn11373_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12708)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11367_))
            (let ((_e11370_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11367_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11370_)
                  (macro-unknown-keyword-argument-exception-procedure _e11370_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12711
                                (let ()
                                  (declare (not safe))
                                  (cons _e11370_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12711)))))
            (if (macro-unknown-keyword-argument-exception? _exn11367_)
                (macro-unknown-keyword-argument-exception-procedure _exn11367_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12710
                              (let ()
                                (declare (not safe))
                                (cons _exn11367_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12710)))))))
    (define unterminated-process-exception?
      (lambda (_exn11363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11363_))
            (let ((_e11365_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11363_ 'exception))))
              (macro-unterminated-process-exception? _e11365_))
            (macro-unterminated-process-exception? _exn11363_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11359_))
            (let ((_e11361_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11359_ 'exception))))
              (if (macro-unterminated-process-exception? _e11361_)
                  (macro-unterminated-process-exception-arguments _e11361_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12713
                                (let ()
                                  (declare (not safe))
                                  (cons _e11361_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12713)))))
            (if (macro-unterminated-process-exception? _exn11359_)
                (macro-unterminated-process-exception-arguments _exn11359_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12712
                              (let ()
                                (declare (not safe))
                                (cons _exn11359_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12712)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11353_))
            (let ((_e11356_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11353_ 'exception))))
              (if (macro-unterminated-process-exception? _e11356_)
                  (macro-unterminated-process-exception-procedure _e11356_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12715
                                (let ()
                                  (declare (not safe))
                                  (cons _e11356_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12715)))))
            (if (macro-unterminated-process-exception? _exn11353_)
                (macro-unterminated-process-exception-procedure _exn11353_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12714
                              (let ()
                                (declare (not safe))
                                (cons _exn11353_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12714)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11349_))
            (let ((_e11351_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11349_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11351_))
            (macro-wrong-number-of-arguments-exception? _exn11349_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11345_))
            (let ((_e11347_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11345_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11347_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11347_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12717
                                (let ()
                                  (declare (not safe))
                                  (cons _e11347_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12717)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11345_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11345_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12716
                              (let ()
                                (declare (not safe))
                                (cons _exn11345_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12716)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11339_))
            (let ((_e11342_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11339_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11342_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11342_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12719
                                (let ()
                                  (declare (not safe))
                                  (cons _e11342_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12719)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11339_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11339_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12718
                              (let ()
                                (declare (not safe))
                                (cons _exn11339_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12718)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11335_))
            (let ((_e11337_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11335_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11337_))
            (macro-wrong-number-of-values-exception? _exn11335_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11331_))
            (let ((_e11333_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11331_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11333_)
                  (macro-wrong-number-of-values-exception-code _e11333_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12721
                                (let ()
                                  (declare (not safe))
                                  (cons _e11333_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12721)))))
            (if (macro-wrong-number-of-values-exception? _exn11331_)
                (macro-wrong-number-of-values-exception-code _exn11331_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12720
                              (let ()
                                (declare (not safe))
                                (cons _exn11331_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12720)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11327_))
            (let ((_e11329_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11327_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11329_)
                  (macro-wrong-number-of-values-exception-rte _e11329_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12723
                                (let ()
                                  (declare (not safe))
                                  (cons _e11329_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12723)))))
            (if (macro-wrong-number-of-values-exception? _exn11327_)
                (macro-wrong-number-of-values-exception-rte _exn11327_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12722
                              (let ()
                                (declare (not safe))
                                (cons _exn11327_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12722)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11321_))
            (let ((_e11324_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11321_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11324_)
                  (macro-wrong-number-of-values-exception-vals _e11324_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12725
                                (let ()
                                  (declare (not safe))
                                  (cons _e11324_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12725)))))
            (if (macro-wrong-number-of-values-exception? _exn11321_)
                (macro-wrong-number-of-values-exception-vals _exn11321_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12724
                              (let ()
                                (declare (not safe))
                                (cons _exn11321_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12724)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11315_))
            (let ((_e11318_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11315_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11318_))
            (macro-wrong-processor-c-return-exception? _exn11315_))))))
