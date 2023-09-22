(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1695377590)
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
      (lambda _$args12459_
        (apply make-class-instance Exception::t _$args12459_)))
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
      (lambda _$args12456_
        (apply make-class-instance StackTrace::t _$args12456_)))
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
      (let ((__tmp12479
             (let ((__tmp12480
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12480))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12479
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12453_ (apply make-class-instance Error::t _$args12453_)))
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
      (let ((__tmp12481
             (let ((__tmp12482
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12482))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12481
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12450_
        (apply make-class-instance RuntimeException::t _$args12450_)))
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
      (lambda (_exn12445_ _continue12446_)
        (let ((_exn12448_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12445_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12448_ _continue12446_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12441_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12441_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12441_ 'continuation))
                '#!void
                (let ((__tmp12483
                       (lambda (_cont12443_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12441_
                            'continuation
                            _cont12443_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12483)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12441_))))
    (define error
      (lambda (_message12438_ . _irritants12439_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12438_
                  'irritants:
                  _irritants12439_)))))
    (define with-exception-handler
      (lambda (_handler12431_ _thunk12432_)
        (if (let () (declare (not safe)) (procedure? _handler12431_))
            '#!void
            (raise (let ((__tmp12484
                          (let ()
                            (declare (not safe))
                            (cons _handler12431_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12484))))
        (if (let () (declare (not safe)) (procedure? _thunk12432_))
            '#!void
            (raise (let ((__tmp12485
                          (let ()
                            (declare (not safe))
                            (cons _thunk12432_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12485))))
        (let ((__tmp12486
               (lambda (_exn12434_)
                 (let ((_exn12436_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12434_))))
                   (_handler12431_ _exn12436_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12486 _thunk12432_))))
    (define with-catch
      (lambda (_handler12424_ _thunk12425_)
        (if (let () (declare (not safe)) (procedure? _handler12424_))
            '#!void
            (raise (let ((__tmp12487
                          (let ()
                            (declare (not safe))
                            (cons _handler12424_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12487))))
        (if (let () (declare (not safe)) (procedure? _thunk12425_))
            '#!void
            (raise (let ((__tmp12488
                          (let ()
                            (declare (not safe))
                            (cons _thunk12425_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12488))))
        (let ((__tmp12489
               (lambda (_cont12427_)
                 (with-exception-handler
                  (lambda (_exn12429_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12427_
                       _handler12424_
                       _exn12429_)))
                  _thunk12425_))))
          (declare (not safe))
          (##continuation-capture __tmp12489))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12415_)
        (if (or (heap-overflow-exception? _exn12415_)
                (stack-overflow-exception? _exn12415_))
            _exn12415_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12415_))
                _exn12415_
                (if (macro-exception? _exn12415_)
                    (let ((_rte12420_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12415_))))
                      (let ((__tmp12490
                             (lambda (_cont12422_)
                               (let ((__tmp12491
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12422_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12420_
                                  'continuation
                                  __tmp12491)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12490))
                      _rte12420_)
                    _exn12415_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12410_)
        (let ((_$e12412_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12410_))))
          (if _$e12412_ _$e12412_ (error-exception? _obj12410_)))))
    (define error-message
      (lambda (_obj12408_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12408_))
            (let () (declare (not safe)) (slot-ref _obj12408_ 'message))
            (if (error-exception? _obj12408_)
                (error-exception-message _obj12408_)
                '#f))))
    (define error-irritants
      (lambda (_obj12406_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12406_))
            (let () (declare (not safe)) (slot-ref _obj12406_ 'irritants))
            (if (error-exception? _obj12406_)
                (error-exception-parameters _obj12406_)
                '#f))))
    (define error-trace
      (lambda (_obj12404_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12404_))
            (let () (declare (not safe)) (slot-ref _obj12404_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12386_ _port12387_)
        (let ((_$e12389_
               (let ()
                 (declare (not safe))
                 (method-ref _e12386_ 'display-exception))))
          (if _$e12389_
              ((lambda (_f12392_) (_f12392_ _e12386_ _port12387_)) _$e12389_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12386_ _port12387_))))))
    (define display-exception__0
      (lambda (_e12397_)
        (let ((_port12399_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12397_ _port12399_))))
    (define display-exception
      (lambda _g12493_
        (let ((_g12492_ (let () (declare (not safe)) (##length _g12493_))))
          (cond ((let () (declare (not safe)) (##fx= _g12492_ 1))
                 (apply (lambda (_e12397_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12397_)))
                        _g12493_))
                ((let () (declare (not safe)) (##fx= _g12492_ 2))
                 (apply (lambda (_e12401_ _port12402_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12401_ _port12402_)))
                        _g12493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12493_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12381_ _message12382_ . _rest12383_)
        (let ()
          (declare (not safe))
          (unchecked-slot-set! _self12381_ 'message _message12382_))
        (apply class-instance-init! _self12381_ _rest12383_)))
    (define Error:::init!::specialize
      (lambda (__t12461)
        (let ((__message12462
               (let ((__tmp12463
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12461 'message))))
                 (if __tmp12463
                     (let () (declare (not safe)) (##fx+ __tmp12463 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12381_ _message12382_ . _rest12383_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self12381_
               _message12382_
               __message12462
               __t12461
               '#f))
            (apply class-instance-init! _self12381_ _rest12383_)))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define Error::display-exception
      (lambda (_self12239_ _port12240_)
        (let ((_tmp-port12242_ (open-output-string))
              (_display-error-newline12243_
               (> (output-port-column _port12240_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12242_))
          (let ((__tmp12494
                 (lambda ()
                   (if _display-error-newline12243_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12246_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12239_ 'where))))
                     (if _$e12246_ (display _$e12246_) (display '"?")))
                   (let ((__tmp12495
                          (let ((__tmp12496
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12239_))))
                            (declare (not safe))
                            (##type-name __tmp12496))))
                     (declare (not safe))
                     (display* '" [" __tmp12495 '"]: "))
                   (let ((__tmp12497
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12239_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12497))
                   (let ((_irritants12249_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12239_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12249_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12251_)
                              (let ()
                                (declare (not safe))
                                (display* _obj12251_ '" ")))
                            _irritants12249_)
                           (newline))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance? StackTrace::t _self12239_))
                       (let ((_cont1225212254_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12239_ 'continuation))))
                         (if _cont1225212254_
                             (let ((_cont12257_ _cont1225212254_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12257_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12494
             current-output-port
             _tmp-port12242_))
          (let ((__tmp12498 (get-output-string _tmp-port12242_)))
            (declare (not safe))
            (##write-string __tmp12498 _port12240_)))))
    (define Error::display-exception::specialize
      (lambda (__t12464)
        (let ((__where12465
               (let ((__tmp12469
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12464 'where))))
                 (if __tmp12469
                     (let () (declare (not safe)) (##fx+ __tmp12469 '1))
                     (error '"Unknown slot" 'where))))
              (__irritants12466
               (let ((__tmp12470
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12464 'irritants))))
                 (if __tmp12470
                     (let () (declare (not safe)) (##fx+ __tmp12470 '1))
                     (error '"Unknown slot" 'irritants))))
              (__continuation12467
               (let ((__tmp12471
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12464 'continuation))))
                 (if __tmp12471
                     (let () (declare (not safe)) (##fx+ __tmp12471 '1))
                     (error '"Unknown slot" 'continuation))))
              (__message12468
               (let ((__tmp12472
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12464 'message))))
                 (if __tmp12472
                     (let () (declare (not safe)) (##fx+ __tmp12472 '1))
                     (error '"Unknown slot" 'message))))
              (__class12473
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12464))))
          (lambda (_self12239_ _port12240_)
            (let ((_tmp-port12242_ (open-output-string))
                  (_display-error-newline12243_
                   (> (output-port-column _port12240_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12242_))
              (let ((__tmp12499
                     (lambda ()
                       (if _display-error-newline12243_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12246_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12239_
                                 __where12465
                                 __t12464
                                 '#f))))
                         (if _$e12246_ (display _$e12246_) (display '"?")))
                       (let ((__tmp12500
                              (let ((__tmp12501
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12239_))))
                                (declare (not safe))
                                (##type-name __tmp12501))))
                         (declare (not safe))
                         (display* '" [" __tmp12500 '"]: "))
                       (let ((__tmp12502
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12239_
                                 __message12468
                                 __t12464
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12502))
                       (let ((_irritants12249_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12239_
                                 __irritants12466
                                 __t12464
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12249_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12251_)
                                  (let ()
                                    (declare (not safe))
                                    (display* _obj12251_ '" ")))
                                _irritants12249_)
                               (newline))))
                       (if __class12473
                           (let ((_cont1225212254_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12239_
                                     __continuation12467
                                     __t12464
                                     '#f))))
                             (if _cont1225212254_
                                 (let ((_cont12257_ _cont1225212254_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12257_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12499
                 current-output-port
                 _tmp-port12242_))
              (let ((__tmp12503 (get-output-string _tmp-port12242_)))
                (declare (not safe))
                (##write-string __tmp12503 _port12240_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12106_ _port12107_)
        (let ((_tmp-port12109_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12109_))
          (let ((__tmp12504
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12106_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12504 _tmp-port12109_))
          (let ((_cont1211012112_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12106_ 'continuation))))
            (if _cont1211012112_
                (let ((_cont12115_ _cont1211012112_))
                  (display '"--- continuation backtrace:" _tmp-port12109_)
                  (newline _tmp-port12109_)
                  (display-continuation-backtrace _cont12115_ _tmp-port12109_))
                '#f))
          (let ((__tmp12505 (get-output-string _tmp-port12109_)))
            (declare (not safe))
            (##write-string __tmp12505 _port12107_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12474)
        (let ((__continuation12475
               (let ((__tmp12477
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12474 'continuation))))
                 (if __tmp12477
                     (let () (declare (not safe)) (##fx+ __tmp12477 '1))
                     (error '"Unknown slot" 'continuation))))
              (__exception12476
               (let ((__tmp12478
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12474 'exception))))
                 (if __tmp12478
                     (let () (declare (not safe)) (##fx+ __tmp12478 '1))
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self12106_ _port12107_)
            (let ((_tmp-port12109_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12109_))
              (let ((__tmp12506
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12106_
                        __exception12476
                        __t12474
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12506 _tmp-port12109_))
              (let ((_cont1211012112_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12106_
                        __continuation12475
                        __t12474
                        '#f))))
                (if _cont1211012112_
                    (let ((_cont12115_ _cont1211012112_))
                      (display '"--- continuation backtrace:" _tmp-port12109_)
                      (newline _tmp-port12109_)
                      (display-continuation-backtrace
                       _cont12115_
                       _tmp-port12109_))
                    '#f))
              (let ((__tmp12507 (get-output-string _tmp-port12109_)))
                (declare (not safe))
                (##write-string __tmp12507 _port12107_)))))))
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
      (lambda (_port11978_)
        (if (macro-character-port? _port11978_)
            (let ((_old-width11980_
                   (macro-character-port-output-width _port11978_)))
              (macro-character-port-output-width-set!
               _port11978_
               (lambda (_port11982_) '256))
              _old-width11980_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11975_ _old-width11976_)
        (if (macro-character-port? _port11975_)
            (macro-character-port-output-width-set!
             _port11975_
             _old-width11976_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11973_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11973_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11967_))
            (let ((_e11970_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11967_ 'exception))))
              (macro-abandoned-mutex-exception? _e11970_))
            (macro-abandoned-mutex-exception? _exn11967_))))
    (define cfun-conversion-exception?
      (lambda (_exn11963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11963_))
            (let ((_e11965_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11963_ 'exception))))
              (macro-cfun-conversion-exception? _e11965_))
            (macro-cfun-conversion-exception? _exn11963_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11959_))
            (let ((_e11961_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11959_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11961_)
                  (macro-cfun-conversion-exception-arguments _e11961_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12509
                                (let ()
                                  (declare (not safe))
                                  (cons _e11961_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12509)))))
            (if (macro-cfun-conversion-exception? _exn11959_)
                (macro-cfun-conversion-exception-arguments _exn11959_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12508
                              (let ()
                                (declare (not safe))
                                (cons _exn11959_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12508)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11955_))
            (let ((_e11957_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11955_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11957_)
                  (macro-cfun-conversion-exception-code _e11957_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12511
                                (let ()
                                  (declare (not safe))
                                  (cons _e11957_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12511)))))
            (if (macro-cfun-conversion-exception? _exn11955_)
                (macro-cfun-conversion-exception-code _exn11955_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12510
                              (let ()
                                (declare (not safe))
                                (cons _exn11955_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12510)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11951_))
            (let ((_e11953_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11951_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11953_)
                  (macro-cfun-conversion-exception-message _e11953_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12513
                                (let ()
                                  (declare (not safe))
                                  (cons _e11953_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12513)))))
            (if (macro-cfun-conversion-exception? _exn11951_)
                (macro-cfun-conversion-exception-message _exn11951_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12512
                              (let ()
                                (declare (not safe))
                                (cons _exn11951_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12512)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11945_))
            (let ((_e11948_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11945_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11948_)
                  (macro-cfun-conversion-exception-procedure _e11948_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12515
                                (let ()
                                  (declare (not safe))
                                  (cons _e11948_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12515)))))
            (if (macro-cfun-conversion-exception? _exn11945_)
                (macro-cfun-conversion-exception-procedure _exn11945_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12514
                              (let ()
                                (declare (not safe))
                                (cons _exn11945_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12514)))))))
    (define datum-parsing-exception?
      (lambda (_exn11941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11941_))
            (let ((_e11943_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11941_ 'exception))))
              (macro-datum-parsing-exception? _e11943_))
            (macro-datum-parsing-exception? _exn11941_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11937_))
            (let ((_e11939_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11937_ 'exception))))
              (if (macro-datum-parsing-exception? _e11939_)
                  (macro-datum-parsing-exception-kind _e11939_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12517
                                (let ()
                                  (declare (not safe))
                                  (cons _e11939_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12517)))))
            (if (macro-datum-parsing-exception? _exn11937_)
                (macro-datum-parsing-exception-kind _exn11937_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12516
                              (let ()
                                (declare (not safe))
                                (cons _exn11937_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12516)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11933_))
            (let ((_e11935_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11933_ 'exception))))
              (if (macro-datum-parsing-exception? _e11935_)
                  (macro-datum-parsing-exception-parameters _e11935_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12519
                                (let ()
                                  (declare (not safe))
                                  (cons _e11935_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12519)))))
            (if (macro-datum-parsing-exception? _exn11933_)
                (macro-datum-parsing-exception-parameters _exn11933_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12518
                              (let ()
                                (declare (not safe))
                                (cons _exn11933_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12518)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11927_))
            (let ((_e11930_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11927_ 'exception))))
              (if (macro-datum-parsing-exception? _e11930_)
                  (macro-datum-parsing-exception-readenv _e11930_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12521
                                (let ()
                                  (declare (not safe))
                                  (cons _e11930_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12521)))))
            (if (macro-datum-parsing-exception? _exn11927_)
                (macro-datum-parsing-exception-readenv _exn11927_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12520
                              (let ()
                                (declare (not safe))
                                (cons _exn11927_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12520)))))))
    (define deadlock-exception?
      (lambda (_exn11921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11921_))
            (let ((_e11924_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11921_ 'exception))))
              (macro-deadlock-exception? _e11924_))
            (macro-deadlock-exception? _exn11921_))))
    (define divide-by-zero-exception?
      (lambda (_exn11917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11917_))
            (let ((_e11919_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11917_ 'exception))))
              (macro-divide-by-zero-exception? _e11919_))
            (macro-divide-by-zero-exception? _exn11917_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11913_))
            (let ((_e11915_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11913_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11915_)
                  (macro-divide-by-zero-exception-arguments _e11915_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12523
                                (let ()
                                  (declare (not safe))
                                  (cons _e11915_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12523)))))
            (if (macro-divide-by-zero-exception? _exn11913_)
                (macro-divide-by-zero-exception-arguments _exn11913_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12522
                              (let ()
                                (declare (not safe))
                                (cons _exn11913_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12522)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11907_))
            (let ((_e11910_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11907_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11910_)
                  (macro-divide-by-zero-exception-procedure _e11910_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12525
                                (let ()
                                  (declare (not safe))
                                  (cons _e11910_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12525)))))
            (if (macro-divide-by-zero-exception? _exn11907_)
                (macro-divide-by-zero-exception-procedure _exn11907_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12524
                              (let ()
                                (declare (not safe))
                                (cons _exn11907_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12524)))))))
    (define error-exception?
      (lambda (_exn11903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11903_))
            (let ((_e11905_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11903_ 'exception))))
              (macro-error-exception? _e11905_))
            (macro-error-exception? _exn11903_))))
    (define error-exception-message
      (lambda (_exn11899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11899_))
            (let ((_e11901_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11899_ 'exception))))
              (if (macro-error-exception? _e11901_)
                  (macro-error-exception-message _e11901_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12527
                                (let ()
                                  (declare (not safe))
                                  (cons _e11901_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12527)))))
            (if (macro-error-exception? _exn11899_)
                (macro-error-exception-message _exn11899_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12526
                              (let ()
                                (declare (not safe))
                                (cons _exn11899_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12526)))))))
    (define error-exception-parameters
      (lambda (_exn11893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11893_))
            (let ((_e11896_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11893_ 'exception))))
              (if (macro-error-exception? _e11896_)
                  (macro-error-exception-parameters _e11896_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12529
                                (let ()
                                  (declare (not safe))
                                  (cons _e11896_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12529)))))
            (if (macro-error-exception? _exn11893_)
                (macro-error-exception-parameters _exn11893_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12528
                              (let ()
                                (declare (not safe))
                                (cons _exn11893_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12528)))))))
    (define expression-parsing-exception?
      (lambda (_exn11889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11889_))
            (let ((_e11891_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11889_ 'exception))))
              (macro-expression-parsing-exception? _e11891_))
            (macro-expression-parsing-exception? _exn11889_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11885_))
            (let ((_e11887_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11885_ 'exception))))
              (if (macro-expression-parsing-exception? _e11887_)
                  (macro-expression-parsing-exception-kind _e11887_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12531
                                (let ()
                                  (declare (not safe))
                                  (cons _e11887_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12531)))))
            (if (macro-expression-parsing-exception? _exn11885_)
                (macro-expression-parsing-exception-kind _exn11885_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12530
                              (let ()
                                (declare (not safe))
                                (cons _exn11885_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12530)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11881_))
            (let ((_e11883_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11881_ 'exception))))
              (if (macro-expression-parsing-exception? _e11883_)
                  (macro-expression-parsing-exception-parameters _e11883_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12533
                                (let ()
                                  (declare (not safe))
                                  (cons _e11883_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12533)))))
            (if (macro-expression-parsing-exception? _exn11881_)
                (macro-expression-parsing-exception-parameters _exn11881_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12532
                              (let ()
                                (declare (not safe))
                                (cons _exn11881_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12532)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11875_))
            (let ((_e11878_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11875_ 'exception))))
              (if (macro-expression-parsing-exception? _e11878_)
                  (macro-expression-parsing-exception-source _e11878_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12535
                                (let ()
                                  (declare (not safe))
                                  (cons _e11878_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12535)))))
            (if (macro-expression-parsing-exception? _exn11875_)
                (macro-expression-parsing-exception-source _exn11875_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12534
                              (let ()
                                (declare (not safe))
                                (cons _exn11875_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12534)))))))
    (define file-exists-exception?
      (lambda (_exn11871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11871_))
            (let ((_e11873_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11871_ 'exception))))
              (macro-file-exists-exception? _e11873_))
            (macro-file-exists-exception? _exn11871_))))
    (define file-exists-exception-arguments
      (lambda (_exn11867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11867_))
            (let ((_e11869_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11867_ 'exception))))
              (if (macro-file-exists-exception? _e11869_)
                  (macro-file-exists-exception-arguments _e11869_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12537
                                (let ()
                                  (declare (not safe))
                                  (cons _e11869_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12537)))))
            (if (macro-file-exists-exception? _exn11867_)
                (macro-file-exists-exception-arguments _exn11867_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12536
                              (let ()
                                (declare (not safe))
                                (cons _exn11867_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12536)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11861_))
            (let ((_e11864_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11861_ 'exception))))
              (if (macro-file-exists-exception? _e11864_)
                  (macro-file-exists-exception-procedure _e11864_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12539
                                (let ()
                                  (declare (not safe))
                                  (cons _e11864_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12539)))))
            (if (macro-file-exists-exception? _exn11861_)
                (macro-file-exists-exception-procedure _exn11861_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12538
                              (let ()
                                (declare (not safe))
                                (cons _exn11861_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12538)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11857_))
            (let ((_e11859_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11857_ 'exception))))
              (macro-fixnum-overflow-exception? _e11859_))
            (macro-fixnum-overflow-exception? _exn11857_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11853_))
            (let ((_e11855_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11853_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11855_)
                  (macro-fixnum-overflow-exception-arguments _e11855_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12541
                                (let ()
                                  (declare (not safe))
                                  (cons _e11855_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12541)))))
            (if (macro-fixnum-overflow-exception? _exn11853_)
                (macro-fixnum-overflow-exception-arguments _exn11853_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12540
                              (let ()
                                (declare (not safe))
                                (cons _exn11853_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12540)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11847_))
            (let ((_e11850_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11847_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11850_)
                  (macro-fixnum-overflow-exception-procedure _e11850_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12543
                                (let ()
                                  (declare (not safe))
                                  (cons _e11850_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12543)))))
            (if (macro-fixnum-overflow-exception? _exn11847_)
                (macro-fixnum-overflow-exception-procedure _exn11847_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12542
                              (let ()
                                (declare (not safe))
                                (cons _exn11847_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12542)))))))
    (define heap-overflow-exception?
      (lambda (_exn11841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11841_))
            (let ((_e11844_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11841_ 'exception))))
              (macro-heap-overflow-exception? _e11844_))
            (macro-heap-overflow-exception? _exn11841_))))
    (define inactive-thread-exception?
      (lambda (_exn11837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11837_))
            (let ((_e11839_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11837_ 'exception))))
              (macro-inactive-thread-exception? _e11839_))
            (macro-inactive-thread-exception? _exn11837_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11833_))
            (let ((_e11835_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11833_ 'exception))))
              (if (macro-inactive-thread-exception? _e11835_)
                  (macro-inactive-thread-exception-arguments _e11835_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12545
                                (let ()
                                  (declare (not safe))
                                  (cons _e11835_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12545)))))
            (if (macro-inactive-thread-exception? _exn11833_)
                (macro-inactive-thread-exception-arguments _exn11833_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12544
                              (let ()
                                (declare (not safe))
                                (cons _exn11833_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12544)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11827_))
            (let ((_e11830_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11827_ 'exception))))
              (if (macro-inactive-thread-exception? _e11830_)
                  (macro-inactive-thread-exception-procedure _e11830_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12547
                                (let ()
                                  (declare (not safe))
                                  (cons _e11830_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12547)))))
            (if (macro-inactive-thread-exception? _exn11827_)
                (macro-inactive-thread-exception-procedure _exn11827_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12546
                              (let ()
                                (declare (not safe))
                                (cons _exn11827_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12546)))))))
    (define initialized-thread-exception?
      (lambda (_exn11823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11823_))
            (let ((_e11825_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11823_ 'exception))))
              (macro-initialized-thread-exception? _e11825_))
            (macro-initialized-thread-exception? _exn11823_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11819_))
            (let ((_e11821_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11819_ 'exception))))
              (if (macro-initialized-thread-exception? _e11821_)
                  (macro-initialized-thread-exception-arguments _e11821_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12549
                                (let ()
                                  (declare (not safe))
                                  (cons _e11821_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12549)))))
            (if (macro-initialized-thread-exception? _exn11819_)
                (macro-initialized-thread-exception-arguments _exn11819_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12548
                              (let ()
                                (declare (not safe))
                                (cons _exn11819_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12548)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11813_))
            (let ((_e11816_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11813_ 'exception))))
              (if (macro-initialized-thread-exception? _e11816_)
                  (macro-initialized-thread-exception-procedure _e11816_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12551
                                (let ()
                                  (declare (not safe))
                                  (cons _e11816_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12551)))))
            (if (macro-initialized-thread-exception? _exn11813_)
                (macro-initialized-thread-exception-procedure _exn11813_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12550
                              (let ()
                                (declare (not safe))
                                (cons _exn11813_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12550)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11809_))
            (let ((_e11811_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11809_ 'exception))))
              (macro-invalid-hash-number-exception? _e11811_))
            (macro-invalid-hash-number-exception? _exn11809_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11805_))
            (let ((_e11807_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11805_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11807_)
                  (macro-invalid-hash-number-exception-arguments _e11807_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12553
                                (let ()
                                  (declare (not safe))
                                  (cons _e11807_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12553)))))
            (if (macro-invalid-hash-number-exception? _exn11805_)
                (macro-invalid-hash-number-exception-arguments _exn11805_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12552
                              (let ()
                                (declare (not safe))
                                (cons _exn11805_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12552)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11799_))
            (let ((_e11802_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11799_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11802_)
                  (macro-invalid-hash-number-exception-procedure _e11802_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12555
                                (let ()
                                  (declare (not safe))
                                  (cons _e11802_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12555)))))
            (if (macro-invalid-hash-number-exception? _exn11799_)
                (macro-invalid-hash-number-exception-procedure _exn11799_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12554
                              (let ()
                                (declare (not safe))
                                (cons _exn11799_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12554)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11795_))
            (let ((_e11797_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11795_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11797_))
            (macro-invalid-utf8-encoding-exception? _exn11795_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11791_))
            (let ((_e11793_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11791_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11793_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11793_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12557
                                (let ()
                                  (declare (not safe))
                                  (cons _e11793_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12557)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11791_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11791_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12556
                              (let ()
                                (declare (not safe))
                                (cons _exn11791_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12556)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11785_))
            (let ((_e11788_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11785_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11788_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11788_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12559
                                (let ()
                                  (declare (not safe))
                                  (cons _e11788_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12559)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11785_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11785_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12558
                              (let ()
                                (declare (not safe))
                                (cons _exn11785_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12558)))))))
    (define join-timeout-exception?
      (lambda (_exn11781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11781_))
            (let ((_e11783_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11781_ 'exception))))
              (macro-join-timeout-exception? _e11783_))
            (macro-join-timeout-exception? _exn11781_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11777_))
            (let ((_e11779_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11777_ 'exception))))
              (if (macro-join-timeout-exception? _e11779_)
                  (macro-join-timeout-exception-arguments _e11779_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12561
                                (let ()
                                  (declare (not safe))
                                  (cons _e11779_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12561)))))
            (if (macro-join-timeout-exception? _exn11777_)
                (macro-join-timeout-exception-arguments _exn11777_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12560
                              (let ()
                                (declare (not safe))
                                (cons _exn11777_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12560)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11771_))
            (let ((_e11774_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11771_ 'exception))))
              (if (macro-join-timeout-exception? _e11774_)
                  (macro-join-timeout-exception-procedure _e11774_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12563
                                (let ()
                                  (declare (not safe))
                                  (cons _e11774_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12563)))))
            (if (macro-join-timeout-exception? _exn11771_)
                (macro-join-timeout-exception-procedure _exn11771_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12562
                              (let ()
                                (declare (not safe))
                                (cons _exn11771_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12562)))))))
    (define keyword-expected-exception?
      (lambda (_exn11767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11767_))
            (let ((_e11769_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11767_ 'exception))))
              (macro-keyword-expected-exception? _e11769_))
            (macro-keyword-expected-exception? _exn11767_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11763_))
            (let ((_e11765_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11763_ 'exception))))
              (if (macro-keyword-expected-exception? _e11765_)
                  (macro-keyword-expected-exception-arguments _e11765_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12565
                                (let ()
                                  (declare (not safe))
                                  (cons _e11765_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12565)))))
            (if (macro-keyword-expected-exception? _exn11763_)
                (macro-keyword-expected-exception-arguments _exn11763_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12564
                              (let ()
                                (declare (not safe))
                                (cons _exn11763_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12564)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11757_))
            (let ((_e11760_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11757_ 'exception))))
              (if (macro-keyword-expected-exception? _e11760_)
                  (macro-keyword-expected-exception-procedure _e11760_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12567
                                (let ()
                                  (declare (not safe))
                                  (cons _e11760_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12567)))))
            (if (macro-keyword-expected-exception? _exn11757_)
                (macro-keyword-expected-exception-procedure _exn11757_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12566
                              (let ()
                                (declare (not safe))
                                (cons _exn11757_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12566)))))))
    (define length-mismatch-exception?
      (lambda (_exn11753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11753_))
            (let ((_e11755_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11753_ 'exception))))
              (macro-length-mismatch-exception? _e11755_))
            (macro-length-mismatch-exception? _exn11753_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11749_))
            (let ((_e11751_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11749_ 'exception))))
              (if (macro-length-mismatch-exception? _e11751_)
                  (macro-length-mismatch-exception-arg-id _e11751_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12569
                                (let ()
                                  (declare (not safe))
                                  (cons _e11751_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12569)))))
            (if (macro-length-mismatch-exception? _exn11749_)
                (macro-length-mismatch-exception-arg-id _exn11749_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12568
                              (let ()
                                (declare (not safe))
                                (cons _exn11749_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12568)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11745_))
            (let ((_e11747_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11745_ 'exception))))
              (if (macro-length-mismatch-exception? _e11747_)
                  (macro-length-mismatch-exception-arguments _e11747_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12571
                                (let ()
                                  (declare (not safe))
                                  (cons _e11747_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12571)))))
            (if (macro-length-mismatch-exception? _exn11745_)
                (macro-length-mismatch-exception-arguments _exn11745_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12570
                              (let ()
                                (declare (not safe))
                                (cons _exn11745_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12570)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11739_))
            (let ((_e11742_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11739_ 'exception))))
              (if (macro-length-mismatch-exception? _e11742_)
                  (macro-length-mismatch-exception-procedure _e11742_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12573
                                (let ()
                                  (declare (not safe))
                                  (cons _e11742_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12573)))))
            (if (macro-length-mismatch-exception? _exn11739_)
                (macro-length-mismatch-exception-procedure _exn11739_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12572
                              (let ()
                                (declare (not safe))
                                (cons _exn11739_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12572)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11735_))
            (let ((_e11737_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11735_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11737_))
            (macro-mailbox-receive-timeout-exception? _exn11735_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11731_))
            (let ((_e11733_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11731_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11733_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11733_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12575
                                (let ()
                                  (declare (not safe))
                                  (cons _e11733_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12575)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11731_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11731_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12574
                              (let ()
                                (declare (not safe))
                                (cons _exn11731_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12574)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11725_))
            (let ((_e11728_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11725_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11728_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11728_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12577
                                (let ()
                                  (declare (not safe))
                                  (cons _e11728_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12577)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11725_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11725_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12576
                              (let ()
                                (declare (not safe))
                                (cons _exn11725_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12576)))))))
    (define module-not-found-exception?
      (lambda (_exn11721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11721_))
            (let ((_e11723_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11721_ 'exception))))
              (macro-module-not-found-exception? _e11723_))
            (macro-module-not-found-exception? _exn11721_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11717_))
            (let ((_e11719_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11717_ 'exception))))
              (if (macro-module-not-found-exception? _e11719_)
                  (macro-module-not-found-exception-arguments _e11719_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12579
                                (let ()
                                  (declare (not safe))
                                  (cons _e11719_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12579)))))
            (if (macro-module-not-found-exception? _exn11717_)
                (macro-module-not-found-exception-arguments _exn11717_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12578
                              (let ()
                                (declare (not safe))
                                (cons _exn11717_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12578)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11711_))
            (let ((_e11714_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11711_ 'exception))))
              (if (macro-module-not-found-exception? _e11714_)
                  (macro-module-not-found-exception-procedure _e11714_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12581
                                (let ()
                                  (declare (not safe))
                                  (cons _e11714_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12581)))))
            (if (macro-module-not-found-exception? _exn11711_)
                (macro-module-not-found-exception-procedure _exn11711_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12580
                              (let ()
                                (declare (not safe))
                                (cons _exn11711_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12580)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11705_))
            (let ((_e11708_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11705_ 'exception))))
              (macro-multiple-c-return-exception? _e11708_))
            (macro-multiple-c-return-exception? _exn11705_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11701_))
            (let ((_e11703_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11701_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11703_))
            (macro-no-such-file-or-directory-exception? _exn11701_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11697_))
            (let ((_e11699_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11697_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11699_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11699_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12583
                                (let ()
                                  (declare (not safe))
                                  (cons _e11699_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12583)))))
            (if (macro-no-such-file-or-directory-exception? _exn11697_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11697_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12582
                              (let ()
                                (declare (not safe))
                                (cons _exn11697_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12582)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11691_))
            (let ((_e11694_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11691_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11694_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11694_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12585
                                (let ()
                                  (declare (not safe))
                                  (cons _e11694_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12585)))))
            (if (macro-no-such-file-or-directory-exception? _exn11691_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11691_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12584
                              (let ()
                                (declare (not safe))
                                (cons _exn11691_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12584)))))))
    (define noncontinuable-exception?
      (lambda (_exn11687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11687_))
            (let ((_e11689_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11687_ 'exception))))
              (macro-noncontinuable-exception? _e11689_))
            (macro-noncontinuable-exception? _exn11687_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11681_))
            (let ((_e11684_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11681_ 'exception))))
              (if (macro-noncontinuable-exception? _e11684_)
                  (macro-noncontinuable-exception-reason _e11684_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12587
                                (let ()
                                  (declare (not safe))
                                  (cons _e11684_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12587)))))
            (if (macro-noncontinuable-exception? _exn11681_)
                (macro-noncontinuable-exception-reason _exn11681_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12586
                              (let ()
                                (declare (not safe))
                                (cons _exn11681_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12586)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11677_))
            (let ((_e11679_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11677_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11679_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11677_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11673_))
            (let ((_e11675_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11673_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11675_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11675_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12589
                                (let ()
                                  (declare (not safe))
                                  (cons _e11675_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12589)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11673_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11673_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12588
                              (let ()
                                (declare (not safe))
                                (cons _exn11673_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12588)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11667_))
            (let ((_e11670_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11667_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11670_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11670_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12591
                                (let ()
                                  (declare (not safe))
                                  (cons _e11670_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12591)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11667_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11667_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12590
                              (let ()
                                (declare (not safe))
                                (cons _exn11667_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12590)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11663_))
            (let ((_e11665_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11663_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11665_))
            (macro-nonprocedure-operator-exception? _exn11663_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11659_))
            (let ((_e11661_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11659_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11661_)
                  (macro-nonprocedure-operator-exception-arguments _e11661_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12593
                                (let ()
                                  (declare (not safe))
                                  (cons _e11661_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12593)))))
            (if (macro-nonprocedure-operator-exception? _exn11659_)
                (macro-nonprocedure-operator-exception-arguments _exn11659_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12592
                              (let ()
                                (declare (not safe))
                                (cons _exn11659_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12592)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11655_))
            (let ((_e11657_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11655_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11657_)
                  (macro-nonprocedure-operator-exception-code _e11657_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12595
                                (let ()
                                  (declare (not safe))
                                  (cons _e11657_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12595)))))
            (if (macro-nonprocedure-operator-exception? _exn11655_)
                (macro-nonprocedure-operator-exception-code _exn11655_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12594
                              (let ()
                                (declare (not safe))
                                (cons _exn11655_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12594)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11651_))
            (let ((_e11653_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11651_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11653_)
                  (macro-nonprocedure-operator-exception-operator _e11653_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12597
                                (let ()
                                  (declare (not safe))
                                  (cons _e11653_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12597)))))
            (if (macro-nonprocedure-operator-exception? _exn11651_)
                (macro-nonprocedure-operator-exception-operator _exn11651_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12596
                              (let ()
                                (declare (not safe))
                                (cons _exn11651_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12596)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11645_))
            (let ((_e11648_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11645_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11648_)
                  (macro-nonprocedure-operator-exception-rte _e11648_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12599
                                (let ()
                                  (declare (not safe))
                                  (cons _e11648_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12599)))))
            (if (macro-nonprocedure-operator-exception? _exn11645_)
                (macro-nonprocedure-operator-exception-rte _exn11645_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12598
                              (let ()
                                (declare (not safe))
                                (cons _exn11645_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12598)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11641_))
            (let ((_e11643_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11641_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11643_))
            (macro-not-in-compilation-context-exception? _exn11641_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11637_))
            (let ((_e11639_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11637_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11639_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11639_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12601
                                (let ()
                                  (declare (not safe))
                                  (cons _e11639_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12601)))))
            (if (macro-not-in-compilation-context-exception? _exn11637_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11637_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12600
                              (let ()
                                (declare (not safe))
                                (cons _exn11637_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12600)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11631_))
            (let ((_e11634_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11631_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11634_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11634_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12603
                                (let ()
                                  (declare (not safe))
                                  (cons _e11634_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12603)))))
            (if (macro-not-in-compilation-context-exception? _exn11631_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11631_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12602
                              (let ()
                                (declare (not safe))
                                (cons _exn11631_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12602)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11627_))
            (let ((_e11629_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11627_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11629_))
            (macro-number-of-arguments-limit-exception? _exn11627_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11623_))
            (let ((_e11625_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11623_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11625_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11625_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12605
                                (let ()
                                  (declare (not safe))
                                  (cons _e11625_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12605)))))
            (if (macro-number-of-arguments-limit-exception? _exn11623_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11623_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12604
                              (let ()
                                (declare (not safe))
                                (cons _exn11623_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12604)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11617_))
            (let ((_e11620_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11617_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11620_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11620_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12607
                                (let ()
                                  (declare (not safe))
                                  (cons _e11620_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12607)))))
            (if (macro-number-of-arguments-limit-exception? _exn11617_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11617_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12606
                              (let ()
                                (declare (not safe))
                                (cons _exn11617_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12606)))))))
    (define os-exception?
      (lambda (_exn11613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11613_))
            (let ((_e11615_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11613_ 'exception))))
              (macro-os-exception? _e11615_))
            (macro-os-exception? _exn11613_))))
    (define os-exception-arguments
      (lambda (_exn11609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11609_))
            (let ((_e11611_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11609_ 'exception))))
              (if (macro-os-exception? _e11611_)
                  (macro-os-exception-arguments _e11611_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12609
                                (let ()
                                  (declare (not safe))
                                  (cons _e11611_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12609)))))
            (if (macro-os-exception? _exn11609_)
                (macro-os-exception-arguments _exn11609_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12608
                              (let ()
                                (declare (not safe))
                                (cons _exn11609_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12608)))))))
    (define os-exception-code
      (lambda (_exn11605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11605_))
            (let ((_e11607_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11605_ 'exception))))
              (if (macro-os-exception? _e11607_)
                  (macro-os-exception-code _e11607_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12611
                                (let ()
                                  (declare (not safe))
                                  (cons _e11607_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12611)))))
            (if (macro-os-exception? _exn11605_)
                (macro-os-exception-code _exn11605_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12610
                              (let ()
                                (declare (not safe))
                                (cons _exn11605_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12610)))))))
    (define os-exception-message
      (lambda (_exn11601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11601_))
            (let ((_e11603_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11601_ 'exception))))
              (if (macro-os-exception? _e11603_)
                  (macro-os-exception-message _e11603_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12613
                                (let ()
                                  (declare (not safe))
                                  (cons _e11603_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12613)))))
            (if (macro-os-exception? _exn11601_)
                (macro-os-exception-message _exn11601_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12612
                              (let ()
                                (declare (not safe))
                                (cons _exn11601_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12612)))))))
    (define os-exception-procedure
      (lambda (_exn11595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11595_))
            (let ((_e11598_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11595_ 'exception))))
              (if (macro-os-exception? _e11598_)
                  (macro-os-exception-procedure _e11598_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12615
                                (let ()
                                  (declare (not safe))
                                  (cons _e11598_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12615)))))
            (if (macro-os-exception? _exn11595_)
                (macro-os-exception-procedure _exn11595_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12614
                              (let ()
                                (declare (not safe))
                                (cons _exn11595_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12614)))))))
    (define permission-denied-exception?
      (lambda (_exn11591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11591_))
            (let ((_e11593_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11591_ 'exception))))
              (macro-permission-denied-exception? _e11593_))
            (macro-permission-denied-exception? _exn11591_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11587_))
            (let ((_e11589_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11587_ 'exception))))
              (if (macro-permission-denied-exception? _e11589_)
                  (macro-permission-denied-exception-arguments _e11589_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12617
                                (let ()
                                  (declare (not safe))
                                  (cons _e11589_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12617)))))
            (if (macro-permission-denied-exception? _exn11587_)
                (macro-permission-denied-exception-arguments _exn11587_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12616
                              (let ()
                                (declare (not safe))
                                (cons _exn11587_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12616)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11581_))
            (let ((_e11584_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11581_ 'exception))))
              (if (macro-permission-denied-exception? _e11584_)
                  (macro-permission-denied-exception-procedure _e11584_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12619
                                (let ()
                                  (declare (not safe))
                                  (cons _e11584_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12619)))))
            (if (macro-permission-denied-exception? _exn11581_)
                (macro-permission-denied-exception-procedure _exn11581_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12618
                              (let ()
                                (declare (not safe))
                                (cons _exn11581_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12618)))))))
    (define range-exception?
      (lambda (_exn11577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11577_))
            (let ((_e11579_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11577_ 'exception))))
              (macro-range-exception? _e11579_))
            (macro-range-exception? _exn11577_))))
    (define range-exception-arg-id
      (lambda (_exn11573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11573_))
            (let ((_e11575_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11573_ 'exception))))
              (if (macro-range-exception? _e11575_)
                  (macro-range-exception-arg-id _e11575_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12621
                                (let ()
                                  (declare (not safe))
                                  (cons _e11575_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12621)))))
            (if (macro-range-exception? _exn11573_)
                (macro-range-exception-arg-id _exn11573_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12620
                              (let ()
                                (declare (not safe))
                                (cons _exn11573_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12620)))))))
    (define range-exception-arguments
      (lambda (_exn11569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11569_))
            (let ((_e11571_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11569_ 'exception))))
              (if (macro-range-exception? _e11571_)
                  (macro-range-exception-arguments _e11571_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12623
                                (let ()
                                  (declare (not safe))
                                  (cons _e11571_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12623)))))
            (if (macro-range-exception? _exn11569_)
                (macro-range-exception-arguments _exn11569_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12622
                              (let ()
                                (declare (not safe))
                                (cons _exn11569_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12622)))))))
    (define range-exception-procedure
      (lambda (_exn11563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11563_))
            (let ((_e11566_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11563_ 'exception))))
              (if (macro-range-exception? _e11566_)
                  (macro-range-exception-procedure _e11566_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12625
                                (let ()
                                  (declare (not safe))
                                  (cons _e11566_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12625)))))
            (if (macro-range-exception? _exn11563_)
                (macro-range-exception-procedure _exn11563_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12624
                              (let ()
                                (declare (not safe))
                                (cons _exn11563_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12624)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11559_))
            (let ((_e11561_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11559_ 'exception))))
              (macro-rpc-remote-error-exception? _e11561_))
            (macro-rpc-remote-error-exception? _exn11559_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11555_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11555_))
            (let ((_e11557_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11555_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11557_)
                  (macro-rpc-remote-error-exception-arguments _e11557_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12627
                                (let ()
                                  (declare (not safe))
                                  (cons _e11557_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12627)))))
            (if (macro-rpc-remote-error-exception? _exn11555_)
                (macro-rpc-remote-error-exception-arguments _exn11555_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12626
                              (let ()
                                (declare (not safe))
                                (cons _exn11555_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12626)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11551_))
            (let ((_e11553_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11551_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11553_)
                  (macro-rpc-remote-error-exception-message _e11553_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12629
                                (let ()
                                  (declare (not safe))
                                  (cons _e11553_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12629)))))
            (if (macro-rpc-remote-error-exception? _exn11551_)
                (macro-rpc-remote-error-exception-message _exn11551_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12628
                              (let ()
                                (declare (not safe))
                                (cons _exn11551_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12628)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11545_))
            (let ((_e11548_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11545_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11548_)
                  (macro-rpc-remote-error-exception-procedure _e11548_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12631
                                (let ()
                                  (declare (not safe))
                                  (cons _e11548_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12631)))))
            (if (macro-rpc-remote-error-exception? _exn11545_)
                (macro-rpc-remote-error-exception-procedure _exn11545_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12630
                              (let ()
                                (declare (not safe))
                                (cons _exn11545_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12630)))))))
    (define scheduler-exception?
      (lambda (_exn11541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11541_))
            (let ((_e11543_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11541_ 'exception))))
              (macro-scheduler-exception? _e11543_))
            (macro-scheduler-exception? _exn11541_))))
    (define scheduler-exception-reason
      (lambda (_exn11535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11535_))
            (let ((_e11538_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11535_ 'exception))))
              (if (macro-scheduler-exception? _e11538_)
                  (macro-scheduler-exception-reason _e11538_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12633
                                (let ()
                                  (declare (not safe))
                                  (cons _e11538_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12633)))))
            (if (macro-scheduler-exception? _exn11535_)
                (macro-scheduler-exception-reason _exn11535_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12632
                              (let ()
                                (declare (not safe))
                                (cons _exn11535_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12632)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11531_))
            (let ((_e11533_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11531_ 'exception))))
              (macro-sfun-conversion-exception? _e11533_))
            (macro-sfun-conversion-exception? _exn11531_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11527_))
            (let ((_e11529_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11527_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11529_)
                  (macro-sfun-conversion-exception-arguments _e11529_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12635
                                (let ()
                                  (declare (not safe))
                                  (cons _e11529_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12635)))))
            (if (macro-sfun-conversion-exception? _exn11527_)
                (macro-sfun-conversion-exception-arguments _exn11527_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12634
                              (let ()
                                (declare (not safe))
                                (cons _exn11527_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12634)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11523_))
            (let ((_e11525_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11523_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11525_)
                  (macro-sfun-conversion-exception-code _e11525_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12637
                                (let ()
                                  (declare (not safe))
                                  (cons _e11525_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12637)))))
            (if (macro-sfun-conversion-exception? _exn11523_)
                (macro-sfun-conversion-exception-code _exn11523_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12636
                              (let ()
                                (declare (not safe))
                                (cons _exn11523_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12636)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11519_))
            (let ((_e11521_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11519_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11521_)
                  (macro-sfun-conversion-exception-message _e11521_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12639
                                (let ()
                                  (declare (not safe))
                                  (cons _e11521_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12639)))))
            (if (macro-sfun-conversion-exception? _exn11519_)
                (macro-sfun-conversion-exception-message _exn11519_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12638
                              (let ()
                                (declare (not safe))
                                (cons _exn11519_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12638)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11513_))
            (let ((_e11516_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11513_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11516_)
                  (macro-sfun-conversion-exception-procedure _e11516_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12641
                                (let ()
                                  (declare (not safe))
                                  (cons _e11516_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12641)))))
            (if (macro-sfun-conversion-exception? _exn11513_)
                (macro-sfun-conversion-exception-procedure _exn11513_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12640
                              (let ()
                                (declare (not safe))
                                (cons _exn11513_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12640)))))))
    (define stack-overflow-exception?
      (lambda (_exn11507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11507_))
            (let ((_e11510_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11507_ 'exception))))
              (macro-stack-overflow-exception? _e11510_))
            (macro-stack-overflow-exception? _exn11507_))))
    (define started-thread-exception?
      (lambda (_exn11503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11503_))
            (let ((_e11505_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11503_ 'exception))))
              (macro-started-thread-exception? _e11505_))
            (macro-started-thread-exception? _exn11503_))))
    (define started-thread-exception-arguments
      (lambda (_exn11499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11499_))
            (let ((_e11501_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11499_ 'exception))))
              (if (macro-started-thread-exception? _e11501_)
                  (macro-started-thread-exception-arguments _e11501_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12643
                                (let ()
                                  (declare (not safe))
                                  (cons _e11501_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12643)))))
            (if (macro-started-thread-exception? _exn11499_)
                (macro-started-thread-exception-arguments _exn11499_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12642
                              (let ()
                                (declare (not safe))
                                (cons _exn11499_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12642)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11493_))
            (let ((_e11496_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11493_ 'exception))))
              (if (macro-started-thread-exception? _e11496_)
                  (macro-started-thread-exception-procedure _e11496_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12645
                                (let ()
                                  (declare (not safe))
                                  (cons _e11496_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12645)))))
            (if (macro-started-thread-exception? _exn11493_)
                (macro-started-thread-exception-procedure _exn11493_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12644
                              (let ()
                                (declare (not safe))
                                (cons _exn11493_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12644)))))))
    (define terminated-thread-exception?
      (lambda (_exn11489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11489_))
            (let ((_e11491_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11489_ 'exception))))
              (macro-terminated-thread-exception? _e11491_))
            (macro-terminated-thread-exception? _exn11489_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11485_))
            (let ((_e11487_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11485_ 'exception))))
              (if (macro-terminated-thread-exception? _e11487_)
                  (macro-terminated-thread-exception-arguments _e11487_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12647
                                (let ()
                                  (declare (not safe))
                                  (cons _e11487_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12647)))))
            (if (macro-terminated-thread-exception? _exn11485_)
                (macro-terminated-thread-exception-arguments _exn11485_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12646
                              (let ()
                                (declare (not safe))
                                (cons _exn11485_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12646)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11479_))
            (let ((_e11482_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11479_ 'exception))))
              (if (macro-terminated-thread-exception? _e11482_)
                  (macro-terminated-thread-exception-procedure _e11482_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12649
                                (let ()
                                  (declare (not safe))
                                  (cons _e11482_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12649)))))
            (if (macro-terminated-thread-exception? _exn11479_)
                (macro-terminated-thread-exception-procedure _exn11479_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12648
                              (let ()
                                (declare (not safe))
                                (cons _exn11479_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12648)))))))
    (define type-exception?
      (lambda (_exn11475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11475_))
            (let ((_e11477_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11475_ 'exception))))
              (macro-type-exception? _e11477_))
            (macro-type-exception? _exn11475_))))
    (define type-exception-arg-id
      (lambda (_exn11471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11471_))
            (let ((_e11473_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11471_ 'exception))))
              (if (macro-type-exception? _e11473_)
                  (macro-type-exception-arg-id _e11473_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12651
                                (let ()
                                  (declare (not safe))
                                  (cons _e11473_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12651)))))
            (if (macro-type-exception? _exn11471_)
                (macro-type-exception-arg-id _exn11471_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12650
                              (let ()
                                (declare (not safe))
                                (cons _exn11471_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12650)))))))
    (define type-exception-arguments
      (lambda (_exn11467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11467_))
            (let ((_e11469_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11467_ 'exception))))
              (if (macro-type-exception? _e11469_)
                  (macro-type-exception-arguments _e11469_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12653
                                (let ()
                                  (declare (not safe))
                                  (cons _e11469_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12653)))))
            (if (macro-type-exception? _exn11467_)
                (macro-type-exception-arguments _exn11467_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12652
                              (let ()
                                (declare (not safe))
                                (cons _exn11467_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12652)))))))
    (define type-exception-procedure
      (lambda (_exn11463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11463_))
            (let ((_e11465_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11463_ 'exception))))
              (if (macro-type-exception? _e11465_)
                  (macro-type-exception-procedure _e11465_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12655
                                (let ()
                                  (declare (not safe))
                                  (cons _e11465_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12655)))))
            (if (macro-type-exception? _exn11463_)
                (macro-type-exception-procedure _exn11463_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12654
                              (let ()
                                (declare (not safe))
                                (cons _exn11463_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12654)))))))
    (define type-exception-type-id
      (lambda (_exn11457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11457_))
            (let ((_e11460_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11457_ 'exception))))
              (if (macro-type-exception? _e11460_)
                  (macro-type-exception-type-id _e11460_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12657
                                (let ()
                                  (declare (not safe))
                                  (cons _e11460_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12657)))))
            (if (macro-type-exception? _exn11457_)
                (macro-type-exception-type-id _exn11457_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12656
                              (let ()
                                (declare (not safe))
                                (cons _exn11457_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12656)))))))
    (define unbound-global-exception?
      (lambda (_exn11453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11453_))
            (let ((_e11455_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11453_ 'exception))))
              (macro-unbound-global-exception? _e11455_))
            (macro-unbound-global-exception? _exn11453_))))
    (define unbound-global-exception-code
      (lambda (_exn11449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11449_))
            (let ((_e11451_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11449_ 'exception))))
              (if (macro-unbound-global-exception? _e11451_)
                  (macro-unbound-global-exception-code _e11451_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12659
                                (let ()
                                  (declare (not safe))
                                  (cons _e11451_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12659)))))
            (if (macro-unbound-global-exception? _exn11449_)
                (macro-unbound-global-exception-code _exn11449_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12658
                              (let ()
                                (declare (not safe))
                                (cons _exn11449_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12658)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11445_))
            (let ((_e11447_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11445_ 'exception))))
              (if (macro-unbound-global-exception? _e11447_)
                  (macro-unbound-global-exception-rte _e11447_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12661
                                (let ()
                                  (declare (not safe))
                                  (cons _e11447_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12661)))))
            (if (macro-unbound-global-exception? _exn11445_)
                (macro-unbound-global-exception-rte _exn11445_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12660
                              (let ()
                                (declare (not safe))
                                (cons _exn11445_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12660)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11439_))
            (let ((_e11442_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11439_ 'exception))))
              (if (macro-unbound-global-exception? _e11442_)
                  (macro-unbound-global-exception-variable _e11442_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12663
                                (let ()
                                  (declare (not safe))
                                  (cons _e11442_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12663)))))
            (if (macro-unbound-global-exception? _exn11439_)
                (macro-unbound-global-exception-variable _exn11439_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12662
                              (let ()
                                (declare (not safe))
                                (cons _exn11439_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12662)))))))
    (define unbound-key-exception?
      (lambda (_exn11435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11435_))
            (let ((_e11437_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11435_ 'exception))))
              (macro-unbound-key-exception? _e11437_))
            (macro-unbound-key-exception? _exn11435_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11431_))
            (let ((_e11433_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11431_ 'exception))))
              (if (macro-unbound-key-exception? _e11433_)
                  (macro-unbound-key-exception-arguments _e11433_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12665
                                (let ()
                                  (declare (not safe))
                                  (cons _e11433_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12665)))))
            (if (macro-unbound-key-exception? _exn11431_)
                (macro-unbound-key-exception-arguments _exn11431_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12664
                              (let ()
                                (declare (not safe))
                                (cons _exn11431_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12664)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11425_))
            (let ((_e11428_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11425_ 'exception))))
              (if (macro-unbound-key-exception? _e11428_)
                  (macro-unbound-key-exception-procedure _e11428_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12667
                                (let ()
                                  (declare (not safe))
                                  (cons _e11428_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12667)))))
            (if (macro-unbound-key-exception? _exn11425_)
                (macro-unbound-key-exception-procedure _exn11425_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12666
                              (let ()
                                (declare (not safe))
                                (cons _exn11425_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12666)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11421_))
            (let ((_e11423_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11421_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11423_))
            (macro-unbound-os-environment-variable-exception? _exn11421_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11417_))
            (let ((_e11419_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11417_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11419_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11419_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12669
                                (let ()
                                  (declare (not safe))
                                  (cons _e11419_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12669)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11417_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11417_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12668
                              (let ()
                                (declare (not safe))
                                (cons _exn11417_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12668)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11411_))
            (let ((_e11414_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11411_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11414_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11414_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12671
                                (let ()
                                  (declare (not safe))
                                  (cons _e11414_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12671)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11411_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11411_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12670
                              (let ()
                                (declare (not safe))
                                (cons _exn11411_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12670)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11407_))
            (let ((_e11409_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11407_ 'exception))))
              (macro-unbound-serial-number-exception? _e11409_))
            (macro-unbound-serial-number-exception? _exn11407_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11403_))
            (let ((_e11405_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11403_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11405_)
                  (macro-unbound-serial-number-exception-arguments _e11405_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12673
                                (let ()
                                  (declare (not safe))
                                  (cons _e11405_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12673)))))
            (if (macro-unbound-serial-number-exception? _exn11403_)
                (macro-unbound-serial-number-exception-arguments _exn11403_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12672
                              (let ()
                                (declare (not safe))
                                (cons _exn11403_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12672)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11397_))
            (let ((_e11400_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11397_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11400_)
                  (macro-unbound-serial-number-exception-procedure _e11400_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12675
                                (let ()
                                  (declare (not safe))
                                  (cons _e11400_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12675)))))
            (if (macro-unbound-serial-number-exception? _exn11397_)
                (macro-unbound-serial-number-exception-procedure _exn11397_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12674
                              (let ()
                                (declare (not safe))
                                (cons _exn11397_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12674)))))))
    (define uncaught-exception?
      (lambda (_exn11393_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11393_))
            (let ((_e11395_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11393_ 'exception))))
              (macro-uncaught-exception? _e11395_))
            (macro-uncaught-exception? _exn11393_))))
    (define uncaught-exception-arguments
      (lambda (_exn11389_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11389_))
            (let ((_e11391_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11389_ 'exception))))
              (if (macro-uncaught-exception? _e11391_)
                  (macro-uncaught-exception-arguments _e11391_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12677
                                (let ()
                                  (declare (not safe))
                                  (cons _e11391_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12677)))))
            (if (macro-uncaught-exception? _exn11389_)
                (macro-uncaught-exception-arguments _exn11389_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12676
                              (let ()
                                (declare (not safe))
                                (cons _exn11389_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12676)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11385_))
            (let ((_e11387_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11385_ 'exception))))
              (if (macro-uncaught-exception? _e11387_)
                  (macro-uncaught-exception-procedure _e11387_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12679
                                (let ()
                                  (declare (not safe))
                                  (cons _e11387_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12679)))))
            (if (macro-uncaught-exception? _exn11385_)
                (macro-uncaught-exception-procedure _exn11385_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12678
                              (let ()
                                (declare (not safe))
                                (cons _exn11385_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12678)))))))
    (define uncaught-exception-reason
      (lambda (_exn11379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11379_))
            (let ((_e11382_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11379_ 'exception))))
              (if (macro-uncaught-exception? _e11382_)
                  (macro-uncaught-exception-reason _e11382_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12681
                                (let ()
                                  (declare (not safe))
                                  (cons _e11382_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12681)))))
            (if (macro-uncaught-exception? _exn11379_)
                (macro-uncaught-exception-reason _exn11379_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12680
                              (let ()
                                (declare (not safe))
                                (cons _exn11379_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12680)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11375_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11375_))
            (let ((_e11377_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11375_ 'exception))))
              (macro-uninitialized-thread-exception? _e11377_))
            (macro-uninitialized-thread-exception? _exn11375_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11371_))
            (let ((_e11373_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11371_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11373_)
                  (macro-uninitialized-thread-exception-arguments _e11373_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12683
                                (let ()
                                  (declare (not safe))
                                  (cons _e11373_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12683)))))
            (if (macro-uninitialized-thread-exception? _exn11371_)
                (macro-uninitialized-thread-exception-arguments _exn11371_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12682
                              (let ()
                                (declare (not safe))
                                (cons _exn11371_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12682)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11365_))
            (let ((_e11368_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11365_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11368_)
                  (macro-uninitialized-thread-exception-procedure _e11368_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12685
                                (let ()
                                  (declare (not safe))
                                  (cons _e11368_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12685)))))
            (if (macro-uninitialized-thread-exception? _exn11365_)
                (macro-uninitialized-thread-exception-procedure _exn11365_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12684
                              (let ()
                                (declare (not safe))
                                (cons _exn11365_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12684)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11361_))
            (let ((_e11363_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11361_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11363_))
            (macro-unknown-keyword-argument-exception? _exn11361_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11357_))
            (let ((_e11359_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11357_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11359_)
                  (macro-unknown-keyword-argument-exception-arguments _e11359_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12687
                                (let ()
                                  (declare (not safe))
                                  (cons _e11359_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12687)))))
            (if (macro-unknown-keyword-argument-exception? _exn11357_)
                (macro-unknown-keyword-argument-exception-arguments _exn11357_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12686
                              (let ()
                                (declare (not safe))
                                (cons _exn11357_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12686)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11351_))
            (let ((_e11354_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11351_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11354_)
                  (macro-unknown-keyword-argument-exception-procedure _e11354_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12689
                                (let ()
                                  (declare (not safe))
                                  (cons _e11354_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12689)))))
            (if (macro-unknown-keyword-argument-exception? _exn11351_)
                (macro-unknown-keyword-argument-exception-procedure _exn11351_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12688
                              (let ()
                                (declare (not safe))
                                (cons _exn11351_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12688)))))))
    (define unterminated-process-exception?
      (lambda (_exn11347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11347_))
            (let ((_e11349_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11347_ 'exception))))
              (macro-unterminated-process-exception? _e11349_))
            (macro-unterminated-process-exception? _exn11347_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11343_))
            (let ((_e11345_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11343_ 'exception))))
              (if (macro-unterminated-process-exception? _e11345_)
                  (macro-unterminated-process-exception-arguments _e11345_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12691
                                (let ()
                                  (declare (not safe))
                                  (cons _e11345_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12691)))))
            (if (macro-unterminated-process-exception? _exn11343_)
                (macro-unterminated-process-exception-arguments _exn11343_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12690
                              (let ()
                                (declare (not safe))
                                (cons _exn11343_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12690)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11337_))
            (let ((_e11340_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11337_ 'exception))))
              (if (macro-unterminated-process-exception? _e11340_)
                  (macro-unterminated-process-exception-procedure _e11340_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12693
                                (let ()
                                  (declare (not safe))
                                  (cons _e11340_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12693)))))
            (if (macro-unterminated-process-exception? _exn11337_)
                (macro-unterminated-process-exception-procedure _exn11337_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12692
                              (let ()
                                (declare (not safe))
                                (cons _exn11337_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12692)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11333_))
            (let ((_e11335_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11333_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11335_))
            (macro-wrong-number-of-arguments-exception? _exn11333_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11329_))
            (let ((_e11331_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11329_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11331_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11331_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12695
                                (let ()
                                  (declare (not safe))
                                  (cons _e11331_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12695)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11329_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11329_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12694
                              (let ()
                                (declare (not safe))
                                (cons _exn11329_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12694)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11323_))
            (let ((_e11326_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11323_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11326_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11326_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12697
                                (let ()
                                  (declare (not safe))
                                  (cons _e11326_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12697)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11323_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11323_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12696
                              (let ()
                                (declare (not safe))
                                (cons _exn11323_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12696)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11319_))
            (let ((_e11321_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11319_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11321_))
            (macro-wrong-number-of-values-exception? _exn11319_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11315_))
            (let ((_e11317_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11315_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11317_)
                  (macro-wrong-number-of-values-exception-code _e11317_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12699
                                (let ()
                                  (declare (not safe))
                                  (cons _e11317_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12699)))))
            (if (macro-wrong-number-of-values-exception? _exn11315_)
                (macro-wrong-number-of-values-exception-code _exn11315_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12698
                              (let ()
                                (declare (not safe))
                                (cons _exn11315_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12698)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11311_))
            (let ((_e11313_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11311_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11313_)
                  (macro-wrong-number-of-values-exception-rte _e11313_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12701
                                (let ()
                                  (declare (not safe))
                                  (cons _e11313_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12701)))))
            (if (macro-wrong-number-of-values-exception? _exn11311_)
                (macro-wrong-number-of-values-exception-rte _exn11311_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12700
                              (let ()
                                (declare (not safe))
                                (cons _exn11311_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12700)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11305_))
            (let ((_e11308_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11305_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11308_)
                  (macro-wrong-number-of-values-exception-vals _e11308_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12703
                                (let ()
                                  (declare (not safe))
                                  (cons _e11308_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12703)))))
            (if (macro-wrong-number-of-values-exception? _exn11305_)
                (macro-wrong-number-of-values-exception-vals _exn11305_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12702
                              (let ()
                                (declare (not safe))
                                (cons _exn11305_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12702)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11299_))
            (let ((_e11302_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11299_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11302_))
            (macro-wrong-processor-c-return-exception? _exn11299_))))))
